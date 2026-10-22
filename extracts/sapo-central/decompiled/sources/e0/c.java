package e0;

import android.content.ClipData;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.emoji2.text.m;
import c0.e;
import c0.f;
import c0.p0;
import i.v;

/* JADX INFO: loaded from: classes.dex */
public final class c extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f1710a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(InputConnection inputConnection, b bVar) {
        super(inputConnection, false);
        this.f1710a = bVar;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i3, Bundle bundle) {
        m mVar;
        Bundle bundle2;
        e mVar2;
        if (inputContentInfo == null) {
            mVar = null;
        } else {
            mVar = new m(12, new m(11, inputContentInfo));
        }
        v vVar = (v) this.f1710a.b;
        if ((i3 & 1) != 0) {
            try {
                ((InputContentInfo) ((m) mVar.b).b).requestPermission();
                InputContentInfo inputContentInfo2 = (InputContentInfo) ((m) mVar.b).b;
                bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle2.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo2);
            } catch (Exception e3) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e3);
            }
        } else {
            bundle2 = bundle;
        }
        InputContentInfo inputContentInfo3 = (InputContentInfo) ((m) mVar.b).b;
        ClipData clipData = new ClipData(inputContentInfo3.getDescription(), new ClipData.Item(inputContentInfo3.getContentUri()));
        if (Build.VERSION.SDK_INT >= 31) {
            mVar2 = new m(clipData, 2);
        } else {
            f fVar = new f();
            fVar.b = clipData;
            fVar.f713c = 2;
            mVar2 = fVar;
        }
        mVar2.j(inputContentInfo3.getLinkUri());
        mVar2.setExtras(bundle2);
        if (p0.e(vVar, mVar2.build()) == null) {
            return true;
        }
        return super.commitContent(inputContentInfo, i3, bundle);
    }
}
