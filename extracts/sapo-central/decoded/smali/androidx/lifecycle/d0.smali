.class public final Landroidx/lifecycle/d0;
.super Li2/h;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Le/j;


# direct methods
.method public constructor <init>(Le/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/d0;->a:Le/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Li2/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Li2/n;->a:Li2/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li2/d;

    const-class v2, Landroidx/lifecycle/f0;

    invoke-direct {v1, v2}, Li2/d;-><init>(Ljava/lang/Class;)V

    new-instance v3, Ln0/d;

    invoke-interface {v1}, Li2/c;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v1, v4}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Ln0/d;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v3, v1, [Ln0/d;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, [Ln0/d;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/d;

    const-string v3, "initializers"

    invoke-static {v0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/lifecycle/d0;->a:Le/j;

    invoke-virtual {v3}, Landroidx/activity/h;->e()Landroidx/lifecycle/i0;

    move-result-object v4

    const-string v5, "owner.viewModelStore"

    invoke-static {v4, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Landroidx/lifecycle/i0;->a:Ljava/util/HashMap;

    invoke-interface {v3}, Landroidx/lifecycle/h;->b()Ln0/b;

    move-result-object v3

    const-string v5, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }"

    invoke-static {v3, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/g0;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v3, Ln0/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v3, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/h0;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    array-length v3, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v7, v0, v1

    iget-object v7, v7, Ln0/d;->a:Ljava/lang/Class;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, Landroidx/lifecycle/f0;

    invoke-direct {v6}, Landroidx/lifecycle/f0;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/g0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/lifecycle/g0;->a()V

    :cond_4
    :goto_1
    check-cast v6, Landroidx/lifecycle/f0;

    return-object v6

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No initializer set for given class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
