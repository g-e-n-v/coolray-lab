package i;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        c0.e mVar;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                mVar = new androidx.emoji2.text.m(clipData, 3);
            } else {
                c0.f fVar = new c0.f();
                fVar.b = clipData;
                fVar.f713c = 3;
                mVar = fVar;
            }
            c0.p0.e(textView, mVar.build());
            return true;
        } finally {
            textView.endBatchEdit();
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        c0.e mVar;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            mVar = new androidx.emoji2.text.m(clipData, 3);
        } else {
            c0.f fVar = new c0.f();
            fVar.b = clipData;
            fVar.f713c = 3;
            mVar = fVar;
        }
        c0.p0.e(view, mVar.build());
        return true;
    }
}
