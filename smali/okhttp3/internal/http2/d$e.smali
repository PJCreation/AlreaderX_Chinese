.class public final Lokhttp3/internal/http2/d$e;
.super Lokhttp3/f0/g/a;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/d;->f0(ILokio/d;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lokhttp3/internal/http2/d;

.field final synthetic h:I

.field final synthetic i:Lokio/b;

.field final synthetic j:I

.field final synthetic k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;ILokio/b;IZ)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/d$e;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/http2/d$e;->f:Z

    iput-object p3, p0, Lokhttp3/internal/http2/d$e;->g:Lokhttp3/internal/http2/d;

    iput p4, p0, Lokhttp3/internal/http2/d$e;->h:I

    iput-object p5, p0, Lokhttp3/internal/http2/d$e;->i:Lokio/b;

    iput p6, p0, Lokhttp3/internal/http2/d$e;->j:I

    iput-boolean p7, p0, Lokhttp3/internal/http2/d$e;->k:Z

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/f0/g/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/d$e;->g:Lokhttp3/internal/http2/d;

    invoke-static {v0}, Lokhttp3/internal/http2/d;->w(Lokhttp3/internal/http2/d;)Lokhttp3/internal/http2/j;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http2/d$e;->h:I

    iget-object v2, p0, Lokhttp3/internal/http2/d$e;->i:Lokio/b;

    iget v3, p0, Lokhttp3/internal/http2/d$e;->j:I

    iget-boolean v4, p0, Lokhttp3/internal/http2/d$e;->k:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/j;->d(ILokio/d;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/d$e;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v1}, Lokhttp3/internal/http2/d;->b0()Lokhttp3/internal/http2/h;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http2/d$e;->h:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/h;->B(ILokhttp3/internal/http2/ErrorCode;)V

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lokhttp3/internal/http2/d$e;->k:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/d$e;->g:Lokhttp3/internal/http2/d;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http2/d$e;->g:Lokhttp3/internal/http2/d;

    invoke-static {v1}, Lokhttp3/internal/http2/d;->j(Lokhttp3/internal/http2/d;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http2/d$e;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method