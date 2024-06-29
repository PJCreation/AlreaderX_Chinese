.class public Lorg/apache/commons/io/k;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Ljava/math/BigInteger;

.field public static final c:Ljava/math/BigInteger;

.field public static final d:Ljava/math/BigInteger;

.field public static final e:Ljava/math/BigInteger;

.field public static final f:Ljava/math/BigInteger;

.field public static final g:Ljava/math/BigInteger;

.field public static final h:Ljava/math/BigInteger;

.field public static final i:[Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v0, 0x400

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/io/k;->a:Ljava/math/BigInteger;

    .line 2
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/k;->b:Ljava/math/BigInteger;

    .line 3
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/k;->c:Ljava/math/BigInteger;

    .line 4
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/k;->d:Ljava/math/BigInteger;

    .line 5
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/k;->e:Ljava/math/BigInteger;

    .line 6
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/k;->f:Ljava/math/BigInteger;

    .line 7
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/high16 v3, 0x1000000000000000L

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/k;->g:Ljava/math/BigInteger;

    .line 8
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/k;->h:Ljava/math/BigInteger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 9
    sput-object v0, Lorg/apache/commons/io/k;->i:[Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/time/Instant;)Z
    .locals 1

    const-string v0, "instant"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/apache/commons/io/e;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/e;-><init>(Ljava/io/File;Ljava/time/Instant;)V

    invoke-static {v0}, Lorg/apache/commons/io/o/d;->b(Lorg/apache/commons/io/o/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Ljava/io/File;Ljava/time/Instant;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/file/g;->f(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Ljava/io/File;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/file/g;->i(Ljava/nio/file/Path;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/io/File;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/k;->e(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const-string v0, "file"

    invoke-static {p0, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/nio/file/Path;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/io/File;)J
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/io/i;->a:Lorg/apache/commons/io/i;

    invoke-static {v0, p0}, Lorg/apache/commons/io/o/d;->a(Lorg/apache/commons/io/o/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static g(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a directory: \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static h(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/k;->i(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/io/k;->g(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    return-object p0
.end method

.method private static i(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File system element for parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist: \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Ljava/io/File;)J
    .locals 2

    const-string v0, "directory"

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/io/k;->h(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 2
    new-instance v0, Lorg/apache/commons/io/d;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/d;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/commons/io/o/d;->b(Lorg/apache/commons/io/o/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
