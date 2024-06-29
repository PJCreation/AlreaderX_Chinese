.class public final Lorg/apache/commons/io/file/g;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field private static final a:[Ljava/nio/file/OpenOption;

.field private static final b:[Ljava/nio/file/OpenOption;

.field public static final c:[Ljava/nio/file/CopyOption;

.field public static final d:[Lorg/apache/commons/io/file/e;

.field public static final e:[Ljava/nio/file/FileVisitOption;

.field public static final f:[Ljava/nio/file/LinkOption;

.field public static final g:[Ljava/nio/file/LinkOption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final h:Ljava/nio/file/LinkOption;

.field public static final i:[Ljava/nio/file/OpenOption;

.field public static final j:[Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    .line 1
    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/apache/commons/io/file/g;->a:[Ljava/nio/file/OpenOption;

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 2
    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/io/file/g;->b:[Ljava/nio/file/OpenOption;

    new-array v0, v3, [Ljava/nio/file/CopyOption;

    .line 3
    sput-object v0, Lorg/apache/commons/io/file/g;->c:[Ljava/nio/file/CopyOption;

    new-array v0, v3, [Lorg/apache/commons/io/file/e;

    .line 4
    sput-object v0, Lorg/apache/commons/io/file/g;->d:[Lorg/apache/commons/io/file/e;

    new-array v0, v3, [Ljava/nio/file/FileVisitOption;

    .line 5
    sput-object v0, Lorg/apache/commons/io/file/g;->e:[Ljava/nio/file/FileVisitOption;

    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 6
    sput-object v0, Lorg/apache/commons/io/file/g;->f:[Ljava/nio/file/LinkOption;

    new-array v0, v4, [Ljava/nio/file/LinkOption;

    .line 7
    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/io/file/g;->g:[Ljava/nio/file/LinkOption;

    const/4 v0, 0x0

    .line 8
    sput-object v0, Lorg/apache/commons/io/file/g;->h:Ljava/nio/file/LinkOption;

    new-array v0, v3, [Ljava/nio/file/OpenOption;

    .line 9
    sput-object v0, Lorg/apache/commons/io/file/g;->i:[Ljava/nio/file/OpenOption;

    new-array v0, v3, [Ljava/nio/file/Path;

    .line 10
    sput-object v0, Lorg/apache/commons/io/file/g;->j:[Ljava/nio/file/Path;

    return-void
.end method

.method private static varargs a(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/g;->d(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/c$f;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/file/d;->l()Lorg/apache/commons/io/file/d;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/g;->j(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/d;

    invoke-virtual {p0}, Lorg/apache/commons/io/file/d;->f()Lorg/apache/commons/io/file/c$f;

    move-result-object p0

    return-object p0
.end method

.method private static varargs c(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1

    const-string v0, "path"

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static varargs d(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .locals 1

    const-string v0, "path"

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 1
    invoke-static {p0, v1}, Lorg/apache/commons/io/file/g;->g(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/g;->a(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static varargs f(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/g;->e(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method private static varargs g(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1

    const-string v0, "path"

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method private static varargs h(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/g;->c(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File system element for parameter \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static i(Ljava/nio/file/Path;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/file/g;->b(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/c$f;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/io/file/c$f;->c()Lorg/apache/commons/io/file/c$c;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/io/file/c$c;->b()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    const-string v1, "directory"

    .line 1
    invoke-static {p1, v1, v0}, Lorg/apache/commons/io/file/g;->h(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 2
    invoke-static {p1, p0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-object p0
.end method
