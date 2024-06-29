.class public final Landroidx/work/ListenableFutureKt;
.super Ljava/lang/Object;
.source "ListenableFuture.kt"


# direct methods
.method public static final await(Lb/a/b/a/a/a;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/b/a/a/a<",
            "TR;>;",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    throw p0

    .line 4
    :cond_1
    new-instance v0, Lkotlinx/coroutines/n;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/n;-><init>(Lkotlin/coroutines/c;I)V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->z()V

    .line 6
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$1;

    invoke-direct {v1, v0, p0}, Landroidx/work/ListenableFutureKt$await$2$1;-><init>(Lkotlinx/coroutines/m;Lb/a/b/a/a/a;)V

    .line 7
    sget-object v2, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 8
    invoke-interface {p0, v1, v2}, Lb/a/b/a/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 9
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$2;

    invoke-direct {v1, p0}, Landroidx/work/ListenableFutureKt$await$2$2;-><init>(Lb/a/b/a/a/a;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/m;->h(Lkotlin/jvm/b/l;)V

    .line 10
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->w()Ljava/lang/Object;

    move-result-object p0

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_2
    return-object p0
.end method

.method private static final await$$forInline(Lb/a/b/a/a/a;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/b/a/a/a<",
            "TR;>;",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
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

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(I)V

    .line 5
    new-instance v0, Lkotlinx/coroutines/n;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/n;-><init>(Lkotlin/coroutines/c;I)V

    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->z()V

    .line 7
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$1;

    invoke-direct {v1, v0, p0}, Landroidx/work/ListenableFutureKt$await$2$1;-><init>(Lkotlinx/coroutines/m;Lb/a/b/a/a/a;)V

    .line 8
    sget-object v3, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 9
    invoke-interface {p0, v1, v3}, Lb/a/b/a/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 10
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$2;

    invoke-direct {v1, p0}, Landroidx/work/ListenableFutureKt$await$2$2;-><init>(Lb/a/b/a/a/a;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/m;->h(Lkotlin/jvm/b/l;)V

    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->w()Ljava/lang/Object;

    move-result-object p0

    .line 12
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(I)V

    return-object p0
.end method
