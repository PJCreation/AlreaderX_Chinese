.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final f:Lkotlinx/coroutines/scheduling/l;

.field public g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field private h:J

.field private i:J

.field private volatile indexInArray:I

.field private j:I

.field public k:Z

.field final synthetic l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field volatile synthetic workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3
    new-instance p1, Lkotlinx/coroutines/scheduling/l;

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/l;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    .line 4
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->workerCtl:I

    .line 6
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Lkotlinx/coroutines/internal/x;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->nextParkedWorker:Ljava/lang/Object;

    .line 7
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->j:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V

    .line 9
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->n(I)V

    return-void
.end method

.method private final a(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq p1, v0, :cond_4

    .line 5
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_4
    return-void
.end method

.method private final b(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->r(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->J()V

    :cond_1
    return-void
.end method

.method private final c(Lkotlinx/coroutines/scheduling/h;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->F()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->h(I)V

    .line 3
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->b(I)V

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->E(Lkotlinx/coroutines/scheduling/h;)V

    .line 5
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->a(I)V

    return-void
.end method

.method private final d(Z)Lkotlinx/coroutines/scheduling/h;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->j(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l()Lkotlinx/coroutines/scheduling/h;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    .line 3
    :cond_2
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/l;->h()Lkotlinx/coroutines/scheduling/h;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_6

    .line 4
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return-object p1

    :cond_4
    return-object v1

    .line 5
    :cond_5
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-nez p1, :cond_7

    .line 6
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->s(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method private final h(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->h:J

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_3

    .line 3
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_3
    return-void
.end method

.method private final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Lkotlinx/coroutines/internal/x;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final k()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v4, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->h:J

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->h:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 4
    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->h:J

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->t()V

    :cond_1
    return-void
.end method

.method private final l()Lkotlinx/coroutines/scheduling/h;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->j(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    :cond_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    :cond_2
    return-object v0
.end method

.method private final m()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 1
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->v()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v2, v3, :cond_3

    .line 2
    iget-boolean v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->k:Z

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->e(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    iput-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->i:J

    .line 4
    invoke-direct {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->c(Lkotlinx/coroutines/scheduling/h;)V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->k:Z

    .line 6
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->i:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->r(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 9
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->i:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 10
    iput-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->i:J

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->q()V

    goto :goto_1

    .line 12
    :cond_3
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->r(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    return-void
.end method

.method private final p()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 3
    :cond_1
    iget-wide v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v1, 0x2a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    .line 4
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_0

    :cond_3
    :goto_2
    return v2
.end method

.method private final q()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;)Z

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/l;->f()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->workerCtl:I

    .line 5
    :goto_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->workerCtl:I

    if-ne v1, v0, :cond_5

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->v()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v1, v2, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->r(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 9
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->k()V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private final s(Z)Lkotlinx/coroutines/scheduling/h;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/l;->f()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2
    :cond_2
    :goto_1
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 3
    iget-wide v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v1, v4, :cond_3

    return-object v5

    .line 4
    :cond_3
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->j(I)I

    move-result v4

    .line 5
    iget-object v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-wide v7, 0x7fffffffffffffffL

    move-wide v10, v7

    const/4 v9, 0x0

    :goto_2
    const-wide/16 v12, 0x0

    if-ge v9, v1, :cond_b

    add-int/2addr v4, v3

    if-le v4, v1, :cond_4

    const/4 v4, 0x1

    .line 6
    :cond_4
    iget-object v14, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v14, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;

    if-eqz v14, :cond_a

    if-eq v14, v0, :cond_a

    .line 7
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v15}, Lkotlinx/coroutines/scheduling/l;->f()I

    move-result v15

    if-nez v15, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 8
    iget-object v15, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    iget-object v14, v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v15, v14}, Lkotlinx/coroutines/scheduling/l;->k(Lkotlinx/coroutines/scheduling/l;)J

    move-result-wide v14

    goto :goto_5

    .line 9
    :cond_8
    iget-object v15, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    iget-object v14, v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v15, v14}, Lkotlinx/coroutines/scheduling/l;->l(Lkotlinx/coroutines/scheduling/l;)J

    move-result-wide v14

    :goto_5
    const-wide/16 v16, -0x1

    cmp-long v18, v14, v16

    if-nez v18, :cond_9

    .line 10
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/l;->h()Lkotlinx/coroutines/scheduling/h;

    move-result-object v1

    return-object v1

    :cond_9
    cmp-long v16, v14, v12

    if-lez v16, :cond_a

    .line 11
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_b
    cmp-long v1, v10, v7

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move-wide v10, v12

    .line 12
    :goto_6
    iput-wide v10, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->i:J

    return-object v5
.end method

.method private final t()V
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->v()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-wide v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v3, v2

    .line 5
    iget v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, v2, :cond_1

    monitor-exit v1

    return-void

    .line 6
    :cond_1
    :try_start_2
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    .line 7
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f()I

    move-result v2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->n(I)V

    .line 9
    invoke-virtual {v0, p0, v2, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->B(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;II)V

    .line 10
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v4, v6

    long-to-int v3, v4

    if-eq v3, v2, :cond_3

    .line 11
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;

    .line 12
    iget-object v5, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v4, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->n(I)V

    .line 14
    invoke-virtual {v0, v4, v3, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->B(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;II)V

    .line 15
    :cond_3
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 17
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-void

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final e(Z)Lkotlinx/coroutines/scheduling/h;
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->d(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->f:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/l;->h()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->s(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->indexInArray:I

    return v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final j(I)I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->j:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 2
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->j:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 3
    rem-int/2addr v0, p1

    return v0
.end method

.method public final n(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->indexInArray:I

    return-void
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final r(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 4
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    return v1
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;->m()V

    return-void
.end method
