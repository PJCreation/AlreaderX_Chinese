.class public final Lokio/b;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lokio/d;
.implements Lokio/c;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/b$a;
    }
.end annotation


# instance fields
.field public e:Lokio/r;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/b;->r(J)[B

    move-result-object v0

    return-object v0
.end method

.method public B()Lokio/ByteString;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/b;->i(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public C(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lokio/b;->f:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public bridge synthetic D(Ljava/lang/String;)Lokio/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/b;->Z(Ljava/lang/String;)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public E([B)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/b;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public F()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/b;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/a0;->e(I)I

    move-result v0

    return v0
.end method

.method public G()J
    .locals 15

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 2
    :cond_0
    iget-object v6, p0, Lokio/b;->e:Lokio/r;

    invoke-static {v6}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 3
    iget-object v7, v6, Lokio/r;->b:[B

    .line 4
    iget v8, v6, Lokio/r;->c:I

    .line 5
    iget v9, v6, Lokio/r;->d:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_1

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_1

    sub-int v11, v10, v11

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2

    :goto_1
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    goto :goto_2

    :cond_2
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    goto :goto_1

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lokio/b;

    invoke-direct {v0}, Lokio/b;-><init>()V

    invoke-virtual {v0, v4, v5}, Lokio/b;->V(J)Lokio/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokio/b;->U(I)Lokio/b;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Lokio/b;->K()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Number too large: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 10
    invoke-static {v10}, Lokio/a0;->g(B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 12
    invoke-virtual {v6}, Lokio/r;->b()Lokio/r;

    move-result-object v7

    iput-object v7, p0, Lokio/b;->e:Lokio/r;

    .line 13
    invoke-static {v6}, Lokio/s;->b(Lokio/r;)V

    goto :goto_4

    .line 14
    :cond_7
    iput v8, v6, Lokio/r;->c:I

    :goto_4
    if-nez v1, :cond_8

    .line 15
    iget-object v6, p0, Lokio/b;->e:Lokio/r;

    if-nez v6, :cond_0

    .line 16
    :cond_8
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v1

    int-to-long v6, v0

    sub-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lokio/b;->M(J)V

    return-wide v4

    .line 17
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public H()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lokio/b$b;

    invoke-direct {v0, p0}, Lokio/b$b;-><init>(Lokio/b;)V

    return-object v0
.end method

.method public I()S
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/b;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/a0;->f(S)S

    move-result v0

    return v0
.end method

.method public J(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 1
    iget-wide v2, p0, Lokio/b;->f:J

    cmp-long v4, v2, p1

    if-ltz v4, :cond_4

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const-string p1, ""

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lokio/r;->c:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lokio/r;->d:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2}, Lokio/b;->r(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 5
    :cond_2
    iget-object v2, v0, Lokio/r;->b:[B

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    iget p3, v0, Lokio/r;->c:I

    add-int/2addr p3, v3

    iput p3, v0, Lokio/r;->c:I

    .line 7
    iget-wide v1, p0, Lokio/b;->f:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lokio/b;->f:J

    .line 8
    iget p1, v0, Lokio/r;->d:I

    if-ne p3, p1, :cond_3

    .line 9
    invoke-virtual {v0}, Lokio/r;->b()Lokio/r;

    move-result-object p1

    iput-object p1, p0, Lokio/b;->e:Lokio/r;

    .line 10
    invoke-static {v0}, Lokio/s;->b(Lokio/r;)V

    :cond_3
    return-object v4

    .line 11
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 12
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public K()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lokio/b;->f:J

    sget-object v2, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/b;->J(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/b;->J(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final M(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokio/b;->f:J

    return-void
.end method

.method public final N()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/b;->f:J

    return-wide v0
.end method

.method public final O()Lokio/ByteString;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lokio/b;->P(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final P(I)Lokio/ByteString;
    .locals 8

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lokio/a0;->b(JJJ)V

    .line 3
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v4, v0, Lokio/r;->d:I

    iget v5, v0, Lokio/r;->c:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v0, v0, Lokio/r;->g:Lokio/r;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 7
    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 8
    new-array v2, v2, [I

    .line 9
    iget-object v4, p0, Lokio/b;->e:Lokio/r;

    move-object v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 10
    invoke-static {v5}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v6, v5, Lokio/r;->b:[B

    aput-object v6, v0, v4

    .line 11
    iget v6, v5, Lokio/r;->d:I

    iget v7, v5, Lokio/r;->c:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 12
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    .line 13
    iget v7, v5, Lokio/r;->c:I

    aput v7, v2, v6

    const/4 v6, 0x1

    .line 14
    iput-boolean v6, v5, Lokio/r;->e:Z

    add-int/2addr v4, v6

    .line 15
    iget-object v5, v5, Lokio/r;->g:Lokio/r;

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Lokio/SegmentedByteString;

    invoke-direct {p1, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    :goto_2
    return-object p1
.end method

.method public final Q(I)Lokio/r;
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1
    iget-object v1, p0, Lokio/b;->e:Lokio/r;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lokio/s;->c()Lokio/r;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lokio/b;->e:Lokio/r;

    .line 4
    iput-object p1, p1, Lokio/r;->h:Lokio/r;

    .line 5
    iput-object p1, p1, Lokio/r;->g:Lokio/r;

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/r;->h:Lokio/r;

    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v2, v1, Lokio/r;->d:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_3

    iget-boolean p1, v1, Lokio/r;->f:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lokio/s;->c()Lokio/r;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokio/r;->c(Lokio/r;)Lokio/r;

    move-result-object p1

    :goto_2
    return-object p1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R(Lokio/ByteString;)Lokio/b;
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p0, v1, v0}, Lokio/ByteString;->write$okio(Lokio/b;II)V

    return-object p0
.end method

.method public S([B)Lokio/b;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/b;->T([BII)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public T([BII)Lokio/b;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/a0;->b(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v0

    sub-int v1, p3, p2

    .line 3
    iget v2, v0, Lokio/r;->d:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, v0, Lokio/r;->b:[B

    .line 5
    iget v3, v0, Lokio/r;->d:I

    add-int v4, p2, v1

    .line 6
    invoke-static {p1, v2, v3, p2, v4}, Lkotlin/collections/h;->c([B[BIII)[B

    .line 7
    iget p2, v0, Lokio/r;->d:I

    add-int/2addr p2, v1

    iput p2, v0, Lokio/r;->d:I

    move p2, v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide p1

    add-long/2addr p1, v7

    invoke-virtual {p0, p1, p2}, Lokio/b;->M(J)V

    return-object p0
.end method

.method public U(I)Lokio/b;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lokio/r;->b:[B

    iget v2, v0, Lokio/r;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/r;->d:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 3
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/b;->M(J)V

    return-object p0
.end method

.method public V(J)Lokio/b;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lokio/b;->U(I)Lokio/b;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    .line 2
    div-long/2addr v8, v1

    long-to-int v1, v8

    .line 3
    invoke-virtual {p0, v1}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lokio/r;->b:[B

    .line 5
    iget v5, v2, Lokio/r;->d:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 6
    invoke-static {}, Lokio/b0/a;->a()[B

    move-result-object v0

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v0, v0, v8

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 7
    :cond_1
    iget p1, v2, Lokio/r;->d:I

    add-int/2addr p1, v1

    iput p1, v2, Lokio/r;->d:I

    .line 8
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide p1

    int-to-long v0, v1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lokio/b;->M(J)V

    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public W(I)Lokio/b;
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lokio/r;->b:[B

    .line 3
    iget v2, v0, Lokio/r;->d:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v1, v3

    .line 8
    iput v2, v0, Lokio/r;->d:I

    .line 9
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/b;->M(J)V

    return-object p0
.end method

.method public X(I)Lokio/b;
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lokio/r;->b:[B

    .line 3
    iget v2, v0, Lokio/r;->d:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    .line 6
    iput v2, v0, Lokio/r;->d:I

    .line 7
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/b;->M(J)V

    return-object p0
.end method

.method public Y(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/b;
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lokio/b;->a0(Ljava/lang/String;II)Lokio/b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lokio/b;->T([BII)Lokio/b;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex > string.length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex < beginIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "beginIndex < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public Z(Ljava/lang/String;)Lokio/b;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/b;->a0(Ljava/lang/String;II)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/b;->skip(J)V

    return-void
.end method

.method public a0(Ljava/lang/String;II)Lokio/b;
    .locals 11

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_10

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_f

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_e

    :goto_3
    if-ge p2, p3, :cond_d

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_5

    .line 3
    invoke-virtual {p0, v1}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v4

    .line 4
    iget-object v5, v4, Lokio/r;->b:[B

    .line 5
    iget v6, v4, Lokio/r;->d:I

    sub-int/2addr v6, p2

    rsub-int v7, v6, 0x2000

    .line 6
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 7
    aput-byte v2, v5, p2

    :goto_4
    move p2, v8

    if-ge p2, v7, :cond_4

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 9
    aput-byte v2, v5, p2

    goto :goto_4

    :cond_4
    :goto_5
    add-int/2addr v6, p2

    .line 10
    iget v2, v4, Lokio/r;->d:I

    sub-int/2addr v6, v2

    add-int/2addr v2, v6

    .line 11
    iput v2, v4, Lokio/r;->d:I

    .line 12
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v2

    int-to-long v4, v6

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/b;->M(J)V

    goto :goto_3

    :cond_5
    const/16 v4, 0x800

    if-ge v2, v4, :cond_6

    const/4 v4, 0x2

    .line 13
    invoke-virtual {p0, v4}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v5

    .line 14
    iget-object v6, v5, Lokio/r;->b:[B

    iget v7, v5, Lokio/r;->d:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 15
    aput-byte v2, v6, v8

    add-int/2addr v7, v4

    .line 16
    iput v7, v5, Lokio/r;->d:I

    .line 17
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/b;->M(J)V

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_c

    const v4, 0xdfff

    if-le v2, v4, :cond_7

    goto :goto_a

    :cond_7
    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_8

    .line 18
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    const v8, 0xdbff

    if-gt v2, v8, :cond_b

    const v8, 0xdc00

    if-gt v8, v7, :cond_9

    if-gt v7, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_a

    goto :goto_9

    :cond_a
    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v6, v7, 0x3ff

    or-int/2addr v2, v6

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 19
    invoke-virtual {p0, v4}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v6

    .line 20
    iget-object v7, v6, Lokio/r;->b:[B

    iget v8, v6, Lokio/r;->d:I

    shr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 21
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 22
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 23
    aput-byte v2, v7, v9

    add-int/2addr v8, v4

    .line 24
    iput v8, v6, Lokio/r;->d:I

    .line 25
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/b;->M(J)V

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 26
    :cond_b
    :goto_9
    invoke-virtual {p0, v5}, Lokio/b;->U(I)Lokio/b;

    move p2, v6

    goto/16 :goto_3

    :cond_c
    :goto_a
    const/4 v4, 0x3

    .line 27
    invoke-virtual {p0, v4}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v6

    .line 28
    iget-object v7, v6, Lokio/r;->b:[B

    iget v8, v6, Lokio/r;->d:I

    shr-int/lit8 v9, v2, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 29
    aput-byte v5, v7, v9

    add-int/lit8 v5, v8, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 30
    aput-byte v2, v7, v5

    add-int/2addr v8, v4

    .line 31
    iput v8, v6, Lokio/r;->d:I

    .line 32
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/b;->M(J)V

    goto/16 :goto_6

    :cond_d
    return-object p0

    .line 33
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 35
    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "beginIndex < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw p2

    :goto_c
    goto :goto_b
.end method

.method public b()Lokio/b;
    .locals 0

    return-object p0
.end method

.method public b0(I)Lokio/b;
    .locals 8

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lokio/b;->U(I)Lokio/b;

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v3

    .line 3
    iget-object v4, v3, Lokio/r;->b:[B

    iget v5, v3, Lokio/r;->d:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 5
    iput v5, v3, Lokio/r;->d:I

    .line 6
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/b;->M(J)V

    goto/16 :goto_0

    :cond_1
    const v1, 0xd800

    const/4 v3, 0x0

    if-gt v1, p1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {p0, v2}, Lokio/b;->U(I)Lokio/b;

    goto :goto_0

    :cond_3
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_4

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0, v1}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v3

    .line 9
    iget-object v4, v3, Lokio/r;->b:[B

    iget v5, v3, Lokio/r;->d:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 10
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 11
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 12
    iput v5, v3, Lokio/r;->d:I

    .line 13
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/b;->M(J)V

    goto :goto_0

    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    const/4 v1, 0x4

    .line 14
    invoke-virtual {p0, v1}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v3

    .line 15
    iget-object v4, v3, Lokio/r;->b:[B

    iget v5, v3, Lokio/r;->d:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 16
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 17
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 18
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 19
    iput v5, v3, Lokio/r;->d:I

    .line 20
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/b;->M(J)V

    :goto_0
    return-object p0

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lokio/a0;->h(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected code point: 0x"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lokio/w;
    .locals 1

    .line 1
    sget-object v0, Lokio/w;->b:Lokio/w;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/b;->e()Lokio/b;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public bridge synthetic d([BII)Lokio/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lokio/b;->T([BII)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public e()Lokio/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/b;->l()Lokio/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 1
    :cond_1
    instance-of v4, v1, Lokio/b;

    if-nez v4, :cond_2

    goto/16 :goto_4

    .line 2
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lokio/b;->N()J

    move-result-wide v4

    check-cast v1, Lokio/b;

    invoke-virtual {v1}, Lokio/b;->N()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    goto/16 :goto_4

    .line 3
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lokio/b;->N()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    goto :goto_0

    .line 4
    :cond_4
    iget-object v4, v0, Lokio/b;->e:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 5
    iget-object v1, v1, Lokio/b;->e:Lokio/r;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 6
    iget v5, v4, Lokio/r;->c:I

    .line 7
    iget v8, v1, Lokio/r;->c:I

    move-wide v9, v6

    .line 8
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lokio/b;->N()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_0

    .line 9
    iget v11, v4, Lokio/r;->d:I

    sub-int/2addr v11, v5

    iget v12, v1, Lokio/r;->d:I

    sub-int/2addr v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v6, v11

    if-gez v13, :cond_7

    move-wide v13, v6

    :goto_2
    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    .line 10
    iget-object v15, v4, Lokio/r;->b:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lokio/r;->b:[B

    add-int/lit8 v17, v8, 0x1

    aget-byte v8, v15, v8

    if-eq v5, v8, :cond_5

    goto :goto_4

    :cond_5
    cmp-long v5, v13, v11

    if-ltz v5, :cond_6

    move/from16 v5, v16

    move/from16 v8, v17

    goto :goto_3

    :cond_6
    move/from16 v5, v16

    move/from16 v8, v17

    goto :goto_2

    .line 11
    :cond_7
    :goto_3
    iget v13, v4, Lokio/r;->d:I

    if-ne v5, v13, :cond_8

    .line 12
    iget-object v4, v4, Lokio/r;->g:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 13
    iget v5, v4, Lokio/r;->c:I

    .line 14
    :cond_8
    iget v13, v1, Lokio/r;->d:I

    if-ne v8, v13, :cond_9

    .line 15
    iget-object v1, v1, Lokio/r;->g:Lokio/r;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 16
    iget v8, v1, Lokio/r;->c:I

    :cond_9
    add-long/2addr v9, v11

    goto :goto_1

    :goto_4
    return v2
.end method

.method public f(Lokio/b;J)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 1
    invoke-virtual {p1}, Lokio/b;->N()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lokio/a0;->b(JJJ)V

    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_6

    .line 2
    iget-object v1, p1, Lokio/b;->e:Lokio/r;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v1, v1, Lokio/r;->d:I

    iget-object v2, p1, Lokio/b;->e:Lokio/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v2, v2, Lokio/r;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_4

    .line 3
    iget-object v1, p0, Lokio/b;->e:Lokio/r;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/r;->h:Lokio/r;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 4
    iget-boolean v2, v1, Lokio/r;->f:Z

    if-eqz v2, :cond_3

    .line 5
    iget v2, v1, Lokio/r;->d:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Lokio/r;->e:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    iget v4, v1, Lokio/r;->c:I

    :goto_3
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    .line 6
    iget-object v0, p1, Lokio/b;->e:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/r;->f(Lokio/r;I)V

    .line 7
    invoke-virtual {p1}, Lokio/b;->N()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lokio/b;->M(J)V

    .line 8
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Lokio/b;->M(J)V

    goto :goto_5

    .line 9
    :cond_3
    iget-object v1, p1, Lokio/b;->e:Lokio/r;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lokio/r;->e(I)Lokio/r;

    move-result-object v1

    iput-object v1, p1, Lokio/b;->e:Lokio/r;

    .line 10
    :cond_4
    iget-object v1, p1, Lokio/b;->e:Lokio/r;

    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v2, v1, Lokio/r;->d:I

    iget v3, v1, Lokio/r;->c:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 12
    invoke-virtual {v1}, Lokio/r;->b()Lokio/r;

    move-result-object v4

    iput-object v4, p1, Lokio/b;->e:Lokio/r;

    .line 13
    iget-object v4, p0, Lokio/b;->e:Lokio/r;

    if-nez v4, :cond_5

    .line 14
    iput-object v1, p0, Lokio/b;->e:Lokio/r;

    .line 15
    iput-object v1, v1, Lokio/r;->h:Lokio/r;

    .line 16
    iput-object v1, v1, Lokio/r;->g:Lokio/r;

    goto :goto_4

    .line 17
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/r;->h:Lokio/r;

    .line 18
    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lokio/r;->c(Lokio/r;)Lokio/r;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lokio/r;->a()V

    .line 20
    :goto_4
    invoke-virtual {p1}, Lokio/b;->N()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lokio/b;->M(J)V

    .line 21
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lokio/b;->M(J)V

    sub-long/2addr p2, v2

    goto/16 :goto_1

    :cond_6
    :goto_5
    return-void

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g(Lokio/v;)J
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    .line 1
    invoke-interface {p1, p0, v2, v3}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public bridge synthetic h(J)Lokio/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/b;->V(J)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 2
    :cond_1
    iget v2, v0, Lokio/r;->c:I

    .line 3
    iget v3, v0, Lokio/r;->d:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v4, v0, Lokio/r;->b:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, v0, Lokio/r;->g:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lokio/b;->e:Lokio/r;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    return v0
.end method

.method public i(J)Lokio/ByteString;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    const-wide/16 v0, 0x1000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    long-to-int v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lokio/b;->P(I)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lokio/b;->skip(J)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/b;->r(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    :goto_1
    return-object v0

    .line 4
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 5
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lokio/b;->e:Lokio/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v2, v2, Lokio/r;->h:Lokio/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 3
    iget v3, v2, Lokio/r;->d:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lokio/r;->f:Z

    if-eqz v4, :cond_1

    .line 4
    iget v2, v2, Lokio/r;->c:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public bridge synthetic k(I)Lokio/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/b;->X(I)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public final l()Lokio/b;
    .locals 6

    .line 1
    new-instance v0, Lokio/b;

    invoke-direct {v0}, Lokio/b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lokio/b;->e:Lokio/r;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Lokio/r;->d()Lokio/r;

    move-result-object v2

    .line 5
    iput-object v2, v0, Lokio/b;->e:Lokio/r;

    .line 6
    iput-object v2, v2, Lokio/r;->h:Lokio/r;

    .line 7
    iput-object v2, v2, Lokio/r;->g:Lokio/r;

    .line 8
    iget-object v3, v1, Lokio/r;->g:Lokio/r;

    :goto_0
    if-eq v3, v1, :cond_1

    .line 9
    iget-object v4, v2, Lokio/r;->h:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/r;->d()Lokio/r;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/r;->c(Lokio/r;)Lokio/r;

    .line 10
    iget-object v3, v3, Lokio/r;->g:Lokio/r;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokio/b;->M(J)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic m(I)Lokio/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/b;->W(I)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/b;->z(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lokio/b;JJ)Lokio/b;
    .locals 8

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokio/a0;->b(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Lokio/b;->N()J

    move-result-wide v2

    add-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lokio/b;->M(J)V

    .line 3
    iget-object v2, p0, Lokio/b;->e:Lokio/r;

    .line 4
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v3, v2, Lokio/r;->d:I

    iget v4, v2, Lokio/r;->c:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_1

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 5
    iget-object v2, v2, Lokio/r;->g:Lokio/r;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 6
    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokio/r;->d()Lokio/r;

    move-result-object v3

    .line 7
    iget v4, v3, Lokio/r;->c:I

    long-to-int p3, p2

    add-int/2addr v4, p3

    iput v4, v3, Lokio/r;->c:I

    long-to-int p2, p4

    add-int/2addr v4, p2

    .line 8
    iget p2, v3, Lokio/r;->d:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lokio/r;->d:I

    .line 9
    iget-object p2, p1, Lokio/b;->e:Lokio/r;

    if-nez p2, :cond_2

    .line 10
    iput-object v3, v3, Lokio/r;->h:Lokio/r;

    .line 11
    iput-object v3, v3, Lokio/r;->g:Lokio/r;

    .line 12
    iput-object v3, p1, Lokio/b;->e:Lokio/r;

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object p2, p2, Lokio/r;->h:Lokio/r;

    invoke-static {p2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lokio/r;->c(Lokio/r;)Lokio/r;

    .line 14
    :goto_2
    iget p2, v3, Lokio/r;->d:I

    iget p3, v3, Lokio/r;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 15
    iget-object v2, v2, Lokio/r;->g:Lokio/r;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    :goto_3
    return-object p0
.end method

.method public p()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lokio/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic q(I)Lokio/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/b;->U(I)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public r(J)[B
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    long-to-int p2, p1

    .line 2
    new-array p1, p2, [B

    .line 3
    invoke-virtual {p0, p1}, Lokio/b;->E([B)V

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 5
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/r;->d:I

    iget v3, v0, Lokio/r;->c:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Lokio/r;->b:[B

    iget v3, v0, Lokio/r;->c:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Lokio/r;->c:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/r;->c:I

    .line 5
    iget-wide v2, p0, Lokio/b;->f:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/b;->f:J

    .line 6
    iget v2, v0, Lokio/r;->d:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lokio/r;->b()Lokio/r;

    move-result-object p1

    iput-object p1, p0, Lokio/b;->e:Lokio/r;

    .line 8
    invoke-static {v0}, Lokio/s;->b(Lokio/r;)V

    :cond_1
    return v1
.end method

.method public read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/a0;->b(JJJ)V

    .line 10
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 11
    :cond_0
    iget v1, v0, Lokio/r;->d:I

    iget v2, v0, Lokio/r;->c:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget-object v1, v0, Lokio/r;->b:[B

    .line 13
    iget v2, v0, Lokio/r;->c:I

    add-int v3, v2, p3

    .line 14
    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/collections/h;->c([B[BIII)[B

    .line 15
    iget p1, v0, Lokio/r;->c:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/r;->c:I

    .line 16
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lokio/b;->M(J)V

    .line 17
    iget p1, v0, Lokio/r;->c:I

    iget p2, v0, Lokio/r;->d:I

    if-ne p1, p2, :cond_1

    .line 18
    invoke-virtual {v0}, Lokio/r;->b()Lokio/r;

    move-result-object p1

    iput-object p1, p0, Lokio/b;->e:Lokio/r;

    .line 19
    invoke-static {v0}, Lokio/s;->b(Lokio/r;)V

    :cond_1
    move p1, p3

    :goto_0
    return p1
.end method

.method public readByte()B
    .locals 9

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lokio/r;->c:I

    .line 4
    iget v2, v0, Lokio/r;->d:I

    .line 5
    iget-object v3, v0, Lokio/r;->b:[B

    add-int/lit8 v4, v1, 0x1

    .line 6
    aget-byte v1, v3, v1

    .line 7
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lokio/b;->M(J)V

    if-ne v4, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Lokio/r;->b()Lokio/r;

    move-result-object v2

    iput-object v2, p0, Lokio/b;->e:Lokio/r;

    .line 9
    invoke-static {v0}, Lokio/s;->b(Lokio/r;)V

    goto :goto_0

    .line 10
    :cond_0
    iput v4, v0, Lokio/r;->c:I

    :goto_0
    return v1

    .line 11
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lokio/r;->c:I

    .line 4
    iget v4, v0, Lokio/r;->d:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 5
    invoke-virtual {p0}, Lokio/b;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Lokio/b;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lokio/b;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lokio/b;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v5, v0, Lokio/r;->b:[B

    add-int/lit8 v6, v1, 0x1

    .line 10
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .line 11
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .line 12
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .line 13
    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 14
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lokio/b;->M(J)V

    if-ne v7, v4, :cond_1

    .line 15
    invoke-virtual {v0}, Lokio/r;->b()Lokio/r;

    move-result-object v2

    iput-object v2, p0, Lokio/b;->e:Lokio/r;

    .line 16
    invoke-static {v0}, Lokio/s;->b(Lokio/r;)V

    goto :goto_0

    .line 17
    :cond_1
    iput v7, v0, Lokio/r;->c:I

    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 18
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 8

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lokio/r;->c:I

    .line 4
    iget v4, v0, Lokio/r;->d:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 5
    invoke-virtual {p0}, Lokio/b;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokio/b;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v5, v0, Lokio/r;->b:[B

    add-int/lit8 v6, v1, 0x1

    .line 7
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 8
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lokio/b;->M(J)V

    if-ne v7, v4, :cond_1

    .line 9
    invoke-virtual {v0}, Lokio/r;->b()Lokio/r;

    move-result-object v2

    iput-object v2, p0, Lokio/b;->e:Lokio/r;

    .line 10
    invoke-static {v0}, Lokio/s;->b(Lokio/r;)V

    goto :goto_0

    .line 11
    :cond_1
    iput v7, v0, Lokio/r;->c:I

    :goto_0
    int-to-short v0, v1

    :goto_1
    return v0

    .line 12
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final s(J)B
    .locals 6

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/a0;->b(JJJ)V

    .line 2
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v1

    sub-long/2addr v1, p1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 4
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v1

    :goto_0
    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    .line 5
    iget-object v0, v0, Lokio/r;->h:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 6
    iget v3, v0, Lokio/r;->d:I

    iget v4, v0, Lokio/r;->c:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Lokio/r;->b:[B

    iget v0, v0, Lokio/r;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    .line 8
    :goto_1
    iget v3, v0, Lokio/r;->d:I

    iget v4, v0, Lokio/r;->c:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v5, v3, p1

    if-lez v5, :cond_2

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Lokio/r;->b:[B

    iget v0, v0, Lokio/r;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    :goto_2
    return p1

    .line 10
    :cond_2
    iget-object v0, v0, Lokio/r;->g:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public skip(J)V
    .locals 7

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1
    iget-object v0, p0, Lokio/b;->e:Lokio/r;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lokio/r;->d:I

    iget v2, v0, Lokio/r;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/b;->M(J)V

    sub-long/2addr p1, v5

    .line 5
    iget v1, v0, Lokio/r;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/r;->c:I

    .line 6
    iget v2, v0, Lokio/r;->d:I

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lokio/r;->b()Lokio/r;

    move-result-object v1

    iput-object v1, p0, Lokio/b;->e:Lokio/r;

    .line 8
    invoke-static {v0}, Lokio/s;->b(Lokio/r;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public bridge synthetic t([B)Lokio/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/b;->S([B)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/b;->O()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Lokio/ByteString;)Lokio/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/b;->R(Lokio/ByteString;)Lokio/b;

    move-result-object p1

    return-object p1
.end method

.method public v(BJJ)J
    .locals 16

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v1

    if-gtz v8, :cond_0

    cmp-long v8, v1, v3

    if-gtz v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-eqz v5, :cond_c

    .line 1
    invoke-virtual/range {p0 .. p0}, Lokio/b;->N()J

    move-result-wide v8

    cmp-long v5, v3, v8

    if-lez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lokio/b;->N()J

    move-result-wide v3

    :cond_1
    move-wide v8, v3

    const-wide/16 v10, -0x1

    cmp-long v3, v1, v8

    if-nez v3, :cond_2

    move-object/from16 v5, p0

    goto/16 :goto_7

    :cond_2
    move-object/from16 v5, p0

    .line 2
    iget-object v3, v5, Lokio/b;->e:Lokio/r;

    if-nez v3, :cond_3

    goto/16 :goto_7

    .line 3
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lokio/b;->N()J

    move-result-wide v12

    sub-long/2addr v12, v1

    cmp-long v4, v12, v1

    if-gez v4, :cond_7

    .line 4
    invoke-virtual/range {p0 .. p0}, Lokio/b;->N()J

    move-result-wide v6

    :goto_0
    cmp-long v4, v6, v1

    if-lez v4, :cond_4

    .line 5
    iget-object v3, v3, Lokio/r;->h:Lokio/r;

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 6
    iget v4, v3, Lokio/r;->d:I

    iget v12, v3, Lokio/r;->c:I

    sub-int/2addr v4, v12

    int-to-long v12, v4

    sub-long/2addr v6, v12

    goto :goto_0

    :cond_4
    :goto_1
    cmp-long v4, v6, v8

    if-gez v4, :cond_a

    .line 7
    iget-object v4, v3, Lokio/r;->b:[B

    .line 8
    iget v12, v3, Lokio/r;->d:I

    int-to-long v12, v12

    iget v14, v3, Lokio/r;->c:I

    int-to-long v14, v14

    add-long/2addr v14, v8

    sub-long/2addr v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v13, v12

    .line 9
    iget v12, v3, Lokio/r;->c:I

    int-to-long v14, v12

    add-long/2addr v14, v1

    sub-long/2addr v14, v6

    long-to-int v1, v14

    :goto_2
    if-ge v1, v13, :cond_6

    .line 10
    aget-byte v2, v4, v1

    if-ne v2, v0, :cond_5

    .line 11
    :goto_3
    iget v0, v3, Lokio/r;->c:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long v10, v0, v6

    goto :goto_7

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_6
    iget v1, v3, Lokio/r;->d:I

    iget v2, v3, Lokio/r;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v6, v1

    .line 13
    iget-object v3, v3, Lokio/r;->g:Lokio/r;

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide v1, v6

    goto :goto_1

    .line 14
    :cond_7
    :goto_4
    iget v4, v3, Lokio/r;->d:I

    iget v12, v3, Lokio/r;->c:I

    sub-int/2addr v4, v12

    int-to-long v12, v4

    add-long/2addr v12, v6

    cmp-long v4, v12, v1

    if-lez v4, :cond_b

    :goto_5
    cmp-long v4, v6, v8

    if-gez v4, :cond_a

    .line 15
    iget-object v4, v3, Lokio/r;->b:[B

    .line 16
    iget v12, v3, Lokio/r;->d:I

    int-to-long v12, v12

    iget v14, v3, Lokio/r;->c:I

    int-to-long v14, v14

    add-long/2addr v14, v8

    sub-long/2addr v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v13, v12

    .line 17
    iget v12, v3, Lokio/r;->c:I

    int-to-long v14, v12

    add-long/2addr v14, v1

    sub-long/2addr v14, v6

    long-to-int v1, v14

    :goto_6
    if-ge v1, v13, :cond_9

    .line 18
    aget-byte v2, v4, v1

    if-ne v2, v0, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 19
    :cond_9
    iget v1, v3, Lokio/r;->d:I

    iget v2, v3, Lokio/r;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v6, v1

    .line 20
    iget-object v3, v3, Lokio/r;->g:Lokio/r;

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide v1, v6

    goto :goto_5

    :cond_a
    :goto_7
    return-wide v10

    .line 21
    :cond_b
    iget-object v3, v3, Lokio/r;->g:Lokio/r;

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide v6, v12

    goto :goto_4

    :cond_c
    move-object/from16 v5, p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/b;->N()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " fromIndex="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " toIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public w(Lokio/ByteString;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lokio/b;->x(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Lokio/b;->Q(I)Lokio/r;

    move-result-object v2

    .line 3
    iget v3, v2, Lokio/r;->d:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    iget-object v4, v2, Lokio/r;->b:[B

    iget v5, v2, Lokio/r;->d:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 5
    iget v4, v2, Lokio/r;->d:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/r;->d:I

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, p0, Lokio/b;->f:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/b;->f:J

    return v0
.end method

.method public x(Lokio/ByteString;J)J
    .locals 11

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v0

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_13

    .line 1
    iget-object v4, p0, Lokio/b;->e:Lokio/r;

    const-wide/16 v5, -0x1

    if-nez v4, :cond_1

    goto/16 :goto_e

    .line 2
    :cond_1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v7

    sub-long/2addr v7, p2

    const/4 v9, 0x2

    cmp-long v10, v7, p2

    if-gez v10, :cond_a

    .line 3
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    :goto_1
    cmp-long v7, v0, p2

    if-lez v7, :cond_2

    .line 4
    iget-object v4, v4, Lokio/r;->h:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 5
    iget v7, v4, Lokio/r;->d:I

    iget v8, v4, Lokio/r;->c:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v0, v7

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 7
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 8
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 9
    :goto_2
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_11

    .line 10
    iget-object v3, v4, Lokio/r;->b:[B

    .line 11
    iget v7, v4, Lokio/r;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 12
    iget p3, v4, Lokio/r;->d:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 13
    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_4

    if-ne v7, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 14
    :cond_4
    :goto_4
    iget p1, v4, Lokio/r;->c:I

    :goto_5
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v5, p1, v0

    goto/16 :goto_e

    .line 15
    :cond_5
    iget p2, v4, Lokio/r;->d:I

    iget p3, v4, Lokio/r;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 16
    iget-object v4, v4, Lokio/r;->g:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    .line 18
    :goto_6
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_11

    .line 19
    iget-object v3, v4, Lokio/r;->b:[B

    .line 20
    iget v7, v4, Lokio/r;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 21
    iget p3, v4, Lokio/r;->d:I

    :goto_7
    if-ge p2, p3, :cond_9

    .line 22
    aget-byte v7, v3, p2

    .line 23
    array-length v8, p1

    const/4 v9, 0x0

    :cond_7
    if-ge v9, v8, :cond_8

    aget-byte v10, p1, v9

    add-int/lit8 v9, v9, 0x1

    if-ne v7, v10, :cond_7

    .line 24
    :goto_8
    iget p1, v4, Lokio/r;->c:I

    goto :goto_5

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 25
    :cond_9
    iget p2, v4, Lokio/r;->d:I

    iget p3, v4, Lokio/r;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 26
    iget-object v4, v4, Lokio/r;->g:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_6

    .line 27
    :cond_a
    :goto_9
    iget v7, v4, Lokio/r;->d:I

    iget v8, v4, Lokio/r;->c:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v10, v7, p2

    if-lez v10, :cond_12

    .line 28
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v9, :cond_d

    .line 29
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 30
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 31
    :goto_a
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_11

    .line 32
    iget-object v3, v4, Lokio/r;->b:[B

    .line 33
    iget v7, v4, Lokio/r;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 34
    iget p3, v4, Lokio/r;->d:I

    :goto_b
    if-ge p2, p3, :cond_c

    .line 35
    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_4

    if-ne v7, p1, :cond_b

    goto/16 :goto_4

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 36
    :cond_c
    iget p2, v4, Lokio/r;->d:I

    iget p3, v4, Lokio/r;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 37
    iget-object v4, v4, Lokio/r;->g:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_a

    .line 38
    :cond_d
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    .line 39
    :goto_c
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_11

    .line 40
    iget-object v3, v4, Lokio/r;->b:[B

    .line 41
    iget v7, v4, Lokio/r;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 42
    iget p3, v4, Lokio/r;->d:I

    :goto_d
    if-ge p2, p3, :cond_10

    .line 43
    aget-byte v7, v3, p2

    .line 44
    array-length v8, p1

    const/4 v9, 0x0

    :cond_e
    if-ge v9, v8, :cond_f

    aget-byte v10, p1, v9

    add-int/lit8 v9, v9, 0x1

    if-ne v7, v10, :cond_e

    goto :goto_8

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 45
    :cond_10
    iget p2, v4, Lokio/r;->d:I

    iget p3, v4, Lokio/r;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 46
    iget-object v4, v4, Lokio/r;->g:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_c

    :cond_11
    :goto_e
    return-wide v5

    .line 47
    :cond_12
    iget-object v4, v4, Lokio/r;->g:Lokio/r;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-wide v0, v7

    goto/16 :goto_9

    .line 48
    :cond_13
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "fromIndex < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :goto_f
    throw p2

    :goto_10
    goto :goto_f
.end method

.method public y(Lokio/b;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide p2

    .line 3
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lokio/b;->f(Lokio/b;J)V

    move-wide p1, p2

    :goto_1
    return-wide p1

    .line 4
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public z(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-long v2, p1, v0

    :goto_1
    const/16 v4, 0xa

    int-to-byte v10, v4

    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, v10

    move-wide v8, v2

    .line 1
    invoke-virtual/range {v4 .. v9}, Lokio/b;->v(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 2
    invoke-static {p0, v4, v5}, Lokio/b0/a;->b(Lokio/b;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    sub-long v0, v2, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lokio/b;->s(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p0, v2, v3}, Lokio/b;->s(J)B

    move-result v0

    if-ne v0, v10, :cond_3

    .line 6
    invoke-static {p0, v2, v3}, Lokio/b0/a;->b(Lokio/b;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 7
    :cond_3
    new-instance v6, Lokio/b;

    invoke-direct {v6}, Lokio/b;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    .line 8
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v4

    int-to-long v0, v0

    .line 9
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 10
    invoke-virtual/range {v0 .. v5}, Lokio/b;->o(Lokio/b;JJ)Lokio/b;

    .line 11
    new-instance v0, Ljava/io/EOFException;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lokio/b;->N()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v6}, Lokio/b;->B()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "limit < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
