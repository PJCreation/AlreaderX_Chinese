.class public Lorg/apache/commons/io/input/b;
.super Ljava/io/InputStream;
.source "UnsynchronizedByteArrayInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/b$a;
    }
.end annotation


# instance fields
.field private final e:[B

.field private final f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    const-string v0, "data"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/b;->e:[B

    .line 3
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/io/input/b;->g:I

    add-int/2addr p2, p3

    .line 4
    array-length p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/io/input/b;->f:I

    .line 5
    iget p1, p0, Lorg/apache/commons/io/input/b;->g:I

    iput p1, p0, Lorg/apache/commons/io/input/b;->h:I

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lorg/apache/commons/io/input/b$a;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/b$a;

    invoke-direct {v0}, Lorg/apache/commons/io/input/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/b;->g:I

    iget v1, p0, Lorg/apache/commons/io/input/b;->f:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public mark(I)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/apache/commons/io/input/b;->g:I

    iput p1, p0, Lorg/apache/commons/io/input/b;->h:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/b;->g:I

    iget v1, p0, Lorg/apache/commons/io/input/b;->f:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/input/b;->e:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/b;->g:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    const-string v0, "dest"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    const-string v0, "dest"

    .line 4
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 6
    iget v0, p0, Lorg/apache/commons/io/input/b;->g:I

    iget v1, p0, Lorg/apache/commons/io/input/b;->f:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v1, v0

    if-ge p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    if-gtz p3, :cond_2

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/io/input/b;->e:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lorg/apache/commons/io/input/b;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/io/input/b;->g:I

    return p3

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/b;->h:I

    iput v0, p0, Lorg/apache/commons/io/input/b;->g:I

    return-void
.end method

.method public skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/b;->f:I

    iget v1, p0, Lorg/apache/commons/io/input/b;->g:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    move-wide v2, p1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/io/input/d;->a(J)I

    move-result p1

    invoke-static {v1, p1}, Lorg/apache/commons/io/input/c;->a(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/io/input/b;->g:I

    return-wide v2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Skipping backward is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
