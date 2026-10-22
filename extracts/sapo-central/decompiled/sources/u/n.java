package u;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f3235a = new ThreadLocal();
    public static final WeakHashMap b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f3236c = new Object();

    /* JADX WARN: Code duplicated, block: B:37:0x00c5  */
    public static Typeface a(Context context, int i3, TypedValue typedValue, int i4, b bVar, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i3, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i3) + "\" (" + Integer.toHexString(i3) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        Typeface typefaceA = null;
        if (string.startsWith("res/")) {
            int i5 = typedValue.assetCookie;
            l.f fVar = v.f.b;
            Typeface typeface = (Typeface) fVar.a(v.f.b(resources, i3, string, i5, i4));
            if (typeface != null) {
                if (bVar != null) {
                    new Handler(Looper.getMainLooper()).post(new a1.i(bVar, 3, typeface));
                }
                typefaceA = typeface;
            } else {
                try {
                    if (string.toLowerCase().endsWith(".xml")) {
                        e eVarF = b.f(resources.getXml(i3), resources);
                        if (eVarF == null) {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            if (bVar != null) {
                                bVar.a(-3);
                            }
                        } else {
                            typefaceA = v.f.a(context, eVarF, resources, i3, string, typedValue.assetCookie, i4, bVar, z2);
                        }
                    } else {
                        int i6 = typedValue.assetCookie;
                        Typeface typefaceV = v.f.f3313a.v(context, resources, i3, string, i4);
                        if (typefaceV != null) {
                            fVar.b(v.f.b(resources, i3, string, i6, i4), typefaceV);
                        }
                        if (bVar != null) {
                            if (typefaceV != null) {
                                new Handler(Looper.getMainLooper()).post(new a1.i(bVar, 3, typefaceV));
                            } else {
                                bVar.a(-3);
                            }
                        }
                        typefaceA = typefaceV;
                    }
                } catch (IOException e3) {
                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(string), e3);
                    if (bVar != null) {
                        bVar.a(-3);
                    }
                } catch (XmlPullParserException e4) {
                    Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), e4);
                    if (bVar != null) {
                        bVar.a(-3);
                    }
                }
            }
        } else if (bVar != null) {
            bVar.a(-3);
        }
        if (typefaceA != null || bVar != null) {
            return typefaceA;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i3) + " could not be retrieved.");
    }
}
