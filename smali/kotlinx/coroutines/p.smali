.class public final Lkotlinx/coroutines/p;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# direct methods
.method public static final a(Lkotlin/coroutines/c;)Lkotlinx/coroutines/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TT;>;)",
            "Lkotlinx/coroutines/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkotlinx/coroutines/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/n;-><init>(Lkotlin/coroutines/c;I)V

    return-object v0

    .line 3
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/f;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/f;->o()Lkotlinx/coroutines/n;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-nez v0, :cond_3

    .line 4
    new-instance v0, Lkotlinx/coroutines/n;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/n;-><init>(Lkotlin/coroutines/c;I)V

    :cond_3
    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/m;Lkotlinx/coroutines/internal/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/m<",
            "*>;",
            "Lkotlinx/coroutines/internal/m;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/z1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/z1;-><init>(Lkotlinx/coroutines/internal/m;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/m;->h(Lkotlin/jvm/b/l;)V

    return-void
.end method
