.class public Lorg/apache/commons/io/filefilter/AgeFileFilter;
.super Lorg/apache/commons/io/filefilter/u;
.source "AgeFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1d9903ce8204c92dL


# instance fields
.field private final g:Z

.field private final h:Ljava/time/Instant;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/time/Instant;Z)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 10
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/time/Instant;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    .line 4
    invoke-static {p1}, Lorg/apache/commons/io/k;->f(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/time/Instant;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    .line 7
    iput-boolean p2, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->g:Z

    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->h:Ljava/time/Instant;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Z)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/time/Instant;Z)V

    return-void
.end method

.method private synthetic g(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->g:Z

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->h:Ljava/time/Instant;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1, v3}, Lorg/apache/commons/io/file/g;->f(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/filefilter/u;->f(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 2
    new-instance p2, Lorg/apache/commons/io/filefilter/b;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/io/filefilter/b;-><init>(Lorg/apache/commons/io/filefilter/AgeFileFilter;Ljava/nio/file/Path;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/io/filefilter/u;->c(Lorg/apache/commons/io/o/c;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->g:Z

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->h:Ljava/time/Instant;

    invoke-static {p1, v1}, Lorg/apache/commons/io/k;->a(Ljava/io/File;Ljava/time/Instant;)Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic and(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/v;->b(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/filefilter/AgeFileFilter;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "<="

    goto :goto_0

    :cond_0
    const-string v0, ">"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->h:Ljava/time/Instant;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
