.class public final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic e:Lkotlinx/coroutines/channels/e;

.field final synthetic f:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/e;I)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1;->e:Lkotlinx/coroutines/channels/e;

    iput p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1;->f:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;-><init>(Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
    invoke-static {p2}, Lkotlin/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {p2}, Lkotlin/i;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1;->e:Lkotlinx/coroutines/channels/e;

    new-instance v2, Lkotlin/collections/c0;

    iget v5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1;->f:I

    invoke-direct {v2, v5, p1}, Lkotlin/collections/c0;-><init>(ILjava/lang/Object;)V

    iput v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;->f:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/channels/q;->d(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_1
    iput v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1;->f:I

    invoke-static {v0}, Lkotlinx/coroutines/h2;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method
