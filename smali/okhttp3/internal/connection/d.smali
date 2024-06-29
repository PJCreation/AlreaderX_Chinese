.class public final Lokhttp3/internal/connection/d;
.super Ljava/lang/Object;
.source "ExchangeFinder.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/connection/g;

.field private final b:Lokhttp3/b;

.field private final c:Lokhttp3/internal/connection/e;

.field private final d:Lokhttp3/t;

.field private e:Lokhttp3/internal/connection/i$b;

.field private f:Lokhttp3/internal/connection/i;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lokhttp3/e0;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/g;Lokhttp3/b;Lokhttp3/internal/connection/e;Lokhttp3/t;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/b;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    .line 5
    iput-object p4, p0, Lokhttp3/internal/connection/d;->d:Lokhttp3/t;

    return-void
.end method

.method private final b(IIIIZ)Lokhttp3/internal/connection/f;
    .locals 14

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->q()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->l()Lokhttp3/internal/connection/f;

    move-result-object v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/connection/f;->p()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lokhttp3/internal/connection/f;->z()Lokhttp3/e0;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/e0;->a()Lokhttp3/b;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v5

    invoke-virtual {p0, v5}, Lokhttp3/internal/connection/d;->g(Lokhttp3/w;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v4

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v5, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v5}, Lokhttp3/internal/connection/e;->u()Ljava/net/Socket;

    move-result-object v5

    .line 6
    :goto_1
    sget-object v6, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v2

    .line 8
    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->l()Lokhttp3/internal/connection/f;

    move-result-object v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    const-string v0, "Check failed."

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {v5}, Lokhttp3/f0/d;->k(Ljava/net/Socket;)V

    .line 11
    :goto_3
    iget-object v5, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/t;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v5, v6, v2}, Lokhttp3/t;->l(Lokhttp3/f;Lokhttp3/k;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit v2

    throw v0

    .line 13
    :cond_6
    :goto_4
    iput v3, v1, Lokhttp3/internal/connection/d;->g:I

    .line 14
    iput v3, v1, Lokhttp3/internal/connection/d;->h:I

    .line 15
    iput v3, v1, Lokhttp3/internal/connection/d;->i:I

    .line 16
    iget-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/b;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v5, v6, v4, v3}, Lokhttp3/internal/connection/g;->a(Lokhttp3/b;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->l()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 18
    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/t;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v3, v0}, Lokhttp3/t;->k(Lokhttp3/f;Lokhttp3/k;)V

    return-object v0

    .line 19
    :cond_7
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/e0;

    if-eqz v2, :cond_8

    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 21
    iput-object v4, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/e0;

    :goto_5
    move-object v5, v4

    goto :goto_6

    .line 22
    :cond_8
    iget-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/i$b;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokhttp3/internal/connection/i$b;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 23
    iget-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/i$b;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokhttp3/internal/connection/i$b;->c()Lokhttp3/e0;

    move-result-object v2

    goto :goto_5

    .line 24
    :cond_9
    iget-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/i;

    if-nez v2, :cond_a

    .line 25
    new-instance v2, Lokhttp3/internal/connection/i;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/b;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->k()Lokhttp3/z;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/z;->r()Lokhttp3/internal/connection/h;

    move-result-object v6

    iget-object v7, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    iget-object v8, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/t;

    invoke-direct {v2, v5, v6, v7, v8}, Lokhttp3/internal/connection/i;-><init>(Lokhttp3/b;Lokhttp3/internal/connection/h;Lokhttp3/f;Lokhttp3/t;)V

    .line 26
    iput-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/i;

    .line 27
    :cond_a
    invoke-virtual {v2}, Lokhttp3/internal/connection/i;->c()Lokhttp3/internal/connection/i$b;

    move-result-object v2

    .line 28
    iput-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/i$b;

    .line 29
    invoke-virtual {v2}, Lokhttp3/internal/connection/i$b;->a()Ljava/util/List;

    move-result-object v5

    .line 30
    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->q()Z

    move-result v6

    if-nez v6, :cond_d

    .line 31
    iget-object v6, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    iget-object v7, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/b;

    iget-object v8, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v6, v7, v8, v5, v3}, Lokhttp3/internal/connection/g;->a(Lokhttp3/b;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 32
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->l()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 33
    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/t;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v3, v0}, Lokhttp3/t;->k(Lokhttp3/f;Lokhttp3/k;)V

    return-object v0

    .line 34
    :cond_b
    invoke-virtual {v2}, Lokhttp3/internal/connection/i$b;->c()Lokhttp3/e0;

    move-result-object v2

    .line 35
    :goto_6
    new-instance v3, Lokhttp3/internal/connection/f;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    invoke-direct {v3, v6, v2}, Lokhttp3/internal/connection/f;-><init>(Lokhttp3/internal/connection/g;Lokhttp3/e0;)V

    .line 36
    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v6, v3}, Lokhttp3/internal/connection/e;->w(Lokhttp3/internal/connection/f;)V

    .line 37
    :try_start_1
    iget-object v12, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    .line 38
    iget-object v13, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/t;

    move-object v6, v3

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 39
    invoke-virtual/range {v6 .. v13}, Lokhttp3/internal/connection/f;->f(IIIIZLokhttp3/f;Lokhttp3/t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v6, v4}, Lokhttp3/internal/connection/e;->w(Lokhttp3/internal/connection/f;)V

    .line 41
    iget-object v4, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v4}, Lokhttp3/internal/connection/e;->k()Lokhttp3/z;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/z;->r()Lokhttp3/internal/connection/h;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/internal/connection/f;->z()Lokhttp3/e0;

    move-result-object v6

    invoke-virtual {v4, v6}, Lokhttp3/internal/connection/h;->a(Lokhttp3/e0;)V

    .line 42
    iget-object v4, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/b;

    iget-object v7, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v4, v6, v7, v5, v0}, Lokhttp3/internal/connection/g;->a(Lokhttp3/b;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 43
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->l()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 44
    iput-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/e0;

    .line 45
    invoke-virtual {v3}, Lokhttp3/internal/connection/f;->D()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/f0/d;->k(Ljava/net/Socket;)V

    .line 46
    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/t;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v3, v0}, Lokhttp3/t;->k(Lokhttp3/f;Lokhttp3/k;)V

    return-object v0

    .line 47
    :cond_c
    monitor-enter v3

    .line 48
    :try_start_2
    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/g;

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/g;->e(Lokhttp3/internal/connection/f;)V

    .line 49
    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/e;->c(Lokhttp3/internal/connection/f;)V

    .line 50
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    monitor-exit v3

    .line 52
    iget-object v0, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/t;

    iget-object v2, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v2, v3}, Lokhttp3/t;->k(Lokhttp3/f;Lokhttp3/k;)V

    return-object v3

    :catchall_1
    move-exception v0

    .line 53
    monitor-exit v3

    throw v0

    :catchall_2
    move-exception v0

    .line 54
    iget-object v2, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v4}, Lokhttp3/internal/connection/e;->w(Lokhttp3/internal/connection/f;)V

    throw v0

    .line 55
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private final c(IIIIZZ)Lokhttp3/internal/connection/f;
    .locals 2

    .line 1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/d;->b(IIIIZ)Lokhttp3/internal/connection/f;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/f;->u(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->y()V

    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/e0;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/i$b;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/i$b;->b()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/i;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lokhttp3/internal/connection/i;->a()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exhausted all routes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final f()Lokhttp3/e0;
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/d;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_4

    iget v0, p0, Lokhttp3/internal/connection/d;->h:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lokhttp3/internal/connection/d;->i:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->l()Lokhttp3/internal/connection/f;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 3
    :cond_1
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->q()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit v0

    return-object v2

    .line 5
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->z()Lokhttp3/e0;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/e0;->a()Lokhttp3/b;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/internal/connection/d;->d()Lokhttp3/b;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v3

    invoke-static {v1, v3}, Lokhttp3/f0/d;->h(Lokhttp3/w;Lokhttp3/w;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    monitor-exit v0

    return-object v2

    .line 6
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->z()Lokhttp3/e0;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    :goto_0
    return-object v2
.end method


# virtual methods
.method public final a(Lokhttp3/z;Lokhttp3/f0/h/g;)Lokhttp3/f0/h/d;
    .locals 8

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/f0/h/g;->f()I

    move-result v2

    .line 2
    invoke-virtual {p2}, Lokhttp3/f0/h/g;->h()I

    move-result v3

    .line 3
    invoke-virtual {p2}, Lokhttp3/f0/h/g;->j()I

    move-result v4

    .line 4
    invoke-virtual {p1}, Lokhttp3/z;->y()I

    move-result v5

    .line 5
    invoke-virtual {p1}, Lokhttp3/z;->E()Z

    move-result v6

    .line 6
    invoke-virtual {p2}, Lokhttp3/f0/h/g;->i()Lokhttp3/a0;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a0;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/connection/d;->c(IIIIZZ)Lokhttp3/internal/connection/f;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/connection/f;->w(Lokhttp3/z;Lokhttp3/f0/h/g;)Lokhttp3/f0/h/d;

    move-result-object p1
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    .line 10
    new-instance p2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    .line 12
    throw p1
.end method

.method public final d()Lokhttp3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/b;

    return-object v0
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/d;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lokhttp3/internal/connection/d;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Lokhttp3/internal/connection/d;->i:I

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/e0;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/connection/d;->f()Lokhttp3/e0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iput-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/e0;

    return v2

    .line 5
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/i$b;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/i$b;->b()Z

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/i;

    if-nez v0, :cond_6

    return v2

    .line 7
    :cond_6
    invoke-virtual {v0}, Lokhttp3/internal/connection/i;->a()Z

    move-result v0

    return v0
.end method

.method public final g(Lokhttp3/w;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/b;

    invoke-virtual {v0}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lokhttp3/w;->l()I

    move-result v1

    invoke-virtual {v0}, Lokhttp3/w;->l()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/e0;

    .line 2
    instance-of v0, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v0, v1, :cond_0

    .line 3
    iget p1, p0, Lokhttp3/internal/connection/d;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->g:I

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lokhttp3/internal/connection/d;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->h:I

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lokhttp3/internal/connection/d;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->i:I

    :goto_0
    return-void
.end method
