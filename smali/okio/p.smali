.class public final Lokio/p;
.super Ljava/lang/Object;
.source "RealBufferedSink.kt"

# interfaces
.implements Lokio/c;


# instance fields
.field public final e:Lokio/t;

.field public final f:Lokio/b;

.field public g:Z


# direct methods
.method public constructor <init>(Lokio/t;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/p;->e:Lokio/t;

    .line 3
    new-instance p1, Lokio/b;

    invoke-direct {p1}, Lokio/b;-><init>()V

    iput-object p1, p0, Lokio/p;->f:Lokio/b;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)Lokio/c;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1}, Lokio/b;->Z(Ljava/lang/String;)Lokio/b;

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lokio/c;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v2, p0, Lokio/p;->e:Lokio/t;

    .line 5
    iget-object v3, p0, Lokio/p;->f:Lokio/b;

    .line 6
    invoke-interface {v2, v3, v0, v1}, Lokio/t;->f(Lokio/b;J)V

    :cond_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lokio/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    return-object v0
.end method

.method public c()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/p;->e:Lokio/t;

    invoke-interface {v0}, Lokio/t;->c()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v1}, Lokio/b;->N()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 4
    iget-object v1, p0, Lokio/p;->e:Lokio/t;

    .line 5
    iget-object v2, p0, Lokio/p;->f:Lokio/b;

    .line 6
    invoke-virtual {v2}, Lokio/b;->N()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lokio/t;->f(Lokio/b;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lokio/p;->e:Lokio/t;

    invoke-interface {v1}, Lokio/t;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lokio/p;->g:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 9
    :cond_3
    throw v0
.end method

.method public d([BII)Lokio/c;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lokio/b;->T([BII)Lokio/b;

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lokio/b;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lokio/b;->f(Lokio/b;J)V

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0}, Lokio/b;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v0, p0, Lokio/p;->e:Lokio/t;

    .line 5
    iget-object v1, p0, Lokio/p;->f:Lokio/b;

    .line 6
    invoke-virtual {v1}, Lokio/b;->N()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lokio/t;->f(Lokio/b;J)V

    .line 7
    :cond_0
    iget-object v0, p0, Lokio/p;->e:Lokio/t;

    invoke-interface {v0}, Lokio/t;->flush()V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Lokio/v;)J
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lokio/p;->f:Lokio/b;

    const-wide/16 v3, 0x2000

    .line 2
    invoke-interface {p1, v2, v3, v4}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    goto :goto_0
.end method

.method public h(J)Lokio/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lokio/b;->V(J)Lokio/b;

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k(I)Lokio/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1}, Lokio/b;->X(I)Lokio/b;

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(I)Lokio/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1}, Lokio/b;->W(I)Lokio/b;

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(I)Lokio/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1}, Lokio/b;->U(I)Lokio/b;

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t([B)Lokio/c;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1}, Lokio/b;->S([B)Lokio/b;

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/p;->e:Lokio/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lokio/ByteString;)Lokio/c;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1}, Lokio/b;->R(Lokio/ByteString;)Lokio/b;

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokio/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokio/p;->f:Lokio/b;

    .line 3
    invoke-virtual {v0, p1}, Lokio/b;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lokio/p;->a()Lokio/c;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
