.class public abstract Lkotlinx/coroutines/c;
.super Lkotlinx/coroutines/r1;
.source "AbstractCoroutine.kt"

# interfaces
.implements Lkotlinx/coroutines/l1;
.implements Lkotlin/coroutines/c;
.implements Lkotlinx/coroutines/k0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/r1;",
        "Lkotlinx/coroutines/l1;",
        "Lkotlin/coroutines/c<",
        "TT;>;",
        "Lkotlinx/coroutines/k0;"
    }
.end annotation


# instance fields
.field private final f:Lkotlin/coroutines/f;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/r1;-><init>(Z)V

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lkotlinx/coroutines/l1;->c:Lkotlinx/coroutines/l1$b;

    invoke-interface {p1, p2}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/l1;

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/r1;->T(Lkotlinx/coroutines/l1;)V

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Lkotlin/coroutines/f;->plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/c;->f:Lkotlin/coroutines/f;

    return-void
.end method


# virtual methods
.method public final S(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c;->f:Lkotlin/coroutines/f;

    invoke-static {v0, p1}, Lkotlinx/coroutines/g0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Z()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c;->f:Lkotlin/coroutines/f;

    invoke-static {v0}, Lkotlinx/coroutines/d0;->b(Lkotlin/coroutines/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lkotlinx/coroutines/r1;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/r1;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/r1;->a()Z

    move-result v0

    return v0
.end method

.method public d()Lkotlin/coroutines/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c;->f:Lkotlin/coroutines/f;

    return-object v0
.end method

.method protected final e0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/y;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lkotlinx/coroutines/y;

    iget-object v0, p1, Lkotlinx/coroutines/y;->b:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lkotlinx/coroutines/y;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/c;->v0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/c;->w0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getContext()Lkotlin/coroutines/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c;->f:Lkotlin/coroutines/f;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/b0;->d(Ljava/lang/Object;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/r1;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lkotlinx/coroutines/s1;->b:Lkotlinx/coroutines/internal/x;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/c;->u0(Ljava/lang/Object;)V

    return-void
.end method

.method protected u0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/r1;->r(Ljava/lang/Object;)V

    return-void
.end method

.method protected v0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method protected w0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final x0(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineStart;",
            "TR;",
            "Lkotlin/jvm/b/p<",
            "-TR;-",
            "Lkotlin/coroutines/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)V

    return-void
.end method

.method protected z()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/n0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
