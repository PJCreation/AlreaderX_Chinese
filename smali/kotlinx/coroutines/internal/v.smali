.class public Lkotlinx/coroutines/internal/v;
.super Lkotlinx/coroutines/c;
.source "Scopes.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/c<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/c;"
    }
.end annotation


# instance fields
.field public final g:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/f;",
            "Lkotlin/coroutines/c<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/c;-><init>(Lkotlin/coroutines/f;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/internal/v;->g:Lkotlin/coroutines/c;

    return-void
.end method


# virtual methods
.method protected final V()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/v;->g:Lkotlin/coroutines/c;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/c;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected r(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/v;->g:Lkotlin/coroutines/c;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/v;->g:Lkotlin/coroutines/c;

    invoke-static {p1, v1}, Lkotlinx/coroutines/b0;->a(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lkotlinx/coroutines/internal/g;->c(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    return-void
.end method

.method protected u0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/v;->g:Lkotlin/coroutines/c;

    invoke-static {p1, v0}, Lkotlinx/coroutines/b0;->a(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final y0()Lkotlinx/coroutines/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/r1;->P()Lkotlinx/coroutines/s;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/s;->getParent()Lkotlinx/coroutines/l1;

    move-result-object v0

    :goto_0
    return-object v0
.end method
