# Kiến trúc chuẩn Kotlin Android — tham chiếu cho projects/coon

Đây là tài liệu tham chiếu **ổn định** (ít thay đổi): quy định kiến trúc và
cấu trúc thư mục/package bắt buộc khi viết và mở rộng code Kotlin Android
trong project này. Nội dung đối chiếu với guide chính thức của Google và
source code thật của các repo mẫu; bằng chứng là đường dẫn file công khai,
không suy đoán.

Tài liệu này **không mô tả trạng thái source code hiện tại** — trạng thái thực
tế và kế hoạch migrate xem `README.md` và `docs/plan.md`.

## 1. Nguồn chuẩn

| #   | Nguồn                                                            | Nội dung lấy dùng                                        |
| --- | ---------------------------------------------------------------- | -------------------------------------------------------- |
| S1  | [Guide to app architecture][s1] (developer.android.com)          | 3 layer, UDF, SSOT, vai trò Activity                     |
| S2  | [UI layer][s2] và [State holders][s3] (developer.android.com)    | UI elements + state holders; phân loại business/UI logic |
| S3  | [Data layer][s4] và [Domain layer][s5] (developer.android.com)   | Repository, data source, use case tùy chọn, quy tắc tên  |
| S4  | [Projects overview][s6] (developer.android.com/studio/projects)  | Cấu trúc thư mục Gradle, source sets, `res/`             |
| S5  | [android/architecture-samples][s7] (sample chính thức, 1 module) | Mẫu package chuẩn cho app 1 module                       |
| S6  | [android/nowinandroid][s8] (sample chính thức, nhiều module)     | Mẫu module hóa khi app lớn                               |
| S7  | [RikkaApps/Shizuku][s9] (app hệ thống thực tế, uid 1000)         | Quy ước receiver, package by feature trong app thật      |

Bằng chứng là cây file thật của S5/S6 (đọc qua GitHub API từ nhánh chính,
23/10/2026):

```
architecture-samples/app/src/main/java/…/todoapp/
├── TodoActivity.kt  TodoApplication.kt  TodoNavGraph.kt  TodoTheme.kt
├── addedittask/   AddEditTaskScreen.kt  AddEditTaskViewModel.kt
├── taskdetail/    TaskDetailScreen.kt   TaskDetailViewModel.kt
├── tasks/         TasksScreen.kt        TasksViewModel.kt
├── statistics/    StatisticsScreen.kt   StatisticsViewModel.kt
├── data/
│   ├── Task.kt  TaskRepository.kt  DefaultTaskRepository.kt
│   └── source/
│       ├── local/    TaskDao.kt  ToDoDatabase.kt  LocalTask.kt
│       └── network/  NetworkDataSource.kt
└── util/
app/src/test/java/…/         DefaultTaskRepositoryTest, TasksViewModelTest, …
app/src/androidTest/java/…/  TasksScreenTest, TaskDaoTest, …
app/src/debug/               build-type source set (HiltTestActivity)

nowinandroid/
├── app/                 module mỏng: MainActivity, navigation, DI
├── build-logic/         convention plugins Gradle
├── core/                analytics common data database datastore
│                        designsystem domain model network notifications ui
├── feature/             foryou bookmarks interests search settings topic
core/domain/…/           GetRecentSearchQueriesUseCase.kt
core/network/…/          NiaNetworkDataSource.kt, DemoNiaNetworkDataSource.kt
core/datastore/…/        NiaPreferencesDataSource.kt

shizuku-manager (S7)     package by feature: adb/, home/, model/, receiver/,
                         settings/, shell/, starter/, utils/
                         receiver/BootCompleteReceiver.kt
```

[s1]: https://developer.android.com/topic/architecture
[s2]: https://developer.android.com/topic/architecture/ui-layer
[s3]: https://developer.android.com/topic/architecture/ui-layer/stateholders
[s4]: https://developer.android.com/topic/architecture/data-layer
[s5]: https://developer.android.com/topic/architecture/domain-layer
[s6]: https://developer.android.com/studio/projects
[s7]: https://github.com/android/architecture-samples
[s8]: https://github.com/android/nowinandroid
[s9]: https://github.com/RikkaApps/Shizuku

## 2. Cấu trúc thư mục cấp Gradle

Theo S4: project gồm root chứa file Gradle và ít nhất một module (`:app`);
mỗi module có `src/main` bắt buộc và các source set chuẩn:

