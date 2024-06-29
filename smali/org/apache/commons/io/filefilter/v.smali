.class public final synthetic Lorg/apache/commons/io/filefilter/v;
.super Ljava/lang/Object;
.source "IOFileFilter.java"


# direct methods
.method public static a(Lorg/apache/commons/io/filefilter/w;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/filefilter/w;

    .line 1
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/io/filefilter/w;->accept(Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/io/filefilter/u;->e(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public static b(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/filefilter/w;

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)V

    return-object v0
.end method

.method public static c(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/filefilter/w;

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/w;)V

    return-object v0
.end method

.method public static d(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/filefilter/w;

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)V

    return-object v0
.end method
