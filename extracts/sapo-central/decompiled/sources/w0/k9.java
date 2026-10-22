package w0;

import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3799a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f3801d;

    public /* synthetic */ k9(int i3, MainActivity mainActivity, String str, String str2) {
        this.f3799a = i3;
        this.b = mainActivity;
        this.f3800c = str;
        this.f3801d = str2;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0043  */
    @Override // java.lang.Runnable
    public final void run() {
        String string;
        String string2;
        int i3 = this.f3799a;
        String str = this.f3801d;
        String str2 = this.f3800c;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                mainActivity.w(str2, str);
                break;
            default:
                int i5 = MainActivity.f1002z1;
                File file = new File(mainActivity.E());
                if (!file.isFile() || file.length() <= 0) {
                    string = mainActivity.getString(R.string.k_connadaptor_versao_nao_baixada, str2);
                } else {
                    String strH0 = mainActivity.H0(file);
                    if (strH0 == null) {
                        string2 = mainActivity.o0().getString("connadaptor_arquivo_versao", null);
                    } else if (strH0.equalsIgnoreCase("260459e68360a4ff5c3720d84a2acddd")) {
                        string2 = "1111";
                    } else if (strH0.equalsIgnoreCase("4b0e1de041032ee63ef0c223926d7889")) {
                        string2 = "1114";
                    } else {
                        string2 = mainActivity.o0().getString("connadaptor_arquivo_versao", null);
                    }
                    string = (string2 == null || string2.equals(str)) ? "" : mainActivity.getString(R.string.k_connadaptor_arquivo_outra_versao, mainActivity.S(string2), str2);
                }
                i2.g.b(string);
                mainActivity.f1045v.post(new c9(mainActivity, string, 7));
                break;
        }
    }
}
