package g;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import h.p;
import i.k1;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class i extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class[] f1780e;
    public static final Class[] f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f1781a;
    public final Object[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f1782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f1783d;

    static {
        Class[] clsArr = {Context.class};
        f1780e = clsArr;
        f = clsArr;
    }

    public i(Context context) {
        super(context);
        this.f1782c = context;
        Object[] objArr = {context};
        this.f1781a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int i3;
        ColorStateList colorStateList;
        int resourceId;
        h hVar = new h(this, menu);
        int eventType = xmlPullParser.getEventType();
        do {
            i3 = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlPullParser.next();
                break;
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (!z2) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType == i3) {
                if (!z3) {
                    String name2 = xmlPullParser.getName();
                    boolean zEquals = name2.equals("group");
                    Context context = this.f1782c;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.a.f1509p);
                        hVar.b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                        hVar.f1757c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        hVar.f1758d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        hVar.f1759e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        hVar.f = typedArrayObtainStyledAttributes.getBoolean(2, true);
                        hVar.f1760g = typedArrayObtainStyledAttributes.getBoolean(0, true);
                        typedArrayObtainStyledAttributes.recycle();
                    } else if (name2.equals("item")) {
                        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, d.a.f1510q);
                        hVar.f1762i = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
                        hVar.f1763j = (typedArrayObtainStyledAttributes2.getInt(5, hVar.f1757c) & (-65536)) | (typedArrayObtainStyledAttributes2.getInt(6, hVar.f1758d) & 65535);
                        hVar.f1764k = typedArrayObtainStyledAttributes2.getText(7);
                        hVar.f1765l = typedArrayObtainStyledAttributes2.getText(8);
                        hVar.f1766m = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                        String string = typedArrayObtainStyledAttributes2.getString(9);
                        hVar.f1767n = string == null ? (char) 0 : string.charAt(0);
                        hVar.f1768o = typedArrayObtainStyledAttributes2.getInt(16, 4096);
                        String string2 = typedArrayObtainStyledAttributes2.getString(10);
                        hVar.f1769p = string2 == null ? (char) 0 : string2.charAt(0);
                        hVar.f1770q = typedArrayObtainStyledAttributes2.getInt(20, 4096);
                        if (typedArrayObtainStyledAttributes2.hasValue(11)) {
                            hVar.f1771r = typedArrayObtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                        } else {
                            hVar.f1771r = hVar.f1759e;
                        }
                        hVar.f1772s = typedArrayObtainStyledAttributes2.getBoolean(3, false);
                        hVar.f1773t = typedArrayObtainStyledAttributes2.getBoolean(4, hVar.f);
                        hVar.f1774u = typedArrayObtainStyledAttributes2.getBoolean(1, hVar.f1760g);
                        hVar.f1775v = typedArrayObtainStyledAttributes2.getInt(21, -1);
                        hVar.f1778y = typedArrayObtainStyledAttributes2.getString(12);
                        hVar.f1776w = typedArrayObtainStyledAttributes2.getResourceId(13, 0);
                        hVar.f1777x = typedArrayObtainStyledAttributes2.getString(15);
                        String string3 = typedArrayObtainStyledAttributes2.getString(14);
                        boolean z4 = string3 != null;
                        if (z4 && hVar.f1776w == 0 && hVar.f1777x == null) {
                            hVar.f1779z = (p) hVar.a(string3, f, this.b);
                        } else {
                            if (z4) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            hVar.f1779z = null;
                        }
                        hVar.A = typedArrayObtainStyledAttributes2.getText(17);
                        hVar.B = typedArrayObtainStyledAttributes2.getText(22);
                        if (typedArrayObtainStyledAttributes2.hasValue(19)) {
                            hVar.D = k1.b(typedArrayObtainStyledAttributes2.getInt(19, -1), hVar.D);
                        } else {
                            hVar.D = null;
                        }
                        if (typedArrayObtainStyledAttributes2.hasValue(18)) {
                            if (!typedArrayObtainStyledAttributes2.hasValue(18) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = a1.b.t(context, resourceId)) == null) {
                                colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(18);
                            }
                            hVar.C = colorStateList;
                        } else {
                            hVar.C = null;
                        }
                        typedArrayObtainStyledAttributes2.recycle();
                        hVar.f1761h = false;
                        xmlPullParser = xmlPullParser;
                    } else if (name2.equals("menu")) {
                        hVar.f1761h = true;
                        SubMenu subMenuAddSubMenu = hVar.f1756a.addSubMenu(hVar.b, hVar.f1762i, hVar.f1763j, hVar.f1764k);
                        hVar.b(subMenuAddSubMenu.getItem());
                        xmlPullParser = xmlPullParser;
                        b(xmlPullParser, attributeSet, subMenuAddSubMenu);
                    } else {
                        xmlPullParser = xmlPullParser;
                        str = name2;
                        z3 = true;
                    }
                }
                z2 = z2;
            } else if (eventType != 3) {
                z2 = z2;
            } else {
                String name3 = xmlPullParser.getName();
                if (z3 && name3.equals(str)) {
                    xmlPullParser = xmlPullParser;
                    z3 = false;
                    str = null;
                } else {
                    if (name3.equals("group")) {
                        hVar.b = 0;
                        hVar.f1757c = 0;
                        hVar.f1758d = 0;
                        hVar.f1759e = 0;
                        hVar.f = true;
                        hVar.f1760g = true;
                    } else if (name3.equals("item")) {
                        if (!hVar.f1761h) {
                            p pVar = hVar.f1779z;
                            if (pVar == null || !pVar.f1934a.hasSubMenu()) {
                                hVar.f1761h = true;
                                hVar.b(hVar.f1756a.add(hVar.b, hVar.f1762i, hVar.f1763j, hVar.f1764k));
                            } else {
                                hVar.f1761h = true;
                                hVar.b(hVar.f1756a.addSubMenu(hVar.b, hVar.f1762i, hVar.f1763j, hVar.f1764k).getItem());
                            }
                        }
                    } else if (name3.equals("menu")) {
                        z2 = true;
                    }
                    z2 = z2;
                }
            }
            eventType = xmlPullParser.next();
            i3 = 2;
            z2 = z2;
            z3 = z3;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i3, Menu menu) {
        if (!(menu instanceof h.m)) {
            super.inflate(i3, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f1782c.getResources().getLayout(i3);
                    b(layout, Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (IOException e3) {
                    throw new InflateException("Error inflating menu XML", e3);
                }
            } catch (XmlPullParserException e4) {
                throw new InflateException("Error inflating menu XML", e4);
            }
        } catch (Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
