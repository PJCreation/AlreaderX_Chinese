.class public final Lokhttp3/f0/e/a;
.super Ljava/lang/Object;
.source "JavaNetAuthenticator.kt"

# interfaces
.implements Lokhttp3/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/e/a$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final d:Lokhttp3/s;


# direct methods
.method public constructor <init>(Lokhttp3/s;)V
    .locals 1

    const-string v0, "defaultDns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/f0/e/a;->d:Lokhttp3/s;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/s;ILkotlin/jvm/internal/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lokhttp3/s;->b:Lokhttp3/s;

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/f0/e/a;-><init>(Lokhttp3/s;)V

    return-void
.end method

.method private final b(Ljava/net/Proxy;Lokhttp3/w;Lokhttp3/s;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lokhttp3/f0/e/a$a;->a:[I

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lokhttp3/s;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    const-string p2, "address() as InetSocketAddress).address"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lokhttp3/e0;Lokhttp3/c0;)Lokhttp3/a0;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "response"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/c0;->l()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-virtual/range {p2 .. p2}, Lokhttp3/c0;->M()Lokhttp3/a0;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object v4

    .line 4
    invoke-virtual/range {p2 .. p2}, Lokhttp3/c0;->o()I

    move-result v2

    const/4 v5, 0x1

    const/16 v6, 0x197

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x0

    if-nez p1, :cond_1

    move-object v7, v6

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/e0;->b()Ljava/net/Proxy;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_2

    sget-object v7, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 6
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/i;

    .line 7
    invoke-virtual {v8}, Lokhttp3/i;->c()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Basic"

    invoke-static {v10, v9, v5}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    :goto_3
    move-object v9, v6

    goto :goto_4

    .line 8
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lokhttp3/e0;->a()Lokhttp3/b;

    move-result-object v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Lokhttp3/b;->c()Lokhttp3/s;

    move-result-object v9

    :goto_4
    if-nez v9, :cond_7

    iget-object v9, v0, Lokhttp3/f0/e/a;->d:Lokhttp3/s;

    :cond_7
    const-string v10, "proxy"

    if-eqz v2, :cond_9

    .line 9
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v11

    if-eqz v11, :cond_8

    check-cast v11, Ljava/net/InetSocketAddress;

    .line 10
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-static {v7, v10}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7, v4, v9}, Lokhttp3/f0/e/a;->b(Ljava/net/Proxy;Lokhttp3/w;Lokhttp3/s;)Ljava/net/InetAddress;

    move-result-object v13

    .line 12
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v14

    .line 13
    invoke-virtual {v4}, Lokhttp3/w;->p()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v8}, Lokhttp3/i;->b()Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-virtual {v8}, Lokhttp3/i;->c()Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v4}, Lokhttp3/w;->r()Ljava/net/URL;

    move-result-object v18

    .line 17
    sget-object v19, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 18
    invoke-static/range {v12 .. v19}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    goto :goto_5

    .line 19
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_9
    invoke-virtual {v4}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-static {v7, v10}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7, v4, v9}, Lokhttp3/f0/e/a;->b(Ljava/net/Proxy;Lokhttp3/w;Lokhttp3/s;)Ljava/net/InetAddress;

    move-result-object v10

    .line 22
    invoke-virtual {v4}, Lokhttp3/w;->l()I

    move-result v12

    .line 23
    invoke-virtual {v4}, Lokhttp3/w;->p()Ljava/lang/String;

    move-result-object v13

    .line 24
    invoke-virtual {v8}, Lokhttp3/i;->b()Ljava/lang/String;

    move-result-object v14

    .line 25
    invoke-virtual {v8}, Lokhttp3/i;->c()Ljava/lang/String;

    move-result-object v15

    .line 26
    invoke-virtual {v4}, Lokhttp3/w;->r()Ljava/net/URL;

    move-result-object v16

    .line 27
    sget-object v17, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object v9, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 28
    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    :goto_5
    if-eqz v9, :cond_3

    if-eqz v2, :cond_a

    const-string v1, "Proxy-Authorization"

    goto :goto_6

    :cond_a
    const-string v1, "Authorization"

    .line 29
    :goto_6
    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "auth.userName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v5

    const-string v6, "auth.password"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Lokhttp3/i;->a()Ljava/nio/charset/Charset;

    move-result-object v5

    .line 30
    invoke-static {v2, v4, v5}, Lokhttp3/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v3}, Lokhttp3/a0;->h()Lokhttp3/a0$a;

    move-result-object v3

    .line 32
    invoke-virtual {v3, v1, v2}, Lokhttp3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lokhttp3/a0$a;->b()Lokhttp3/a0;

    move-result-object v1

    return-object v1

    :cond_b
    return-object v6
.end method
