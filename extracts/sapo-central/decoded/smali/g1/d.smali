.class public final Lg1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg1/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg1/d;->a:I

    packed-switch v0, :pswitch_data_0

    .line 12
    new-instance v0, Lu1/s;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lu1/s;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Ls/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ls/f;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 14
    :pswitch_1
    new-instance v0, Lq0/q0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lq0/q0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 15
    :pswitch_2
    new-instance v0, Ln1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ln1/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 16
    :pswitch_3
    new-instance v0, Li/j3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Li/j3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 17
    :pswitch_4
    new-instance v0, Li/v2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Li/v2;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 18
    :pswitch_5
    new-instance v0, Lh1/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lh1/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_6
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lh0/b;->b:Lh0/a;

    return-object p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "superState must be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :pswitch_7
    new-instance v0, Lg1/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg1/e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg1/d;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1
    new-instance v0, Lu1/s;

    invoke-direct {v0, p1, p2}, Lu1/s;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 2
    :pswitch_0
    new-instance v0, Ls/f;

    invoke-direct {v0, p1, p2}, Ls/f;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 3
    :pswitch_1
    new-instance v0, Lq0/q0;

    invoke-direct {v0, p1, p2}, Lq0/q0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 4
    :pswitch_2
    new-instance v0, Ln1/a;

    invoke-direct {v0, p1, p2}, Ln1/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 5
    :pswitch_3
    new-instance v0, Li/j3;

    invoke-direct {v0, p1, p2}, Li/j3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 6
    :pswitch_4
    new-instance v0, Li/v2;

    invoke-direct {v0, p1, p2}, Li/v2;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 7
    :pswitch_5
    new-instance v0, Lh1/b;

    invoke-direct {v0, p1, p2}, Lh1/b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 8
    :pswitch_6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 9
    sget-object p1, Lh0/b;->b:Lh0/a;

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "superState must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :pswitch_7
    new-instance v0, Lg1/e;

    invoke-direct {v0, p1, p2}, Lg1/e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg1/d;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lu1/s;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Ls/f;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lq0/q0;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Ln1/a;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Li/j3;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Li/v2;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lh1/b;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lh0/b;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Lg1/e;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
