.class public Lorg/apache/commons/io/filefilter/WildcardFileFilter;
.super Lorg/apache/commons/io/filefilter/u;
.source "WildcardFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x67102e36ee57a9d9L


# instance fields
.field private final g:[Ljava/lang/String;

.field private final h:Lorg/apache/commons/io/IOCase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 9
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;)V

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Ljava/util/List;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/apache/commons/io/IOCase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/io/IOCase;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v0, Lorg/apache/commons/io/filefilter/w;->d:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    .line 3
    invoke-static {p2}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->g:[Ljava/lang/String;

    .line 4
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p1, p2}, Lorg/apache/commons/io/IOCase;->value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->h:Lorg/apache/commons/io/IOCase;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;Lorg/apache/commons/io/filefilter/WildcardFileFilter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;-><init>()V

    return-object v0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->g:[Ljava/lang/String;

    invoke-static {v0}, Lc/a/a/a;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/filefilter/p;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/io/filefilter/p;-><init>(Lorg/apache/commons/io/filefilter/WildcardFileFilter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method private synthetic h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->h:Lorg/apache/commons/io/IOCase;

    invoke-static {p1, p2, v0}, Lorg/apache/commons/io/l;->i(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result p1

    return p1
.end method

.method private static j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "wildcards"

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 3
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lokhttp3/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->g(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/u;->f(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic and(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/v;->b(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
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
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->g:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/io/filefilter/u;->b([Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, ")"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method