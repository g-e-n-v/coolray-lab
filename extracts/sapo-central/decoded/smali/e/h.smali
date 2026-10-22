.class public Le/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/q;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Le/h;->a:I

    iput-object p2, p0, Le/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Le/i;->i(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Le/h;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Le/d;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 5
    invoke-static {p1, p2}, Le/i;->i(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Le/d;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Le/h;->b:Ljava/lang/Object;

    .line 6
    iput p2, p0, Le/h;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/h;->b:Ljava/lang/Object;

    iput p2, p0, Le/h;->a:I

    return-void
.end method


# virtual methods
.method public a()Le/i;
    .locals 12

    new-instance v0, Le/i;

    iget-object v1, p0, Le/h;->b:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Le/d;

    iget-object v1, v3, Le/d;->a:Landroid/view/ContextThemeWrapper;

    iget-object v4, v3, Le/d;->a:Landroid/view/ContextThemeWrapper;

    iget v2, p0, Le/h;->a:I

    invoke-direct {v0, v1, v2}, Le/i;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object v1, v3, Le/d;->e:Landroid/view/View;

    iget-object v8, v0, Le/i;->e:Le/g;

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    iput-object v1, v8, Le/g;->w:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, v3, Le/d;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput-object v1, v8, Le/g;->d:Ljava/lang/CharSequence;

    iget-object v2, v8, Le/g;->u:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v3, Le/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iput-object v1, v8, Le/g;->s:Landroid/graphics/drawable/Drawable;

    iget-object v2, v8, Le/g;->t:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v8, Le/g;->t:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v1, v3, Le/d;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iput-object v1, v8, Le/g;->e:Ljava/lang/CharSequence;

    iget-object v2, v8, Le/g;->v:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, v3, Le/d;->g:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    iget-object v5, v3, Le/d;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v8, v2, v1, v5}, Le/g;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object v1, v3, Le/d;->i:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, -0x2

    iget-object v5, v3, Le/d;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v8, v2, v1, v5}, Le/g;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object v1, v3, Le/d;->k:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, -0x3

    iget-object v5, v3, Le/d;->l:Lw0/z8;

    invoke-virtual {v8, v2, v1, v5}, Le/g;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_3
    iget-object v1, v3, Le/d;->p:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_7

    iget-object v1, v3, Le/d;->q:Ljava/lang/Object;

    if-eqz v1, :cond_f

    :cond_7
    iget-object v1, v3, Le/d;->b:Landroid/view/LayoutInflater;

    iget v2, v8, Le/g;->A:I

    invoke-virtual {v1, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v1, v3, Le/d;->u:Z

    if-eqz v1, :cond_8

    new-instance v2, Le/a;

    iget v5, v8, Le/g;->B:I

    iget-object v6, v3, Le/d;->p:[Ljava/lang/CharSequence;

    invoke-direct/range {v2 .. v7}, Le/a;-><init>(Le/d;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_5

    :cond_8
    iget-boolean v1, v3, Le/d;->v:Z

    if-eqz v1, :cond_9

    iget v1, v8, Le/g;->C:I

    goto :goto_4

    :cond_9
    iget v1, v8, Le/g;->D:I

    :goto_4
    iget-object v2, v3, Le/d;->q:Ljava/lang/Object;

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance v2, Le/f;

    const v5, 0x1020014

    iget-object v6, v3, Le/d;->p:[Ljava/lang/CharSequence;

    invoke-direct {v2, v4, v1, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_5
    iput-object v2, v8, Le/g;->x:Landroid/widget/ListAdapter;

    iget v1, v3, Le/d;->w:I

    iput v1, v8, Le/g;->y:I

    iget-object v1, v3, Le/d;->r:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_b

    new-instance v1, Le/b;

    invoke-direct {v1, v3, v8}, Le/b;-><init>(Le/d;Le/g;)V

    invoke-virtual {v7, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_6

    :cond_b
    iget-object v1, v3, Le/d;->x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_c

    new-instance v1, Le/c;

    invoke-direct {v1, v3, v7, v8}, Le/c;-><init>(Le/d;Landroidx/appcompat/app/AlertController$RecycleListView;Le/g;)V

    invoke-virtual {v7, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_c
    :goto_6
    iget-boolean v1, v3, Le/d;->v:Z

    if-eqz v1, :cond_d

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_7

    :cond_d
    iget-boolean v1, v3, Le/d;->u:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_e
    :goto_7
    iput-object v7, v8, Le/g;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_f
    iget-object v1, v3, Le/d;->s:Landroid/view/View;

    if-eqz v1, :cond_10

    iput-object v1, v8, Le/g;->g:Landroid/view/View;

    iput-boolean v9, v8, Le/g;->h:Z

    :cond_10
    iget-boolean v1, v3, Le/d;->m:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v1, v3, Le/d;->m:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_11
    iget-object v1, v3, Le/d;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v3, Le/d;->o:Lh/n;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_12
    return-object v0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Le/h;->b:Ljava/lang/Object;

    check-cast v0, Le/d;

    iget-object v1, v0, Le/d;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Le/d;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Le/d;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Le/h;->b:Ljava/lang/Object;

    check-cast v0, Le/d;

    iput-object p1, v0, Le/d;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Le/d;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public d(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Le/h;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, Le/h;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public e(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Le/h;->b:Ljava/lang/Object;

    check-cast v0, Le/d;

    iget-object v1, v0, Le/d;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Le/d;->g:Ljava/lang/CharSequence;

    iput-object p2, v0, Le/d;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Le/h;->b:Ljava/lang/Object;

    check-cast v0, Le/d;

    iput-object p1, v0, Le/d;->g:Ljava/lang/CharSequence;

    iput-object p2, v0, Le/d;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Le/h;->b:Ljava/lang/Object;

    check-cast v0, Le/d;

    iget-object v1, v0, Le/d;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Le/d;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public h()Le/i;
    .locals 1

    invoke-virtual {p0}, Le/h;->a()Le/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
