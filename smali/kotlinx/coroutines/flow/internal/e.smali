.class public final Lkotlinx/coroutines/flow/internal/e;
.super Ljava/lang/Object;
.source "FlowCoroutine.kt"


# direct methods
.method public static final a(Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlinx/coroutines/k0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/internal/d;

    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/flow/internal/d;-><init>(Lkotlin/coroutines/f;Lkotlin/coroutines/c;)V

    .line 2
    invoke-static {v0, v0, p0}, Lkotlinx/coroutines/i2/b;->c(Lkotlinx/coroutines/internal/v;Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_0
    return-object p0
.end method
