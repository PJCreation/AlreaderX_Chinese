.class public final Lkotlinx/coroutines/channels/s;
.super Lkotlinx/coroutines/channels/r;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/r<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final j:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TE;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/m;Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/m<",
            "-",
            "Lkotlin/m;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/r;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/m;)V

    .line 2
    iput-object p3, p0, Lkotlinx/coroutines/channels/s;->j:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public s()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/internal/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/s;->z()V

    const/4 v0, 0x1

    return v0
.end method

.method public z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/s;->j:Lkotlin/jvm/b/l;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/r;->x()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/channels/r;->i:Lkotlinx/coroutines/m;

    invoke-interface {v2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/s;->b(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)V

    return-void
.end method
