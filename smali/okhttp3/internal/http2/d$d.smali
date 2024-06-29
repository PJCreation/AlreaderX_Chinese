.class public final Lokhttp3/internal/http2/d$d;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Lokhttp3/internal/http2/f$c;
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/internal/http2/f$c;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final e:Lokhttp3/internal/http2/f;

.field final synthetic f:Lokhttp3/internal/http2/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/d;Lokhttp3/internal/http2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/f;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lokhttp3/internal/http2/d$d;->e:Lokhttp3/internal/http2/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(ZLokhttp3/internal/http2/k;)V
    .locals 9

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-static {v0}, Lokhttp3/internal/http2/d;->B(Lokhttp3/internal/http2/d;)Lokhttp3/f0/g/d;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v1}, Lokhttp3/internal/http2/d;->Q()Ljava/lang/String;

    move-result-object v1

    const-string v2, " applyAndAckSettings"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v1, Lokhttp3/internal/http2/d$d$d;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/d$d$d;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d$d;ZLokhttp3/internal/http2/k;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void
.end method

.method public c(ZILokio/d;I)V
    .locals 2

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/d;->j0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/d;->f0(ILokio/d;IZ)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/d;->X(I)Lokhttp3/internal/http2/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/http2/d;->x0(ILokhttp3/internal/http2/ErrorCode;)V

    .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/d;->s0(J)V

    .line 6
    invoke-interface {p3, v0, v1}, Lokio/d;->skip(J)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/g;->w(Lokio/d;I)V

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lokhttp3/f0/d;->b:Lokhttp3/v;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/g;->x(Lokhttp3/v;Z)V

    :cond_2
    return-void
.end method

