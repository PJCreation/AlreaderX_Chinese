.class public final Lokio/s;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# static fields
.field public static final a:Lokio/s;

.field private static final b:I

.field private static final c:Lokio/r;

.field private static final d:I

.field private static final e:[Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lokio/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lokio/s;

    invoke-direct {v0}, Lokio/s;-><init>()V

    sput-object v0, Lokio/s;->a:Lokio/s;

    const/high16 v0, 0x10000

    .line 1
    sput v0, Lokio/s;->b:I

    .line 2
    new-instance v0, Lokio/r;

    const/4 v7, 0x0

    new-array v2, v7, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/r;-><init>([BIIZZ)V

    sput-object v0, Lokio/s;->c:Lokio/r;

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    sput v0, Lokio/s;->d:I

    .line 4
    new-array v1, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    if-ge v7, v0, :cond_0

    .line 5
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sput-object v1, Lokio/s;->e:[Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lokio/r;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget v2, Lokio/s;->d:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    long-to-int v1, v0

    .line 2
    sget-object v0, Lokio/s;->e:[Ljava/util/concurrent/atomic/AtomicReference;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final b(Lokio/r;)V
    .locals 5

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokio/r;->g:Lokio/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/r;->h:Lokio/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    iget-boolean v0, p0, Lokio/r;->e:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lokio/s;->a:Lokio/s;

    invoke-direct {v0}, Lokio/s;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/r;

    .line 5
    sget-object v3, Lokio/s;->c:Lokio/r;

    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 6
    :cond_3
    iget v3, v2, Lokio/r;->d:I

    .line 7
    :goto_1
    sget v4, Lokio/s;->b:I

    if-lt v3, v4, :cond_4

    return-void

    .line 8
    :cond_4
    iput-object v2, p0, Lokio/r;->g:Lokio/r;

    .line 9
    iput v1, p0, Lokio/r;->c:I

    add-int/lit16 v3, v3, 0x2000

    .line 10
    iput v3, p0, Lokio/r;->d:I

    .line 11
    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lokio/r;->g:Lokio/r;

    :cond_5
    return-void

    .line 13
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c()Lokio/r;
    .locals 4

    .line 1
    sget-object v0, Lokio/s;->a:Lokio/s;

    invoke-direct {v0}, Lokio/s;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 2
    sget-object v1, Lokio/s;->c:Lokio/r;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/r;

    if-ne v2, v1, :cond_0

    .line 3
    new-instance v0, Lokio/r;

    invoke-direct {v0}, Lokio/r;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lokio/r;

    invoke-direct {v0}, Lokio/r;-><init>()V

    return-object v0

    .line 6
    :cond_1
    iget-object v3, v2, Lokio/r;->g:Lokio/r;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    iput-object v1, v2, Lokio/r;->g:Lokio/r;

    const/4 v0, 0x0

    .line 8
    iput v0, v2, Lokio/r;->d:I

    return-object v2
.end method
