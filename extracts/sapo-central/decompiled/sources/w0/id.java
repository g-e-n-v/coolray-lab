package w0;

import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.util.Log;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.MediaBrowserHostActivity;
import com.ex.auto.R;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class id extends MediaBrowser.SubscriptionCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaBrowserHostActivity f3724a;

    public id(MediaBrowserHostActivity mediaBrowserHostActivity) {
        this.f3724a = mediaBrowserHostActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.view.ViewGroup, android.widget.GridLayout] */
    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onChildrenLoaded(String str, List list) {
        i2.g.e(str, "parentId");
        i2.g.e(list, "children");
        MediaBrowserHostActivity mediaBrowserHostActivity = this.f3724a;
        x1.a aVar = (x1.a) y1.g.f0(mediaBrowserHostActivity.f1084e);
        String str2 = null;
        if (str.equals(aVar != null ? (String) aVar.f4641a : null)) {
            int i3 = 0;
            if (list.isEmpty()) {
                mediaBrowserHostActivity.g(mediaBrowserHostActivity.getString(R.string.k_mbh_empty), false);
                return;
            }
            mediaBrowserHostActivity.g(null, false);
            GridLayout gridLayout = mediaBrowserHostActivity.f1087i;
            if (gridLayout == null) {
                i2.g.h("grade");
                throw null;
            }
            gridLayout.removeAllViews();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) it.next();
                ?? r7 = mediaBrowserHostActivity.f1087i;
                if (r7 == 0) {
                    ?? r16 = str2;
                    i2.g.h("grade");
                    throw r16;
                }
                MediaDescription description = mediaItem.getDescription();
                i2.g.d(description, "getDescription(...)");
                CharSequence title = description.getTitle();
                String string = title != null ? title.toString() : str2;
                if (string == null) {
                    string = "";
                }
                CharSequence subtitle = description.getSubtitle();
                String string2 = subtitle != null ? subtitle.toString() : str2;
                String str3 = string2 != null ? string2 : "";
                ImageView imageView = new ImageView(mediaBrowserHostActivity);
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView.setBackgroundResource(R.drawable.bg_master_inner_card);
                imageView.setLayoutParams(new LinearLayout.LayoutParams(mediaBrowserHostActivity.f(190), mediaBrowserHostActivity.f(190)));
                mediaBrowserHostActivity.c(imageView, description);
                LinearLayout linearLayout = new LinearLayout(mediaBrowserHostActivity);
                linearLayout.setOrientation(i3);
                linearLayout.setGravity(16);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(mediaBrowserHostActivity.f(190), -2);
                layoutParams.topMargin = mediaBrowserHostActivity.f(8);
                linearLayout.setLayoutParams(layoutParams);
                TextView textView = new TextView(mediaBrowserHostActivity);
                textView.setText(string);
                textView.setTextColor(mediaBrowserHostActivity.getColor(R.color.cx_text_primary));
                textView.setTextSize(17.0f);
                textView.setMaxLines(1);
                String str4 = str2;
                textView.setLayoutParams(new LinearLayout.LayoutParams(i3, -2, 1.0f));
                linearLayout.addView(textView);
                TextView textView2 = new TextView(mediaBrowserHostActivity);
                textView2.setText(mediaItem.isBrowsable() ? "›" : "▶");
                textView2.setTextColor(mediaBrowserHostActivity.getColor(R.color.cx_text_muted));
                textView2.setTextSize(16.0f);
                linearLayout.addView(textView2);
                LinearLayout linearLayout2 = new LinearLayout(mediaBrowserHostActivity);
                linearLayout2.setOrientation(1);
                linearLayout2.setClickable(true);
                linearLayout2.setPadding(mediaBrowserHostActivity.f(10), mediaBrowserHostActivity.f(10), mediaBrowserHostActivity.f(10), mediaBrowserHostActivity.f(10));
                GridLayout.LayoutParams layoutParams2 = new GridLayout.LayoutParams();
                layoutParams2.width = mediaBrowserHostActivity.f(210);
                layoutParams2.height = -2;
                layoutParams2.setMargins(mediaBrowserHostActivity.f(4), mediaBrowserHostActivity.f(4), mediaBrowserHostActivity.f(4), mediaBrowserHostActivity.f(10));
                linearLayout2.setLayoutParams(layoutParams2);
                linearLayout2.addView(imageView);
                linearLayout2.addView(linearLayout);
                if (str3.length() > 0) {
                    TextView textView3 = new TextView(mediaBrowserHostActivity);
                    textView3.setText(str3);
                    textView3.setTextColor(mediaBrowserHostActivity.getColor(R.color.cx_text_secondary));
                    textView3.setTextSize(14.0f);
                    textView3.setMaxLines(1);
                    textView3.setLayoutParams(new LinearLayout.LayoutParams(mediaBrowserHostActivity.f(190), -2));
                    linearLayout2.addView(textView3);
                }
                linearLayout2.setOnClickListener(new y6(mediaItem, mediaBrowserHostActivity, string, 6));
                r7.addView(linearLayout2);
                str2 = str4;
                i3 = 0;
            }
        }
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onError(String str) {
        i2.g.e(str, "parentId");
        Log.w("MediaBrowserHost", "onError em ".concat(str));
        int i3 = MediaBrowserHostActivity.f1080s;
        MediaBrowserHostActivity mediaBrowserHostActivity = this.f3724a;
        String strH = mediaBrowserHostActivity.h();
        if (strH == null) {
            strH = mediaBrowserHostActivity.getString(R.string.k_mbh_load_error);
            i2.g.d(strH, "getString(...)");
        }
        mediaBrowserHostActivity.g(strH, false);
    }
}
