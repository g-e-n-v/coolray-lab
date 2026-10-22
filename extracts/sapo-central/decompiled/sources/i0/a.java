package i0;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.emoji2.text.m;
import c0.a0;
import c0.p0;
import com.google.android.material.chip.Chip;
import d0.f;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a extends m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f2238c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(9);
        this.f2238c = bVar;
    }

    @Override // androidx.emoji2.text.m
    public final f p(int i3) {
        return new f(AccessibilityNodeInfo.obtain(this.f2238c.n(i3).f1533a));
    }

    @Override // androidx.emoji2.text.m
    public final f q(int i3) {
        b bVar = this.f2238c;
        int i4 = i3 == 2 ? bVar.f2248k : bVar.f2249l;
        if (i4 == Integer.MIN_VALUE) {
            return null;
        }
        return p(i4);
    }

    @Override // androidx.emoji2.text.m
    public final boolean t(int i3, int i4, Bundle bundle) {
        int i5;
        b bVar = this.f2238c;
        Chip chip = bVar.f2246i;
        if (i3 == -1) {
            WeakHashMap weakHashMap = p0.f727a;
            return a0.j(chip, i4, bundle);
        }
        if (i4 == 1) {
            return bVar.p(i3);
        }
        if (i4 == 2) {
            return bVar.j(i3);
        }
        boolean z2 = false;
        if (i4 == 64) {
            AccessibilityManager accessibilityManager = bVar.f2245h;
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i5 = bVar.f2248k) == i3) {
                return false;
            }
            if (i5 != Integer.MIN_VALUE) {
                bVar.f2248k = Integer.MIN_VALUE;
                chip.invalidate();
                bVar.q(i5, 65536);
            }
            bVar.f2248k = i3;
            chip.invalidate();
            bVar.q(i3, 32768);
            return true;
        }
        if (i4 == 128) {
            if (bVar.f2248k != i3) {
                return false;
            }
            bVar.f2248k = Integer.MIN_VALUE;
            chip.invalidate();
            bVar.q(i3, 65536);
            return true;
        }
        Chip chip2 = ((j1.c) bVar).f2299q;
        if (i4 == 16) {
            if (i3 == 0) {
                return chip2.performClick();
            }
            if (i3 == 1) {
                chip2.playSoundEffect(0);
                View.OnClickListener onClickListener = chip2.f1364h;
                if (onClickListener != null) {
                    onClickListener.onClick(chip2);
                    z2 = true;
                }
                chip2.f1373q.q(1, 1);
            }
        }
        return z2;
    }
}
