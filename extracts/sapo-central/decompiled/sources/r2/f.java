package r2;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import kotlinx.coroutines.android.AndroidDispatcherFactory;
import p2.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f3101a;

    static {
        String property;
        Object next;
        int i3 = h.f3102a;
        p pVarCreateDispatcher = null;
        try {
            property = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null) {
            Boolean.parseBoolean(property);
        }
        try {
            List listW = n2.g.W(n2.g.U(Arrays.asList(new AndroidDispatcherFactory()).iterator()));
            Iterator it = listW.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int loadPriority = ((e) next).getLoadPriority();
                    do {
                        Object next2 = it.next();
                        int loadPriority2 = ((e) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            e eVar = (e) next;
            if (eVar != null) {
                try {
                    pVarCreateDispatcher = eVar.createDispatcher(listW);
                } catch (Throwable th) {
                    eVar.hintOnError();
                    throw th;
                }
            }
            if (pVarCreateDispatcher == null) {
                throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
            }
            f3101a = pVarCreateDispatcher;
        } catch (Throwable th2) {
            throw new ServiceConfigurationError(th2.getMessage(), th2);
        }
    }
}
