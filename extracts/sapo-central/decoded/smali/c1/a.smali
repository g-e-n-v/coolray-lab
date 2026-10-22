.class public abstract Lc1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Lm0/a;

.field public static final c:Lm0/a;

.field public static final d:Lm0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lc1/a;->a:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Lm0/a;

    sget-object v1, Lm0/a;->d:[F

    invoke-direct {v0, v1}, Lm0/b;-><init>([F)V

    sput-object v0, Lc1/a;->b:Lm0/a;

    new-instance v0, Lm0/a;

    sget-object v1, Lm0/a;->c:[F

    invoke-direct {v0, v1}, Lm0/b;-><init>([F)V

    sput-object v0, Lc1/a;->c:Lm0/a;

    new-instance v0, Lm0/a;

    sget-object v1, Lm0/a;->e:[F

    invoke-direct {v0, v1}, Lm0/b;-><init>([F)V

    sput-object v0, Lc1/a;->d:Lm0/a;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method