.method public d(ZII)V
    .locals 9

    if-eqz p1, :cond_3

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    monitor-enter p1

    const/4 p3, 0x1

    const-wide/16 v0, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    .line 2
    :goto_0
    :try_start_0
    sget-object p2, Lkotlin/m;->a:Lkotlin/m;

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/http2/d;->e(Lokhttp3/internal/http2/d;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/d;->F(Lokhttp3/internal/http2/d;J)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/http2/d;->o(Lokhttp3/internal/http2/d;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/d;->I(Lokhttp3/internal/http2/d;J)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p1}, Lokhttp3/internal/http2/d;->v(Lokhttp3/internal/http2/d;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/d;->K(Lokhttp3/internal/http2/d;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 8
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-static {p1}, Lokhttp3/internal/http2/d;->B(Lokhttp3/internal/http2/d;)Lokhttp3/f0/g/d;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->Q()Ljava/lang/String;

    move-result-object v0

    const-string v1, " ping"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    .line 9
    new-instance v8, Lokhttp3/internal/http2/d$d$c;

    move-object v2, v8

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/d$d$c;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;II)V

    invoke-virtual {p1, v8, v0, v1}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    :goto_2
    return-void
.end method

.method public e(IIIZ)V
    .locals 0

    return-void
.end method

.method public f(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/d;->j0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/d;->i0(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/d;->k0(I)Lokhttp3/internal/http2/g;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/g;->y(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_0
    return-void
.end method

.method public g(ZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;)V"
        }
    .end annotation

    const-string p3, "headerBlock"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/d;->j0(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {p3, p2, p4, p1}, Lokhttp3/internal/http2/d;->g0(ILjava/util/List;Z)V

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    monitor-enter p3

    .line 4
    :try_start_0
    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/d;->X(I)Lokhttp3/internal/http2/g;

    move-result-object v0

    if-nez v0, :cond_4

    .line 5
    invoke-static {p3}, Lokhttp3/internal/http2/d;->E(Lokhttp3/internal/http2/d;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lokhttp3/internal/http2/d;->R()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    .line 7
    :cond_2
    :try_start_2
    rem-int/lit8 v0, p2, 0x2

    invoke-virtual {p3}, Lokhttp3/internal/http2/d;->T()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    .line 8
    :cond_3
    :try_start_3
    invoke-static {p4}, Lokhttp3/f0/d;->N(Ljava/util/List;)Lokhttp3/v;

    move-result-object v5

    .line 9
    new-instance p4, Lokhttp3/internal/http2/g;

    const/4 v3, 0x0

    move-object v0, p4

    move v1, p2

    move-object v2, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/g;-><init>(ILokhttp3/internal/http2/d;ZZLokhttp3/v;)V

    .line 10
    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/d;->m0(I)V

    .line 11
    invoke-virtual {p3}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p3}, Lokhttp3/internal/http2/d;->A(Lokhttp3/internal/http2/d;)Lokhttp3/f0/g/e;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/f0/g/e;->i()Lokhttp3/f0/g/d;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lokhttp3/internal/http2/d;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] onStream"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 13
    new-instance v3, Lokhttp3/internal/http2/d$d$b;

    invoke-direct {v3, p2, v2, p3, p4}, Lokhttp3/internal/http2/d$d$b;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;Lokhttp3/internal/http2/g;)V

    invoke-virtual {p1, v3, v0, v1}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    monitor-exit p3

    return-void

    .line 15
    :cond_4
    :try_start_4
    sget-object p2, Lkotlin/m;->a:Lkotlin/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    monitor-exit p3

    .line 17
    invoke-static {p4}, Lokhttp3/f0/d;->N(Ljava/util/List;)Lokhttp3/v;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lokhttp3/internal/http2/g;->x(Lokhttp3/v;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p3

    throw p1
.end method

.method public h(IJ)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->Z()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {p1, v0, v1}, Lokhttp3/internal/http2/d;->M(Lokhttp3/internal/http2/d;J)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    sget-object p2, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 6
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/d;->X(I)Lokhttp3/internal/http2/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    monitor-enter p1

    .line 8
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/g;->a(J)V

    .line 9
    sget-object p2, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public i(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;)V"
        }
    .end annotation

    const-string p1, "requestHeaders"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/d;->h0(ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$d;->l()V

    sget-object v0, Lkotlin/m;->a:Lkotlin/m;

    return-object v0
.end method

.method public j(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 3

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "debugData"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 2
    iget-object p2, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    monitor-enter p2

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Lokhttp3/internal/http2/g;

    .line 4
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    .line 5
    invoke-static {p2, v1}, Lokhttp3/internal/http2/d;->L(Lokhttp3/internal/http2/d;Z)V

    .line 6
    sget-object v1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p2

    .line 8
    check-cast p3, [Lokhttp3/internal/http2/g;

    array-length p2, p3

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {v1}, Lokhttp3/internal/http2/g;->j()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lokhttp3/internal/http2/g;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/g;->y(Lokhttp3/internal/http2/ErrorCode;)V

    .line 11
    iget-object v2, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v1}, Lokhttp3/internal/http2/g;->j()I

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/d;->k0(I)Lokhttp3/internal/http2/g;

    goto :goto_0

    :cond_1
    return-void

    .line 12
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p2

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final k(ZLokhttp3/internal/http2/k;)V
    .locals 11

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v1}, Lokhttp3/internal/http2/d;->b0()Lokhttp3/internal/http2/h;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    monitor-enter v1

    .line 3
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/internal/http2/d;->V()Lokhttp3/internal/http2/k;

    move-result-object v3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lokhttp3/internal/http2/k;

    invoke-direct {p1}, Lokhttp3/internal/http2/k;-><init>()V

    .line 6
    invoke-virtual {p1, v3}, Lokhttp3/internal/http2/k;->g(Lokhttp3/internal/http2/k;)V

    .line 7
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/k;->g(Lokhttp3/internal/http2/k;)V

    move-object p2, p1

    .line 8
    :goto_0
    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    check-cast p2, Lokhttp3/internal/http2/k;

    invoke-virtual {p2}, Lokhttp3/internal/http2/k;->c()I

    move-result p1

    int-to-long p1, p1

    .line 10
    invoke-virtual {v3}, Lokhttp3/internal/http2/k;->c()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr p1, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-eqz v6, :cond_3

    .line 11
    invoke-virtual {v2}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v2}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v7, v3, [Lokhttp3/internal/http2/g;

    .line 13
    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    check-cast v6, [Lokhttp3/internal/http2/g;

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 14
    :goto_2
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lokhttp3/internal/http2/k;

    invoke-virtual {v2, v7}, Lokhttp3/internal/http2/d;->o0(Lokhttp3/internal/http2/k;)V

    .line 15
    invoke-static {v2}, Lokhttp3/internal/http2/d;->x(Lokhttp3/internal/http2/d;)Lokhttp3/f0/g/d;

    move-result-object v7

    invoke-virtual {v2}, Lokhttp3/internal/http2/d;->Q()Ljava/lang/String;

    move-result-object v8

    const-string v9, " onSettings"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 16
    new-instance v9, Lokhttp3/internal/http2/d$d$a;

    const/4 v10, 0x1

    invoke-direct {v9, v8, v10, v2, v0}, Lokhttp3/internal/http2/d$d$a;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v7, v9, v4, v5}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    .line 17
    sget-object v4, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/internal/http2/d;->b0()Lokhttp3/internal/http2/h;

    move-result-object v4

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/http2/k;

    invoke-virtual {v4, v0}, Lokhttp3/internal/http2/h;->a(Lokhttp3/internal/http2/k;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    .line 20
    :try_start_4
    invoke-static {v2, v0}, Lokhttp3/internal/http2/d;->a(Lokhttp3/internal/http2/d;Ljava/io/IOException;)V

    .line 21
    :goto_3
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 22
    monitor-exit v1

    if-eqz v6, :cond_4

    .line 23
    array-length v0, v6

    :goto_4
    if-ge v3, v0, :cond_4

    aget-object v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    .line 24
    monitor-enter v1

    .line 25
    :try_start_5
    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/http2/g;->a(J)V

    .line 26
    sget-object v2, Lkotlin/m;->a:Lkotlin/m;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 28
    :try_start_6
    monitor-exit v2

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 29
    monitor-exit v1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public l()V
    .locals 5

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/d$d;->e:Lokhttp3/internal/http2/f;

    invoke-virtual {v2, p0}, Lokhttp3/internal/http2/f;->j(Lokhttp3/internal/http2/f$c;)V

    .line 3
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http2/d$d;->e:Lokhttp3/internal/http2/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lokhttp3/internal/http2/f;->e(ZLokhttp3/internal/http2/f$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    iget-object v3, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v3, v2, v0, v1}, Lokhttp3/internal/http2/d;->N(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 7
    :goto_1
    :try_start_2
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    iget-object v2, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v2, v0, v0, v1}, Lokhttp3/internal/http2/d;->N(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 9
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->e:Lokhttp3/internal/http2/f;

    invoke-static {v0}, Lokhttp3/f0/d;->j(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v3

    .line 10
    :goto_3
    iget-object v4, p0, Lokhttp3/internal/http2/d$d;->f:Lokhttp3/internal/http2/d;

    invoke-virtual {v4, v2, v0, v1}, Lokhttp3/internal/http2/d;->N(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 11
    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->e:Lokhttp3/internal/http2/f;

    invoke-static {v0}, Lokhttp3/f0/d;->j(Ljava/io/Closeable;)V

    goto :goto_5

    :goto_4
    throw v3

    :goto_5
    goto :goto_4
.end method
