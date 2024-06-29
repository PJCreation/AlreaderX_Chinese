.class public final Landroidx/work/OperationKt;
.super Ljava/lang/Object;
.source "Operation.kt"


# direct methods
.method public static final await(Landroidx/work/Operation;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Operation;",
            "Lkotlin/coroutines/c<",
            "-",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/work/OperationKt$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/work/OperationKt$await$1;

    iget v1, v0, Landroidx/work/OperationKt$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/work/OperationKt$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/work/OperationKt$await$1;

    invoke-direct {v0, p1}, Landroidx/work/OperationKt$await$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Landroidx/work/OperationKt$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Landroidx/work/OperationKt$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/work/OperationKt$await$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lb/a/b/a/a/a;

    invoke-static {p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lb/a/b/a/a/a;

    move-result-object p0

    const-string p1, "result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, p1

    :goto_1
    throw p0

    .line 5
    :cond_4
    iput-object p0, v0, Landroidx/work/OperationKt$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/work/OperationKt$await$1;->label:I

    .line 6
    new-instance p1, Lkotlinx/coroutines/n;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v2

    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/n;-><init>(Lkotlin/coroutines/c;I)V

    .line 7
    invoke-virtual {p1}, Lkotlinx/coroutines/n;->z()V

    .line 8
    new-instance v2, Landroidx/work/ListenableFutureKt$await$2$1;

    invoke-direct {v2, p1, p0}, Landroidx/work/ListenableFutureKt$await$2$1;-><init>(Lkotlinx/coroutines/m;Lb/a/b/a/a/a;)V

    .line 9
    sget-object v3, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 10
    invoke-interface {p0, v2, v3}, Lb/a/b/a/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    new-instance v2, Landroidx/work/ListenableFutureKt$await$2$2;

    invoke-direct {v2, p0}, Landroidx/work/ListenableFutureKt$await$2$2;-><init>(Lb/a/b/a/a/a;)V

    invoke-interface {p1, v2}, Lkotlinx/coroutines/m;->h(Lkotlin/jvm/b/l;)V

    .line 12
    invoke-virtual {p1}, Lkotlinx/coroutines/n;->w()Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_5

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_5
    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    move-object p0, p1

    :goto_3
    const-string p1, "result.await()"

    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final await$$forInline(Landroidx/work/Operation;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Operation;",
            "Lkotlin/coroutines/c<",
            "-",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lb/a/b/a/a/a;

    move-result-object p0

    const-string v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    throw p0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(I)V

    .line 6
    new-instance v0, Lkotlinx/coroutines/n;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/n;-><init>(Lkotlin/coroutines/c;I)V

    .line 7
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->z()V

    .line 8
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$1;

    invoke-direct {v1, v0, p0}, Landroidx/work/ListenableFutureKt$await$2$1;-><init>(Lkotlinx/coroutines/m;Lb/a/b/a/a/a;)V

    .line 9
    sget-object v3, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 10
    invoke-interface {p0, v1, v3}, Lb/a/b/a/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$2;

    invoke-direct {v1, p0}, Landroidx/work/ListenableFutureKt$await$2$2;-><init>(Lb/a/b/a/a/a;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/m;->h(Lkotlin/jvm/b/l;)V

    .line 12
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->w()Ljava/lang/Object;

    move-result-object p0

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(I)V

    :goto_1
    const-string p1, "result.await()"

    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
