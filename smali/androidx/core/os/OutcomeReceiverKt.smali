.class public final Landroidx/core/os/OutcomeReceiverKt;
.super Ljava/lang/Object;
.source "OutcomeReceiver.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method public static final asOutcomeReceiver(Lkotlin/coroutines/c;)Landroid/os/OutcomeReceiver;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Landroid/os/OutcomeReceiver<",
            "TR;TE;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/core/os/ContinuationOutcomeReceiver;

    invoke-direct {v0, p0}, Landroidx/core/os/ContinuationOutcomeReceiver;-><init>(Lkotlin/coroutines/c;)V

    return-object v0
.end method