```
<project>/
├── build.gradle.kts                 khai báo plugin dùng chung
├── settings.gradle.kts              danh sách module, repository
├── gradle.properties
├── gradle/wrapper/                  gradle-wrapper.jar, gradle-wrapper.properties
├── gradlew  gradlew.bat
└── app/
    ├── build.gradle.kts             android {}, dependencies {}
    ├── proguard-rules.pro
    ├── libs/                        jar/aar nội bộ (tùy chọn)
    └── src/
        ├── main/                    BẮT BUỘC
        │   ├── AndroidManifest.xml
        │   ├── kotlin/              (hoặc java/) source theo package
        │   │   └── <domain/ngược/>/
        │   ├── res/
        │   │   ├── drawable/        vector, shape
        │   │   ├── layout/          layout XML (View system)
        │   │   ├── mipmap/          icon launcher
        │   │   ├── values/          strings, colors, themes, dimens
        │   │   └── …
        │   └── assets/              file raw (tùy chọn)
        ├── test/kotlin/             unit test JVM, cùng package với main
        ├── androidTest/kotlin/      instrumentation test, cùng package với main
        └── <buildType>/             vd debug/ — source set theo build type
```

Quy tắc:

1. Code production chỉ nằm trong `src/main`. Unit test trong `src/test`
   (JVM, nhanh); test UI/database trong `src/androidTest` (trên thiết bị).
2. Test mirror đúng package của class được test (S5: `data/`, `tasks/`,
   `statistics/` xuất hiện y hệt trong cả ba source set).
3. Chuỗi, màu hiển thị cho người dùng luôn nằm trong `res/values/`, không
   hardcode trong Kotlin.

## 3. Kiến trúc phân layer

Theo S1: thiết kế với tối thiểu hai layer (UI, Data); domain là layer thứ ba,
tùy chọn:

```
┌─────────────────────────────────────────────────────────────┐
│ UI LAYER                                                    │
│   UI elements (Activity / Fragment / Composable)            │
│   State holders (ViewModel; plain class cho UI đơn giản)    │
│        ▲  event (hành động người dùng) đi lên               │
│        │  state (UiState) chảy xuống                        │
├─────────────────────────────────────────────────────────────┤
│ DOMAIN LAYER (tùy chọn)                                     │
│   Use case — một class một nghiệp vụ: <Động từ><Foo>UseCase │
├─────────────────────────────────────────────────────────────┤
│ DATA LAYER                                                  │
│   Repository: <Foo>Repository + Default<Foo>Repository      │
│   Data source: <Foo>DataSource — mỗi nguồn dữ liệu một class│
└─────────────────────────────────────────────────────────────┘
```

Các mệnh đề chuẩn (trích S1-S3):

- "It's a common mistake to write all your code in an Activity. … The primary
  role of an Activity is to host your app's UI. … don't entrust state to these
  UI components."
- "Design each application with at least two layers: UI layer … Data layer …
  You can add an additional layer called the domain layer."
- "The domain layer is an optional layer … Use it only when needed."
- Repositories "strongly recommended even if they contain only a single data
  source" — repository là SSOT (single source of truth) của dữ liệu nó quản lý.
- "Make sure components in the UI layer … don't interact directly with a data
  source" — UI chỉ gọi repository (hoặc use case nếu có).
- UDF: state chảy xuống một chiều, event đi lên. Business logic thuộc
  data/domain, không bao giờ thuộc UI layer; UI logic (cách hiển thị) thuộc UI
  layer.

## 4. Cấu trúc package trong module (app 1 module)

Chuẩn là **package theo feature cho màn hình + package theo layer cho phần
còn lại**, đúng mẫu S5:

```
app/src/main/kotlin/<domain/ngược>/
├── <App>Application.kt           tùy chọn
├── <feature>/                    1 package = 1 màn hình/feature UI
│   ├── <Feature>Activity.kt      UI element (View system)
│   │                             (Compose: <Feature>Screen.kt)
│   ├── <Feature>ViewModel.kt     state holder
│   └── <Feature>UiState.kt       data class trạng thái màn hình
├── data/                         DATA LAYER — gom mọi nghiệp vụ
│   └── <nghiệp vụ>/
│       ├── <Foo>Repository.kt            interface, SSOT
│       ├── Default<Foo>Repository.kt     implementation
│       └── source/
│           └── <Foo>DataSource.kt        bọc đúng MỘT nguồn dữ liệu
├── domain/                       tùy chọn — chỉ khi cần tái sử dụng logic
│   └── <Động từ><Foo>UseCase.kt
├── receiver/                     entry point không gắn màn hình (S7)
│   └── <Sự kiện>Receiver.kt
└── util/                         hàm tiện ích thuần, không biết nghiệp vụ
```

