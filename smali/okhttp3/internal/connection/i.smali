.class public final Lokhttp3/internal/connection/i;
.super Ljava/lang/Object;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/i$b;,
        Lokhttp3/internal/connection/i$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/connection/i$a;


# instance fields
.field private final b:Lokhttp3/b;

.field private final c:Lokhttp3/internal/connection/h;

.field private final d:Lokhttp3/f;

.field private final e:Lokhttp3/t;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/connection/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/i$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/internal/connection/i;->a:Lokhttp3/internal/connection/i$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/b;Lokhttp3/internal/connection/h;Lokhttp3/f;Lokhttp3/t;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/b;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/internal/connection/h;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/f;

    .line 5
    iput-object p4, p0, Lokhttp3/internal/connection/i;->e:Lokhttp3/t;

    .line 6
    invoke-static {}, Lkotlin/collections/p;->j()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/i;->f:Ljava/util/List;

    .line 7
    invoke-static {}, Lkotlin/collections/p;->j()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/i;->h:Ljava/util/List;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/connection/i;->i:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/b;->g()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lokhttp3/internal/connection/i;->f(Lokhttp3/w;Ljava/net/Proxy;)V

    return-void
.end method

.method private final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/i;->g:I

    iget-object v1, p0, Lokhttp3/internal/connection/i;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final d()Ljava/net/Proxy;
    .locals 3

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/connection/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/i;->f:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/connection/i;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/connection/i;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 3
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/i;->e(Ljava/net/Proxy;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/b;

    invoke-virtual {v2}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/connection/i;->f:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final e(Ljava/net/Proxy;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iput-object v0, p0, Lokhttp3/internal/connection/i;->h:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    .line 5
    instance-of v2, v1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lokhttp3/internal/connection/i;->a:Lokhttp3/internal/connection/i$a;

    const-string v3, "proxyAddress"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v1}, Lokhttp3/internal/connection/i$a;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "Proxy.address() is not an InetSocketAddress: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/b;

    invoke-virtual {v1}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v1, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/b;

    invoke-virtual {v1}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/w;->l()I

    move-result v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v4, v1, :cond_3

    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v3, :cond_4

    .line 13
    invoke-static {v2, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_4
    iget-object p1, p0, Lokhttp3/internal/connection/i;->e:Lokhttp3/t;

    iget-object v3, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/f;

    invoke-virtual {p1, v3, v2}, Lokhttp3/t;->n(Lokhttp3/f;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/b;

    invoke-virtual {p1}, Lokhttp3/b;->c()Lokhttp3/s;

    move-result-object p1

    invoke-interface {p1, v2}, Lokhttp3/s;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 17
    iget-object v3, p0, Lokhttp3/internal/connection/i;->e:Lokhttp3/t;

    iget-object v4, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/f;

    invoke-virtual {v3, v4, v2, p1}, Lokhttp3/t;->m(Lokhttp3/f;Ljava/lang/String;Ljava/util/List;)V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 19
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    .line 20
    :cond_6
    new-instance p1, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/b;

    invoke-virtual {v1}, Lokhttp3/b;->c()Lokhttp3/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned no addresses for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    new-instance p1, Ljava/net/SocketException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; port is out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final f(Lokhttp3/w;Ljava/net/Proxy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->e:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/f;

    invoke-virtual {v0, v1, p1}, Lokhttp3/t;->p(Lokhttp3/f;Lokhttp3/w;)V

    .line 2
    invoke-static {p2, p1, p0}, Lokhttp3/internal/connection/i;->g(Ljava/net/Proxy;Lokhttp3/w;Lokhttp3/internal/connection/i;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/i;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lokhttp3/internal/connection/i;->g:I

    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/i;->e:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->d:Lokhttp3/f;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/t;->o(Lokhttp3/f;Lokhttp3/w;Ljava/util/List;)V

    return-void
.end method

.method private static final g(Ljava/net/Proxy;Lokhttp3/w;Lokhttp3/internal/connection/i;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Lokhttp3/w;",
            "Lokhttp3/internal/connection/i;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lkotlin/collections/p;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lokhttp3/w;->q()Ljava/net/URI;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    new-array p0, v1, [Ljava/net/Proxy;

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p1, p0, v0

    invoke-static {p0}, Lokhttp3/f0/d;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    iget-object p1, p2, Lokhttp3/internal/connection/i;->b:Lokhttp3/b;

    invoke-virtual {p1}, Lokhttp3/b;->i()Ljava/net/ProxySelector;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    new-array p0, v1, [Ljava/net/Proxy;

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p1, p0, v0

    invoke-static {p0}, Lokhttp3/f0/d;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "proxiesOrNull"

    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokhttp3/f0/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/connection/i;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/connection/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final c()Lokhttp3/internal/connection/i$b;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/i;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/connection/i;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-direct {p0}, Lokhttp3/internal/connection/i;->d()Ljava/net/Proxy;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/i;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 6
    new-instance v4, Lokhttp3/e0;

    iget-object v5, p0, Lokhttp3/internal/connection/i;->b:Lokhttp3/b;

    invoke-direct {v4, v5, v1, v3}, Lokhttp3/e0;-><init>(Lokhttp3/b;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 7
    iget-object v3, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/internal/connection/h;

    invoke-virtual {v3, v4}, Lokhttp3/internal/connection/h;->c(Lokhttp3/e0;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Lokhttp3/internal/connection/i;->i:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lokhttp3/internal/connection/i;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/collections/p;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 13
    iget-object v1, p0, Lokhttp3/internal/connection/i;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    :cond_4
    new-instance v1, Lokhttp3/internal/connection/i$b;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/i$b;-><init>(Ljava/util/List;)V

    return-object v1

    .line 15
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
