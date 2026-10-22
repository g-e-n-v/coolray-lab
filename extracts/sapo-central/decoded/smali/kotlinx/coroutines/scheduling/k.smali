.class public final Lkotlinx/coroutines/scheduling/k;
.super Lp2/c;
.source "SourceFile"


# static fields
.field public static final b:Lkotlinx/coroutines/scheduling/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/k;

    invoke-direct {v0}, Lp2/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/k;->b:Lkotlinx/coroutines/scheduling/k;

    return-void
.end method


# virtual methods
.method public final a(Lb2/h;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p1, Lkotlinx/coroutines/scheduling/d;->c:Lkotlinx/coroutines/scheduling/d;

    sget-object v0, Lkotlinx/coroutines/scheduling/j;->g:Lkotlinx/coroutines/scheduling/h;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/g;->b:Lkotlinx/coroutines/scheduling/b;

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/scheduling/b;->b(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/h;)V

    return-void
.end method
