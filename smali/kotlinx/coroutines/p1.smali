.class final synthetic Lkotlinx/coroutines/p1;
.super Ljava/lang/Object;
.source "Job.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/l1;)Lkotlinx/coroutines/w;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/n1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/n1;-><init>(Lkotlinx/coroutines/l1;)V

    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/l1;ILjava/lang/Object;)Lkotlinx/coroutines/w;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/o1;->a(Lkotlinx/coroutines/l1;)Lkotlinx/coroutines/w;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/f;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/l1;->c:Lkotlinx/coroutines/l1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/l1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lkotlinx/coroutines/l1;->A(Ljava/util/concurrent/CancellationException;)V

    :goto_0
    return-void
.end method

.method public static final d(Lkotlin/coroutines/f;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/l1;->c:Lkotlinx/coroutines/l1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/l1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/o1;->e(Lkotlinx/coroutines/l1;)V

    :goto_0
    return-void
.end method

.method public static final e(Lkotlinx/coroutines/l1;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/l1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/l1;->x()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method
