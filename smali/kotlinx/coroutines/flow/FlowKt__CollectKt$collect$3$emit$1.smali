.class public final Lkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Collect.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field synthetic e:Ljava/lang/Object;

.field f:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/q;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/q;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1;->e:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1;->f:I

    const/4 p1, 0x0

    throw p1
.end method
