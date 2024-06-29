.class public final Lokhttp3/internal/http2/e$a;
.super Ljava/lang/Object;
.source "Http2ExchangeCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/http2/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/a0;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/a0;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokhttp3/a0;->e()Lokhttp3/v;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/v;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lokhttp3/internal/http2/a;

    sget-object v3, Lokhttp3/internal/http2/a;->d:Lokio/ByteString;

    invoke-virtual {p1}, Lokhttp3/a0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lokhttp3/internal/http2/a;

    sget-object v3, Lokhttp3/internal/http2/a;->e:Lokio/ByteString;

    sget-object v4, Lokhttp3/f0/h/i;->a:Lokhttp3/f0/h/i;

    invoke-virtual {p1}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/f0/h/i;->c(Lokhttp3/w;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 5
    invoke-virtual {p1, v2}, Lokhttp3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lokhttp3/internal/http2/a;

    sget-object v4, Lokhttp3/internal/http2/a;->g:Lokio/ByteString;

    invoke-direct {v3, v4, v2}, Lokhttp3/internal/http2/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance v2, Lokhttp3/internal/http2/a;

    sget-object v3, Lokhttp3/internal/http2/a;->f:Lokio/ByteString;

    invoke-virtual {p1}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/w;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lokhttp3/internal/http2/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0}, Lokhttp3/v;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_3

    add-int/lit8 v3, p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Lokhttp3/v;->d(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "US"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lokhttp3/internal/http2/e;->i()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "te"

    .line 11
    invoke-static {v4, v5}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, p1}, Lokhttp3/v;->g(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trailers"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    :cond_1
    new-instance v5, Lokhttp3/internal/http2/a;

    invoke-virtual {v0, p1}, Lokhttp3/v;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v4, p1}, Lokhttp3/internal/http2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final b(Lokhttp3/v;Lokhttp3/Protocol;)Lokhttp3/c0$a;
    .locals 7

    const-string v0, "headerBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/v$a;

    invoke-direct {v0}, Lokhttp3/v$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/v;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 3
    invoke-virtual {p1, v3}, Lokhttp3/v;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {p1, v3}, Lokhttp3/v;->g(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, ":status"

    .line 5
    invoke-static {v5, v6}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    sget-object v2, Lokhttp3/f0/h/k;->a:Lokhttp3/f0/h/k$a;

    const-string v5, "HTTP/1.1 "

    invoke-static {v5, v3}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/f0/h/k$a;->a(Ljava/lang/String;)Lokhttp3/f0/h/k;

    move-result-object v2

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lokhttp3/internal/http2/e;->j()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    invoke-virtual {v0, v5, v3}, Lokhttp3/v$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    :cond_1
    :goto_1
    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 9
    new-instance p1, Lokhttp3/c0$a;

    invoke-direct {p1}, Lokhttp3/c0$a;-><init>()V

    .line 10
    invoke-virtual {p1, p2}, Lokhttp3/c0$a;->q(Lokhttp3/Protocol;)Lokhttp3/c0$a;

    move-result-object p1

    .line 11
    iget p2, v2, Lokhttp3/f0/h/k;->c:I

    invoke-virtual {p1, p2}, Lokhttp3/c0$a;->g(I)Lokhttp3/c0$a;

    move-result-object p1

    .line 12
    iget-object p2, v2, Lokhttp3/f0/h/k;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lokhttp3/c0$a;->n(Ljava/lang/String;)Lokhttp3/c0$a;

    move-result-object p1

    .line 13
    invoke-virtual {v0}, Lokhttp3/v$a;->d()Lokhttp3/v;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/c0$a;->l(Lokhttp3/v;)Lokhttp3/c0$a;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Expected \':status\' header not present"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
