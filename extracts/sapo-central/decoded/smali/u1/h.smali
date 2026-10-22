.class public final Lu1/h;
.super Lu1/r;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lu1/k;


# direct methods
.method public constructor <init>(Lu1/k;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    iput-object p1, p0, Lu1/h;->e:Lu1/k;

    invoke-direct {p0, p2}, Lu1/r;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Ld0/f;)V
    .locals 1

    iget-object v0, p2, Ld0/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-super {p0, p1, p2}, Lu1/r;->d(Landroid/view/View;Ld0/f;)V

    iget-object p1, p0, Lu1/h;->e:Lu1/k;

    iget-object p1, p1, Lu1/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "android.widget.Spinner"

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lc0/c;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lu1/h;->e:Lu1/k;

    iget-object v0, p1, Lu1/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lu1/k;->d(Lu1/k;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p1, Lu1/k;->n:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1, v0}, Lu1/k;->e(Lu1/k;Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void
.end method
