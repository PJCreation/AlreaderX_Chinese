.class public final Lokhttp3/internal/http2/g$c;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lokio/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final e:J

.field private f:Z

.field private final g:Lokio/b;

.field private final h:Lokio/b;

.field private i:Lokhttp3/v;

.field private j:Z

.field final synthetic k:Lokhttp3/internal/http2/g;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/g;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lokhttp3/internal/http2/g$c;->e:J

    .line 3
    iput-boolean p4, p0, Lokhttp3/internal/http2/g$c;->f:Z

    .line 4
    new-instance p1, Lokio/b;

    invoke-direct {p1}, Lokio/b;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/g$c;->g:Lokio/b;

    .line 5
    new-instance p1, Lokio/b;

    invoke-direct {p1}, Lokio/b;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/g$c;->h:Lokio/b;

    return-void
.end method

.method private final x(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    .line 2
    sget-boolean v1, Lokhttp3/f0/d;->h:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    invoke-virtual {v0}, Lokhttp3/internal/http2/g;->g()Lokhttp3/internal/http2/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/d;->s0(J)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/g$c;->j:Z

    return v0
.end method

.method public c()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    invoke-virtual {v0}, Lokhttp3/internal/http2/g;->m()Lokhttp3/internal/http2/g$d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lokhttp3/internal/http2/g$c;->s(Z)V

    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->j()Lokio/b;

    move-result-object v1

    invoke-virtual {v1}, Lokio/b;->N()J

    move-result-wide v1

    .line 4
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->j()Lokio/b;

    move-result-object v3

    invoke-virtual {v3}, Lokio/b;->a()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    sget-object v3, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 8
    invoke-direct {p0, v1, v2}, Lokhttp3/internal/http2/g$c;->x(J)V

    .line 9
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    invoke-virtual {v0}, Lokhttp3/internal/http2/g;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/g$c;->f:Z

    return v0
.end method

.method public final j()Lokio/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/g$c;->h:Lokio/b;

    return-object v0
.end method

.method public final l()Lokio/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/g$c;->g:Lokio/b;

    return-object v0
.end method

.method public final o(Lokio/d;J)V
    .locals 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    .line 2
    sget-boolean v1, Lokhttp3/f0/d;->h:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_9

    .line 4
    iget-object v2, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->e()Z

    move-result v3

    .line 6
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->j()Lokio/b;

    move-result-object v4

    invoke-virtual {v4}, Lokio/b;->N()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/g$c;->e:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 7
    :goto_1
    sget-object v5, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    monitor-exit v2

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {p1, p2, p3}, Lokio/d;->skip(J)V

    .line 10
    iget-object p1, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/g;->f(Lokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 11
    invoke-interface {p1, p2, p3}, Lokio/d;->skip(J)V

    return-void

    .line 12
    :cond_4
    iget-object v2, p0, Lokhttp3/internal/http2/g$c;->g:Lokio/b;

    invoke-interface {p1, v2, p2, p3}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    sub-long/2addr p2, v2

    .line 13
    iget-object v2, p0, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    monitor-enter v2

    .line 14
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->l()Lokio/b;

    move-result-object v3

    invoke-virtual {v3}, Lokio/b;->N()J

    move-result-wide v3

    .line 16
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->l()Lokio/b;

    move-result-object v5

    invoke-virtual {v5}, Lokio/b;->a()V

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->j()Lokio/b;

    move-result-object v3

    invoke-virtual {v3}, Lokio/b;->N()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 18
    :goto_2
    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->j()Lokio/b;

    move-result-object v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/g$c;->l()Lokio/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/b;->g(Lokio/v;)J

    if-eqz v8, :cond_7

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    move-wide v3, v0

    .line 20
    :goto_3
    monitor-exit v2

    cmp-long v2, v3, v0

    if-lez v2, :cond_1

    .line 21
    invoke-direct {p0, v3, v4}, Lokhttp3/internal/http2/g$c;->x(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v2

    throw p1

    .line 23
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit v2

    throw p1

    :cond_9
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/http2/g$c;->j:Z

    return-void
.end method

.method public final v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/http2/g$c;->f:Z

    return-void
.end method

.method public final w(Lokhttp3/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/g$c;->i:Lokhttp3/v;

    return-void
.end method

.method public y(Lokio/b;J)J
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_9

    :goto_1
    const/4 v8, 0x0

    .line 1
    iget-object v9, v1, Lokhttp3/internal/http2/g$c;->k:Lokhttp3/internal/http2/g;

    monitor-enter v9

    .line 2
    :try_start_0
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->m()Lokhttp3/internal/http2/g$d;

    move-result-object v10

    invoke-virtual {v10}, Lokio/a;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 4
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->i()Ljava/io/IOException;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v8, Lokhttp3/internal/http2/StreamResetException;

    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-direct {v8, v10}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/g$c;->a()Z

    move-result v10

    if-nez v10, :cond_8

    .line 6
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/g$c;->j()Lokio/b;

    move-result-object v10

    invoke-virtual {v10}, Lokio/b;->N()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v14, v10, v6

    if-lez v14, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/g$c;->j()Lokio/b;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/g$c;->j()Lokio/b;

    move-result-object v11

    invoke-virtual {v11}, Lokio/b;->N()J

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-virtual {v10, v0, v14, v15}, Lokio/b;->y(Lokio/b;J)J

    move-result-wide v10

    .line 8
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->l()J

    move-result-wide v14

    add-long/2addr v14, v10

    invoke-virtual {v9, v14, v15}, Lokhttp3/internal/http2/g;->C(J)V

    .line 9
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->l()J

    move-result-wide v14

    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->k()J

    move-result-wide v16

    sub-long v14, v14, v16

    if-nez v8, :cond_4

    .line 10
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->g()Lokhttp3/internal/http2/d;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/http2/d;->U()Lokhttp3/internal/http2/k;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/http2/k;->c()I

    move-result v16

    div-int/lit8 v4, v16, 0x2

    int-to-long v5, v4

    cmp-long v4, v14, v5

    if-ltz v4, :cond_4

    .line 11
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->g()Lokhttp3/internal/http2/d;

    move-result-object v4

    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->j()I

    move-result v5

    invoke-virtual {v4, v5, v14, v15}, Lokhttp3/internal/http2/d;->y0(IJ)V

    .line 12
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->l()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lokhttp3/internal/http2/g;->B(J)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/g$c;->e()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v8, :cond_3

    .line 14
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->F()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v10, v12

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move-wide v10, v12

    :cond_4
    :goto_2
    const/4 v4, 0x0

    .line 15
    :goto_3
    :try_start_2
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->m()Lokhttp3/internal/http2/g$d;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/http2/g$d;->A()V

    .line 16
    sget-object v5, Lkotlin/m;->a:Lkotlin/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    monitor-exit v9

    if-eqz v4, :cond_5

    const-wide/16 v6, 0x0

    goto/16 :goto_1

    :cond_5
    cmp-long v0, v10, v12

    if-eqz v0, :cond_6

    .line 18
    invoke-direct {v1, v10, v11}, Lokhttp3/internal/http2/g$c;->x(J)V

    return-wide v10

    :cond_6
    if-nez v8, :cond_7

    return-wide v12

    .line 19
    :cond_7
    throw v8

    .line 20
    :cond_8
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 21
    :try_start_4
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->m()Lokhttp3/internal/http2/g$d;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/http2/g$d;->A()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 22
    monitor-exit v9

    throw v0

    :cond_9
    const-string v0, "byteCount < 0: "

    .line 23
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method
