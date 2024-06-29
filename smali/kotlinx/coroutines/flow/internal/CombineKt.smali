.class public final Lkotlinx/coroutines/flow/internal/CombineKt;
.super Ljava/lang/Object;
.source "Combine.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/d;[Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/a;Lkotlin/jvm/b/q;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/d<",
            "-TR;>;[",
            "Lkotlinx/coroutines/flow/c<",
            "+TT;>;",
            "Lkotlin/jvm/b/a<",
            "[TT;>;",
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
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/a;Lkotlin/jvm/b/q;Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)V

    invoke-static {v6, p4}, Lkotlinx/coroutines/flow/internal/e;->a(Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/m;->a:Lkotlin/m;

    return-object p0
.end method
