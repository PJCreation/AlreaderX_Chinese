.class public Lkotlinx/coroutines/n;
.super Lkotlinx/coroutines/q0;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/m;
.implements Lkotlin/coroutines/jvm/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/q0<",
        "TT;>;",
        "Lkotlinx/coroutines/m<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/c;"
    }
.end annotation


# static fields
.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field private final j:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final k:Lkotlin/coroutines/f;

.field private l:Lkotlinx/coroutines/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/n;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/n;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lkotlinx/coroutines/n;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/q0;-><init>(I)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/n;->j:Lkotlin/coroutines/c;

    .line 3
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_2
    :goto_1
    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/n;->k:Lkotlin/coroutines/f;

    .line 5
    iput v1, p0, Lkotlinx/coroutines/n;->_decision:I

    .line 6
    sget-object p1, Lkotlinx/coroutines/f;->e:Lkotlinx/coroutines/f;

    iput-object p1, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final A()Lkotlinx/coroutines/u0;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/l1;->c:Lkotlinx/coroutines/l1$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/l1;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    new-instance v4, Lkotlinx/coroutines/r;

    invoke-direct {v4, p0}, Lkotlinx/coroutines/r;-><init>(Lkotlinx/coroutines/n;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/l1$a;->d(Lkotlinx/coroutines/l1;ZZLkotlin/jvm/b/l;ILjava/lang/Object;)Lkotlinx/coroutines/u0;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lkotlinx/coroutines/n;->l:Lkotlinx/coroutines/u0;

    return-object v0
.end method

.method private final C()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/q0;->g:I

    invoke-static {v0}, Lkotlinx/coroutines/r0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/n;->j:Lkotlin/coroutines/c;

    check-cast v0, Lkotlinx/coroutines/internal/f;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final D(Lkotlin/jvm/b/l;)Lkotlinx/coroutines/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)",
            "Lkotlinx/coroutines/k;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/k;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/k;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/i1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/i1;-><init>(Lkotlin/jvm/b/l;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final E(Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n;->j:Lkotlin/coroutines/c;

    instance-of v1, v0, Lkotlinx/coroutines/internal/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/f;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/f;->u(Lkotlinx/coroutines/m;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->s()V

    .line 3
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/n;->g(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final J(Ljava/lang/Object;ILkotlin/jvm/b/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-eqz v1, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/x1;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/n;->L(Lkotlinx/coroutines/x1;Ljava/lang/Object;ILkotlin/jvm/b/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/n;->t()V

    .line 6
    invoke-direct {p0, p2}, Lkotlinx/coroutines/n;->u(I)V

    return-void

    .line 7
    :cond_1
    instance-of p2, v0, Lkotlinx/coroutines/q;

    if-eqz p2, :cond_3

    .line 8
    check-cast v0, Lkotlinx/coroutines/q;

    invoke-virtual {v0}, Lkotlinx/coroutines/q;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/y;->b:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/n;->q(Lkotlin/jvm/b/l;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 10
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n;->n(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic K(Lkotlinx/coroutines/n;Ljava/lang/Object;ILkotlin/jvm/b/l;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/n;->J(Ljava/lang/Object;ILkotlin/jvm/b/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final L(Lkotlinx/coroutines/x1;Ljava/lang/Object;ILkotlin/jvm/b/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/x1;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/y;

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_5
    invoke-static {p3}, Lkotlinx/coroutines/r0;->b(I)Z

    move-result p3

    if-nez p3, :cond_6

    if-nez p5, :cond_6

    goto :goto_4

    :cond_6
    if-nez p4, :cond_8

    .line 5
    instance-of p3, p1, Lkotlinx/coroutines/k;

    if-eqz p3, :cond_7

    instance-of p3, p1, Lkotlinx/coroutines/g;

    if-eqz p3, :cond_8

    :cond_7
    if-eqz p5, :cond_a

    .line 6
    :cond_8
    new-instance p3, Lkotlinx/coroutines/x;

    instance-of v0, p1, Lkotlinx/coroutines/k;

    if-eqz v0, :cond_9

    check-cast p1, Lkotlinx/coroutines/k;

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/x;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/k;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/f;)V

    move-object p2, p3

    :cond_a
    :goto_4
    return-object p2
.end method

.method private final M()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/n;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Lkotlinx/coroutines/n;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final N(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/internal/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)",
            "Lkotlinx/coroutines/internal/x;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-eqz v1, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/x1;

    iget v5, p0, Lkotlinx/coroutines/q0;->g:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/n;->L(Lkotlinx/coroutines/x1;Ljava/lang/Object;ILkotlin/jvm/b/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/n;->t()V

    .line 6
    sget-object p1, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    return-object p1

    .line 7
    :cond_1
    instance-of p3, v0, Lkotlinx/coroutines/x;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 8
    check-cast v0, Lkotlinx/coroutines/x;

    iget-object p3, v0, Lkotlinx/coroutines/x;->d:Ljava/lang/Object;

    if-ne p3, p2, :cond_4

    .line 9
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v0, Lkotlinx/coroutines/x;->a:Ljava/lang/Object;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_3
    :goto_1
    sget-object v1, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    :cond_4
    return-object v1
.end method

.method private final O()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/n;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Lkotlinx/coroutines/n;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final n(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    const-string v0, "Already resumed, but proposed with update "

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final o(Lkotlin/jvm/b/l;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->getContext()Lkotlin/coroutines/f;

    move-result-object p2

    .line 3
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lkotlinx/coroutines/g0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final r(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/n;->j:Lkotlin/coroutines/c;

    check-cast v0, Lkotlinx/coroutines/internal/f;

    .line 3
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/f;->s(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method private final t()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/n;->s()V

    :cond_0
    return-void
.end method

.method private final u(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/r0;->a(Lkotlinx/coroutines/q0;I)V

    return-void
.end method

.method private final y()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->x()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, v0, Lkotlinx/coroutines/q;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v0, "Completed"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->x()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/x1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected F()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final G(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n;->r(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/n;->g(Ljava/lang/Throwable;)Z

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/n;->t()V

    return-void
.end method

.method public final I()Z
    .locals 4

    .line 1
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lkotlinx/coroutines/q0;->g:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkotlinx/coroutines/n;->l:Lkotlinx/coroutines/u0;

    sget-object v3, Lkotlinx/coroutines/w1;->e:Lkotlinx/coroutines/w1;

    if-eq v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_5
    :goto_3
    iget-object v0, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v0, Lkotlinx/coroutines/x1;

    xor-int/2addr v3, v1

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5
    :cond_7
    :goto_4
    instance-of v3, v0, Lkotlinx/coroutines/x;

    if-eqz v3, :cond_8

    check-cast v0, Lkotlinx/coroutines/x;

    iget-object v0, v0, Lkotlinx/coroutines/x;->d:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->s()V

    return v2

    .line 7
    :cond_8
    iput v2, p0, Lkotlinx/coroutines/n;->_decision:I

    .line 8
    sget-object v0, Lkotlinx/coroutines/f;->e:Lkotlinx/coroutines/f;

    iput-object v0, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    return v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 10

    .line 1
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/x1;

    if-nez v0, :cond_4

    .line 3
    instance-of v0, p1, Lkotlinx/coroutines/y;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/x;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/x;

    invoke-virtual {v0}, Lkotlinx/coroutines/x;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p2

    .line 6
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/x;->b(Lkotlinx/coroutines/x;Ljava/lang/Object;Lkotlinx/coroutines/k;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/x;

    move-result-object v1

    .line 7
    sget-object v2, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0, p0, p2}, Lkotlinx/coroutines/x;->d(Lkotlinx/coroutines/n;Ljava/lang/Throwable;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    sget-object v8, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v9, Lkotlinx/coroutines/x;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/x;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/k;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/f;)V

    invoke-virtual {v8, p0, p1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not completed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/n;->N(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/internal/x;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/n;->N(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/internal/x;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n;->j:Lkotlin/coroutines/c;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lkotlinx/coroutines/q0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->d()Lkotlin/coroutines/c;

    move-result-object v0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/m0;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/c;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast v0, Lkotlin/coroutines/jvm/internal/c;

    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/c;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/Object;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/q0;->g:I

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/n;->J(Ljava/lang/Object;ILkotlin/jvm/b/l;)V

    return-void
.end method

.method public g(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/x1;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    new-instance v1, Lkotlinx/coroutines/q;

    instance-of v2, v0, Lkotlinx/coroutines/k;

    invoke-direct {v1, p0, p1, v2}, Lkotlinx/coroutines/q;-><init>(Lkotlin/coroutines/c;Ljava/lang/Throwable;Z)V

    .line 4
    sget-object v3, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    check-cast v0, Lkotlinx/coroutines/k;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/n;->p(Lkotlinx/coroutines/k;Ljava/lang/Throwable;)V

    .line 6
    :goto_2
    invoke-direct {p0}, Lkotlinx/coroutines/n;->t()V

    .line 7
    iget p1, p0, Lkotlinx/coroutines/q0;->g:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/n;->u(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n;->j:Lkotlin/coroutines/c;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/c;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n;->k:Lkotlin/coroutines/f;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Lkotlin/jvm/b/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/n;->D(Lkotlin/jvm/b/l;)Lkotlinx/coroutines/k;

    move-result-object v8

    .line 2
    :cond_0
    :goto_0
    iget-object v9, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    .line 3
    instance-of v0, v9, Lkotlinx/coroutines/f;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_1
    instance-of v0, v9, Lkotlinx/coroutines/k;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/n;->E(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, v9, Lkotlinx/coroutines/y;

    if-eqz v0, :cond_7

    .line 7
    move-object v1, v9

    check-cast v1, Lkotlinx/coroutines/y;

    invoke-virtual {v1}, Lkotlinx/coroutines/y;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/n;->E(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    .line 8
    :cond_3
    instance-of v2, v9, Lkotlinx/coroutines/q;

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    iget-object v2, v1, Lkotlinx/coroutines/y;->b:Ljava/lang/Throwable;

    :goto_2
    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/n;->o(Lkotlin/jvm/b/l;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    .line 10
    :cond_7
    instance-of v0, v9, Lkotlinx/coroutines/x;

    if-eqz v0, :cond_b

    .line 11
    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/x;

    iget-object v1, v0, Lkotlinx/coroutines/x;->b:Lkotlinx/coroutines/k;

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/n;->E(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    .line 12
    :cond_8
    instance-of v1, v8, Lkotlinx/coroutines/g;

    if-eqz v1, :cond_9

    return-void

    .line 13
    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/x;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 14
    iget-object v0, v0, Lkotlinx/coroutines/x;->e:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/n;->o(Lkotlin/jvm/b/l;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v2, v8

    .line 15
    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/x;->b(Lkotlinx/coroutines/x;Ljava/lang/Object;Lkotlinx/coroutines/k;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/x;

    move-result-object v0

    .line 16
    sget-object v1, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_b
    instance-of v0, v8, Lkotlinx/coroutines/g;

    if-eqz v0, :cond_c

    return-void

    .line 18
    :cond_c
    new-instance v10, Lkotlinx/coroutines/x;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/x;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/k;Lkotlin/jvm/b/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/f;)V

    .line 19
    sget-object v0, Lkotlinx/coroutines/n;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public i(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/coroutines/y;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/y;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/f;)V

    invoke-direct {p0, v0, v3, v3}, Lkotlinx/coroutines/n;->N(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/internal/x;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/x;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/x;

    iget-object p1, p1, Lkotlinx/coroutines/x;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/internal/x;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_2
    :goto_1
    iget p1, p0, Lkotlinx/coroutines/q0;->g:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/n;->u(I)V

    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final p(Lkotlinx/coroutines/k;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/l;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->getContext()Lkotlin/coroutines/f;

    move-result-object p2

    .line 3
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lkotlinx/coroutines/g0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final q(Lkotlin/jvm/b/l;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->getContext()Lkotlin/coroutines/f;

    move-result-object p2

    .line 3
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lkotlinx/coroutines/g0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1, p0}, Lkotlinx/coroutines/b0;->c(Ljava/lang/Object;Lkotlinx/coroutines/m;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/q0;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/n;->K(Lkotlinx/coroutines/n;Ljava/lang/Object;ILkotlin/jvm/b/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n;->l:Lkotlinx/coroutines/u0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/u0;->dispose()V

    .line 3
    sget-object v0, Lkotlinx/coroutines/w1;->e:Lkotlinx/coroutines/w1;

    iput-object v0, p0, Lkotlinx/coroutines/n;->l:Lkotlinx/coroutines/u0;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/n;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/n;->j:Lkotlin/coroutines/c;

    invoke-static {v1}, Lkotlinx/coroutines/n0;->c(Lkotlin/coroutines/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/n;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/n0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lkotlinx/coroutines/l1;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-interface {p1}, Lkotlinx/coroutines/l1;->x()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final w()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n;->C()Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/n;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/n;->l:Lkotlinx/coroutines/u0;

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lkotlinx/coroutines/n;->A()Lkotlinx/coroutines/u0;

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/n;->H()V

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Lkotlinx/coroutines/n;->H()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->x()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lkotlinx/coroutines/y;

    if-eqz v1, :cond_5

    check-cast v0, Lkotlinx/coroutines/y;

    iget-object v0, v0, Lkotlinx/coroutines/y;->b:Ljava/lang/Throwable;

    .line 10
    invoke-static {}, Lkotlinx/coroutines/m0;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-static {v0, p0}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/c;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_4
    throw v0

    .line 12
    :cond_5
    iget v1, p0, Lkotlinx/coroutines/q0;->g:I

    invoke-static {v1}, Lkotlinx/coroutines/r0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/l1;->c:Lkotlinx/coroutines/l1$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/l1;

    if-eqz v1, :cond_7

    .line 14
    invoke-interface {v1}, Lkotlinx/coroutines/l1;->a()Z

    move-result v2

    if-nez v2, :cond_7

    .line 15
    invoke-interface {v1}, Lkotlinx/coroutines/l1;->x()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 16
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/n;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 17
    invoke-static {}, Lkotlinx/coroutines/m0;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/c;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_6
    throw v1

    .line 19
    :cond_7
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/n;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/n;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public z()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n;->A()Lkotlinx/coroutines/u0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/n;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/u0;->dispose()V

    .line 4
    sget-object v0, Lkotlinx/coroutines/w1;->e:Lkotlinx/coroutines/w1;

    iput-object v0, p0, Lkotlinx/coroutines/n;->l:Lkotlinx/coroutines/u0;

    :cond_1
    return-void
.end method
