.class public final Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Zip.kt"

# interfaces
.implements Lkotlin/jvm/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/q<",
        "Lkotlinx/coroutines/flow/d<",
        "-TR;>;[TT;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2"
    f = "Zip.kt"
    l = {
        0x134
    }
    m = "invokeSuspend"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field e:I

.field private synthetic f:Ljava/lang/Object;

.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Lkotlin/jvm/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/q<",
            "Lkotlinx/coroutines/flow/d<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/q;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/q<",
            "-",
            "Lkotlinx/coroutines/flow/d<",
            "-TR;>;-[TT;-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->h:Lkotlin/jvm/b/q;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/d;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->invoke(Lkotlinx/coroutines/flow/d;[Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/d;[Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/d<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->h:Lkotlin/jvm/b/q;

    invoke-direct {v0, v1, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;-><init>(Lkotlin/jvm/b/q;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->f:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->g:Ljava/lang/Object;

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->f:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/d;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->g:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->h:Lkotlin/jvm/b/q;

    const/4 v4, 0x0

    iput-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->f:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->e:I

    invoke-interface {v3, p1, v1, p0}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->f:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/d;

    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->g:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;->h:Lkotlin/jvm/b/q;

    invoke-interface {v1, p1, v0, p0}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method
