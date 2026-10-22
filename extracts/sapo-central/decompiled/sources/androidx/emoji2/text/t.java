package androidx.emoji2.text;

import android.content.Context;
import android.graphics.Typeface;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import h.c0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f359a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f361d;

    public t() {
        this.f359a = new b0.c(10);
        this.b = new l.k();
        this.f360c = new ArrayList();
        this.f361d = new HashSet();
    }

    public void a(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((l.k) this.b).getOrDefault(obj, null);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i3 = 0; i3 < size; i3++) {
                a(arrayList2.get(i3), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public g.f b(g.a aVar) {
        ArrayList arrayList = (ArrayList) this.f360c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            g.f fVar = (g.f) arrayList.get(i3);
            if (fVar != null && fVar.b == aVar) {
                return fVar;
            }
        }
        g.f fVar2 = new g.f((Context) this.b, aVar);
        arrayList.add(fVar2);
        return fVar2;
    }

    public boolean c(g.a aVar, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f359a).onActionItemClicked(b(aVar), new h.t((Context) this.b, (x.a) menuItem));
    }

    public boolean d(g.a aVar, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.f359a;
        g.f fVarB = b(aVar);
        l.k kVar = (l.k) this.f361d;
        Menu c0Var = (Menu) kVar.getOrDefault(menu, null);
        if (c0Var == null) {
            c0Var = new c0((Context) this.b, (h.m) menu);
            kVar.put(menu, c0Var);
        }
        return callback.onCreateActionMode(fVarB, c0Var);
    }

    public t(Typeface typeface, j0.b bVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        this.f361d = typeface;
        this.f359a = bVar;
        this.f360c = new s(1024);
        int iA = bVar.a(6);
        if (iA != 0) {
            int i7 = iA + bVar.f739a;
            i3 = ((ByteBuffer) bVar.f741d).getInt(((ByteBuffer) bVar.f741d).getInt(i7) + i7);
        } else {
            i3 = 0;
        }
        this.b = new char[i3 * 2];
        int iA2 = bVar.a(6);
        if (iA2 != 0) {
            int i8 = iA2 + bVar.f739a;
            i4 = ((ByteBuffer) bVar.f741d).getInt(((ByteBuffer) bVar.f741d).getInt(i8) + i8);
        } else {
            i4 = 0;
        }
        for (int i9 = 0; i9 < i4; i9++) {
            o oVar = new o(this, i9);
            j0.a aVarB = oVar.b();
            int iA3 = aVarB.a(4);
            Character.toChars(iA3 != 0 ? ((ByteBuffer) aVarB.f741d).getInt(iA3 + aVarB.f739a) : 0, (char[]) this.b, i9 * 2);
            j0.a aVarB2 = oVar.b();
            int iA4 = aVarB2.a(16);
            if (iA4 != 0) {
                int i10 = iA4 + aVarB2.f739a;
                i5 = ((ByteBuffer) aVarB2.f741d).getInt(((ByteBuffer) aVarB2.f741d).getInt(i10) + i10);
            } else {
                i5 = 0;
            }
            a1.b.j("invalid metadata codepoint length", i5 > 0);
            s sVar = (s) this.f360c;
            j0.a aVarB3 = oVar.b();
            int iA5 = aVarB3.a(16);
            if (iA5 != 0) {
                int i11 = iA5 + aVarB3.f739a;
                i6 = ((ByteBuffer) aVarB3.f741d).getInt(((ByteBuffer) aVarB3.f741d).getInt(i11) + i11);
            } else {
                i6 = 0;
            }
            sVar.a(oVar, 0, i6 - 1);
        }
    }

    public t(Context context, ActionMode.Callback callback) {
        this.b = context;
        this.f359a = callback;
        this.f360c = new ArrayList();
        this.f361d = new l.k();
    }
}
