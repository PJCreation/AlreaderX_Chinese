.class public Lorg/apache/commons/io/filefilter/WildcardFilter;
.super Lorg/apache/commons/io/filefilter/u;
.source "WildcardFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x45e95041fb210b2dL


# instance fields
.field private final g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    const-string v0, "wildcard"

    .line 5
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    const-string v0, "wildcards"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/apache/commons/io/filefilter/w;->d:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->g:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    const-string v0, "wildcards"

    .line 8
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->g:[Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/io/l;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/l;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Ljava/nio/file/Path;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lokhttp3/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/io/l;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/LinkOption;

    .line 5
    invoke-static {p1, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    sget-object p1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 7
    :cond_0
    iget-object p2, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->g:[Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lc/a/a/a;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/apache/commons/io/filefilter/r;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/filefilter/r;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 9
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/u;->e(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->g:[Ljava/lang/String;

    invoke-static {v0}, Lc/a/a/a;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/filefilter/s;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/filefilter/s;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->g:[Ljava/lang/String;

    invoke-static {p1}, Lc/a/a/a;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/io/filefilter/q;

    invoke-direct {v0, p2}, Lorg/apache/commons/io/filefilter/q;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

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
