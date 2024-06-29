.class public final Lkotlinx/coroutines/internal/g;
.super Ljava/lang/Object;
.source "DispatchedContinuation.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/x;

.field public static final b:Lkotlinx/coroutines/internal/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/x;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g;->a:Lkotlinx/coroutines/internal/x;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/x;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g;->b:Lkotlinx/coroutines/internal/x;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/x;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/g;->a:Lkotlinx/coroutines/internal/x;

    return-object v0
.end method

.method public static final b(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlin/jvm/b/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/f;

    if-eqz v0, :cond_8

    check-cast p0, Lkotlinx/coroutines/internal/f;

    .line 2
    invoke-static {p1, p2}, Lkotlinx/coroutines/b0;->b(Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/internal/f;->i:Lkotlinx/coroutines/e0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/e0;->L(Lkotlin/coroutines/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/internal/f;->k:Ljava/lang/Object;

    .line 5
    iput v1, p0, Lkotlinx/coroutines/q0;->g:I

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/internal/f;->i:Lkotlinx/coroutines/e0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lkotlin/coroutines/f;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/e0;->J(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 7
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    .line 8
    sget-object v0, Lkotlinx/coroutines/c2;->a:Lkotlinx/coroutines/c2;

    invoke-virtual {v0}, Lkotlinx/coroutines/c2;->a()Lkotlinx/coroutines/w0;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->S()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iput-object p2, p0, Lkotlinx/coroutines/internal/f;->k:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lkotlinx/coroutines/q0;->g:I

    .line 12
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/w0;->O(Lkotlinx/coroutines/q0;)V

    goto/16 :goto_4

    .line 13
    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->Q(Z)V

    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lkotlin/coroutines/f;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/l1;->c:Lkotlinx/coroutines/l1$b;

    invoke-interface {v3, v4}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/l1;

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v3}, Lkotlinx/coroutines/l1;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    invoke-interface {v3}, Lkotlinx/coroutines/l1;->x()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    .line 17
    invoke-virtual {p0, p2, v3}, Lkotlinx/coroutines/internal/f;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 18
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v3}, Lkotlin/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_7

    .line 19
    iget-object p2, p0, Lkotlinx/coroutines/internal/f;->j:Lkotlin/coroutines/c;

    iget-object v3, p0, Lkotlinx/coroutines/internal/f;->l:Ljava/lang/Object;

    .line 20
    invoke-interface {p2}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v4

    .line 21
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/b0;->c(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    sget-object v5, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/x;

    if-eq v3, v5, :cond_3

    .line 23
    invoke-static {p2, v4, v3}, Lkotlinx/coroutines/d0;->e(Lkotlin/coroutines/c;Lkotlin/coroutines/f;Ljava/lang/Object;)Lkotlinx/coroutines/e2;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_3
    move-object p2, v2

    .line 24
    :goto_1
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/f;->j:Lkotlin/coroutines/c;

    invoke-interface {v5, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 25
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 26
    :try_start_2
    invoke-virtual {p2}, Lkotlinx/coroutines/e2;->z0()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    :cond_4
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_5

    .line 28
    invoke-virtual {p2}, Lkotlinx/coroutines/e2;->z0()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 29
    :cond_5
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    :cond_6
    throw p1

    .line 30
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->U()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_7

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 31
    :try_start_3
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/q0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 32
    :goto_3
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->M(Z)V

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->M(Z)V

    throw p0

    .line 33
    :cond_8
    invoke-interface {p0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlin/jvm/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/g;->b(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final d(Lkotlinx/coroutines/internal/f;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/f<",
            "-",
            "Lkotlin/m;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v1

    .line 3
    sget-object v1, Lkotlinx/coroutines/c2;->a:Lkotlinx/coroutines/c2;

    invoke-virtual {v1}, Lkotlinx/coroutines/c2;->a()Lkotlinx/coroutines/w0;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lkotlinx/coroutines/w0;->T()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/w0;->S()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    iput-object v0, p0, Lkotlinx/coroutines/internal/f;->k:Ljava/lang/Object;

    .line 7
    iput v4, p0, Lkotlinx/coroutines/q0;->g:I

    .line 8
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/w0;->O(Lkotlinx/coroutines/q0;)V

    const/4 v3, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/w0;->Q(Z)V

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/q0;->run()V

    .line 11
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/w0;->U()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    .line 12
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lkotlinx/coroutines/q0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :goto_0
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/w0;->M(Z)V

    :goto_1
    return v3

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v4}, Lkotlinx/coroutines/w0;->M(Z)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
