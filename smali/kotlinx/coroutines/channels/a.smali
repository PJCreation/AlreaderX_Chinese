.class public abstract Lkotlinx/coroutines/channels/a;
.super Lkotlinx/coroutines/channels/c;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/a$e;,
        Lkotlinx/coroutines/channels/a$a;,
        Lkotlinx/coroutines/channels/a$b;,
        Lkotlinx/coroutines/channels/a$c;,
        Lkotlinx/coroutines/channels/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/c<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/e<",
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
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;-><init>(Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final synthetic A(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/channels/l;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/a;->C(Lkotlinx/coroutines/channels/l;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic B(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/m;Lkotlinx/coroutines/channels/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/a;->K(Lkotlinx/coroutines/m;Lkotlinx/coroutines/channels/l;)V

    return-void
.end method

.method private final C(Lkotlinx/coroutines/channels/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/l<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a;->D(Lkotlinx/coroutines/channels/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->H()V

    :cond_0
    return p1
.end method

.method private final J(ILkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/p;->a(Lkotlin/coroutines/c;)Lkotlinx/coroutines/n;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->c:Lkotlin/jvm/b/l;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lkotlinx/coroutines/channels/a$b;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/channels/a$b;-><init>(Lkotlinx/coroutines/m;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/a$c;

    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->c:Lkotlin/jvm/b/l;

    invoke-direct {v1, v0, p1, v2}, Lkotlinx/coroutines/channels/a$c;-><init>(Lkotlinx/coroutines/m;ILkotlin/jvm/b/l;)V

    .line 5
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lkotlinx/coroutines/channels/a;->A(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/channels/l;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/channels/a;->B(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/m;Lkotlinx/coroutines/channels/l;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->I()Ljava/lang/Object;

    move-result-object p1

    .line 8
    instance-of v2, p1, Lkotlinx/coroutines/channels/i;

    if-eqz v2, :cond_3

    .line 9
    check-cast p1, Lkotlinx/coroutines/channels/i;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/a$b;->y(Lkotlinx/coroutines/channels/i;)V

    goto :goto_1

    .line 10
    :cond_3
    sget-object v2, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/x;

    if-eq p1, v2, :cond_1

    .line 11
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/a$b;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/l;->x(Ljava/lang/Object;)Lkotlin/jvm/b/l;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lkotlinx/coroutines/m;->f(Ljava/lang/Object;Lkotlin/jvm/b/l;)V

    .line 12
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->w()Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_4
    return-object p1
.end method

.method private final K(Lkotlinx/coroutines/m;Lkotlinx/coroutines/channels/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/m<",
            "*>;",
            "Lkotlinx/coroutines/channels/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/a$e;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/channels/a$e;-><init>(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/channels/l;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/m;->h(Lkotlin/jvm/b/l;)V

    return-void
.end method


# virtual methods
.method protected D(Lkotlinx/coroutines/channels/l;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/l<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->E()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->l()Lkotlinx/coroutines/internal/k;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lkotlinx/coroutines/channels/p;

    xor-int/2addr v4, v2

    if-nez v4, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v3, p1, v0}, Lkotlinx/coroutines/internal/m;->h(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/internal/m;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->l()Lkotlinx/coroutines/internal/k;

    move-result-object v0

    .line 7
    new-instance v3, Lkotlinx/coroutines/channels/a$f;

    invoke-direct {v3, p1, p0}, Lkotlinx/coroutines/channels/a$f;-><init>(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/channels/a;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v4

    .line 9
    instance-of v5, v4, Lkotlinx/coroutines/channels/p;

    xor-int/2addr v5, v2

    if-nez v5, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v4, p1, v0, v3}, Lkotlinx/coroutines/internal/m;->v(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/internal/m$a;)I

    move-result v4

    if-eq v4, v2, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method

.method protected abstract E()Z
.end method

.method protected abstract F()Z
.end method

.method protected G()V
    .locals 0

    return-void
.end method

.method protected H()V
    .locals 0

    return-void
.end method

.method protected I()Ljava/lang/Object;
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->z()Lkotlinx/coroutines/channels/p;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/x;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/p;->y(Lkotlinx/coroutines/internal/m$b;)Lkotlinx/coroutines/internal/x;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/p;->w()V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/p;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/p;->z()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->I()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/x;

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/h$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/i;

    if-eqz v1, :cond_1

    sget-object v1, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    check-cast v0, Lkotlinx/coroutines/channels/i;

    iget-object v0, v0, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlinx/coroutines/channels/h<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/a$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/a$g;

    iget v1, v0, Lkotlinx/coroutines/channels/a$g;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/a$g;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/a$g;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/channels/a$g;-><init>(Lkotlinx/coroutines/channels/a;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/a$g;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/a$g;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->I()Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v2, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/x;

    if-eq p1, v2, :cond_4

    .line 6
    instance-of v0, p1, Lkotlinx/coroutines/channels/i;

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    check-cast p1, Lkotlinx/coroutines/channels/i;

    iget-object p1, p1, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v0, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    .line 7
    :cond_4
    iput v3, v0, Lkotlinx/coroutines/channels/a$g;->g:I

    invoke-direct {p0, v3, v0}, Lkotlinx/coroutines/channels/a;->J(ILkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Lkotlinx/coroutines/channels/h;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/h;->h()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Lkotlinx/coroutines/channels/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/a$a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/a$a;-><init>(Lkotlinx/coroutines/channels/a;)V

    return-object v0
.end method

.method protected y()Lkotlinx/coroutines/channels/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/n<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/channels/c;->y()Lkotlinx/coroutines/channels/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/channels/i;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->G()V

    :cond_0
    return-object v0
.end method
