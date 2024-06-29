.class public final Lorg/apache/james/mime4j/f/l;
.super Ljava/lang/Object;
.source "RecycledByteArrayBuffer.java"

# interfaces
.implements Lorg/apache/james/mime4j/f/e;


# instance fields
.field private final b:Lorg/apache/james/mime4j/f/b;

.field private c:[B

.field private d:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/f/b;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p2}, Lorg/apache/james/mime4j/f/b;->a(II)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    .line 3
    iput-object p1, p0, Lorg/apache/james/mime4j/f/l;->b:Lorg/apache/james/mime4j/f/b;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer capacity may not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/f/l;->b:Lorg/apache/james/mime4j/f/b;

    iget-object v1, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/apache/james/mime4j/f/b;->a(II)[B

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    iget v2, p0, Lorg/apache/james/mime4j/f/l;->d:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/f/l;->b:Lorg/apache/james/mime4j/f/b;

    iget-object v2, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/f/b;->d(I[B)V

    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    aget-byte p1, v0, p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/f/l;->f(I)V

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    iget v2, p0, Lorg/apache/james/mime4j/f/l;->d:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 5
    iput v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    return-void
.end method

.method public c([BII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_3

    .line 1
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-nez p3, :cond_1

    return-void

    .line 2
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    add-int/2addr v0, p3

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/f/l;->f(I)V

    .line 5
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    iget v2, p0, Lorg/apache/james/mime4j/f/l;->d:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    return-void

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/f/l;->b:Lorg/apache/james/mime4j/f/b;

    iget-object v1, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/apache/james/mime4j/f/b;->d(I[B)V

    return-void
.end method

.method public h(II)V
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_2

    add-int v1, p1, p2

    if-ltz v1, :cond_2

    if-gt v1, v0, :cond_2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_1

    .line 2
    iget-object v2, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    invoke-static {v2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    :cond_1
    iget p1, p0, Lorg/apache/james/mime4j/f/l;->d:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/james/mime4j/f/l;->d:I

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public i()[B
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    new-array v1, v0, [B

    if-lez v0, :cond_0

    .line 2
    iget-object v2, p0, Lorg/apache/james/mime4j/f/l;->c:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/f/l;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/f/l;->i()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
