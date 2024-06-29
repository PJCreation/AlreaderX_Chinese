.class public Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;
.super Lorg/apache/commons/io/filefilter/u;
.source "CanExecuteFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_EXECUTE:Lorg/apache/commons/io/filefilter/w;

.field public static final CAN_EXECUTE:Lorg/apache/commons/io/filefilter/w;

.field private static final serialVersionUID:J = 0x2c214a929094a84dL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;->CAN_EXECUTE:Lorg/apache/commons/io/filefilter/w;

    .line 2
    invoke-interface {v0}, Lorg/apache/commons/io/filefilter/w;->negate()Lorg/apache/commons/io/filefilter/w;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;->CANNOT_EXECUTE:Lorg/apache/commons/io/filefilter/w;

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
    invoke-static {p1}, Ljava/nio/file/Files;->isExecutable(Ljava/nio/file/Path;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/u;->f(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

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
