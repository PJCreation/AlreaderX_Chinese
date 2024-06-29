.class public final Lokhttp3/internal/http2/h;
.super Ljava/lang/Object;
.source "Http2Writer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/h$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final e:Lokhttp3/internal/http2/h$a;

.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final g:Lokio/c;

.field private final h:Z

.field private final i:Lokio/b;

.field private j:I

.field private k:Z

.field private final l:Lokhttp3/internal/http2/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http2/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/h$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/internal/http2/h;->e:Lokhttp3/internal/http2/h$a;

    .line 1
    const-class v0, Lokhttp3/internal/http2/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/h;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/c;Z)V
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    .line 3
    iput-boolean p2, p0, Lokhttp3/internal/http2/h;->h:Z

    .line 4
    new-instance v4, Lokio/b;

    invoke-direct {v4}, Lokio/b;-><init>()V

    iput-object v4, p0, Lokhttp3/internal/http2/h;->i:Lokio/b;

    const/16 p1, 0x4000

    .line 5
    iput p1, p0, Lokhttp3/internal/http2/h;->j:I

    .line 6
    new-instance p1, Lokhttp3/internal/http2/b$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/b$b;-><init>(IZLokio/b;ILkotlin/jvm/internal/f;)V

    iput-object p1, p0, Lokhttp3/internal/http2/h;->l:Lokhttp3/internal/http2/b$b;

    return-void
.end method

