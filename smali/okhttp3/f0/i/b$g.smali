.class final Lokhttp3/f0/i/b$g;
.super Lokhttp3/f0/i/b$a;
.source "Http1ExchangeCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private h:Z

.field final synthetic i:Lokhttp3/f0/i/b;


# direct methods
.method public constructor <init>(Lokhttp3/f0/i/b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/f0/i/b$g;->i:Lokhttp3/f0/i/b;

    invoke-direct {p0, p1}, Lokhttp3/f0/i/b$a;-><init>(Lokhttp3/f0/i/b;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/f0/i/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lokhttp3/f0/i/b$g;->h:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lokhttp3/f0/i/b$a;->e()V

    :cond_1
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lokhttp3/f0/i/b$a;->j(Z)V

    return-void
.end method

.method public y(Lokio/b;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1
    invoke-virtual {p0}, Lokhttp3/f0/i/b$a;->a()Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 2
    iget-boolean v1, p0, Lokhttp3/f0/i/b$g;->h:Z

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    return-wide v2

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/f0/i/b$a;->y(Lokio/b;J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_2

    .line 4
    iput-boolean v0, p0, Lokhttp3/f0/i/b$g;->h:Z

    .line 5
    invoke-virtual {p0}, Lokhttp3/f0/i/b$a;->e()V

    return-wide v2

    :cond_2
    return-wide p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
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
