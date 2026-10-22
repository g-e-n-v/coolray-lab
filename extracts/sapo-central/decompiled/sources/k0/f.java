package k0;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class f extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f2346a;
    public final d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2347c = true;

    public f(TextView textView) {
        this.f2346a = textView;
        this.b = new d(textView);
    }

    @Override // a1.b
    public final void a0(boolean z2) {
        if (z2) {
            e0();
        }
    }

    @Override // a1.b
    public final void b0(boolean z2) {
        this.f2347c = z2;
        e0();
        TextView textView = this.f2346a;
        textView.setFilters(w(textView.getFilters()));
    }

    public final void e0() {
        TextView textView = this.f2346a;
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (this.f2347c) {
            if (!(transformationMethod instanceof j) && !(transformationMethod instanceof PasswordTransformationMethod)) {
                transformationMethod = new j(transformationMethod);
            }
        } else if (transformationMethod instanceof j) {
            transformationMethod = ((j) transformationMethod).f2352a;
        }
        textView.setTransformationMethod(transformationMethod);
    }

    @Override // a1.b
    public final InputFilter[] w(InputFilter[] inputFilterArr) {
        if (!this.f2347c) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i3 = 0; i3 < inputFilterArr.length; i3++) {
                InputFilter inputFilter = inputFilterArr[i3];
                if (inputFilter instanceof d) {
                    sparseArray.put(i3, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i4 = 0;
            for (int i5 = 0; i5 < length; i5++) {
                if (sparseArray.indexOfKey(i5) < 0) {
                    inputFilterArr2[i4] = inputFilterArr[i5];
                    i4++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i6 = 0;
        while (true) {
            d dVar = this.b;
            if (i6 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = dVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i6] == dVar) {
                return inputFilterArr;
            }
            i6++;
        }
    }
}
