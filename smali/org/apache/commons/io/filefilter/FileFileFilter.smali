.class public Lorg/apache/commons/io/filefilter/FileFileFilter;
.super Lorg/apache/commons/io/filefilter/u;
.source "FileFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FILE:Lorg/apache/commons/io/filefilter/w;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/commons/io/filefilter/w;

.field private static final serialVersionUID:J = 0x4a2e1f2e2788097eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/FileFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/FileFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/FileFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/w;

    .line 2
    sput-object v0, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/w;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/LinkOption;

    .line 2
    invoke-static {p1, p2}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/u;->f(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic and(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/v;->b(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic negate()Lorg/apache/commons/io/filefilter/w;
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/io/filefilter/v;->c(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic or(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/v;->d(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object p1

    return-object p1
.end method
