.class public Lorg/apache/james/mime4j/f/g;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# static fields
.field protected static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/apache/james/mime4j/f/b;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/apache/james/mime4j/f/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/f/g;->a:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/f/g;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lorg/apache/james/mime4j/f/d$a;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lorg/apache/james/mime4j/f/g;->g()Lorg/apache/james/mime4j/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/d;->a()Lorg/apache/james/mime4j/f/d$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/d$a;->a()Lorg/apache/commons/io/output/e;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/james/mime4j/f/g;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input stream may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/james/mime4j/f/g;->f()Lorg/apache/james/mime4j/f/b;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1000

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/f/b;->a(II)[B

    move-result-object v2

    :goto_0
    const/4 v3, -0x1

    .line 3
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {p1, v2, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/f/b;->d(I[B)V

    return-void
.end method

.method public static c(Lorg/apache/james/mime4j/f/e;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-interface {p0}, Lorg/apache/james/mime4j/f/e;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/apache/james/mime4j/f/g;->d(Lorg/apache/james/mime4j/f/e;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/apache/james/mime4j/f/e;II)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-array v0, p2, [C

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    sub-int v2, v1, p1

    .line 2
    invoke-interface {p0, v1}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static e(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/f/e;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/f/c;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/f/c;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/f/c;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static f()Lorg/apache/james/mime4j/f/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/f/g;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/f/b;

    :goto_0
    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lorg/apache/james/mime4j/f/b;

    invoke-direct {v1}, Lorg/apache/james/mime4j/f/b;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static g()Lorg/apache/james/mime4j/f/d;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/f/g;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/f/d;

    :goto_0
    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lorg/apache/james/mime4j/f/d;

    invoke-direct {v1}, Lorg/apache/james/mime4j/f/d;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method
