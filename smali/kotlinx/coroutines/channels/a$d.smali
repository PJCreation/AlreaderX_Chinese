.class Lkotlinx/coroutines/channels/a$d;
.super Lkotlinx/coroutines/channels/l;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
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
.field public final h:Lkotlinx/coroutines/channels/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/a$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final i:Lkotlinx/coroutines/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/a$a;Lkotlinx/coroutines/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/a$a<",
            "TE;>;",
            "Lkotlinx/coroutines/m<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/l;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/a$d;->h:Lkotlinx/coroutines/channels/a$a;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/channels/a$d;->i:Lkotlinx/coroutines/m;

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
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$d;->h:Lkotlinx/coroutines/channels/a$a;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/a$a;->e(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/channels/a$d;->i:Lkotlinx/coroutines/m;

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
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$d;->i:Lkotlinx/coroutines/m;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a$d;->x(Ljava/lang/Object;)Lkotlin/jvm/b/l;

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
    invoke-static {p0}, Lkotlinx/coroutines/n0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiveHasNext@"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/Object;)Lkotlin/jvm/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$d;->h:Lkotlinx/coroutines/channels/a$a;

    iget-object v0, v0, Lkotlinx/coroutines/channels/a$a;->a:Lkotlinx/coroutines/channels/a;

    iget-object v0, v0, Lkotlinx/coroutines/channels/c;->c:Lkotlin/jvm/b/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/a$d;->i:Lkotlinx/coroutines/m;

    invoke-interface {v1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)Lkotlin/jvm/b/l;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public y(Lkotlinx/coroutines/channels/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/i<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$d;->i:Lkotlinx/coroutines/m;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlinx/coroutines/m$a;->a(Lkotlinx/coroutines/m;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$d;->i:Lkotlinx/coroutines/m;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/i;->C()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/m;->i(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/channels/a$d;->h:Lkotlinx/coroutines/channels/a$a;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/a$a;->e(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lkotlinx/coroutines/channels/a$d;->i:Lkotlinx/coroutines/m;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/m;->k(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
