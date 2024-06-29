.class public Lkotlinx/coroutines/scheduling/b;
.super Lkotlinx/coroutines/c1;
.source "Dispatcher.kt"


# instance fields
.field private final g:I

.field private final h:I

.field private final i:J

.field private final j:Ljava/lang/String;

.field private k:Lkotlinx/coroutines/scheduling/CoroutineScheduler;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/c1;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->g:I

    .line 3
    iput p2, p0, Lkotlinx/coroutines/scheduling/b;->h:I

    .line 4
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/b;->i:J

    .line 5
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/b;->j:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/b;->M()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->k:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    .line 10
    sget-wide v3, Lkotlinx/coroutines/scheduling/k;->e:J

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/b;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/jvm/internal/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 7
    sget p1, Lkotlinx/coroutines/scheduling/k;->c:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 8
    sget p2, Lkotlinx/coroutines/scheduling/k;->d:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const-string p3, "DefaultDispatcher"

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/b;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private final M()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .locals 7

    .line 1
    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget v1, p0, Lkotlinx/coroutines/scheduling/b;->g:I

    iget v2, p0, Lkotlinx/coroutines/scheduling/b;->h:I

    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/b;->i:J

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/b;->j:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public J(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->k:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lkotlinx/coroutines/o0;->k:Lkotlinx/coroutines/o0;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/x0;->J(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public K(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->k:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lkotlinx/coroutines/o0;->k:Lkotlinx/coroutines/o0;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/e0;->K(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final N(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->k:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object p3, Lkotlinx/coroutines/o0;->k:Lkotlinx/coroutines/o0;

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->k:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkotlinx/coroutines/x0;->c0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
