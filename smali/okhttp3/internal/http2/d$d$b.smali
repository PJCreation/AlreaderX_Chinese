.class public final Lokhttp3/internal/http2/d$d$b;
.super Lokhttp3/f0/g/a;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/d$d;->g(ZIILjava/util/List;)V
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

.field final synthetic h:Lokhttp3/internal/http2/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;Lokhttp3/internal/http2/g;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/d$d$b;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/http2/d$d$b;->f:Z

    iput-object p3, p0, Lokhttp3/internal/http2/d$d$b;->g:Lokhttp3/internal/http2/d;

    iput-object p4, p0, Lokhttp3/internal/http2/d$d$b;->h:Lokhttp3/internal/http2/g;

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/f0/g/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/d$d$b;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->S()Lokhttp3/internal/http2/d$c;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http2/d$d$b;->h:Lokhttp3/internal/http2/g;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/d$c;->b(Lokhttp3/internal/http2/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v1}, Lokhttp3/f0/j/h$a;->g()Lokhttp3/f0/j/h;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http2/d$d$b;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v2}, Lokhttp3/internal/http2/d;->Q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Http2Connection.Listener failure for "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/f0/j/h;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 3
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http2/d$d$b;->h:Lokhttp3/internal/http2/g;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v0}, Lokhttp3/internal/http2/g;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