### 4.1 Quy tắc đặt tên (bằng chứng là file thật trong S5/S6/S7)

| Loại class                  | Tên chuẩn                                  | Bằng chứng                                                                                            |
| --------------------------- | ------------------------------------------ | ----------------------------------------------------------------------------------------------------- |
| Repository (interface)      | `<Foo>Repository`                          | S5 `data/TaskRepository.kt`                                                                           |
| Repository (implementation) | `Default<Foo>Repository`                   | S5 `data/DefaultTaskRepository.kt`                                                                    |
| Data source                 | `<Foo>DataSource`                          | S6 `NiaNetworkDataSource.kt`, `NiaPreferencesDataSource.kt`; S5 `source/network/NetworkDataSource.kt` |
| Use case                    | `<Động từ><Foo>UseCase`                    | S6 `GetRecentSearchQueriesUseCase.kt`                                                                 |
| ViewModel                   | `<Feature>ViewModel`                       | S5 `tasks/TasksViewModel.kt`                                                                          |
| UI state                    | `<Feature>UiState`, expose qua `StateFlow` | S5 `TasksViewModel.kt`: `data class TasksUiState`, `val uiState: StateFlow<TasksUiState>`             |
| Màn hình (View system)      | `<Feature>Activity`                        | S5 `TodoActivity.kt`                                                                                  |
| Receiver                    | `<Sự kiện>Receiver`                        | S7 `receiver/BootCompleteReceiver.kt`                                                                 |

### 4.2 Quy tắc đặt file mới

1. File UI layer → package của màn hình nó phục vụ; màn hình mới = package mới.
2. File data layer → `data/<nghiệp vụ>/`; nghiệp vụ mới = package con mới
   trong `data/`.
3. Không đặt class vào package khác vai trò của nó (ViewModel không nằm trong
   `data/`, repository không nằm trong package màn hình).
4. `util/` chỉ chứa hàm thuần (parse, format, extension); class trong `util/`
   không gọi repository và không giữ state.

## 5. Quy tắc phụ thuộc giữa các layer

| Gọi từ ↓ tới → | UI element | state holder              | domain          | data                     |
| -------------- | ---------- | ------------------------- | --------------- | ------------------------ |
| UI element     | —          | quan sát state, gửi event | không trực tiếp | **CẤM**                  |
| state holder   | ✖          | —                         | ✔ (nếu có)      | ✔ chỉ repository         |
| domain         | ✖          | ✖                         | —               | ✔                        |
| data           | ✖          | ✖                         | ✖               | repository ↔ data source |

Một chiều duy nhất: `DataSource → Repository → (UseCase) → state holder → UI
element`. UI element render `UiState` và forward event; không giữ state nghiệp
vụ.

## 6. Test theo chuẩn

| Loại test       | Source set        | Nội dung                                       | Bằng chứng S5                                     |
| --------------- | ----------------- | ---------------------------------------------- | ------------------------------------------------- |
| Unit test JVM   | `src/test`        | repository, ViewModel, use case, logic thuần   | `DefaultTaskRepositoryTest`, `TasksViewModelTest` |
| Instrumentation | `src/androidTest` | UI, database, flow trên thiết bị thật/emulator | `TasksScreenTest`, `TaskDaoTest`                  |

Test mirror package (mục 2). Ưu tiên unit test JVM cho mọi logic không đụng
Android framework.

## 7. Module hóa khi app lớn (tham chiếu)

S6 cho thấy đích phát triển khi vượt quy mô 1 module:

```
<project>/
├── app/                 mỏng: MainActivity, navigation host, DI wiring
├── build-logic/         convention plugins
├── core/<thành phần>/   data, domain, database, network, ui, model, designsystem…
└── feature/<màn>/       1 module mỗi feature, chỉ phụ thuộc core/*
```

Chỉ module hóa khi compile time hoặc test isolation là vấn đề thật. Ở quy mô
nhỏ: 1 module, tổ chức package theo mục 4.

## 8. Tham chiếu

- Guide: [architecture][s1], [ui layer][s2], [stateholders][s3],
  [data layer][s4], [domain layer][s5], [projects overview][s6]
- Sample/repo: [architecture-samples][s7] (1 module),
  [nowinandroid][s8] (nhiều module), [Shizuku][s9] (app hệ thống)
- Nội bộ: `docs/plan.md` — ràng buộc sản phẩm (uid 1000, platform key,
  không AndroidX, minSdk/targetSdk 28) thuộc quyết định D1-D8 của plan.md,
  không thuộc phạm vi tài liệu này
