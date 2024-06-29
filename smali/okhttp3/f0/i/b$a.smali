.class abstract Lokhttp3/f0/i/b$a;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lokio/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final e:Lokio/g;

.field private f:Z

.field final synthetic g:Lokhttp3/f0/i/b;


# direct methods
.method public constructor <init>(Lokhttp3/f0/i/b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/f0/i/b$a;->g:Lokhttp3/f0/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/g;

    invoke-static {p1}, Lokhttp3/f0/i/b;->m(Lokhttp3/f0/i/b;)Lokio/d;

    move-result-object p1

    invoke-interface {p1}, Lokio/v;->c()Lokio/w;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/g;-><init>(Lokio/w;)V

    iput-object v0, p0, Lokhttp3/f0/i/b$a;->e:Lokio/g;

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/f0/i/b$a;->f:Z

    return v0
.end method

.method public c()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/i/b$a;->e:Lokio/g;

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/f0/i/b$a;->g:Lokhttp3/f0/i/b;

    invoke-static {v0}, Lokhttp3/f0/i/b;->n(Lokhttp3/f0/i/b;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/f0/i/b$a;->g:Lokhttp3/f0/i/b;

    invoke-static {v0}, Lokhttp3/f0/i/b;->n(Lokhttp3/f0/i/b;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lokhttp3/f0/i/b$a;->g:Lokhttp3/f0/i/b;

    iget-object v2, p0, Lokhttp3/f0/i/b$a;->e:Lokio/g;

    invoke-static {v0, v2}, Lokhttp3/f0/i/b;->i(Lokhttp3/f0/i/b;Lokio/g;)V

    .line 4
    iget-object v0, p0, Lokhttp3/f0/i/b$a;->g:Lokhttp3/f0/i/b;

    invoke-static {v0, v1}, Lokhttp3/f0/i/b;->p(Lokhttp3/f0/i/b;I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lokhttp3/f0/i/b$a;->g:Lokhttp3/f0/i/b;

    invoke-static {v1}, Lokhttp3/f0/i/b;->n(Lokhttp3/f0/i/b;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "state: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/f0/i/b$a;->f:Z

    return-void
.end method

.method public y(Lokio/b;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/f0/i/b$a;->g:Lokhttp3/f0/i/b;

    invoke-static {v0}, Lokhttp3/f0/i/b;->m(Lokhttp3/f0/i/b;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lokhttp3/f0/i/b$a;->g:Lokhttp3/f0/i/b;

    invoke-virtual {p2}, Lokhttp3/f0/i/b;->h()Lokhttp3/internal/connection/f;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/internal/connection/f;->y()V

    .line 3
    invoke-virtual {p0}, Lokhttp3/f0/i/b$a;->e()V

    .line 4
    throw p1
.end method
