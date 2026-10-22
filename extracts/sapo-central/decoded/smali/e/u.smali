.class public final Le/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Le/y;


# direct methods
.method public constructor <init>(Le/y;Landroid/view/Window$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/u;->e:Le/y;

    if-eqz p2, :cond_0

    iput-object p2, p0, Le/u;->a:Landroid/view/Window$Callback;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Window callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Le/u;->b:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Le/u;->b:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Le/u;->b:Z

    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2, p3}, Lg/m;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Le/u;->c:Z

    iget-object v1, p0, Le/u;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Le/u;->e:Le/y;

    invoke-virtual {v0, p1}, Le/y;->A(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v2, p0, Le/u;->e:Le/y;

    invoke-virtual {v2}, Le/y;->G()V

    iget-object v3, v2, Le/y;->o:Le/k0;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v3, Le/k0;->i:Le/j0;

    if-nez v3, :cond_1

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    iget-object v3, v3, Le/j0;->d:Lh/m;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Lh/m;->setQwertyMode(Z)V

    invoke-virtual {v3, v0, p1, v4}, Lh/m;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    move p1, v1

    goto :goto_3

    :cond_4
    iget-object v0, v2, Le/y;->M:Le/x;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Le/y;->L(Le/x;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, v2, Le/y;->M:Le/x;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Le/x;->l:Z

    goto :goto_2

    :cond_5
    iget-object v0, v2, Le/y;->M:Le/x;

    if-nez v0, :cond_6

    invoke-virtual {v2, v4}, Le/y;->F(I)Le/x;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Le/y;->M(Le/x;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Le/y;->L(Le/x;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v4, v0, Le/x;->k:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v4

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    return v4

    :cond_8
    :goto_4
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Le/u;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Lh/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Le/u;->b(ILandroid/view/Menu;)Z

    const/16 p2, 0x6c

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Le/u;->e:Le/y;

    invoke-virtual {p1}, Le/y;->G()V

    iget-object p1, p1, Le/y;->o:Le/k0;

    if-eqz p1, :cond_2

    iget-object p2, p1, Le/k0;->m:Ljava/util/ArrayList;

    iget-boolean v1, p1, Le/k0;->l:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p1, Le/k0;->l:Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-boolean v0, p0, Le/u;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Le/u;->c(ILandroid/view/Menu;)V

    const/16 p2, 0x6c

    const/4 v0, 0x0

    iget-object v1, p0, Le/u;->e:Le/y;

    if-ne p1, p2, :cond_3

    invoke-virtual {v1}, Le/y;->G()V

    iget-object p1, v1, Le/y;->o:Le/k0;

    if-eqz p1, :cond_4

    iget-object p2, p1, Le/k0;->m:Ljava/util/ArrayList;

    iget-boolean v1, p1, Le/k0;->l:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p1, Le/k0;->l:Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v1, p1}, Le/y;->F(I)Le/x;

    move-result-object p1

    iget-boolean p2, p1, Le/x;->m:Z

    if-eqz p2, :cond_4

    invoke-virtual {v1, p1, v0}, Le/y;->y(Le/x;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lg/n;->a(Landroid/view/Window$Callback;Z)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Lh/m;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lh/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Lh/m;->x:Z

    :cond_2
    iget-object v2, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    iput-boolean v1, v0, Lh/m;->x:Z

    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    iget-object v0, p0, Le/u;->e:Le/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/y;->F(I)Le/x;

    move-result-object v0

    iget-object v0, v0, Le/x;->h:Lh/m;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Le/u;->d(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/u;->d(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lg/l;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 96
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 9

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Le/u;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lg/l;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Landroidx/emoji2/text/t;

    iget-object v0, p0, Le/u;->e:Le/y;

    iget-object v1, v0, Le/y;->k:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Landroidx/emoji2/text/t;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 3
    iget-object p1, v0, Le/y;->u:Lg/a;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lg/a;->b()V

    .line 5
    :cond_1
    new-instance p1, Landroidx/activity/result/c;

    invoke-direct {p1, v0, p2}, Landroidx/activity/result/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Le/y;->G()V

    .line 7
    iget-object v2, v0, Le/y;->o:Le/k0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 8
    iget-object v6, v2, Le/k0;->i:Le/j0;

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v6}, Le/j0;->b()V

    .line 10
    :cond_2
    iget-object v6, v2, Le/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 11
    iget-object v6, v2, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 12
    new-instance v6, Le/j0;

    iget-object v7, v2, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v2, v7, p1}, Le/j0;-><init>(Le/k0;Landroid/content/Context;Landroidx/activity/result/c;)V

    .line 13
    iget-object v7, v6, Le/j0;->d:Lh/m;

    invoke-virtual {v7}, Lh/m;->w()V

    .line 14
    :try_start_0
    iget-object v8, v6, Le/j0;->e:Landroidx/activity/result/c;

    .line 15
    iget-object v8, v8, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v8, Landroidx/emoji2/text/t;

    invoke-virtual {v8, v6, v7}, Landroidx/emoji2/text/t;->d(Lg/a;Landroid/view/Menu;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v7}, Lh/m;->v()V

    if-eqz v8, :cond_3

    .line 17
    iput-object v6, v2, Le/k0;->i:Le/j0;

    .line 18
    invoke-virtual {v6}, Le/j0;->i()V

    .line 19
    iget-object v7, v2, Le/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lg/a;)V

    .line 20
    invoke-virtual {v2, v3}, Le/k0;->e0(Z)V

    goto :goto_0

    :cond_3
    move-object v6, v4

    .line 21
    :goto_0
    iput-object v6, v0, Le/y;->u:Lg/a;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v7}, Lh/m;->v()V

    .line 23
    throw p1

    .line 24
    :cond_4
    :goto_1
    iget-object v2, v0, Le/y;->u:Lg/a;

    if-nez v2, :cond_11

    .line 25
    iget-object v2, v0, Le/y;->y:Lc0/w0;

    if-eqz v2, :cond_5

    .line 26
    invoke-virtual {v2}, Lc0/w0;->b()V

    .line 27
    :cond_5
    iget-object v2, v0, Le/y;->u:Lg/a;

    if-eqz v2, :cond_6

    .line 28
    invoke-virtual {v2}, Lg/a;->b()V

    .line 29
    :cond_6
    iget-object v2, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v2, :cond_b

    .line 30
    iget-boolean v2, v0, Le/y;->I:Z

    if-eqz v2, :cond_8

    .line 31
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f030009

    .line 33
    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 34
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_7

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 36
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 37
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 38
    new-instance v6, Lg/d;

    invoke-direct {v6, v1, v5}, Lg/d;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-virtual {v6}, Lg/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v6

    .line 40
    :cond_7
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 41
    invoke-direct {v6, v1, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v6, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 43
    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f030018

    invoke-direct {v6, v1, v4, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, v0, Le/y;->w:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    .line 44
    invoke-static {v6, v7}, Lf0/m;->d(Landroid/widget/PopupWindow;I)V

    .line 45
    iget-object v6, v0, Le/y;->w:Landroid/widget/PopupWindow;

    iget-object v7, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object v6, v0, Le/y;->w:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f030003

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 48
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 50
    invoke-static {v2, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 51
    iget-object v2, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 52
    iget-object v1, v0, Le/y;->w:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 53
    new-instance v1, Le/p;

    invoke-direct {v1, v0, v3}, Le/p;-><init>(Le/y;I)V

    iput-object v1, v0, Le/y;->x:Le/p;

    goto :goto_4

    .line 54
    :cond_8
    iget-object v2, v0, Le/y;->A:Landroid/view/ViewGroup;

    const v6, 0x7f09003e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_b

    .line 55
    invoke-virtual {v0}, Le/y;->G()V

    .line 56
    iget-object v6, v0, Le/y;->o:Le/k0;

    if-eqz v6, :cond_9

    .line 57
    invoke-virtual {v6}, Le/k0;->f0()Landroid/content/Context;

    move-result-object v6

    goto :goto_2

    :cond_9
    move-object v6, v4

    :goto_2
    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    move-object v1, v6

    .line 58
    :goto_3
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 59
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 60
    :cond_b
    :goto_4
    iget-object v1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_10

    .line 61
    iget-object v1, v0, Le/y;->y:Lc0/w0;

    if-eqz v1, :cond_c

    .line 62
    invoke-virtual {v1}, Lc0/w0;->b()V

    .line 63
    :cond_c
    iget-object v1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 64
    new-instance v1, Lg/e;

    iget-object v2, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 65
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v2, v1, Lg/e;->c:Landroid/content/Context;

    .line 67
    iput-object v6, v1, Lg/e;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 68
    iput-object p1, v1, Lg/e;->e:Landroidx/activity/result/c;

    .line 69
    new-instance p1, Lh/m;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lh/m;-><init>(Landroid/content/Context;)V

    .line 70
    iput v3, p1, Lh/m;->l:I

    .line 71
    iput-object p1, v1, Lg/e;->h:Lh/m;

    .line 72
    iput-object v1, p1, Lh/m;->e:Lh/k;

    .line 73
    invoke-virtual {p2, v1, p1}, Landroidx/emoji2/text/t;->d(Lg/a;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 74
    invoke-virtual {v1}, Lg/e;->i()V

    .line 75
    iget-object p1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lg/a;)V

    .line 76
    iput-object v1, v0, Le/y;->u:Lg/a;

    .line 77
    iget-boolean p1, v0, Le/y;->z:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_d

    iget-object p1, v0, Le/y;->A:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    sget-object v2, Lc0/p0;->a:Ljava/util/WeakHashMap;

    .line 78
    invoke-static {p1}, Lc0/c0;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 79
    iget-object p1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 80
    iget-object p1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc0/w0;->a(F)V

    iput-object p1, v0, Le/y;->y:Lc0/w0;

    .line 81
    new-instance v1, Le/r;

    invoke-direct {v1, v3, v0}, Le/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lc0/w0;->d(Lc0/x0;)V

    goto :goto_5

    .line 82
    :cond_d
    iget-object p1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 83
    iget-object p1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 84
    iget-object p1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_e

    .line 85
    iget-object p1, v0, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    .line 86
    invoke-static {p1}, Lc0/d0;->c(Landroid/view/View;)V

    .line 87
    :cond_e
    :goto_5
    iget-object p1, v0, Le/y;->w:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_10

    .line 88
    iget-object p1, v0, Le/y;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v1, v0, Le/y;->x:Le/p;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 89
    :cond_f
    iput-object v4, v0, Le/y;->u:Lg/a;

    .line 90
    :cond_10
    :goto_6
    invoke-virtual {v0}, Le/y;->O()V

    .line 91
    iget-object p1, v0, Le/y;->u:Lg/a;

    .line 92
    iput-object p1, v0, Le/y;->u:Lg/a;

    .line 93
    :cond_11
    invoke-virtual {v0}, Le/y;->O()V

    .line 94
    iget-object p1, v0, Le/y;->u:Lg/a;

    if-eqz p1, :cond_12

    .line 95
    invoke-virtual {p2, p1}, Landroidx/emoji2/text/t;->b(Lg/a;)Lg/f;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v4
.end method
