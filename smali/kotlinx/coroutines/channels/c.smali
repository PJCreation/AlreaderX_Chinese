.class public abstract Lkotlinx/coroutines/channels/c;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/q<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field protected final c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TE;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlinx/coroutines/internal/k;

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/channels/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/c;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->c:Lkotlin/jvm/b/l;

    .line 3
    new-instance p1, Lkotlinx/coroutines/internal/k;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/k;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic f(Lkotlinx/coroutines/channels/c;Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/c;->p(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/i;)V

    return-void
.end method

.method public static final synthetic g(Lkotlinx/coroutines/channels/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/c;->t()Z

    move-result p0

    return p0
.end method

.method private final h()I
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/m;

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    instance-of v3, v1, Lkotlinx/coroutines/internal/m;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->n()Lkotlinx/coroutines/internal/m;

    move-result-object v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final m()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->n()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    if-ne v0, v1, :cond_0

    const-string v0, "EmptyQueue"

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/i;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/channels/l;

    if-eqz v1, :cond_2

    const-string v1, "ReceiveQueued"

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/channels/p;

    if-eqz v1, :cond_3

    const-string v1, "SendQueued"

    goto :goto_0

    :cond_3
    const-string v1, "UNEXPECTED:"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v2

    if-eq v2, v0, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/c;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    instance-of v0, v2, Lkotlinx/coroutines/channels/i;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private final n(Lkotlinx/coroutines/channels/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/i<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Object;ILkotlin/jvm/internal/f;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/channels/l;

    if-eqz v4, :cond_0

    check-cast v3, Lkotlinx/coroutines/channels/l;

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_5

    if-nez v2, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    check-cast v2, Lkotlinx/coroutines/channels/l;

    .line 4
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/l;->y(Lkotlinx/coroutines/channels/i;)V

    goto :goto_3

    .line 5
    :cond_2
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_4

    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/l;

    .line 8
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/l;->y(Lkotlinx/coroutines/channels/i;)V

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    .line 9
    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->v(Lkotlinx/coroutines/internal/m;)V

    return-void

    .line 10
    :cond_5
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/m;->s()Z

    move-result v4

    if-nez v4, :cond_6

    .line 11
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/m;->p()V

    goto :goto_0

    .line 12
    :cond_6
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/j;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private final o(Lkotlinx/coroutines/channels/i;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/i<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->n(Lkotlinx/coroutines/channels/i;)V

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/i;->D()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method private final p(Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "*>;TE;",
            "Lkotlinx/coroutines/channels/i<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/c;->n(Lkotlinx/coroutines/channels/i;)V

    .line 2
    invoke-virtual {p3}, Lkotlinx/coroutines/channels/i;->D()Ljava/lang/Throwable;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->c:Lkotlin/jvm/b/l;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1, v2}, Lkotlinx/coroutines/internal/s;->d(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    :goto_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p3}, Lkotlin/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p2, p3}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 6
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p2}, Lkotlin/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final q(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/b;->f:Lkotlinx/coroutines/internal/x;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v2, Lkotlinx/coroutines/channels/c;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/o;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->n()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/n;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final x(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/p;->a(Lkotlin/coroutines/c;)Lkotlinx/coroutines/n;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/channels/c;->g(Lkotlinx/coroutines/channels/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->c:Lkotlin/jvm/b/l;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lkotlinx/coroutines/channels/r;

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/channels/r;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/m;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/s;

    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->c:Lkotlin/jvm/b/l;

    invoke-direct {v1, p1, v0, v2}, Lkotlinx/coroutines/channels/s;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/m;Lkotlin/jvm/b/l;)V

    .line 6
    :goto_1
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/c;->i(Lkotlinx/coroutines/channels/p;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {v0, v1}, Lkotlinx/coroutines/p;->b(Lkotlinx/coroutines/m;Lkotlinx/coroutines/internal/m;)V

    goto :goto_3

    .line 8
    :cond_1
    instance-of v1, v2, Lkotlinx/coroutines/channels/i;

    if-eqz v1, :cond_2

    .line 9
    check-cast v2, Lkotlinx/coroutines/channels/i;

    invoke-static {p0, v0, p1, v2}, Lkotlinx/coroutines/channels/c;->f(Lkotlinx/coroutines/channels/c;Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/i;)V

    goto :goto_3

    .line 10
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/b;->e:Lkotlinx/coroutines/internal/x;

    if-ne v2, v1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    instance-of v1, v2, Lkotlinx/coroutines/channels/l;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "enqueueSend returned "

    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    sget-object v2, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/x;

    if-ne v1, v2, :cond_6

    .line 15
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_6
    sget-object v2, Lkotlinx/coroutines/channels/b;->c:Lkotlinx/coroutines/internal/x;

    if-ne v1, v2, :cond_7

    goto :goto_0

    .line 17
    :cond_7
    instance-of v2, v1, Lkotlinx/coroutines/channels/i;

    if-eqz v2, :cond_a

    .line 18
    check-cast v1, Lkotlinx/coroutines/channels/i;

    invoke-static {p0, v0, p1, v1}, Lkotlinx/coroutines/channels/c;->f(Lkotlinx/coroutines/channels/c;Lkotlin/coroutines/c;Ljava/lang/Object;Lkotlinx/coroutines/channels/i;)V

    .line 19
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/n;->w()Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_8

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    .line 21
    :cond_8
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_9

    return-object p1

    :cond_9
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1

    :cond_a
    const-string p1, "offerInternal returned "

    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/i;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/i;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    .line 3
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lkotlinx/coroutines/channels/i;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/m;->h(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/internal/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/i;

    .line 7
    :goto_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/c;->n(Lkotlinx/coroutines/channels/i;)V

    if-eqz v4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->q(Ljava/lang/Throwable;)V

    :cond_3
    return v4
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/x;

    if-ne p1, v0, :cond_0

    sget-object p1, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    sget-object v0, Lkotlin/m;->a:Lkotlin/m;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/b;->c:Lkotlinx/coroutines/internal/x;

    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->k()Lkotlinx/coroutines/channels/i;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/h$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->o(Lkotlinx/coroutines/channels/i;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/i;

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lkotlinx/coroutines/channels/h;->a:Lkotlinx/coroutines/channels/h$b;

    check-cast p1, Lkotlinx/coroutines/channels/i;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->o(Lkotlinx/coroutines/channels/i;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    const-string v0, "trySend returned "

    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/b;->b:Lkotlinx/coroutines/internal/x;

    if-ne v0, v1, :cond_0

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->x(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method protected i(Lkotlinx/coroutines/channels/p;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/channels/n;

    if-eqz v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v1, p1, v0}, Lkotlinx/coroutines/internal/m;->h(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/internal/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    .line 7
    new-instance v1, Lkotlinx/coroutines/channels/c$b;

    invoke-direct {v1, p1, p0}, Lkotlinx/coroutines/channels/c$b;-><init>(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/channels/c;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lkotlinx/coroutines/channels/n;

    if-eqz v3, :cond_3

    return-object v2

    .line 10
    :cond_3
    invoke-virtual {v2, p1, v0, v1}, Lkotlinx/coroutines/internal/m;->v(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/internal/m$a;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-nez v3, :cond_6

    .line 11
    sget-object p1, Lkotlinx/coroutines/channels/b;->e:Lkotlinx/coroutines/internal/x;

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected final k()Lkotlinx/coroutines/channels/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/i<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/channels/i;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/c;->n(Lkotlinx/coroutines/channels/i;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method protected final l()Lkotlinx/coroutines/internal/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    return-object v0
.end method

.method protected abstract r()Z
.end method

.method protected abstract s()Z
.end method

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

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->y()Lkotlinx/coroutines/channels/n;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/b;->c:Lkotlinx/coroutines/internal/x;

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/channels/n;->e(Ljava/lang/Object;Lkotlinx/coroutines/internal/m$b;)Lkotlinx/coroutines/internal/x;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_4
    :goto_1
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/n;->b(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/channels/n;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected v(Lkotlinx/coroutines/internal/m;)V
    .locals 0

    return-void
.end method

.method protected final w(Ljava/lang/Object;)Lkotlinx/coroutines/channels/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/channels/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    new-instance v1, Lkotlinx/coroutines/channels/c$a;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/c$a;-><init>(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->o()Lkotlinx/coroutines/internal/m;

    move-result-object p1

    .line 3
    instance-of v2, p1, Lkotlinx/coroutines/channels/n;

    if-eqz v2, :cond_1

    check-cast p1, Lkotlinx/coroutines/channels/n;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/internal/m;->h(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/internal/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected y()Lkotlinx/coroutines/channels/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/n<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/m;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/n;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/n;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/i;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->r()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->t()Lkotlinx/coroutines/internal/m;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/n;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/m;->q()V

    goto :goto_0
.end method

.method protected final z()Lkotlinx/coroutines/channels/p;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/k;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/m;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/p;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/p;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/i;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->r()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->t()Lkotlinx/coroutines/internal/m;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/p;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/m;->q()V

    goto :goto_0
.end method
