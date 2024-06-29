.class public final Lokio/q;
.super Ljava/lang/Object;
.source "RealBufferedSource.kt"

# interfaces
.implements Lokio/d;


# instance fields
.field public final e:Lokio/v;

.field public final f:Lokio/b;

.field public g:Z


# direct methods
.method public constructor <init>(Lokio/v;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/q;->e:Lokio/v;

    .line 3
    new-instance p1, Lokio/b;

    invoke-direct {p1}, Lokio/b;-><init>()V

    iput-object p1, p0, Lokio/q;->f:Lokio/b;

    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/q;->o(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public G()J
    .locals 5

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/q;->C(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 2
    invoke-virtual {p0, v2, v3}, Lokio/q;->o(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    int-to-long v3, v0

    .line 4
    invoke-virtual {v2, v3, v4}, Lokio/b;->s(J)B

    move-result v2

    const/16 v3, 0x30

    int-to-byte v3, v3

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    int-to-byte v3, v3

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/a;->a(I)I

    move-result v1

    invoke-static {v1}, Lkotlin/text/a;->a(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_5
    :goto_2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 7
    invoke-virtual {v0}, Lokio/b;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public H()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lokio/q$a;

    invoke-direct {v0, p0}, Lokio/q$a;-><init>(Lokio/q;)V

    return-object v0
.end method

.method public a(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lokio/q;->e(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lokio/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    return-object v0
.end method

.method public c()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/q;->e:Lokio/v;

    invoke-interface {v0}, Lokio/v;->c()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/q;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokio/q;->g:Z

    .line 3
    iget-object v0, p0, Lokio/q;->e:Lokio/v;

    invoke-interface {v0}, Lokio/v;->close()V

    .line 4
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 5
    invoke-virtual {v0}, Lokio/b;->a()V

    :goto_0
    return-void
.end method

.method public e(BJJ)J
    .locals 8

    .line 1
    iget-boolean v0, p0, Lokio/q;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    cmp-long v4, v2, p2

    if-gtz v4, :cond_0

    cmp-long v2, p2, p4

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    :goto_1
    const-wide/16 v0, -0x1

    cmp-long v2, p2, p4

    if-gez v2, :cond_3

    .line 2
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Lokio/b;->v(BJJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    move-wide v0, v2

    goto :goto_2

    .line 4
    :cond_1
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    .line 5
    invoke-virtual {v2}, Lokio/b;->N()J

    move-result-wide v2

    cmp-long v4, v2, p4

    if-gez v4, :cond_3

    .line 6
    iget-object v4, p0, Lokio/q;->e:Lokio/v;

    .line 7
    iget-object v5, p0, Lokio/q;->f:Lokio/b;

    const-wide/16 v6, 0x2000

    .line 8
    invoke-interface {v4, v5, v6, v7}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_1

    :cond_3
    :goto_2
    return-wide v0

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public i(J)Lokio/ByteString;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/q;->C(J)V

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lokio/b;->i(J)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/q;->g:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/q;->C(J)V

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->F()I

    move-result v0

    return v0
.end method

.method public l()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/q;->C(J)V

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->I()S

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/q;->z(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(J)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 1
    iget-boolean v2, p0, Lokio/q;->g:Z

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 2
    :cond_1
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v2}, Lokio/b;->N()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    .line 4
    iget-object v2, p0, Lokio/q;->e:Lokio/v;

    .line 5
    iget-object v3, p0, Lokio/q;->f:Lokio/b;

    const-wide/16 v4, 0x2000

    .line 6
    invoke-interface {v2, v3, v4, v5}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public p()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lokio/q;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/q;->e:Lokio/v;

    .line 4
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    const-wide/16 v3, 0x2000

    .line 5
    invoke-interface {v0, v2, v3, v4}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/q;->C(J)V

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lokio/b;->r(J)[B

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 2
    invoke-virtual {v0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lokio/q;->e:Lokio/v;

    .line 4
    iget-object v1, p0, Lokio/q;->f:Lokio/b;

    const-wide/16 v2, 0x2000

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 7
    invoke-virtual {v0, p1}, Lokio/b;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/q;->C(J)V

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->readByte()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/q;->C(J)V

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lokio/q;->C(J)V

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->readShort()S

    move-result v0

    return v0
.end method

.method public skip(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lokio/q;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v2}, Lokio/b;->N()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iget-object v0, p0, Lokio/q;->e:Lokio/v;

    .line 4
    iget-object v1, p0, Lokio/q;->f:Lokio/b;

    const-wide/16 v2, 0x2000

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 8
    invoke-virtual {v0}, Lokio/b;->N()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    .line 10
    invoke-virtual {v2, v0, v1}, Lokio/b;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/q;->e:Lokio/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(Lokio/b;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 1
    iget-boolean v3, p0, Lokio/q;->g:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->N()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lokio/q;->e:Lokio/v;

    .line 5
    iget-object v1, p0, Lokio/q;->f:Lokio/b;

    const-wide/16 v2, 0x2000

    .line 6
    invoke-interface {v0, v1, v2, v3}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 8
    invoke-virtual {v0}, Lokio/b;->N()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lokio/b;->y(Lokio/b;J)J

    move-result-wide v5

    :goto_1
    return-wide v5

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
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
    .locals 13

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

    move-wide v4, v2

    goto :goto_1

    :cond_1
    add-long v4, p1, v0

    :goto_1
    const/16 v6, 0xa

    int-to-byte v12, v6

    const-wide/16 v8, 0x0

    move-object v6, p0

    move v7, v12

    move-wide v10, v4

    .line 1
    invoke-virtual/range {v6 .. v11}, Lokio/q;->e(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    .line 2
    iget-object p1, p0, Lokio/q;->f:Lokio/b;

    .line 3
    invoke-static {p1, v6, v7}, Lokio/b0/a;->b(Lokio/b;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 4
    invoke-virtual {p0, v4, v5}, Lokio/q;->o(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    sub-long v6, v4, v0

    .line 6
    invoke-virtual {v2, v6, v7}, Lokio/b;->s(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    add-long/2addr v0, v4

    .line 7
    invoke-virtual {p0, v0, v1}, Lokio/q;->o(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    .line 9
    invoke-virtual {v0, v4, v5}, Lokio/b;->s(J)B

    move-result v0

    if-ne v0, v12, :cond_3

    .line 10
    iget-object p1, p0, Lokio/q;->f:Lokio/b;

    .line 11
    invoke-static {p1, v4, v5}, Lokio/b0/a;->b(Lokio/b;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 12
    :cond_3
    new-instance v6, Lokio/b;

    invoke-direct {v6}, Lokio/b;-><init>()V

    .line 13
    iget-object v0, p0, Lokio/q;->f:Lokio/b;

    const-wide/16 v2, 0x0

    const/16 v1, 0x20

    .line 14
    invoke-virtual {v0}, Lokio/b;->N()J

    move-result-wide v4

    int-to-long v7, v1

    .line 15
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    .line 16
    invoke-virtual/range {v0 .. v5}, Lokio/b;->o(Lokio/b;JJ)Lokio/b;

    .line 17
    new-instance v0, Ljava/io/EOFException;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v2, p0, Lokio/q;->f:Lokio/b;

    .line 20
    invoke-virtual {v2}, Lokio/b;->N()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v6}, Lokio/b;->B()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
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
