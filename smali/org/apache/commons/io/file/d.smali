.class public Lorg/apache/commons/io/file/d;
.super Lorg/apache/commons/io/file/h;
.source "CountingPathVisitor.java"


# static fields
.field static final f:[Ljava/lang/String;


# instance fields
.field private final g:Lorg/apache/commons/io/file/c$f;

.field private final h:Lorg/apache/commons/io/file/f;

.field private final i:Lorg/apache/commons/io/file/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lorg/apache/commons/io/file/d;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/c$f;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/d;->e()Lorg/apache/commons/io/filefilter/w;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/d;->d()Lorg/apache/commons/io/filefilter/w;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/file/d;-><init>(Lorg/apache/commons/io/file/c$f;Lorg/apache/commons/io/file/f;Lorg/apache/commons/io/file/f;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/c$f;Lorg/apache/commons/io/file/f;Lorg/apache/commons/io/file/f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/io/file/h;-><init>()V

    const-string v0, "pathCounter"

    .line 3
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/io/file/c$f;

    iput-object p1, p0, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    const-string p1, "fileFilter"

    .line 4
    invoke-static {p2, p1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lorg/apache/commons/io/file/f;

    iput-object p2, p0, Lorg/apache/commons/io/file/d;->h:Lorg/apache/commons/io/file/f;

    const-string p1, "dirFilter"

    .line 5
    invoke-static {p3, p1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lorg/apache/commons/io/file/f;

    iput-object p3, p0, Lorg/apache/commons/io/file/d;->i:Lorg/apache/commons/io/file/f;

    return-void
.end method

.method static d()Lorg/apache/commons/io/filefilter/w;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/w;

    return-object v0
.end method

.method static e()Lorg/apache/commons/io/filefilter/w;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;

    sget-object v1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    sget-object v2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;-><init>(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V

    return-object v0
.end method

.method public static l()Lorg/apache/commons/io/file/d;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/d;

    invoke-static {}, Lorg/apache/commons/io/file/c;->b()Lorg/apache/commons/io/file/c$f;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/d;-><init>(Lorg/apache/commons/io/file/c$f;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/io/file/d;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/io/file/d;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    iget-object p1, p1, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    invoke-static {v0, p1}, Landroidx/core/graphics/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lorg/apache/commons/io/file/c$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    return-object v0
.end method

.method public g(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/d;->i(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 2
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public h(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/d;->i:Lorg/apache/commons/io/file/f;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/file/f;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    .line 2
    sget-object p2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq p1, p2, :cond_0

    sget-object p2, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected i(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    invoke-interface {p1}, Lorg/apache/commons/io/file/c$f;->a()Lorg/apache/commons/io/file/c$c;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/io/file/c$c;->a()V

    return-void
.end method

.method protected j(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    invoke-interface {p1}, Lorg/apache/commons/io/file/c$f;->b()Lorg/apache/commons/io/file/c$c;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/io/file/c$c;->a()V

    .line 2
    iget-object p1, p0, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    invoke-interface {p1}, Lorg/apache/commons/io/file/c$f;->c()Lorg/apache/commons/io/file/c$c;

    move-result-object p1

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/io/file/c$c;->c(J)V

    return-void
.end method

.method public k(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 1
    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/file/d;->h:Lorg/apache/commons/io/file/f;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/file/f;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    sget-object v1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/d;->j(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 3
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public bridge synthetic postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/d;->g(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/d;->h(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/d;->g:Lorg/apache/commons/io/file/c$f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/d;->k(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
