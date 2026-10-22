.class public final Lp1/c;
.super Lk1/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroid/text/TextPaint;

.field public final synthetic d:Lk1/a;

.field public final synthetic e:Lp1/d;


# direct methods
.method public constructor <init>(Lp1/d;Landroid/text/TextPaint;Lk1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/c;->e:Lp1/d;

    iput-object p2, p0, Lp1/c;->c:Landroid/text/TextPaint;

    iput-object p3, p0, Lp1/c;->d:Lk1/a;

    return-void
.end method


# virtual methods
.method public final K(I)V
    .locals 1

    iget-object v0, p0, Lp1/c;->d:Lk1/a;

    invoke-virtual {v0, p1}, Lk1/a;->K(I)V

    return-void
.end method

.method public final L(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Lp1/c;->e:Lp1/d;

    iget-object v1, p0, Lp1/c;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lp1/d;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lp1/c;->d:Lk1/a;

    invoke-virtual {v0, p1, p2}, Lk1/a;->L(Landroid/graphics/Typeface;Z)V

    return-void
.end method
