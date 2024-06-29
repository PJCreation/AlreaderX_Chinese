.class public Lorg/apache/commons/io/m;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final a:C

.field public static final b:[B

.field public static final c:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final g:[B

.field private static final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static final i:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/m;->a:C

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    sput-object v0, Lorg/apache/commons/io/m;->b:[B

    .line 3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/m;->c:Ljava/lang/String;

    .line 4
    sget-object v0, Lorg/apache/commons/io/StandardLineSeparator;->LF:Lorg/apache/commons/io/StandardLineSeparator;

    invoke-virtual {v0}, Lorg/apache/commons/io/StandardLineSeparator;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/m;->d:Ljava/lang/String;

    .line 5
    sget-object v0, Lorg/apache/commons/io/StandardLineSeparator;->CRLF:Lorg/apache/commons/io/StandardLineSeparator;

    invoke-virtual {v0}, Lorg/apache/commons/io/StandardLineSeparator;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/m;->e:Ljava/lang/String;

    .line 6
    sget-object v0, Lorg/apache/commons/io/a;->a:Lorg/apache/commons/io/a;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/m;->f:Ljava/lang/ThreadLocal;

    .line 7
    invoke-static {}, Lorg/apache/commons/io/m;->a()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/m;->g:[B

    .line 8
    sget-object v0, Lorg/apache/commons/io/h;->a:Lorg/apache/commons/io/h;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/m;->h:Ljava/lang/ThreadLocal;

    .line 9
    invoke-static {}, Lorg/apache/commons/io/m;->c()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/m;->i:[C

    return-void
.end method

.method public static a()[B
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-static {v0}, Lorg/apache/commons/io/m;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(I)[B
    .locals 0

    .line 1
    new-array p0, p0, [B

    return-object p0
.end method

.method private static c()[C
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-static {v0}, Lorg/apache/commons/io/m;->d(I)[C

    move-result-object v0

    return-object v0
.end method

.method private static d(I)[C
    .locals 0

    .line 1
    new-array p0, p0, [C

    return-object p0
.end method

.method public static e(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/apache/commons/io/m;->b(I)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/m;->g(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/m;->e(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static g(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 4

    const-string v0, "inputStream"

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "outputStream"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    .line 3
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static synthetic h()[C
    .locals 1

    invoke-static {}, Lorg/apache/commons/io/m;->c()[C

    move-result-object v0

    return-object v0
.end method

.method public static i([Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method
