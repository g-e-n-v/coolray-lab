.class public final synthetic Lw0/sg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getName(...)"

    invoke-static {p1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thermal_zone"

    invoke-static {p1, v0}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
