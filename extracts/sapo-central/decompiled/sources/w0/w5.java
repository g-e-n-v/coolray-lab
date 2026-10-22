package w0;

import android.os.Handler;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.ExSapoCastActivity;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.Politica;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w5 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4431a;

    @Override // h2.a
    public final Object a() {
        switch (this.f4431a) {
            case 0:
                x5 x5VarF = y5.f(y5.f4572i, false);
                if (x5VarF != null) {
                    return x5VarF;
                }
                throw new IllegalStateException("ponto base inválido");
            case 1:
                int i3 = ExSapoCastActivity.f910e;
                m6 m6Var = m.f3866i;
                if (m6Var != null && m6Var.f3890d) {
                    m6Var.i(17, new byte[]{(byte) 0});
                }
                return x1.e.f4647c;
            case 2:
                int i4 = ExSapoCastActivity.f910e;
                m6 m6Var2 = m.f3866i;
                if (m6Var2 != null && m6Var2.f3890d) {
                    m6Var2.i(17, new byte[]{(byte) 1});
                }
                return x1.e.f4647c;
            case 3:
                int i5 = ExSapoCastActivity.f910e;
                m6 m6Var3 = m.f3866i;
                if (m6Var3 != null && m6Var3.f3890d) {
                    m6Var3.i(17, new byte[]{(byte) 2});
                }
                return x1.e.f4647c;
            case 4:
                int i6 = ExSapoCastFloaterService.f914j;
                m6 m6Var4 = m.f3866i;
                if (m6Var4 != null && m6Var4.f3890d) {
                    m6Var4.i(17, new byte[]{(byte) 0});
                }
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                int i7 = ExSapoCastFloaterService.f914j;
                m6 m6Var5 = m.f3866i;
                if (m6Var5 != null && m6Var5.f3890d) {
                    m6Var5.i(17, new byte[]{(byte) 1});
                }
                return x1.e.f4647c;
            case MusicClient.TYPE_GESTURE /* 6 */:
                int i8 = ExSapoCastFloaterService.f914j;
                m6 m6Var6 = m.f3866i;
                if (m6Var6 != null && m6Var6.f3890d) {
                    m6Var6.i(17, new byte[]{(byte) 2});
                }
                return x1.e.f4647c;
            case PlaybackState.STATE_ERROR /* 7 */:
                int i9 = MainActivity.f1002z1;
                return x1.e.f4647c;
            case 8:
                return x1.e.f4647c;
            case 9:
                od.f4011v = true;
                Handler handler = od.f4000k;
                if (handler != null) {
                    handler.post(new r0(14));
                }
                return x1.e.f4647c;
            default:
                ArrayList arrayList = new ArrayList();
                arrayList.add(new dg("rvc_black_bg.png", "/data/local/tmp/rvc_black_bg.png", u.f4294i));
                ArrayList arrayList2 = new ArrayList();
                String strB = Politica.b(9);
                for (int i10 = 0; i10 < 10; i10++) {
                    arrayList2.add(strB + i10 + ".png");
                }
                arrayList2.add(Politica.b(10));
                Iterator it = arrayList2.iterator();
                i2.g.d(it, "iterator(...)");
                while (it.hasNext()) {
                    Object next = it.next();
                    i2.g.d(next, "next(...)");
                    String str = (String) next;
                    arrayList.add(new dg("rvc_yellow/".concat(str), "/data/local/tmp/rvc_overlay/".concat(str), eg.f3556a + '/' + str));
                }
                return arrayList;
        }
    }
}
