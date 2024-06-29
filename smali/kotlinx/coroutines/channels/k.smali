.class public Lkotlinx/coroutines/channels/k;
.super Lkotlinx/coroutines/channels/a;
.source "LinkedListChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/a;-><init>(Lkotlin/jvm/b/l;)V

    return-void
.end method


# virtual methods
.method protected final E()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final F()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/c;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/x;

    if-ne v0, v1, :cond_1

    return-object v1

    .line 3
    :cond_1
    sget-object v2, Lkotlinx/coroutines/channels/b;->c:Lkotlinx/coroutines/internal/x;

    if-ne v0, v2, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->w(Ljava/lang/Object;)Lkotlinx/coroutines/channels/n;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/channels/i;

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_3
    instance-of p1, v0, Lkotlinx/coroutines/channels/i;

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    const-string p1, "Invalid offerInternal result "

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method
