.class public final Lkotlinx/coroutines/e2;
.super Lkotlinx/coroutines/internal/v;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private h:Lkotlin/coroutines/f;

.field private i:Ljava/lang/Object;


# virtual methods
.method public final A0(Lkotlin/coroutines/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/e2;->h:Lkotlin/coroutines/f;

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/e2;->i:Ljava/lang/Object;

    return-void
.end method

.method protected u0(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/e2;->h:Lkotlin/coroutines/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/e2;->i:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lkotlinx/coroutines/e2;->h:Lkotlin/coroutines/f;

    .line 4
    iput-object v1, p0, Lkotlinx/coroutines/e2;->i:Ljava/lang/Object;

    .line 5
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/v;->g:Lkotlin/coroutines/c;

    invoke-static {p1, v0}, Lkotlinx/coroutines/b0;->a(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lkotlinx/coroutines/internal/v;->g:Lkotlin/coroutines/c;

    .line 7
    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v2

    .line 8
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/b0;->c(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    sget-object v4, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/x;

    if-eq v3, v4, :cond_1

    .line 10
    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/d0;->e(Lkotlin/coroutines/c;Lkotlin/coroutines/f;Ljava/lang/Object;)Lkotlinx/coroutines/e2;

    move-result-object v1

    .line 11
    :cond_1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/v;->g:Lkotlin/coroutines/c;

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 12
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Lkotlinx/coroutines/e2;->z0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    :cond_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Lkotlinx/coroutines/e2;->z0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    :cond_4
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final z0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/e2;->h:Lkotlin/coroutines/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/e2;->h:Lkotlin/coroutines/f;

    .line 3
    iput-object v0, p0, Lkotlinx/coroutines/e2;->i:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
