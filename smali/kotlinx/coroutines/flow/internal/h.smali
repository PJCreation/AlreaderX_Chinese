.class public final Lkotlinx/coroutines/flow/internal/h;
.super Ljava/lang/Object;
.source "SafeCollector.kt"


# static fields
.field private static final a:Lkotlin/jvm/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/q<",
            "Lkotlinx/coroutines/flow/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
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
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/h$a;->e:Lkotlinx/coroutines/flow/internal/h$a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/o;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/b/q;

    sput-object v0, Lkotlinx/coroutines/flow/internal/h;->a:Lkotlin/jvm/b/q;

    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/b/q;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/h;->a:Lkotlin/jvm/b/q;

    return-object v0
.end method
