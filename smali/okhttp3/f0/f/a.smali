.class public final Lokhttp3/f0/f/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lokhttp3/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/f/a$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final b:Lokhttp3/f0/f/a$a;


# instance fields
.field private final c:Lokhttp3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/f0/f/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/f0/f/a$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/f0/f/a;->b:Lokhttp3/f0/f/a$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/x$a;)Lokhttp3/c0;
    .locals 6

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lokhttp3/x$a;->call()Lokhttp3/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/f0/f/a;->c:Lokhttp3/d;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4
    new-instance v1, Lokhttp3/f0/f/b$b;

    invoke-interface {p1}, Lokhttp3/x$a;->b()Lokhttp3/a0;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v2}, Lokhttp3/f0/f/b$b;-><init>(JLokhttp3/a0;Lokhttp3/c0;)V

    invoke-virtual {v1}, Lokhttp3/f0/f/b$b;->b()Lokhttp3/f0/f/b;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lokhttp3/f0/f/b;->b()Lokhttp3/a0;

    move-result-object v3

    .line 6
    invoke-virtual {v1}, Lokhttp3/f0/f/b;->a()Lokhttp3/c0;

    move-result-object v1

    .line 7
    iget-object v4, p0, Lokhttp3/f0/f/a;->c:Lokhttp3/d;

    if-nez v4, :cond_10

    .line 8
    instance-of v4, v0, Lokhttp3/internal/connection/e;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lokhttp3/internal/connection/e;

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lokhttp3/internal/connection/e;->m()Lokhttp3/t;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    sget-object v4, Lokhttp3/t;->b:Lokhttp3/t;

    :cond_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 9
    new-instance v1, Lokhttp3/c0$a;

    invoke-direct {v1}, Lokhttp3/c0$a;-><init>()V

    .line 10
    invoke-interface {p1}, Lokhttp3/x$a;->b()Lokhttp3/a0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/c0$a;->s(Lokhttp3/a0;)Lokhttp3/c0$a;

    move-result-object p1

    .line 11
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {p1, v1}, Lokhttp3/c0$a;->q(Lokhttp3/Protocol;)Lokhttp3/c0$a;

    move-result-object p1

    const/16 v1, 0x1f8

    .line 12
    invoke-virtual {p1, v1}, Lokhttp3/c0$a;->g(I)Lokhttp3/c0$a;

    move-result-object p1

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 13
    invoke-virtual {p1, v1}, Lokhttp3/c0$a;->n(Ljava/lang/String;)Lokhttp3/c0$a;

    move-result-object p1

    .line 14
    sget-object v1, Lokhttp3/f0/d;->c:Lokhttp3/d0;

    invoke-virtual {p1, v1}, Lokhttp3/c0$a;->b(Lokhttp3/d0;)Lokhttp3/c0$a;

    move-result-object p1

    const-wide/16 v1, -0x1

    .line 15
    invoke-virtual {p1, v1, v2}, Lokhttp3/c0$a;->t(J)Lokhttp3/c0$a;

    move-result-object p1

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lokhttp3/c0$a;->r(J)Lokhttp3/c0$a;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object p1

    .line 18
    invoke-virtual {v4, v0, p1}, Lokhttp3/t;->A(Lokhttp3/f;Lokhttp3/c0;)V

    return-object p1

    :cond_3
    if-nez v3, :cond_4

    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/c0;->I()Lokhttp3/c0$a;

    move-result-object p1

    .line 20
    sget-object v2, Lokhttp3/f0/f/a;->b:Lokhttp3/f0/f/a$a;

    invoke-static {v2, v1}, Lokhttp3/f0/f/a$a;->b(Lokhttp3/f0/f/a$a;Lokhttp3/c0;)Lokhttp3/c0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/c0$a;->d(Lokhttp3/c0;)Lokhttp3/c0$a;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object p1

    .line 22
    invoke-virtual {v4, v0, p1}, Lokhttp3/t;->b(Lokhttp3/f;Lokhttp3/c0;)V

    return-object p1

    :cond_4
    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v4, v0, v1}, Lokhttp3/t;->a(Lokhttp3/f;Lokhttp3/c0;)V

    goto :goto_2

    .line 24
    :cond_5
    iget-object v5, p0, Lokhttp3/f0/f/a;->c:Lokhttp3/d;

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {v4, v0}, Lokhttp3/t;->c(Lokhttp3/f;)V

    .line 26
    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {p1, v3}, Lokhttp3/x$a;->a(Lokhttp3/a0;)Lokhttp3/c0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    if-nez p1, :cond_7

    goto :goto_3

    .line 27
    :cond_7
    invoke-virtual {p1}, Lokhttp3/c0;->o()I

    move-result v4

    const/16 v5, 0x130

    if-ne v4, v5, :cond_8

    const/4 v0, 0x1

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    .line 28
    invoke-virtual {v1}, Lokhttp3/c0;->a()Lokhttp3/d0;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v0}, Lokhttp3/f0/d;->j(Ljava/io/Closeable;)V

    goto :goto_4

    .line 29
    :cond_a
    invoke-virtual {v1}, Lokhttp3/c0;->I()Lokhttp3/c0$a;

    move-result-object v0

    .line 30
    sget-object v3, Lokhttp3/f0/f/a;->b:Lokhttp3/f0/f/a$a;

    invoke-virtual {v1}, Lokhttp3/c0;->A()Lokhttp3/v;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/c0;->A()Lokhttp3/v;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lokhttp3/f0/f/a$a;->a(Lokhttp3/f0/f/a$a;Lokhttp3/v;Lokhttp3/v;)Lokhttp3/v;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokhttp3/c0$a;->l(Lokhttp3/v;)Lokhttp3/c0$a;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lokhttp3/c0;->N()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokhttp3/c0$a;->t(J)Lokhttp3/c0$a;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lokhttp3/c0;->L()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokhttp3/c0$a;->r(J)Lokhttp3/c0$a;

    move-result-object v0

    .line 33
    invoke-static {v3, v1}, Lokhttp3/f0/f/a$a;->b(Lokhttp3/f0/f/a$a;Lokhttp3/c0;)Lokhttp3/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/c0$a;->d(Lokhttp3/c0;)Lokhttp3/c0$a;

    move-result-object v0

    .line 34
    invoke-static {v3, p1}, Lokhttp3/f0/f/a$a;->b(Lokhttp3/f0/f/a$a;Lokhttp3/c0;)Lokhttp3/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/c0$a;->o(Lokhttp3/c0;)Lokhttp3/c0$a;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    .line 36
    invoke-virtual {p1}, Lokhttp3/c0;->a()Lokhttp3/d0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/d0;->close()V

    .line 37
    iget-object p1, p0, Lokhttp3/f0/f/a;->c:Lokhttp3/d;

    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    throw v2

    .line 38
    :cond_b
    :goto_4
    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/c0;->I()Lokhttp3/c0$a;

    move-result-object v0

    .line 39
    sget-object v4, Lokhttp3/f0/f/a;->b:Lokhttp3/f0/f/a$a;

    invoke-static {v4, v1}, Lokhttp3/f0/f/a$a;->b(Lokhttp3/f0/f/a$a;Lokhttp3/c0;)Lokhttp3/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/c0$a;->d(Lokhttp3/c0;)Lokhttp3/c0$a;

    move-result-object v0

    .line 40
    invoke-static {v4, p1}, Lokhttp3/f0/f/a$a;->b(Lokhttp3/f0/f/a$a;Lokhttp3/c0;)Lokhttp3/c0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/c0$a;->o(Lokhttp3/c0;)Lokhttp3/c0$a;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lokhttp3/f0/f/a;->c:Lokhttp3/d;

    if-eqz v0, :cond_f

    .line 43
    invoke-static {p1}, Lokhttp3/f0/h/e;->b(Lokhttp3/c0;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lokhttp3/f0/f/b;->a:Lokhttp3/f0/f/b$a;

    invoke-virtual {v0, p1, v3}, Lokhttp3/f0/f/b$a;->a(Lokhttp3/c0;Lokhttp3/a0;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    .line 44
    :cond_c
    throw v2

    .line 45
    :cond_d
    :goto_5
    sget-object v0, Lokhttp3/f0/h/f;->a:Lokhttp3/f0/h/f;

    invoke-virtual {v3}, Lokhttp3/a0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/f0/h/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    .line 46
    :cond_e
    throw v2

    :cond_f
    :goto_6
    return-object p1

    :catchall_0
    move-exception p1

    .line 47
    throw p1

    .line 48
    :cond_10
    throw v2

    .line 49
    :cond_11
    invoke-interface {p1}, Lokhttp3/x$a;->b()Lokhttp3/a0;

    throw v2
.end method
