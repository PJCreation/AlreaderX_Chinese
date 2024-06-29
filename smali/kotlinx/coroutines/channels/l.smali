.class public abstract Lkotlinx/coroutines/channels/l;
.super Lkotlinx/coroutines/internal/m;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/m;",
        "Lkotlinx/coroutines/channels/n<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->w()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    return-object v0
.end method

.method public w()Lkotlinx/coroutines/internal/x;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/x;

    return-object v0
.end method

.method public x(Ljava/lang/Object;)Lkotlin/jvm/b/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract y(Lkotlinx/coroutines/channels/i;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/i<",
            "*>;)V"
        }
    .end annotation
.end method
