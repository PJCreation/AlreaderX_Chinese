.class public final Lokhttp3/internal/connection/c;
.super Ljava/lang/Object;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/c$a;,
        Lokhttp3/internal/connection/c$b;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/connection/e;

.field private final b:Lokhttp3/t;

.field private final c:Lokhttp3/internal/connection/d;

.field private final d:Lokhttp3/f0/h/d;

.field private e:Z

.field private final f:Lokhttp3/internal/connection/f;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/e;Lokhttp3/t;Lokhttp3/internal/connection/d;Lokhttp3/f0/h/d;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/internal/connection/d;

    .line 5
    iput-object p4, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    .line 6
    invoke-interface {p4}, Lokhttp3/f0/h/d;->h()Lokhttp3/internal/connection/f;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/c;->f:Lokhttp3/internal/connection/f;

    return-void
.end method

.method private final s(Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/internal/connection/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v0}, Lokhttp3/f0/h/d;->h()Lokhttp3/internal/connection/f;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/connection/f;->G(Lokhttp3/internal/connection/e;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-direct {p0, p5}, Lokhttp3/internal/connection/c;->s(Ljava/io/IOException;)V

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p5}, Lokhttp3/t;->s(Lokhttp3/f;Ljava/io/IOException;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/t;->q(Lokhttp3/f;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    .line 4
    iget-object p1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object p2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {p1, p2, p5}, Lokhttp3/t;->x(Lokhttp3/f;Ljava/io/IOException;)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/t;->v(Lokhttp3/f;J)V

    .line 6
    :cond_4
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {p1, p0, p4, p3, p5}, Lokhttp3/internal/connection/e;->r(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v0}, Lokhttp3/f0/h/d;->cancel()V

    return-void
.end method

.method public final c(Lokhttp3/a0;Z)Lokio/t;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-boolean p2, p0, Lokhttp3/internal/connection/c;->e:Z

    .line 2
    invoke-virtual {p1}, Lokhttp3/a0;->a()Lokhttp3/b0;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/b0;->a()J

    move-result-wide v0

    .line 3
    iget-object p2, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {p2, v2}, Lokhttp3/t;->r(Lokhttp3/f;)V

    .line 4
    iget-object p2, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {p2, p1, v0, v1}, Lokhttp3/f0/h/d;->f(Lokhttp3/a0;J)Lokio/t;

    move-result-object p1

    .line 5
    new-instance p2, Lokhttp3/internal/connection/c$a;

    invoke-direct {p2, p0, p1, v0, v1}, Lokhttp3/internal/connection/c$a;-><init>(Lokhttp3/internal/connection/c;Lokio/t;J)V

    return-object p2
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v0}, Lokhttp3/f0/h/d;->cancel()V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Lokhttp3/internal/connection/e;->r(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v0}, Lokhttp3/f0/h/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v1, v2, v0}, Lokhttp3/t;->s(Lokhttp3/f;Ljava/io/IOException;)V

    .line 3
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/c;->s(Ljava/io/IOException;)V

    .line 4
    throw v0
.end method

.method public final f()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v0}, Lokhttp3/f0/h/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v1, v2, v0}, Lokhttp3/t;->s(Lokhttp3/f;Ljava/io/IOException;)V

    .line 3
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/c;->s(Ljava/io/IOException;)V

    .line 4
    throw v0
.end method

.method public final g()Lokhttp3/internal/connection/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    return-object v0
.end method

.method public final h()Lokhttp3/internal/connection/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->f:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method public final i()Lokhttp3/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    return-object v0
.end method

.method public final j()Lokhttp3/internal/connection/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/internal/connection/d;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Lokhttp3/internal/connection/d;

    invoke-virtual {v0}, Lokhttp3/internal/connection/d;->d()Lokhttp3/b;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->f:Lokhttp3/internal/connection/f;

    invoke-virtual {v1}, Lokhttp3/internal/connection/f;->z()Lokhttp3/e0;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/e0;->a()Lokhttp3/b;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/b;->l()Lokhttp3/w;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/c;->e:Z

    return v0
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v0}, Lokhttp3/f0/h/d;->h()Lokhttp3/internal/connection/f;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->y()V

    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lokhttp3/internal/connection/e;->r(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final o(Lokhttp3/c0;)Lokhttp3/d0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Content-Type"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-static {p1, v0, v2, v1, v2}, Lokhttp3/c0;->x(Lokhttp3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v1, p1}, Lokhttp3/f0/h/d;->d(Lokhttp3/c0;)J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v3, p1}, Lokhttp3/f0/h/d;->e(Lokhttp3/c0;)Lokio/v;

    move-result-object p1

    .line 4
    new-instance v3, Lokhttp3/internal/connection/c$b;

    invoke-direct {v3, p0, p1, v1, v2}, Lokhttp3/internal/connection/c$b;-><init>(Lokhttp3/internal/connection/c;Lokio/v;J)V

    .line 5
    new-instance p1, Lokhttp3/f0/h/h;

    invoke-static {v3}, Lokio/k;->b(Lokio/v;)Lokio/d;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lokhttp3/f0/h/h;-><init>(Ljava/lang/String;JLokio/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/t;->x(Lokhttp3/f;Ljava/io/IOException;)V

    .line 7
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/c;->s(Ljava/io/IOException;)V

    .line 8
    throw p1
.end method

.method public final p(Z)Lokhttp3/c0$a;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v0, p1}, Lokhttp3/f0/h/d;->g(Z)Lokhttp3/c0$a;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Lokhttp3/c0$a;->m(Lokhttp3/internal/connection/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/t;->x(Lokhttp3/f;Ljava/io/IOException;)V

    .line 4
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/c;->s(Ljava/io/IOException;)V

    .line 5
    throw p1
.end method

.method public final q(Lokhttp3/c0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/t;->y(Lokhttp3/f;Lokhttp3/c0;)V

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1}, Lokhttp3/t;->z(Lokhttp3/f;)V

    return-void
.end method

.method public final t(Lokhttp3/a0;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1}, Lokhttp3/t;->u(Lokhttp3/f;)V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/f0/h/d;

    invoke-interface {v0, p1}, Lokhttp3/f0/h/d;->b(Lokhttp3/a0;)V

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/t;->t(Lokhttp3/f;Lokhttp3/a0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v1, p1}, Lokhttp3/t;->s(Lokhttp3/f;Ljava/io/IOException;)V

    .line 5
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/c;->s(Ljava/io/IOException;)V

    .line 6
    throw p1
.end method
