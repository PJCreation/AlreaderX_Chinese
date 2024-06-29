.class final Lokhttp3/f0/i/b$f;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lokio/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
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
    iput-object p1, p0, Lokhttp3/f0/i/b$f;->g:Lokhttp3/f0/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/g;

    invoke-static {p1}, Lokhttp3/f0/i/b;->l(Lokhttp3/f0/i/b;)Lokio/c;

    move-result-object p1

    invoke-interface {p1}, Lokio/t;->c()Lokio/w;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/g;-><init>(Lokio/w;)V

    iput-object v0, p0, Lokhttp3/f0/i/b$f;->e:Lokio/g;

    return-void
.end method


# virtual methods
.method public c()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/i/b$f;->e:Lokio/g;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/f0/i/b$f;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/f0/i/b$f;->f:Z

    .line 3
    iget-object v0, p0, Lokhttp3/f0/i/b$f;->g:Lokhttp3/f0/i/b;

    iget-object v1, p0, Lokhttp3/f0/i/b$f;->e:Lokio/g;

    invoke-static {v0, v1}, Lokhttp3/f0/i/b;->i(Lokhttp3/f0/i/b;Lokio/g;)V

    .line 4
    iget-object v0, p0, Lokhttp3/f0/i/b$f;->g:Lokhttp3/f0/i/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lokhttp3/f0/i/b;->p(Lokhttp3/f0/i/b;I)V

    return-void
.end method

.method public f(Lokio/b;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/f0/i/b$f;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lokio/b;->N()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/f0/d;->i(JJJ)V

    .line 3
    iget-object v0, p0, Lokhttp3/f0/i/b$f;->g:Lokhttp3/f0/i/b;

    invoke-static {v0}, Lokhttp3/f0/i/b;->l(Lokhttp3/f0/i/b;)Lokio/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/t;->f(Lokio/b;J)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/f0/i/b$f;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/f0/i/b$f;->g:Lokhttp3/f0/i/b;

    invoke-static {v0}, Lokhttp3/f0/i/b;->l(Lokhttp3/f0/i/b;)Lokio/c;

    move-result-object v0

    invoke-interface {v0}, Lokio/c;->flush()V

    return-void
.end method
