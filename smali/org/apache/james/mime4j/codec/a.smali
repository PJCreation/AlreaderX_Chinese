.class public Lorg/apache/james/mime4j/codec/a;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field protected static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/apache/james/mime4j/f/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:[I


# instance fields
.field private final g:[B

.field private final h:Ljava/io/InputStream;

.field private final i:[B

.field private final j:Lorg/apache/james/mime4j/f/l;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private final o:Lorg/apache/james/mime4j/codec/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lorg/apache/james/mime4j/codec/a;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/a;->e:Ljava/lang/ThreadLocal;

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 3
    sput-object v1, Lorg/apache/james/mime4j/codec/a;->f:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    sget-object v3, Lorg/apache/james/mime4j/codec/a;->f:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    sget-object v0, Lorg/apache/james/mime4j/codec/b;->f:[B

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 6
    sget-object v2, Lorg/apache/james/mime4j/codec/a;->f:[I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    aput v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected constructor <init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lorg/apache/james/mime4j/codec/a;->g:[B

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lorg/apache/james/mime4j/codec/a;->k:I

    .line 5
    iput v1, p0, Lorg/apache/james/mime4j/codec/a;->l:I

    .line 6
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/a;->m:Z

    if-eqz p2, :cond_0

    .line 7
    invoke-static {}, Lorg/apache/james/mime4j/codec/a;->e()Lorg/apache/james/mime4j/f/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/apache/james/mime4j/f/b;->a(II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/a;->i:[B

    .line 8
    new-instance p1, Lorg/apache/james/mime4j/f/l;

    invoke-static {}, Lorg/apache/james/mime4j/codec/a;->e()Lorg/apache/james/mime4j/f/b;

    move-result-object v0

    const/16 v1, 0x200

    invoke-direct {p1, v0, v1}, Lorg/apache/james/mime4j/f/l;-><init>(Lorg/apache/james/mime4j/f/b;I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    .line 9
    iput-object p2, p0, Lorg/apache/james/mime4j/codec/a;->h:Ljava/io/InputStream;

    .line 10
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/a;->o:Lorg/apache/james/mime4j/codec/c;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V
    .locals 1

    const/16 v0, 0x600

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/codec/a;-><init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V

    return-void
.end method

.method private a(II[BII)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/a;->n:Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    ushr-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    if-ge p4, p5, :cond_0

    add-int/lit8 p2, p4, 0x1

    .line 2
    aput-byte p1, p3, p4

    move p4, p2

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    ushr-int/lit8 p2, p1, 0xa

    int-to-byte p2, p2

    ushr-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    add-int/lit8 v0, p5, -0x1

    if-ge p4, v0, :cond_2

    add-int/lit8 p5, p4, 0x1

    .line 4
    aput-byte p2, p3, p4

    add-int/lit8 p4, p5, 0x1

    .line 5
    aput-byte p1, p3, p5

    goto :goto_0

    :cond_2
    if-ge p4, p5, :cond_3

    add-int/lit8 p5, p4, 0x1

    .line 6
    aput-byte p2, p3, p4

    .line 7
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/f/l;->b(I)V

    move p4, p5

    goto :goto_0

    .line 8
    :cond_3
    iget-object p3, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p3, p2}, Lorg/apache/james/mime4j/f/l;->b(I)V

    .line 9
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/a;->j(I)V

    :goto_0
    return p4
.end method

.method public static e()Lorg/apache/james/mime4j/f/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/a;->e:Ljava/lang/ThreadLocal;

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

.method private j(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->o:Lorg/apache/james/mime4j/codec/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sextet(s)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected padding character"

    invoke-virtual {v0, v1, p1}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->o:Lorg/apache/james/mime4j/codec/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sextet(s)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected end of BASE64 stream"

    invoke-virtual {v0, v1, p1}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o([BII)I
    .locals 9

    add-int v5, p2, p3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->d()[B

    move-result-object v0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0, v1, p3}, Lorg/apache/james/mime4j/f/l;->h(II)V

    add-int/2addr p3, p2

    goto :goto_0

    :cond_0
    move p3, p2

    .line 5
    :goto_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/a;->n:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    if-ne p3, p2, :cond_1

    goto :goto_1

    :cond_1
    sub-int v2, p3, p2

    :goto_1
    return v2

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge p3, v5, :cond_10

    .line 6
    :cond_3
    :goto_3
    iget v4, p0, Lorg/apache/james/mime4j/codec/a;->k:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/a;->l:I

    if-ne v4, v6, :cond_7

    .line 7
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/a;->h:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/apache/james/mime4j/codec/a;->i:[B

    array-length v7, v6

    invoke-virtual {v4, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v2, :cond_6

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/a;->n:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/a;->l(I)V

    :cond_4
    if-ne p3, p2, :cond_5

    goto :goto_4

    :cond_5
    sub-int v2, p3, p2

    :goto_4
    return v2

    :cond_6
    if-lez v4, :cond_3

    .line 10
    iput v1, p0, Lorg/apache/james/mime4j/codec/a;->k:I

    .line 11
    iput v4, p0, Lorg/apache/james/mime4j/codec/a;->l:I

    goto :goto_3

    :cond_7
    move v4, v3

    move v3, v0

    .line 12
    :cond_8
    :goto_5
    iget v0, p0, Lorg/apache/james/mime4j/codec/a;->k:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/a;->l:I

    if-ge v0, v6, :cond_f

    if-ge p3, v5, :cond_f

    .line 13
    iget-object v6, p0, Lorg/apache/james/mime4j/codec/a;->i:[B

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/a;->k:I

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v6, 0x3d

    if-ne v0, v6, :cond_9

    move-object v0, p0

    move v1, v4

    move v2, v3

    move-object v3, p1

    move v4, p3

    .line 14
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/a;->a(II[BII)I

    move-result p1

    sub-int/2addr p1, p2

    return p1

    .line 15
    :cond_9
    sget-object v6, Lorg/apache/james/mime4j/codec/a;->f:[I

    aget v6, v6, v0

    if-gez v6, :cond_b

    const/16 v6, 0xd

    if-eq v0, v6, :cond_8

    const/16 v6, 0xa

    if-eq v0, v6, :cond_8

    const/16 v6, 0x20

    if-eq v0, v6, :cond_8

    .line 16
    iget-object v6, p0, Lorg/apache/james/mime4j/codec/a;->o:Lorg/apache/james/mime4j/codec/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected base64 byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ignoring."

    invoke-virtual {v6, v0, v7}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 17
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected base64 byte"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    shl-int/lit8 v0, v4, 0x6

    or-int v4, v0, v6

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_8

    ushr-int/lit8 v0, v4, 0x10

    int-to-byte v0, v0

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    int-to-byte v6, v4

    add-int/lit8 v7, v5, -0x2

    if-ge p3, v7, :cond_c

    add-int/lit8 v7, p3, 0x1

    .line 18
    aput-byte v0, p1, p3

    add-int/lit8 p3, v7, 0x1

    .line 19
    aput-byte v3, p1, v7

    add-int/lit8 v0, p3, 0x1

    .line 20
    aput-byte v6, p1, p3

    move p3, v0

    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    add-int/lit8 v1, v5, -0x1

    if-ge p3, v1, :cond_d

    add-int/lit8 v1, p3, 0x1

    .line 21
    aput-byte v0, p1, p3

    .line 22
    aput-byte v3, p1, v1

    .line 23
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p1, v6}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto :goto_6

    :cond_d
    if-ge p3, v5, :cond_e

    .line 24
    aput-byte v0, p1, p3

    .line 25
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p1, v3}, Lorg/apache/james/mime4j/f/l;->b(I)V

    .line 26
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p1, v6}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto :goto_6

    .line 27
    :cond_e
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/f/l;->b(I)V

    .line 28
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p1, v3}, Lorg/apache/james/mime4j/f/l;->b(I)V

    .line 29
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p1, v6}, Lorg/apache/james/mime4j/f/l;->b(I)V

    :goto_6
    sub-int/2addr v5, p2

    return v5

    :cond_f
    move v0, v3

    move v3, v4

    goto/16 :goto_2

    :cond_10
    sub-int/2addr v5, p2

    return v5
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/a;->m:Z

    .line 3
    invoke-static {}, Lorg/apache/james/mime4j/codec/a;->e()Lorg/apache/james/mime4j/f/b;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/a;->i:[B

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/f/b;->d(I[B)V

    .line 4
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->j:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->g()V

    return-void
.end method

.method public read()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/a;->m:Z

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->g:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/james/mime4j/codec/a;->o([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/a;->g:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 4
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    .line 5
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/a;->m:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    array-length v0, p1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/james/mime4j/codec/a;->o([BII)I

    move-result p1

    return p1

    .line 9
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 2

    .line 10
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/a;->m:Z

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 12
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/a;->o([BII)I

    move-result p1

    return p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
