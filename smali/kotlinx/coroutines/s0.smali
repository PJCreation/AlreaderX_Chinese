.class final Lkotlinx/coroutines/s0;
.super Ljava/lang/Object;
.source "Executors.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final e:Lkotlinx/coroutines/e0;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/s0;->e:Lkotlinx/coroutines/e0;

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/e0;->J(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/s0;->e:Lkotlinx/coroutines/e0;

    invoke-virtual {v0}, Lkotlinx/coroutines/e0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
