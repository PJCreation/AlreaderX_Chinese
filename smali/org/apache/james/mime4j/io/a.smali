.class public Lorg/apache/james/mime4j/io/a;
.super Lorg/apache/james/mime4j/io/f;
.source "BufferedLineReaderInputStream.java"


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


# instance fields
.field private f:Z

.field g:Z

.field private h:[B

.field private i:I

.field private j:I

.field private k:[B

.field private l:I

.field private m:I

.field private n:[I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/io/a;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/f;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/a;->g:Z

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    .line 3
    invoke-static {}, Lorg/apache/james/mime4j/io/a;->A()Lorg/apache/james/mime4j/f/b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, p2}, Lorg/apache/james/mime4j/f/b;->a(II)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    .line 5
    iput v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    .line 6
    iput v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    .line 7
    iput p3, p0, Lorg/apache/james/mime4j/io/a;->o:I

    .line 8
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/a;->f:Z

    const/16 p2, 0x100

    .line 9
    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/f/b;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/io/a;->n:[I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size may not be negative or zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A()Lorg/apache/james/mime4j/f/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/io/a;->e:Ljava/lang/ThreadLocal;

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

.method private l()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    iget v1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    .line 2
    iput v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    return-void
.end method

.method private w(I)V
    .locals 3

    .line 1
    new-array p1, p1, [B

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    iget v2, p0, Lorg/apache/james/mime4j/io/a;->l:I

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->l()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E(B)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->l()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/a;->F(BII)I

    move-result p1

    return p1
.end method

.method public F(BII)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    if-lt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int/2addr p3, p2

    iget v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    if-gt p3, v0, :cond_2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    aget-byte v0, v0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public I([BII)I
    .locals 8

    if-eqz p1, :cond_9

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    if-lt p2, v0, :cond_8

    if-ltz p3, :cond_8

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/james/mime4j/io/a;->m:I

    if-gt v0, v1, :cond_8

    .line 2
    array-length v0, p1

    const/4 v1, -0x1

    if-ge p3, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/io/a;->n:[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 4
    array-length v4, p1

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 6
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 7
    iget-object v4, p0, Lorg/apache/james/mime4j/io/a;->n:[I

    array-length v6, p1

    sub-int/2addr v6, v2

    aput v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_2
    array-length v3, p1

    sub-int v3, p3, v3

    if-gt v2, v3, :cond_7

    add-int v3, p2, v2

    const/4 v4, 0x0

    .line 9
    :goto_3
    array-length v6, p1

    if-ge v4, v6, :cond_4

    .line 10
    iget-object v6, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    add-int v7, v3, v4

    aget-byte v6, v6, v7

    aget-byte v7, p1, v4

    if-eq v6, v7, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_5

    return v3

    .line 11
    :cond_5
    array-length v4, p1

    add-int/2addr v3, v4

    .line 12
    iget-object v4, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    array-length v6, v4

    if-lt v3, v6, :cond_6

    goto :goto_5

    .line 13
    :cond_6
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    .line 14
    iget-object v4, p0, Lorg/apache/james/mime4j/io/a;->n:[I

    aget v3, v4, v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_7
    :goto_5
    return v1

    .line 15
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "looking for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/james/mime4j/io/a;->l:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/james/mime4j/io/a;->m:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pattern may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method protected J()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->l()I

    move-result v0

    return v0
.end method

.method protected K()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    return v0
.end method

.method protected L()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    return v0
.end method

.method protected M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/a;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public N()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/apache/james/mime4j/io/a;->A()Lorg/apache/james/mime4j/f/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/apache/james/mime4j/f/b;->d(I[B)V

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/io/a;->n:[I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/f/b;->e([I)V

    return-void
.end method

.method protected O(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->l()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    return p1
.end method

.method public P()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->s()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/a;->f:Z

    return-void
.end method

.method public a(Lorg/apache/james/mime4j/f/c;)I
    .locals 7

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->M()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_6

    .line 2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->B()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->x()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0xa

    .line 4
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/io/a;->E(B)I

    move-result v4

    if-eq v4, v1, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 5
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v0

    sub-int/2addr v4, v0

    const/4 v0, 0x1

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->J()I

    move-result v4

    :goto_1
    if-lez v4, :cond_4

    .line 7
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->j()[B

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v6

    invoke-virtual {p1, v5, v6, v4}, Lorg/apache/james/mime4j/f/c;->c([BII)V

    .line 8
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/io/a;->O(I)I

    add-int/2addr v2, v4

    .line 9
    :cond_4
    iget v4, p0, Lorg/apache/james/mime4j/io/a;->o:I

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/c;->length()I

    move-result v4

    iget v5, p0, Lorg/apache/james/mime4j/io/a;->o:I

    if-ge v4, v5, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    new-instance p1, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum line length limit ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/io/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    if-ne v3, v1, :cond_7

    return v1

    :cond_7
    return v2

    .line 11
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public e(Lorg/apache/james/mime4j/f/l;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/a;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    iput-object v0, p0, Lorg/apache/james/mime4j/io/a;->h:[B

    .line 3
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    iput v0, p0, Lorg/apache/james/mime4j/io/a;->j:I

    .line 4
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    iput v0, p0, Lorg/apache/james/mime4j/io/a;->i:I

    .line 5
    iput v1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    .line 6
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    .line 7
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/l;->d()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/a;->g:Z

    return p1
.end method

.method protected j()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o(I)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    if-gt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looking for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/james/mime4j/io/a;->m:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->M()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->x()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    iget v1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/io/a;->l:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 11
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 12
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/a;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 5
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->M()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->B()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/a;->x()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 8
    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->l()I

    move-result v0

    if-le v0, p3, :cond_3

    goto :goto_0

    :cond_3
    move p3, v0

    .line 9
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    iget v1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    return p3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pos: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[limit: "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v3, p0, Lorg/apache/james/mime4j/io/a;->m:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v4, p0, Lorg/apache/james/mime4j/io/a;->l:I

    :goto_0
    iget v5, p0, Lorg/apache/james/mime4j/io/a;->m:I

    if-ge v4, v5, :cond_0

    .line 10
    iget-object v5, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    aget-byte v5, v5, v4

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-boolean v4, p0, Lorg/apache/james/mime4j/io/a;->g:Z

    if-eqz v4, :cond_2

    const-string v4, "-ORIG[pos: "

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v4, p0, Lorg/apache/james/mime4j/io/a;->i:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v2, p0, Lorg/apache/james/mime4j/io/a;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v2, p0, Lorg/apache/james/mime4j/io/a;->i:I

    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/io/a;->j:I

    if-ge v2, v3, :cond_1

    .line 21
    iget-object v3, p0, Lorg/apache/james/mime4j/io/a;->h:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/a;->w(I)V

    :cond_0
    return-void
.end method

.method public x()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/a;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    iget v2, p0, Lorg/apache/james/mime4j/io/a;->m:I

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/io/a;->h:[B

    iput-object v0, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    .line 4
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->j:I

    iput v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    .line 5
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->i:I

    iput v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    .line 6
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/a;->g:Z

    .line 7
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->l()I

    move-result v0

    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unread only works when a buffer is fully read before the next refill is asked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->l:I

    if-lez v0, :cond_3

    .line 10
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/a;->l()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    iget-object v2, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    iget v3, p0, Lorg/apache/james/mime4j/io/a;->l:I

    invoke-static {v2, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_2
    iput v1, p0, Lorg/apache/james/mime4j/io/a;->l:I

    .line 13
    iput v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    .line 14
    :cond_3
    iget v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    .line 15
    iget-object v1, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 16
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/io/a;->k:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    return v2

    :cond_4
    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lorg/apache/james/mime4j/io/a;->m:I

    return v1
.end method
