.class public final Lkotlinx/coroutines/l0;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"


# direct methods
.method public static final a(Lkotlin/coroutines/f;)Lkotlinx/coroutines/k0;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/e;

    sget-object v1, Lkotlinx/coroutines/l1;->c:Lkotlinx/coroutines/l1$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/o1;->b(Lkotlinx/coroutines/l1;ILjava/lang/Object;)Lkotlinx/coroutines/w;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/coroutines/f;->plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/e;-><init>(Lkotlin/coroutines/f;)V

    return-object v0
.end method
