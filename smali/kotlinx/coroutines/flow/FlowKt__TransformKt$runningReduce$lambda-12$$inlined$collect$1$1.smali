.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1"
    f = "Transform.kt"
    l = {
        0x8a,
        0x8c
    }
    m = "emit"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field synthetic e:Ljava/lang/Object;

.field f:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/d1;Lkotlin/coroutines/c;)V
    .locals 0

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->e:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningReduce$lambda-12$$inlined$collect$1$1;->f:I

    const/4 p1, 0x0

    throw p1
.end method
