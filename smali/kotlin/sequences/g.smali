.class final Lkotlin/sequences/g;
.super Lkotlin/sequences/h;
.source "SequenceBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/coroutines/c;
.implements Lkotlin/jvm/internal/p/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/sequences/h<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/coroutines/c<",
        "Lkotlin/m;",
        ">;",
        "Lkotlin/jvm/internal/p/a;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private h:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/sequences/h;-><init>()V

    return-void
.end method

.method private final j()Ljava/lang/Throwable;
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/sequences/g;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state of the iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/sequences/g;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_0
    return-object v0
.end method

.method private final l()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/sequences/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/g;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/sequences/g;->f:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lkotlin/sequences/g;->e:I

    .line 3
    iput-object p2, p0, Lkotlin/sequences/g;->h:Lkotlin/coroutines/c;

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method public d(Ljava/util/Iterator;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1

    .line 2
    :cond_0
    iput-object p1, p0, Lkotlin/sequences/g;->g:Ljava/util/Iterator;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lkotlin/sequences/g;->e:I

    .line 4
    iput-object p2, p0, Lkotlin/sequences/g;->h:Lkotlin/coroutines/c;

    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method public getContext()Lkotlin/coroutines/f;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lkotlin/sequences/g;->e:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlin/sequences/g;->j()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    return v3

    .line 3
    :cond_2
    iget-object v0, p0, Lkotlin/sequences/g;->g:Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iput v2, p0, Lkotlin/sequences/g;->e:I

    return v3

    .line 5
    :cond_3
    iput-object v1, p0, Lkotlin/sequences/g;->g:Ljava/util/Iterator;

    :cond_4
    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lkotlin/sequences/g;->e:I

    .line 7
    iget-object v0, p0, Lkotlin/sequences/g;->h:Lkotlin/coroutines/c;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 8
    iput-object v1, p0, Lkotlin/sequences/g;->h:Lkotlin/coroutines/c;

    .line 9
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object v1, Lkotlin/m;->a:Lkotlin/m;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final m(Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/sequences/g;->h:Lkotlin/coroutines/c;

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/sequences/g;->e:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkotlin/sequences/g;->e:I

    .line 3
    iget-object v0, p0, Lkotlin/sequences/g;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lkotlin/sequences/g;->f:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    invoke-direct {p0}, Lkotlin/sequences/g;->j()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    iput v1, p0, Lkotlin/sequences/g;->e:I

    .line 7
    iget-object v0, p0, Lkotlin/sequences/g;->g:Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    invoke-direct {p0}, Lkotlin/sequences/g;->l()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lkotlin/sequences/g;->e:I

    return-void
.end method
