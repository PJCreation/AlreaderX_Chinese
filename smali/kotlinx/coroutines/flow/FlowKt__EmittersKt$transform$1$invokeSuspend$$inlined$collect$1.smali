.class public final Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lkotlin/jvm/b/q;

.field final synthetic f:Lkotlinx/coroutines/flow/d;


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/q;Lkotlinx/coroutines/flow/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->e:Lkotlin/jvm/b/q;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->f:Lkotlinx/coroutines/flow/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->e:Lkotlin/jvm/b/q;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1;->f:Lkotlinx/coroutines/flow/d;

    invoke-interface {v0, v1, p1, p2}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method
