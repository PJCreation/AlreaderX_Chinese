.class public final Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field synthetic e:Ljava/lang/Object;

.field f:I

.field final synthetic g:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1$1;->g:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1$1;->e:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1$1;->f:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1$1;->g:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
