.class final Lkotlinx/coroutines/channels/a$a;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/channels/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/a<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/a$a;->a:Lkotlinx/coroutines/channels/a;

    .line 2
    sget-object p1, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/x;

    iput-object p1, p0, Lkotlinx/coroutines/channels/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private final c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/channels/i;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lkotlinx/coroutines/channels/i;

    iget-object v0, p1, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/i;->C()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/w;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private final d(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/p;->a(Lkotlin/coroutines/c;)Lkotlinx/coroutines/n;

    move-result-object v0

    .line 2
    new-instance v1, Lkotlinx/coroutines/channels/a$d;

    invoke-direct {v1, p0, v0}, Lkotlinx/coroutines/channels/a$d;-><init>(Lkotlinx/coroutines/channels/a$a;Lkotlinx/coroutines/m;)V

    .line 3
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/a$a;->a:Lkotlinx/coroutines/channels/a;

    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/a;->A(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/channels/l;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lkotlinx/coroutines/channels/a$a;->a:Lkotlinx/coroutines/channels/a;

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/channels/a;->B(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/m;Lkotlinx/coroutines/channels/l;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/a$a;->a:Lkotlinx/coroutines/channels/a;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->I()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/channels/a$a;->e(Ljava/lang/Object;)V

    .line 7
    instance-of v3, v2, Lkotlinx/coroutines/channels/i;

    if-eqz v3, :cond_3

    .line 8
    check-cast v2, Lkotlinx/coroutines/channels/i;

    iget-object v1, v2, Lkotlinx/coroutines/channels/i;->h:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/i;->C()Ljava/lang/Throwable;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_3
    sget-object v3, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/x;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lkotlinx/coroutines/channels/a$a;->a:Lkotlinx/coroutines/channels/a;

    iget-object v3, v3, Lkotlinx/coroutines/channels/c;->c:Lkotlin/jvm/b/l;

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)Lkotlin/jvm/b/l;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/m;->f(Ljava/lang/Object;Lkotlin/jvm/b/l;)V

    .line 13
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->w()Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a$a;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/x;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a$a;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/a$a;->c(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$a;->a:Lkotlinx/coroutines/channels/a;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/a;->I()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/a$a;->e(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a$a;->b()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a$a;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/a$a;->c(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/a$a;->d(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/channels/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$a;->b:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/channels/i;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/x;

    if-eq v0, v1, :cond_0

    .line 4
    iput-object v1, p0, Lkotlinx/coroutines/channels/a$a;->b:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    check-cast v0, Lkotlinx/coroutines/channels/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/i;->C()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/w;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
