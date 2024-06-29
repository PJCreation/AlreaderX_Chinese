.class public final Lokhttp3/f0/h/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lokhttp3/x;


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/f0/h/b;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/x$a;)Lokhttp3/c0;
    .locals 11

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lokhttp3/f0/h/g;

    .line 2
    invoke-virtual {p1}, Lokhttp3/f0/h/g;->g()Lokhttp3/internal/connection/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lokhttp3/f0/h/g;->i()Lokhttp3/a0;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lokhttp3/a0;->a()Lokhttp3/b0;

    move-result-object v1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/c;->t(Lokhttp3/a0;)V

    .line 7
    invoke-virtual {p1}, Lokhttp3/a0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/f0/h/f;->b(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    const-string v4, "Expect"

    .line 8
    invoke-virtual {p1, v4}, Lokhttp3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "100-continue"

    invoke-static {v8, v4, v7}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    .line 10
    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/c0$a;

    move-result-object v4

    .line 11
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move-object v4, v5

    const/4 v8, 0x1

    :goto_0
    if-nez v4, :cond_2

    .line 12
    invoke-virtual {v1}, Lokhttp3/b0;->f()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 13
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    .line 14
    invoke-virtual {v0, p1, v7}, Lokhttp3/internal/connection/c;->c(Lokhttp3/a0;Z)Lokio/t;

    move-result-object v9

    invoke-static {v9}, Lokio/k;->a(Lokio/t;)Lokio/c;

    move-result-object v9

    .line 15
    invoke-virtual {v1, v9}, Lokhttp3/b0;->h(Lokio/c;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0, p1, v6}, Lokhttp3/internal/connection/c;->c(Lokhttp3/a0;Z)Lokio/t;

    move-result-object v9

    invoke-static {v9}, Lokio/k;->a(Lokio/t;)Lokio/c;

    move-result-object v9

    .line 17
    invoke-virtual {v1, v9}, Lokhttp3/b0;->h(Lokio/c;)V

    .line 18
    invoke-interface {v9}, Lokio/t;->close()V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->n()V

    .line 20
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/f;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/internal/connection/f;->v()Z

    move-result v9

    if-nez v9, :cond_4

    .line 21
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()V

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->n()V

    move-object v4, v5

    const/4 v8, 0x1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v1}, Lokhttp3/b0;->f()Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    :cond_5
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->e()V

    :cond_6
    if-nez v4, :cond_7

    .line 25
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/c0$a;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    if-eqz v8, :cond_7

    .line 26
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    const/4 v8, 0x0

    .line 27
    :cond_7
    invoke-virtual {v4, p1}, Lokhttp3/c0$a;->s(Lokhttp3/a0;)Lokhttp3/c0$a;

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/f;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/internal/connection/f;->r()Lokhttp3/u;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/c0$a;->j(Lokhttp3/u;)Lokhttp3/c0$a;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v2, v3}, Lokhttp3/c0$a;->t(J)Lokhttp3/c0$a;

    move-result-object v1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lokhttp3/c0$a;->r(J)Lokhttp3/c0$a;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lokhttp3/c0;->o()I

    move-result v4

    const/16 v9, 0x64

    if-ne v4, v9, :cond_9

    .line 33
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/c0$a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    if-eqz v8, :cond_8

    .line 34
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    .line 35
    :cond_8
    invoke-virtual {v1, p1}, Lokhttp3/c0$a;->s(Lokhttp3/a0;)Lokhttp3/c0$a;

    move-result-object p1

    .line 36
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/f;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/f;->r()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/c0$a;->j(Lokhttp3/u;)Lokhttp3/c0$a;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v2, v3}, Lokhttp3/c0$a;->t(J)Lokhttp3/c0$a;

    move-result-object p1

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lokhttp3/c0$a;->r(J)Lokhttp3/c0$a;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lokhttp3/c0;->o()I

    move-result v4

    .line 41
    :cond_9
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/c;->q(Lokhttp3/c0;)V

    .line 42
    iget-boolean p1, p0, Lokhttp3/f0/h/b;->b:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x65

    if-ne v4, p1, :cond_a

    .line 43
    invoke-virtual {v1}, Lokhttp3/c0;->I()Lokhttp3/c0$a;

    move-result-object p1

    .line 44
    sget-object v1, Lokhttp3/f0/d;->c:Lokhttp3/d0;

    invoke-virtual {p1, v1}, Lokhttp3/c0$a;->b(Lokhttp3/d0;)Lokhttp3/c0$a;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object p1

    goto :goto_2

    .line 46
    :cond_a
    invoke-virtual {v1}, Lokhttp3/c0;->I()Lokhttp3/c0$a;

    move-result-object p1

    .line 47
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/c;->o(Lokhttp3/c0;)Lokhttp3/d0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/c0$a;->b(Lokhttp3/d0;)Lokhttp3/c0$a;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object p1

    .line 49
    :goto_2
    invoke-virtual {p1}, Lokhttp3/c0;->M()Lokhttp3/a0;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lokhttp3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-static {v3, v1, v7}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x2

    .line 50
    invoke-static {p1, v2, v5, v1, v5}, Lokhttp3/c0;->x(Lokhttp3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v7}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 51
    :cond_b
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()V

    :cond_c
    const/16 v0, 0xcc

    if-eq v4, v0, :cond_d

    const/16 v0, 0xcd

    if-ne v4, v0, :cond_10

    .line 52
    :cond_d
    invoke-virtual {p1}, Lokhttp3/c0;->a()Lokhttp3/d0;

    move-result-object v0

    if-nez v0, :cond_e

    const-wide/16 v0, -0x1

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Lokhttp3/d0;->e()J

    move-result-wide v0

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_10

    .line 53
    new-instance v0, Ljava/net/ProtocolException;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/c0;->a()Lokhttp3/d0;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p1}, Lokhttp3/d0;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-object p1
.end method
