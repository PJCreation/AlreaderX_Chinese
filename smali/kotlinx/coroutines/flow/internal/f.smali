.class final Lkotlinx/coroutines/flow/internal/f;
.super Ljava/lang/Object;
.source "SafeCollector.kt"

# interfaces
.implements Lkotlin/coroutines/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/flow/internal/f;

.field private static final f:Lkotlin/coroutines/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/internal/f;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/f;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/internal/f;->e:Lkotlinx/coroutines/flow/internal/f;

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    sput-object v0, Lkotlinx/coroutines/flow/internal/f;->f:Lkotlin/coroutines/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/f;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/f;->f:Lkotlin/coroutines/f;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
