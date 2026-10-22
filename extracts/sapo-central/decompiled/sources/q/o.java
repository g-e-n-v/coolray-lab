package q;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class o extends View {
    public o(Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i3) {
        e eVar = (e) getLayoutParams();
        eVar.f2727a = i3;
        setLayoutParams(eVar);
    }

    public void setGuidelineEnd(int i3) {
        e eVar = (e) getLayoutParams();
        eVar.b = i3;
        setLayoutParams(eVar);
    }

    public void setGuidelinePercent(float f) {
        e eVar = (e) getLayoutParams();
        eVar.f2730c = f;
        setLayoutParams(eVar);
    }

    @Override // android.view.View
    public void setVisibility(int i3) {
    }
}
