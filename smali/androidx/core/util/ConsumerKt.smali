.class public final Landroidx/core/util/ConsumerKt;
.super Ljava/lang/Object;
.source "Consumer.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method public static final asConsumer(Lkotlin/coroutines/c;)Ljava/util/function/Consumer;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/core/util/ContinuationConsumer;

    invoke-direct {v0, p0}, Landroidx/core/util/ContinuationConsumer;-><init>(Lkotlin/coroutines/c;)V

    return-object v0
.end method
