.class final synthetic Lkotlinx/coroutines/j;
.super Ljava/lang/Object;
.source "Builders.common.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/k0;Lkotlin/coroutines/f;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/l1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/f;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlinx/coroutines/k0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/l1;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/d0;->c(Lkotlinx/coroutines/k0;Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p0

    .line 2
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lkotlinx/coroutines/t1;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/t1;-><init>(Lkotlin/coroutines/f;Lkotlin/jvm/b/p;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lkotlinx/coroutines/a2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/a2;-><init>(Lkotlin/coroutines/f;Z)V

    .line 5
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/c;->x0(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/b/p;)V

    return-object p1
.end method

.method public static synthetic b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/f;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/l1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 3
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/i;->a(Lkotlinx/coroutines/k0;Lkotlin/coroutines/f;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/l1;

    move-result-object p0

    return-object p0
.end method
