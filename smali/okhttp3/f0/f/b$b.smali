.class public final Lokhttp3/f0/f/b$b;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final a:J

.field private final b:Lokhttp3/a0;

.field private final c:Lokhttp3/c0;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLokhttp3/a0;Lokhttp3/c0;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lokhttp3/f0/f/b$b;->a:J

    .line 3
    iput-object p3, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    .line 4
    iput-object p4, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lokhttp3/f0/f/b$b;->l:I

    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p4}, Lokhttp3/c0;->N()J

    move-result-wide p2

    iput-wide p2, p0, Lokhttp3/f0/f/b$b;->i:J

    .line 7
    invoke-virtual {p4}, Lokhttp3/c0;->L()J

    move-result-wide p2

    iput-wide p2, p0, Lokhttp3/f0/f/b$b;->j:J

    .line 8
    invoke-virtual {p4}, Lokhttp3/c0;->A()Lokhttp3/v;

    move-result-object p2

    const/4 p3, 0x0

    .line 9
    invoke-virtual {p2}, Lokhttp3/v;->size()I

    move-result p4

    :goto_0
    if-ge p3, p4, :cond_5

    add-int/lit8 v0, p3, 0x1

    .line 10
    invoke-virtual {p2, p3}, Lokhttp3/v;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p2, p3}, Lokhttp3/v;->g(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Date"

    const/4 v3, 0x1

    .line 12
    invoke-static {v1, v2, v3}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-static {p3}, Lokhttp3/f0/h/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/f0/f/b$b;->d:Ljava/util/Date;

    .line 14
    iput-object p3, p0, Lokhttp3/f0/f/b$b;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    .line 15
    invoke-static {v1, v2, v3}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-static {p3}, Lokhttp3/f0/h/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    iput-object p3, p0, Lokhttp3/f0/f/b$b;->h:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    .line 17
    invoke-static {v1, v2, v3}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-static {p3}, Lokhttp3/f0/h/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/f0/f/b$b;->f:Ljava/util/Date;

    .line 19
    iput-object p3, p0, Lokhttp3/f0/f/b$b;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    .line 20
    invoke-static {v1, v2, v3}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    iput-object p3, p0, Lokhttp3/f0/f/b$b;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    .line 22
    invoke-static {v1, v2, v3}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23
    invoke-static {p3, p1}, Lokhttp3/f0/d;->T(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lokhttp3/f0/f/b$b;->l:I

    :cond_4
    :goto_1
    move p3, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final a()J
    .locals 9

    .line 1
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v3, p0, Lokhttp3/f0/f/b$b;->j:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3
    :cond_0
    iget v0, p0, Lokhttp3/f0/f/b$b;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 5
    :cond_1
    iget-wide v3, p0, Lokhttp3/f0/f/b$b;->j:J

    iget-wide v5, p0, Lokhttp3/f0/f/b$b;->i:J

    sub-long v5, v3, v5

    .line 6
    iget-wide v7, p0, Lokhttp3/f0/f/b$b;->a:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private final c()Lokhttp3/f0/f/b;
    .locals 13

    .line 1
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lokhttp3/f0/f/b;

    iget-object v2, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-direct {v0, v2, v1}, Lokhttp3/f0/f/b;-><init>(Lokhttp3/a0;Lokhttp3/c0;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-virtual {v0}, Lokhttp3/a0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    invoke-virtual {v0}, Lokhttp3/c0;->v()Lokhttp3/u;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lokhttp3/f0/f/b;

    iget-object v2, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-direct {v0, v2, v1}, Lokhttp3/f0/f/b;-><init>(Lokhttp3/a0;Lokhttp3/c0;)V

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lokhttp3/f0/f/b;->a:Lokhttp3/f0/f/b$a;

    iget-object v2, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    iget-object v3, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-virtual {v0, v2, v3}, Lokhttp3/f0/f/b$a;->a(Lokhttp3/c0;Lokhttp3/a0;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lokhttp3/f0/f/b;

    iget-object v2, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-direct {v0, v2, v1}, Lokhttp3/f0/f/b;-><init>(Lokhttp3/a0;Lokhttp3/c0;)V

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-virtual {v0}, Lokhttp3/a0;->b()Lokhttp3/e;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokhttp3/e;->h()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-direct {p0, v2}, Lokhttp3/f0/f/b$b;->e(Lokhttp3/a0;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    .line 9
    :cond_3
    iget-object v2, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    invoke-virtual {v2}, Lokhttp3/c0;->e()Lokhttp3/e;

    move-result-object v2

    .line 10
    invoke-direct {p0}, Lokhttp3/f0/f/b$b;->a()J

    move-result-wide v3

    .line 11
    invoke-direct {p0}, Lokhttp3/f0/f/b$b;->d()J

    move-result-wide v5

    .line 12
    invoke-virtual {v0}, Lokhttp3/e;->d()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 13
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/e;->d()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 14
    :cond_4
    invoke-virtual {v0}, Lokhttp3/e;->f()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_5

    .line 15
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/e;->f()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_0

    :cond_5
    move-wide v11, v9

    .line 16
    :goto_0
    invoke-virtual {v2}, Lokhttp3/e;->g()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lokhttp3/e;->e()I

    move-result v7

    if-eq v7, v8, :cond_6

    .line 17
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/e;->e()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 18
    :cond_6
    invoke-virtual {v2}, Lokhttp3/e;->h()Z

    move-result v0

    if-nez v0, :cond_9

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_9

    .line 19
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    invoke-virtual {v0}, Lokhttp3/c0;->I()Lokhttp3/c0$a;

    move-result-object v0

    const-string v2, "Warning"

    cmp-long v7, v11, v5

    if-ltz v7, :cond_7

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    .line 20
    invoke-virtual {v0, v2, v5}, Lokhttp3/c0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/c0$a;

    :cond_7
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 21
    invoke-direct {p0}, Lokhttp3/f0/f/b$b;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    .line 22
    invoke-virtual {v0, v2, v3}, Lokhttp3/c0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/c0$a;

    .line 23
    :cond_8
    new-instance v2, Lokhttp3/f0/f/b;

    invoke-virtual {v0}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lokhttp3/f0/f/b;-><init>(Lokhttp3/a0;Lokhttp3/c0;)V

    return-object v2

    .line 24
    :cond_9
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->k:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_a

    const-string v2, "If-None-Match"

    goto :goto_1

    .line 25
    :cond_a
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->f:Ljava/util/Date;

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->g:Ljava/lang/String;

    goto :goto_1

    .line 27
    :cond_b
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->d:Ljava/util/Date;

    if-eqz v0, :cond_c

    .line 28
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->e:Ljava/lang/String;

    .line 29
    :goto_1
    iget-object v1, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-virtual {v1}, Lokhttp3/a0;->e()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->e()Lokhttp3/v$a;

    move-result-object v1

    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Lokhttp3/v$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    .line 31
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-virtual {v0}, Lokhttp3/a0;->h()Lokhttp3/a0$a;

    move-result-object v0

    .line 32
    invoke-virtual {v1}, Lokhttp3/v$a;->d()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/a0$a;->i(Lokhttp3/v;)Lokhttp3/a0$a;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lokhttp3/a0$a;->b()Lokhttp3/a0;

    move-result-object v0

    .line 34
    new-instance v1, Lokhttp3/f0/f/b;

    iget-object v2, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    invoke-direct {v1, v0, v2}, Lokhttp3/f0/f/b;-><init>(Lokhttp3/a0;Lokhttp3/c0;)V

    return-object v1

    .line 35
    :cond_c
    new-instance v0, Lokhttp3/f0/f/b;

    iget-object v2, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-direct {v0, v2, v1}, Lokhttp3/f0/f/b;-><init>(Lokhttp3/a0;Lokhttp3/c0;)V

    return-object v0

    .line 36
    :cond_d
    :goto_2
    new-instance v0, Lokhttp3/f0/f/b;

    iget-object v2, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-direct {v0, v2, v1}, Lokhttp3/f0/f/b;-><init>(Lokhttp3/a0;Lokhttp3/c0;)V

    return-object v0
.end method

.method private final d()J
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/c0;->e()Lokhttp3/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/e;->d()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/e;->d()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->h:Ljava/util/Date;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    .line 5
    iget-object v4, p0, Lokhttp3/f0/f/b$b;->d:Ljava/util/Date;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    iget-wide v4, p0, Lokhttp3/f0/f/b$b;->j:J

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    move-wide v2, v0

    :cond_3
    return-wide v2

    .line 7
    :cond_4
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->f:Ljava/util/Date;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    invoke-virtual {v0}, Lokhttp3/c0;->M()Lokhttp3/a0;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/w;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 8
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->d:Ljava/util/Date;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_6

    iget-wide v0, p0, Lokhttp3/f0/f/b$b;->i:J

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 9
    :goto_3
    iget-object v4, p0, Lokhttp3/f0/f/b$b;->f:Ljava/util/Date;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    const/16 v2, 0xa

    int-to-long v2, v2

    .line 10
    div-long v2, v0, v2

    :cond_7
    return-wide v2
.end method

.method private final e(Lokhttp3/a0;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    .line 1
    invoke-virtual {p1, v0}, Lokhttp3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p1, v0}, Lokhttp3/a0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/f0/f/b$b;->c:Lokhttp3/c0;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/c0;->e()Lokhttp3/e;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/e;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/f0/f/b$b;->h:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final b()Lokhttp3/f0/f/b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lokhttp3/f0/f/b$b;->c()Lokhttp3/f0/f/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/f0/f/b;->b()Lokhttp3/a0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/f0/f/b$b;->b:Lokhttp3/a0;

    invoke-virtual {v1}, Lokhttp3/a0;->b()Lokhttp3/e;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/e;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lokhttp3/f0/f/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lokhttp3/f0/f/b;-><init>(Lokhttp3/a0;Lokhttp3/c0;)V

    :cond_0
    return-object v0
.end method
