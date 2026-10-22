package q0;

import android.util.Base64;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import w0.ah;
import w0.q1;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2843a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f2845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2846e;
    public final Object f;

    public b(e0.b bVar, q1 q1Var, ah ahVar, ah ahVar2) {
        this.f2843a = 1;
        this.b = bVar;
        this.f2844c = q1Var;
        this.f2845d = ahVar;
        this.f2846e = ahVar2;
        this.f = new androidx.activity.d(12, this);
    }

    public boolean a(int i3) {
        ArrayList arrayList = (ArrayList) this.f2845d;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            a aVar = (a) arrayList.get(i4);
            int i5 = aVar.f2839a;
            if (i5 != 8) {
                if (i5 == 1) {
                    int i6 = aVar.b;
                    int i7 = aVar.f2840c + i6;
                    while (i6 < i7) {
                        if (e(i6, i4 + 1) == i3) {
                            return true;
                        }
                        i6++;
                    }
                } else {
                    continue;
                }
            } else {
                if (e(aVar.f2840c, i4 + 1) == i3) {
                    return true;
                }
            }
        }
        return false;
    }

    public void b() {
        z zVar = (z) this.f2846e;
        ArrayList arrayList = (ArrayList) this.f2845d;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((z) this.f2846e).a((a) arrayList.get(i3));
        }
        i(arrayList);
        ArrayList arrayList2 = (ArrayList) this.f2844c;
        int size2 = arrayList2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            a aVar = (a) arrayList2.get(i4);
            int i5 = aVar.f2839a;
            if (i5 == 1) {
                zVar.a(aVar);
                zVar.d(aVar.b, aVar.f2840c);
            } else if (i5 == 2) {
                zVar.a(aVar);
                int i6 = aVar.b;
                int i7 = aVar.f2840c;
                RecyclerView recyclerView = zVar.f3073a;
                recyclerView.O(i6, i7, true);
                recyclerView.f624f0 = true;
                recyclerView.f619c0.f3005c += i7;
            } else if (i5 == 4) {
                zVar.a(aVar);
                zVar.c(aVar.b, aVar.f2840c);
            } else if (i5 == 8) {
                zVar.a(aVar);
                zVar.e(aVar.b, aVar.f2840c);
            }
        }
        i(arrayList2);
    }

    public void c(a aVar) {
        int i3;
        b0.c cVar = (b0.c) this.b;
        int i4 = aVar.f2839a;
        if (i4 == 1 || i4 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iK = k(aVar.b, i4);
        int i5 = aVar.b;
        int i6 = aVar.f2839a;
        if (i6 == 2) {
            i3 = 0;
        } else {
            if (i6 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + aVar);
            }
            i3 = 1;
        }
        int i7 = 1;
        for (int i8 = 1; i8 < aVar.f2840c; i8++) {
            int iK2 = k((i3 * i8) + aVar.b, aVar.f2839a);
            int i9 = aVar.f2839a;
            if (i9 == 2 ? iK2 != iK : !(i9 == 4 && iK2 == iK + 1)) {
                a aVarG = g(i9, iK, i7);
                d(aVarG, i5);
                cVar.c(aVarG);
                if (aVar.f2839a == 4) {
                    i5 += i7;
                }
                i7 = 1;
                iK = iK2;
            } else {
                i7++;
            }
        }
        cVar.c(aVar);
        if (i7 > 0) {
            a aVarG2 = g(aVar.f2839a, iK, i7);
            d(aVarG2, i5);
            cVar.c(aVarG2);
        }
    }

    public void d(a aVar, int i3) {
        z zVar = (z) this.f2846e;
        zVar.a(aVar);
        int i4 = aVar.f2839a;
        if (i4 != 2) {
            if (i4 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            zVar.c(i3, aVar.f2840c);
        } else {
            int i5 = aVar.f2840c;
            RecyclerView recyclerView = zVar.f3073a;
            recyclerView.O(i3, i5, true);
            recyclerView.f624f0 = true;
            recyclerView.f619c0.f3005c += i5;
        }
    }

    public int e(int i3, int i4) {
        ArrayList arrayList = (ArrayList) this.f2845d;
        int size = arrayList.size();
        while (i4 < size) {
            a aVar = (a) arrayList.get(i4);
            int i5 = aVar.f2839a;
            if (i5 == 8) {
                int i6 = aVar.b;
                if (i6 == i3) {
                    i3 = aVar.f2840c;
                } else {
                    if (i6 < i3) {
                        i3--;
                    }
                    if (aVar.f2840c <= i3) {
                        i3++;
                    }
                }
            } else {
                int i7 = aVar.b;
                if (i7 > i3) {
                    continue;
                } else if (i5 == 2) {
                    int i8 = aVar.f2840c;
                    if (i3 < i7 + i8) {
                        return -1;
                    }
                    i3 -= i8;
                } else if (i5 == 1) {
                    i3 += aVar.f2840c;
                }
            }
            i4++;
        }
        return i3;
    }

    public boolean f() {
        return ((ArrayList) this.f2844c).size() > 0;
    }

    public a g(int i3, int i4, int i5) {
        a aVar = (a) ((b0.c) this.b).a();
        if (aVar != null) {
            aVar.f2839a = i3;
            aVar.b = i4;
            aVar.f2840c = i5;
            return aVar;
        }
        a aVar2 = new a();
        aVar2.f2839a = i3;
        aVar2.b = i4;
        aVar2.f2840c = i5;
        return aVar2;
    }

    public void h(a aVar) {
        z zVar = (z) this.f2846e;
        ((ArrayList) this.f2845d).add(aVar);
        int i3 = aVar.f2839a;
        if (i3 == 1) {
            zVar.d(aVar.b, aVar.f2840c);
            return;
        }
        if (i3 == 2) {
            int i4 = aVar.b;
            int i5 = aVar.f2840c;
            RecyclerView recyclerView = zVar.f3073a;
            recyclerView.O(i4, i5, false);
            recyclerView.f624f0 = true;
            return;
        }
        if (i3 == 4) {
            zVar.c(aVar.b, aVar.f2840c);
        } else if (i3 == 8) {
            zVar.e(aVar.b, aVar.f2840c);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + aVar);
        }
    }

    public void i(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            a aVar = (a) arrayList.get(i3);
            aVar.getClass();
            ((b0.c) this.b).c(aVar);
        }
        arrayList.clear();
    }

    public void j() {
        q1 q1Var = (q1) this.f2844c;
        androidx.activity.d dVar = (androidx.activity.d) this.f;
        q1Var.c(dVar);
        ((ah) this.f2846e).a();
        if (((Boolean) ((ah) this.f2845d).a()).booleanValue()) {
            ((e0.b) this.b).b(dVar, 33L);
        }
    }

    public int k(int i3, int i4) {
        int i5;
        int i6;
        b0.c cVar = (b0.c) this.b;
        ArrayList arrayList = (ArrayList) this.f2845d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            a aVar = (a) arrayList.get(size);
            int i7 = aVar.f2839a;
            if (i7 == 8) {
                int i8 = aVar.b;
                int i9 = aVar.f2840c;
                if (i8 < i9) {
                    i6 = i8;
                    i5 = i9;
                } else {
                    i5 = i8;
                    i6 = i9;
                }
                if (i3 < i6 || i3 > i5) {
                    if (i3 < i8) {
                        if (i4 == 1) {
                            aVar.b = i8 + 1;
                            aVar.f2840c = i9 + 1;
                        } else if (i4 == 2) {
                            aVar.b = i8 - 1;
                            aVar.f2840c = i9 - 1;
                        }
                    }
                } else if (i6 == i8) {
                    if (i4 == 1) {
                        aVar.f2840c = i9 + 1;
                    } else if (i4 == 2) {
                        aVar.f2840c = i9 - 1;
                    }
                    i3++;
                } else {
                    if (i4 == 1) {
                        aVar.b = i8 + 1;
                    } else if (i4 == 2) {
                        aVar.b = i8 - 1;
                    }
                    i3--;
                }
            } else {
                int i10 = aVar.b;
                if (i10 <= i3) {
                    if (i7 == 1) {
                        i3 -= aVar.f2840c;
                    } else if (i7 == 2) {
                        i3 += aVar.f2840c;
                    }
                } else if (i4 == 1) {
                    aVar.b = i10 + 1;
                } else if (i4 == 2) {
                    aVar.b = i10 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            a aVar2 = (a) arrayList.get(size2);
            if (aVar2.f2839a == 8) {
                int i11 = aVar2.f2840c;
                if (i11 == aVar2.b || i11 < 0) {
                    arrayList.remove(size2);
                    cVar.c(aVar2);
                }
            } else if (aVar2.f2840c <= 0) {
                arrayList.remove(size2);
                cVar.c(aVar2);
            }
        }
        return i3;
    }

    public String toString() {
        switch (this.f2843a) {
            case 2:
                List list = (List) this.f2846e;
                StringBuilder sb = new StringBuilder();
                sb.append("FontRequest {mProviderAuthority: " + ((String) this.b) + ", mProviderPackage: " + ((String) this.f2844c) + ", mQuery: " + ((String) this.f2845d) + ", mCertificates:");
                for (int i3 = 0; i3 < list.size(); i3++) {
                    sb.append(" [");
                    List list2 = (List) list.get(i3);
                    for (int i4 = 0; i4 < list2.size(); i4++) {
                        sb.append(" \"");
                        sb.append(Base64.encodeToString((byte[]) list2.get(i4), 0));
                        sb.append("\"");
                    }
                    sb.append(" ]");
                }
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public b(String str, String str2, String str3, List list) {
        this.f2843a = 2;
        str.getClass();
        this.b = str;
        str2.getClass();
        this.f2844c = str2;
        this.f2845d = str3;
        list.getClass();
        this.f2846e = list;
        this.f = str + "-" + str2 + "-" + str3;
    }

    public b(z zVar) {
        this.f2843a = 0;
        this.b = new b0.c(30);
        this.f2844c = new ArrayList();
        this.f2845d = new ArrayList();
        this.f2846e = zVar;
        this.f = new androidx.emoji2.text.m(23, this);
    }
}
