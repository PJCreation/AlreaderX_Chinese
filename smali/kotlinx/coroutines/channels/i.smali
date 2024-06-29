.class public final Lkotlinx/coroutines/channels/i;
.super Lkotlinx/coroutines/channels/p;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/p;",
        "Lkotlinx/coroutines/channels/n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/p;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public A()Lkotlinx/coroutines/channels/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public B()Lkotlinx/coroutines/channels/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final C()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final D()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/i;->A()Lkotlinx/coroutines/channels/i;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;Lkotlinx/coroutines/internal/m$b;)Lkotlinx/coroutines/internal/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/m$b;",
            ")",
            "Lkotlinx/coroutines/internal/x;"
        }
    .end annotation

    .line 1
    sget-object p1, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/n0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public bridge synthetic x()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/i;->B()Lkotlinx/coroutines/channels/i;

    move-result-object v0

    return-object v0
.end method

.method public y(Lkotlinx/coroutines/internal/m$b;)Lkotlinx/coroutines/internal/x;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
