.class final synthetic Lkotlinx/coroutines/flow/z;
.super Ljava/lang/Object;
.source "Emitters.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/flow/k1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lkotlinx/coroutines/flow/k1;

    iget-object p0, p0, Lkotlinx/coroutines/flow/k1;->e:Ljava/lang/Throwable;

    throw p0
.end method
