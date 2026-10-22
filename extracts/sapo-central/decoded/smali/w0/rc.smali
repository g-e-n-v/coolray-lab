.class public final Lw0/rc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lw0/ec;

.field public final synthetic e:Lw0/bd;

.field public final synthetic f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Lw0/ec;Lw0/bd;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/rc;->a:I

    iput-object p2, p0, Lw0/rc;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/rc;->c:Ljava/lang/String;

    iput-object p4, p0, Lw0/rc;->d:Lw0/ec;

    iput-object p5, p0, Lw0/rc;->e:Lw0/bd;

    iput-object p6, p0, Lw0/rc;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget p1, p0, Lw0/rc;->a:I

    add-int/2addr p2, p1

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw0/rc;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lw0/rc;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, p0, Lw0/rc;->c:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lw0/rc;->d:Lw0/ec;

    iget-object v0, p1, Lw0/ec;->d:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lw0/rc;->e:Lw0/bd;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Lw0/bd;->setSizePercent(I)V

    :cond_0
    iget-object v0, p1, Lw0/ec;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v1, p2}, Lw0/bd;->setBackgroundPercent(I)V

    :cond_1
    sget-object p2, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    iget-object p1, p1, Lw0/ec;->f:Ljava/lang/String;

    invoke-static {p1}, Lw0/t1;->U(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
