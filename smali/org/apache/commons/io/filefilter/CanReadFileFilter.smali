.class public Lorg/apache/commons/io/filefilter/CanReadFileFilter;
.super Lorg/apache/commons/io/filefilter/u;
.source "CanReadFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_READ:Lorg/apache/commons/io/filefilter/w;

.field public static final CAN_READ:Lorg/apache/commons/io/filefilter/w;

.field public static final READ_ONLY:Lorg/apache/commons/io/filefilter/w;

.field private static final serialVersionUID:J = 0x2c214a929094a84dL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/CanReadFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lorg/apache/commons/io/filefilter/w;

    .line 2
    invoke-interface {v0}, Lorg/apache/commons/io/filefilter/w;->negate()Lorg/apache/commons/io/filefilter/w;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CANNOT_READ:Lorg/apache/commons/io/filefilter/w;

    .line 3
    sget-object v1, Lorg/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lorg/apache/commons/io/filefilter/w;

    invoke-interface {v0, v1}, Lorg/apache/commons/io/filefilter/w;->and(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->READ_ONLY:Lorg/apache/commons/io/filefilter/w;

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

    .line 2
    invoke-static {p1}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/u;->f(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

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
