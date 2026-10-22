.class public final Lcom/google/android/material/datepicker/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/k;->a:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/datepicker/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    check-cast p1, Lu1/p;

    iget-object v0, p1, Lu1/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {p1}, Lu1/p;->d(Lu1/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    check-cast p1, Lu1/k;

    iget-object v0, p1, Lu1/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lu1/k;->e(Lu1/k;Landroid/widget/AutoCompleteTextView;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    check-cast p1, Lu1/e;

    iget-object p1, p1, Lu1/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_3
    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->L:Li/g3;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object p1, p1, Li/g3;->b:Lh/o;

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lh/o;->collapseActionView()Z

    :cond_5
    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    check-cast p1, Lg/a;

    invoke-virtual {p1}, Lg/a;->b()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    check-cast v0, Le/g;

    iget-object v1, v0, Le/g;->i:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    iget-object v1, v0, Le/g;->k:Landroid/os/Message;

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_3

    :cond_6
    iget-object v1, v0, Le/g;->l:Landroid/widget/Button;

    if-ne p1, v1, :cond_7

    iget-object v1, v0, Le/g;->n:Landroid/os/Message;

    if-eqz v1, :cond_7

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_3

    :cond_7
    iget-object v1, v0, Le/g;->o:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    iget-object p1, v0, Le/g;->q:Landroid/os/Message;

    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    iget-object p1, v0, Le/g;->F:Le/e;

    const/4 v1, 0x1

    iget-object v0, v0, Le/g;->b:Le/i;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/datepicker/n;

    iget-object v0, p1, Lcom/google/android/material/datepicker/n;->q0:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :pswitch_6
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/datepicker/m;

    iget v0, p1, Lcom/google/android/material/datepicker/m;->V:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/m;->B(I)V

    goto :goto_4

    :cond_a
    if-ne v0, v1, :cond_b

    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/m;->B(I)V

    :cond_b
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
