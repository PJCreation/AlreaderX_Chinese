.class public final Lkotlinx/coroutines/c2;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/c2;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lkotlinx/coroutines/w0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/c2;

    invoke-direct {v0}, Lkotlinx/coroutines/c2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/c2;->a:Lkotlinx/coroutines/c2;

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkotlinx/coroutines/c2;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/w0;
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/c2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/w0;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/z0;->a()Lkotlinx/coroutines/w0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/c2;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lkotlinx/coroutines/w0;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/c2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
