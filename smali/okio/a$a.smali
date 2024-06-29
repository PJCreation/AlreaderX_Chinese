.class public final Lokio/a$a;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

    invoke-direct {p0}, Lokio/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lokio/a$a;Lokio/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokio/a$a;->d(Lokio/a;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lokio/a$a;Lokio/a;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lokio/a$a;->e(Lokio/a;JZ)V

    return-void
.end method

.method private final d(Lokio/a;)Z
    .locals 4

    const-class v0, Lokio/a;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lokio/a;->l(Lokio/a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p1, v2}, Lokio/a;->q(Lokio/a;Z)V

    .line 4
    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    invoke-static {v1}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 6
    invoke-static {p1}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object v3

    invoke-static {v1, v3}, Lokio/a;->r(Lokio/a;Lokio/a;)V

    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1}, Lokio/a;->r(Lokio/a;Lokio/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return v2

    .line 9
    :cond_1
    :try_start_2
    invoke-static {v1}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 10
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final e(Lokio/a;JZ)V
    .locals 6

    const-class v0, Lokio/a;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lokio/a;->l(Lokio/a;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 3
    invoke-static {p1, v2}, Lokio/a;->q(Lokio/a;Z)V

    .line 4
    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lokio/a;->f:Lokio/a$a;

    new-instance v1, Lokio/a;

    invoke-direct {v1}, Lokio/a;-><init>()V

    invoke-static {v1}, Lokio/a;->p(Lokio/a;)V

    .line 6
    new-instance v1, Lokio/a$b;

    invoke-direct {v1}, Lokio/a$b;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-eqz v5, :cond_1

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p1}, Lokio/w;->c()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    add-long/2addr p2, v1

    invoke-static {p1, p2, p3}, Lokio/a;->s(Lokio/a;J)V

    goto :goto_0

    :cond_1
    cmp-long v5, p2, v3

    if-eqz v5, :cond_2

    add-long/2addr p2, v1

    .line 9
    invoke-static {p1, p2, p3}, Lokio/a;->s(Lokio/a;J)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_6

    .line 10
    invoke-virtual {p1}, Lokio/w;->c()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lokio/a;->s(Lokio/a;J)V

    .line 11
    :goto_0
    invoke-static {p1, v1, v2}, Lokio/a;->o(Lokio/a;J)J

    move-result-wide p2

    .line 12
    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 13
    :goto_1
    invoke-static {p4}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {p4}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v3, v1, v2}, Lokio/a;->o(Lokio/a;J)J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {p4}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_4
    :goto_2
    invoke-static {p4}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object p2

    invoke-static {p1, p2}, Lokio/a;->r(Lokio/a;Lokio/a;)V

    .line 16
    invoke-static {p4, p1}, Lokio/a;->r(Lokio/a;Lokio/a;)V

    .line 17
    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object p1

    if-ne p4, p1, :cond_5

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 19
    :cond_5
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 20
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    const-string p1, "Unbalanced enter/exit"

    .line 21
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final c()Lokio/a;
    .locals 9

    .line 1
    const-class v0, Lokio/a;

    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3
    invoke-static {}, Lokio/a;->j()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 4
    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-static {}, Lokio/a;->k()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 5
    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object v2

    :cond_0
    return-object v2

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lokio/a;->o(Lokio/a;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const-wide/32 v5, 0xf4240

    .line 7
    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 8
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 9
    :cond_2
    invoke-static {}, Lokio/a;->i()Lokio/a;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lokio/a;->m(Lokio/a;)Lokio/a;

    move-result-object v3

    invoke-static {v0, v3}, Lokio/a;->r(Lokio/a;Lokio/a;)V

    .line 10
    invoke-static {v1, v2}, Lokio/a;->r(Lokio/a;Lokio/a;)V

    return-object v1
.end method
