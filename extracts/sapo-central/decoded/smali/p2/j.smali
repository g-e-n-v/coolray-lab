.class public final Lp2/j;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:Lb2/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    sget-object v0, Lb2/i;->a:Lb2/i;

    iput-object v0, p0, Lp2/j;->a:Lb2/i;

    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp2/j;->a:Lb2/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
