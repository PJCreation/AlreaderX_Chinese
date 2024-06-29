.class public final Lkotlinx/coroutines/t0;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/t0;

.field private static final b:Lkotlinx/coroutines/e0;

.field private static final c:Lkotlinx/coroutines/e0;

.field private static final d:Lkotlinx/coroutines/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/t0;

    invoke-direct {v0}, Lkotlinx/coroutines/t0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/t0;->a:Lkotlinx/coroutines/t0;

    .line 1
    invoke-static {}, Lkotlinx/coroutines/d0;->a()Lkotlinx/coroutines/e0;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/t0;->b:Lkotlinx/coroutines/e0;

    .line 2
    sget-object v0, Lkotlinx/coroutines/d2;->f:Lkotlinx/coroutines/d2;

    sput-object v0, Lkotlinx/coroutines/t0;->c:Lkotlinx/coroutines/e0;

    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->l:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/a;->O()Lkotlinx/coroutines/e0;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/t0;->d:Lkotlinx/coroutines/e0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/e0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/t0;->b:Lkotlinx/coroutines/e0;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/e0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/t0;->d:Lkotlinx/coroutines/e0;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/u1;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/p;->c:Lkotlinx/coroutines/u1;

    return-object v0
.end method
