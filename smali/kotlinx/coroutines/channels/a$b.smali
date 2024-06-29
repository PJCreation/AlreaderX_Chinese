.class Lkotlinx/coroutines/channels/a$b;
.super Lkotlinx/coroutines/channels/l;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/l<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final h:Lkotlinx/coroutines/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/m;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/m<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/l;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/a$b;->h:Lkotlinx/coroutines/m;

    .line 3
    iput p2, p0, Lkotlinx/coroutines/channels/a$b;->i:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/channels/a$b;->h:Lkotlinx/coroutines/m;

    sget-object v0, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/m;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Lkotlinx/coroutines/internal/m$b;)Lkotlinx/coroutines/internal/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/m$b;",
            ")",
            "Lkotlinx/coroutines/internal/x;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$b;->h:Lkotlinx/coroutines/m;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a$b;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/l;->x(Ljava/lang/Object;)Lkotlin/jvm/b/l;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lkotlinx/coroutines/m;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveElement@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/n0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/a$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(Lkotlinx/coroutines/channels/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/i<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/a$b;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/channels/a$b;->h:Lkotlinx/coroutines/m;

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    iget-object p1, p1, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/channels/h;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/h;

    move-result-object p1

    .line 3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$b;->h:Lkotlinx/coroutines/m;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/i;->C()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final z(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/a$b;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/channels/h;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/h;

    move-result-object p1

    :cond_0
    return-object p1
.end method
