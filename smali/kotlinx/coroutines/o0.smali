.class public final Lkotlinx/coroutines/o0;
.super Lkotlinx/coroutines/x0;
.source "DefaultExecutor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final k:Lkotlinx/coroutines/o0;

.field private static final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/coroutines/o0;

    invoke-direct {v0}, Lkotlinx/coroutines/o0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/o0;->k:Lkotlinx/coroutines/o0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/w0;->R(Lkotlinx/coroutines/w0;ZILjava/lang/Object;)V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 3
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/o0;->l:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/x0;-><init>()V

    return-void
.end method

.method private final declared-synchronized n0()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/o0;->p0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    :try_start_1
    sput v0, Lkotlinx/coroutines/o0;->debugStatus:I

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->i0()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized o0()Ljava/lang/Thread;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/o0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    sput-object v0, Lkotlinx/coroutines/o0;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final p0()Z
    .locals 2

    .line 1
    sget v0, Lkotlinx/coroutines/o0;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final declared-synchronized q0()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/o0;->p0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    sput v0, Lkotlinx/coroutines/o0;->debugStatus:I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected W()Ljava/lang/Thread;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/o0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/o0;->o0()Ljava/lang/Thread;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public run()V
    .locals 12

    .line 1
    sget-object v0, Lkotlinx/coroutines/c2;->a:Lkotlinx/coroutines/c2;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/c2;->c(Lkotlinx/coroutines/w0;)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/e;->a()Lkotlinx/coroutines/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 3
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/o0;->q0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 4
    sput-object v1, Lkotlinx/coroutines/o0;->_thread:Ljava/lang/Thread;

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/o0;->n0()V

    .line 6
    invoke-static {}, Lkotlinx/coroutines/e;->a()Lkotlinx/coroutines/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/o0;->W()Ljava/lang/Thread;

    :cond_0
    return-void

    .line 8
    :cond_1
    throw v1

    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    move-wide v4, v2

    .line 9
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->g0()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v2

    if-nez v0, :cond_9

    .line 11
    invoke-static {}, Lkotlinx/coroutines/e;->a()Lkotlinx/coroutines/d;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    cmp-long v0, v4, v2

    if-nez v0, :cond_4

    .line 12
    sget-wide v4, Lkotlinx/coroutines/o0;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v4, v10

    :cond_4
    sub-long v10, v4, v10

    cmp-long v0, v10, v8

    if-gtz v0, :cond_7

    .line 13
    sput-object v1, Lkotlinx/coroutines/o0;->_thread:Ljava/lang/Thread;

    .line 14
    invoke-direct {p0}, Lkotlinx/coroutines/o0;->n0()V

    .line 15
    invoke-static {}, Lkotlinx/coroutines/e;->a()Lkotlinx/coroutines/d;

    move-result-object v0

    if-nez v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->f0()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lkotlinx/coroutines/o0;->W()Ljava/lang/Thread;

    :cond_5
    return-void

    .line 17
    :cond_6
    throw v1

    .line 18
    :cond_7
    :try_start_2
    invoke-static {v6, v7, v10, v11}, Lkotlin/o/m;->e(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 19
    :cond_8
    throw v1

    :cond_9
    move-wide v4, v2

    :goto_1
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 20
    invoke-direct {p0}, Lkotlinx/coroutines/o0;->p0()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_c

    .line 21
    sput-object v1, Lkotlinx/coroutines/o0;->_thread:Ljava/lang/Thread;

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/o0;->n0()V

    .line 23
    invoke-static {}, Lkotlinx/coroutines/e;->a()Lkotlinx/coroutines/d;

    move-result-object v0

    if-nez v0, :cond_b

    .line 24
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->f0()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lkotlinx/coroutines/o0;->W()Ljava/lang/Thread;

    :cond_a
    return-void

    .line 25
    :cond_b
    throw v1

    .line 26
    :cond_c
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/e;->a()Lkotlinx/coroutines/d;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {p0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_d
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 27
    sput-object v1, Lkotlinx/coroutines/o0;->_thread:Ljava/lang/Thread;

    .line 28
    invoke-direct {p0}, Lkotlinx/coroutines/o0;->n0()V

    .line 29
    invoke-static {}, Lkotlinx/coroutines/e;->a()Lkotlinx/coroutines/d;

    move-result-object v2

    if-nez v2, :cond_f

    .line 30
    invoke-virtual {p0}, Lkotlinx/coroutines/x0;->f0()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lkotlinx/coroutines/o0;->W()Ljava/lang/Thread;

    :cond_e
    throw v0

    .line 31
    :cond_f
    throw v1

    .line 32
    :cond_10
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
