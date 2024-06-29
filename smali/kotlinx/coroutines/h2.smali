.class public final Lkotlinx/coroutines/h2;
.super Ljava/lang/Object;
.source "Yield.kt"


# direct methods
.method public static final a(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlinx/coroutines/o1;->d(Lkotlin/coroutines/f;)V

    .line 3
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/f;

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/internal/f;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, Lkotlin/m;->a:Lkotlin/m;

    goto :goto_2

    .line 4
    :cond_1
    iget-object v2, v1, Lkotlinx/coroutines/internal/f;->i:Lkotlinx/coroutines/e0;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/e0;->L(Lkotlin/coroutines/f;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lkotlin/m;->a:Lkotlin/m;

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/internal/f;->p(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Lkotlinx/coroutines/g2;

    invoke-direct {v2}, Lkotlinx/coroutines/g2;-><init>()V

    .line 7
    invoke-interface {v0, v2}, Lkotlin/coroutines/f;->plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object v0

    sget-object v3, Lkotlin/m;->a:Lkotlin/m;

    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/internal/f;->p(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, v2, Lkotlinx/coroutines/g2;->f:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-static {v1}, Lkotlinx/coroutines/internal/g;->d(Lkotlinx/coroutines/internal/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    return-object v0

    :cond_6
    sget-object p0, Lkotlin/m;->a:Lkotlin/m;

    return-object p0
.end method
