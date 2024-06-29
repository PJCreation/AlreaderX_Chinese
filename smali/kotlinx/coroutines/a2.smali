.class Lkotlinx/coroutines/a2;
.super Lkotlinx/coroutines/c;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/c<",
        "Lkotlin/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/c;-><init>(Lkotlin/coroutines/f;ZZ)V

    return-void
.end method


# virtual methods
.method protected R(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/g0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
