.class public final Lu1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu1/l;


# direct methods
.method public synthetic constructor <init>(Lu1/l;I)V
    .locals 0

    iput p2, p0, Lu1/a;->a:I

    iput-object p1, p0, Lu1/a;->b:Lu1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 13

    iget v0, p0, Lu1/a;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lu1/a;->b:Lu1/l;

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    check-cast v2, Lu1/p;

    iget-object p1, v2, Lu1/l;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v2}, Lu1/p;->d(Lu1/p;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, v2, Lu1/p;->d:Li/o2;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_0
    check-cast v2, Lu1/k;

    iget-object v0, v2, Lu1/k;->d:Li/o2;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v2, v4}, Lu1/k;->d(Lu1/k;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    iget-object v5, v2, Lu1/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v6, v2, Lu1/k;->m:Ls1/g;

    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ne v6, v3, :cond_1

    iget-object v6, v2, Lu1/k;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v6

    if-eqz v6, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Ls1/g;

    move-result-object v8

    const v9, 0x7f0300b3

    invoke-static {v4, v9}, Lk1/a;->y(Landroid/view/View;I)I

    move-result v9

    const v10, 0x10100a7

    filled-new-array {v10}, [I

    move-result-object v10

    new-array v11, v1, [I

    filled-new-array {v10, v11}, [[I

    move-result-object v10

    const v11, 0x3dcccccd    # 0.1f

    if-ne v6, v7, :cond_3

    const v5, 0x7f0300c2

    invoke-static {v4, v5}, Lk1/a;->y(Landroid/view/View;I)I

    move-result v5

    new-instance v6, Ls1/g;

    iget-object v12, v8, Ls1/g;->a:Ls1/f;

    iget-object v12, v12, Ls1/f;->a:Ls1/k;

    invoke-direct {v6, v12}, Ls1/g;-><init>(Ls1/k;)V

    invoke-static {v9, v5, v11}, Lk1/a;->H(IIF)I

    move-result v9

    filled-new-array {v9, v1}, [I

    move-result-object v11

    new-instance v12, Landroid/content/res/ColorStateList;

    invoke-direct {v12, v10, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v12}, Ls1/g;->i(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6, v5}, Ls1/g;->setTint(I)V

    filled-new-array {v9, v5}, [I

    move-result-object v5

    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v10, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Ls1/g;

    iget-object v10, v8, Ls1/g;->a:Ls1/f;

    iget-object v10, v10, Ls1/f;->a:Ls1/k;

    invoke-direct {v5, v10}, Ls1/g;-><init>(Ls1/k;)V

    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Ls1/g;->setTint(I)V

    new-instance v10, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v10, v9, v6, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v5, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v10, v5, v1

    aput-object v8, v5, v3

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget-object v5, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4, v6}, Lc0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-ne v6, v3, :cond_4

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v5

    invoke-static {v9, v5, v11}, Lk1/a;->H(IIF)I

    move-result v6

    filled-new-array {v6, v5}, [I

    move-result-object v5

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v10, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v5, v6, v8, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v6, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4, v5}, Lc0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    new-instance v5, Lu1/i;

    invoke-direct {v5, v2, v4}, Lu1/i;-><init>(Lu1/k;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, v2, Lu1/k;->e:Li/q2;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Lu1/j;

    invoke-direct {v5, v2}, Lu1/j;-><init>(Lu1/k;)V

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    invoke-virtual {v4, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v2, Lu1/k;->f:Lu1/h;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lu1/r;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    :pswitch_1
    check-cast v2, Lu1/e;

    iget-object v0, v2, Lu1/e;->d:Li/o2;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    iget-object p1, v2, Lu1/e;->e:Li/q2;

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
