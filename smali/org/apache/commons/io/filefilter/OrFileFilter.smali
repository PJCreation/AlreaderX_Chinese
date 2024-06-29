.class public Lorg/apache/commons/io/filefilter/OrFileFilter;
.super Lorg/apache/commons/io/filefilter/u;
.source "OrFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x500b3cf678dd2691L


# instance fields
.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/filefilter/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/io/filefilter/w;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    const-string v0, "initialList"

    .line 3
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/filefilter/w;",
            ">;)V"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "fileFilters"

    invoke-static {p1, v1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)V
    .locals 1

    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/w;)V

    .line 9
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/w;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/commons/io/filefilter/w;)V
    .locals 1

    const-string v0, "fileFilters"

    .line 5
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Lorg/apache/commons/io/filefilter/w;

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(I)V

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->addFileFilter([Lorg/apache/commons/io/filefilter/w;)V

    return-void
.end method

.method static synthetic g(Ljava/io/File;Lorg/apache/commons/io/filefilter/w;)Z
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/apache/commons/io/filefilter/w;->accept(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Ljava/io/File;Ljava/lang/String;Lorg/apache/commons/io/filefilter/w;)Z
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lorg/apache/commons/io/filefilter/w;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Lorg/apache/commons/io/filefilter/w;)Z
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lorg/apache/commons/io/filefilter/w;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/filefilter/j;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/io/filefilter/j;-><init>(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/io/filefilter/u;->e(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/filefilter/k;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/filefilter/k;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/filefilter/i;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/io/filefilter/i;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public addFileFilter(Lorg/apache/commons/io/filefilter/w;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    const-string v1, "fileFilter"

    invoke-static {p1, v1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addFileFilter([Lorg/apache/commons/io/filefilter/w;)V
    .locals 1

    const-string v0, "fileFilters"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lc/a/a/a;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/io/filefilter/t;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/t;-><init>(Lorg/apache/commons/io/filefilter/OrFileFilter;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic and(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/v;->b(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object p1

    return-object p1
.end method

.method public getFileFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/filefilter/w;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

.method public removeFileFilter(Lorg/apache/commons/io/filefilter/w;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setFileFilters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/filefilter/w;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    const-string v1, "fileFilters"

    invoke-static {p1, v1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-super {p0}, Lorg/apache/commons/io/filefilter/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->g:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/io/filefilter/u;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    const-string v1, ")"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