.method private final I(IJ)V
    .locals 7

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1
    iget v2, p0, Lokhttp3/internal/http2/h;->j:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-int v4, v2

    const/16 v5, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0, p1, v4, v5, v0}, Lokhttp3/internal/http2/h;->o(IIII)V

    .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    iget-object v1, p0, Lokhttp3/internal/http2/h;->i:Lokio/b;

    invoke-interface {v0, v1, v2, v3}, Lokio/t;->f(Lokio/b;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized A(IILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "requestHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/h;->l:Lokhttp3/internal/http2/b$b;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/b$b;->g(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Lokhttp3/internal/http2/h;->i:Lokio/b;

    invoke-virtual {p3}, Lokio/b;->N()J

    move-result-wide v0

    .line 4
    iget p3, p0, Lokhttp3/internal/http2/h;->j:I

    int-to-long v2, p3

    const-wide/16 v4, 0x4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    add-int/lit8 v2, p3, 0x4

    const/4 v3, 0x5

    int-to-long v4, p3

    cmp-long p3, v0, v4

    if-nez p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, v2, v3, p3}, Lokhttp3/internal/http2/h;->o(IIII)V

    .line 6
    iget-object p3, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Lokio/c;->m(I)Lokio/c;

    .line 7
    iget-object p2, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    iget-object p3, p0, Lokhttp3/internal/http2/h;->i:Lokio/b;

    invoke-interface {p2, p3, v4, v5}, Lokio/t;->f(Lokio/b;J)V

    cmp-long p2, v0, v4

    if-lez p2, :cond_1

    sub-long/2addr v0, v4

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/http2/h;->I(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized B(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/h;->o(IIII)V

    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result p2

    invoke-interface {p1, p2}, Lokio/c;->m(I)Lokio/c;

    .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1}, Lokio/c;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "Failed requirement."

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized E(Lokhttp3/internal/http2/k;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lokhttp3/internal/http2/k;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2, v0, v1, v2}, Lokhttp3/internal/http2/h;->o(IIII)V

    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Lokhttp3/internal/http2/k;->f(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    if-eq v2, v1, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    .line 5
    :goto_1
    iget-object v4, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {v4, v3}, Lokio/c;->k(I)Lokio/c;

    .line 6
    iget-object v3, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-virtual {p1, v2}, Lokhttp3/internal/http2/k;->a(I)I

    move-result v2

    invoke-interface {v3, v2}, Lokio/c;->m(I)Lokio/c;

    :goto_2
    move v2, v0

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1}, Lokio/c;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized F(IJ)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/h;->o(IIII)V

    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lokio/c;->m(I)Lokio/c;

    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1}, Lokio/c;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lokhttp3/internal/http2/k;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "peerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lokhttp3/internal/http2/h;->j:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/k;->e(I)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/http2/h;->j:I

    .line 3
    invoke-virtual {p1}, Lokhttp3/internal/http2/k;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/h;->l:Lokhttp3/internal/http2/b$b;

    invoke-virtual {p1}, Lokhttp3/internal/http2/k;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/b$b;->e(I)V

    :cond_0
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v1, p1, v0}, Lokhttp3/internal/http2/h;->o(IIII)V

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1}, Lokio/c;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {v0}, Lokio/t;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/h;->f:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">> CONNECTION "

    .line 4
    sget-object v2, Lokhttp3/internal/http2/c;->b:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lokhttp3/f0/d;->q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    sget-object v1, Lokhttp3/internal/http2/c;->b:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/c;->u(Lokio/ByteString;)Lokio/c;

    .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {v0}, Lokio/c;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {v0}, Lokio/c;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j(ZILokio/b;I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    :cond_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/h;->l(IILokio/b;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l(IILokio/b;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p4, v0, p2}, Lokhttp3/internal/http2/h;->o(IIII)V

    if-lez p4, :cond_0

    .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-static {p3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lokio/t;->f(Lokio/b;J)V

    :cond_0
    return-void
.end method

.method public final o(IIII)V
    .locals 8

    .line 1
    sget-object v0, Lokhttp3/internal/http2/h;->f:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lokhttp3/internal/http2/c;->a:Lokhttp3/internal/http2/c;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/http2/c;->c(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget v0, p0, Lokhttp3/internal/http2/h;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-static {v0, p2}, Lokhttp3/f0/d;->X(Lokio/c;I)V

    .line 4
    iget-object p2, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lokio/c;->q(I)Lokio/c;

    .line 5
    iget-object p2, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lokio/c;->q(I)Lokio/c;

    .line 6
    iget-object p2, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lokio/c;->m(I)Lokio/c;

    return-void

    .line 7
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reserved bit set: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FRAME_SIZE_ERROR length > "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lokhttp3/internal/http2/h;->j:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final declared-synchronized s(ILokhttp3/internal/http2/ErrorCode;[B)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v3, v0, v1, v3}, Lokhttp3/internal/http2/h;->o(IIII)V

    .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {v0, p1}, Lokio/c;->m(I)Lokio/c;

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result p2

    invoke-interface {p1, p2}, Lokio/c;->m(I)Lokio/c;

    .line 7
    array-length p1, p3

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    xor-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1, p3}, Lokio/c;->t([B)Lokio/c;

    .line 9
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1}, Lokio/c;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    .line 11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized v(ZILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "headerBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/h;->l:Lokhttp3/internal/http2/b$b;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/b$b;->g(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Lokhttp3/internal/http2/h;->i:Lokio/b;

    invoke-virtual {p3}, Lokio/b;->N()J

    move-result-wide v0

    .line 4
    iget p3, p0, Lokhttp3/internal/http2/h;->j:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p3, p3, 0x1

    :cond_1
    long-to-int p1, v2

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p0, p2, p1, v4, p3}, Lokhttp3/internal/http2/h;->o(IIII)V

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    iget-object p3, p0, Lokhttp3/internal/http2/h;->i:Lokio/b;

    invoke-interface {p1, p3, v2, v3}, Lokio/t;->f(Lokio/b;J)V

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    sub-long/2addr v0, v2

    .line 7
    invoke-direct {p0, p2, v0, v1}, Lokhttp3/internal/http2/h;->I(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    .line 9
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final w()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/h;->j:I

    return v0
.end method

.method public final declared-synchronized x(ZII)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/h;->k:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lokhttp3/internal/http2/h;->o(IIII)V

    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1, p2}, Lokio/c;->m(I)Lokio/c;

    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1, p3}, Lokio/c;->m(I)Lokio/c;

    .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/h;->g:Lokio/c;

    invoke-interface {p1}, Lokio/c;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
