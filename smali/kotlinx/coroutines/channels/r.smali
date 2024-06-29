.class public Lkotlinx/coroutines/channels/r;
.super Lkotlinx/coroutines/channels/p;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/p;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final i:Lkotlinx/coroutines/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/m<",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/m<",
            "-",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/p;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/r;->h:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/channels/r;->i:Lkotlinx/coroutines/m;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/n0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/n0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/r;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/r;->i:Lkotlinx/coroutines/m;

    sget-object v1, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/m;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public x()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/r;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public y(Lkotlinx/coroutines/internal/m$b;)Lkotlinx/coroutines/internal/x;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/r;->i:Lkotlinx/coroutines/m;

    sget-object v1, Lkotlin/m;->a:Lkotlin/m;

    const/4 v2, 0x0

    if-nez p1, :cond_5

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 3
    sget-object p1, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    return-object p1

    .line 4
    :cond_4
    throw v2

    .line 5
    :cond_5
    throw v2
.end method
