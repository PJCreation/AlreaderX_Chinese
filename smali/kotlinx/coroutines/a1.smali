.class public final Lkotlinx/coroutines/a1;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/x;

.field private static final b:Lkotlinx/coroutines/internal/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/x;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/a1;->a:Lkotlinx/coroutines/internal/x;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/x;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/a1;->b:Lkotlinx/coroutines/internal/x;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/x;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/a1;->b:Lkotlinx/coroutines/internal/x;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/x;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/a1;->a:Lkotlinx/coroutines/internal/x;

    return-object v0
.end method
