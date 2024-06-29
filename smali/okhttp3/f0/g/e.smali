.class public final Lokhttp3/f0/g/e;
.super Ljava/lang/Object;
.source "TaskRunner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/g/e$a;,
        Lokhttp3/f0/g/e$c;,
        Lokhttp3/f0/g/e$b;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/f0/g/e$b;

.field public static final b:Lokhttp3/f0/g/e;

.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field private final d:Lokhttp3/f0/g/e$a;

.field private e:I

.field private f:Z

.field private g:J

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/f0/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/f0/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/f0/g/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/f0/g/e$b;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/f0/g/e;->a:Lokhttp3/f0/g/e$b;

    .line 1
    new-instance v0, Lokhttp3/f0/g/e;

    new-instance v1, Lokhttp3/f0/g/e$c;

    sget-object v2, Lokhttp3/f0/d;->i:Ljava/lang/String;

    const-string v3, " TaskRunner"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/f0/d;->K(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/f0/g/e$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v1}, Lokhttp3/f0/g/e;-><init>(Lokhttp3/f0/g/e$a;)V

    sput-object v0, Lokhttp3/f0/g/e;->b:Lokhttp3/f0/g/e;

    .line 2
    const-class v0, Lokhttp3/f0/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(TaskRunner::class.java.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokhttp3/f0/g/e;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokhttp3/f0/g/e$a;)V
    .locals 1

    const-string v0, "backend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/f0/g/e;->d:Lokhttp3/f0/g/e$a;

    const/16 p1, 0x2710

    .line 3
    iput p1, p0, Lokhttp3/f0/g/e;->e:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/f0/g/e;->h:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    .line 6
    new-instance p1, Lokhttp3/f0/g/e$d;

    invoke-direct {p1, p0}, Lokhttp3/f0/g/e$d;-><init>(Lokhttp3/f0/g/e;)V

    iput-object p1, p0, Lokhttp3/f0/g/e;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/f0/g/e;->c:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static final synthetic b(Lokhttp3/f0/g/e;Lokhttp3/f0/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/f0/g/e;->j(Lokhttp3/f0/g/a;)V

    return-void
.end method

.method private final c(Lokhttp3/f0/g/a;J)V
    .locals 6

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " MUST hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lokhttp3/f0/g/a;->d()Lokhttp3/f0/g/d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lokhttp3/f0/g/d;->c()Lokhttp3/f0/g/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {v0}, Lokhttp3/f0/g/d;->d()Z

    move-result v1

    .line 6
    invoke-virtual {v0, v2}, Lokhttp3/f0/g/d;->m(Z)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Lokhttp3/f0/g/d;->l(Lokhttp3/f0/g/a;)V

    .line 8
    iget-object v2, p0, Lokhttp3/f0/g/e;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-wide/16 v4, -0x1

    cmp-long v2, p2, v4

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v0}, Lokhttp3/f0/g/d;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {v0, p1, p2, p3, v3}, Lokhttp3/f0/g/d;->k(Lokhttp3/f0/g/a;JZ)Z

    .line 11
    :cond_3
    invoke-virtual {v0}, Lokhttp3/f0/g/d;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e(Lokhttp3/f0/g/a;)V
    .locals 2

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Lokhttp3/f0/g/a;->g(J)V

    .line 4
    invoke-virtual {p1}, Lokhttp3/f0/g/a;->d()Lokhttp3/f0/g/d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lokhttp3/f0/g/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, p1}, Lokhttp3/f0/g/d;->l(Lokhttp3/f0/g/a;)V

    .line 8
    iget-object p1, p0, Lokhttp3/f0/g/e;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final j(Lokhttp3/f0/g/a;)V
    .locals 5

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lokhttp3/f0/g/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/f0/g/a;->f()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    monitor-enter p0

    .line 8
    :try_start_1
    invoke-direct {p0, p1, v2, v3}, Lokhttp3/f0/g/e;->c(Lokhttp3/f0/g/a;J)V

    .line 9
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception v4

    monitor-enter p0

    .line 13
    :try_start_2
    invoke-direct {p0, p1, v2, v3}, Lokhttp3/f0/g/e;->c(Lokhttp3/f0/g/a;J)V

    .line 14
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    monitor-exit p0

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v4

    :catchall_2
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final d()Lokhttp3/f0/g/a;
    .locals 15

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " MUST hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object v0, p0, Lokhttp3/f0/g/e;->d:Lokhttp3/f0/g/e$a;

    invoke-interface {v0}, Lokhttp3/f0/g/e$a;->c()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    .line 5
    iget-object v0, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v6, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/f0/g/d;

    .line 6
    invoke-virtual {v7}, Lokhttp3/f0/g/d;->e()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/f0/g/a;

    .line 7
    invoke-virtual {v7}, Lokhttp3/f0/g/a;->c()J

    move-result-wide v10

    sub-long/2addr v10, v2

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-lez v14, :cond_3

    .line 8
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move-object v6, v7

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v6, :cond_8

    .line 9
    invoke-direct {p0, v6}, Lokhttp3/f0/g/e;->e(Lokhttp3/f0/g/a;)V

    if-nez v0, :cond_6

    .line 10
    iget-boolean v0, p0, Lokhttp3/f0/g/e;->f:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v8

    if-eqz v0, :cond_7

    .line 11
    :cond_6
    iget-object v0, p0, Lokhttp3/f0/g/e;->d:Lokhttp3/f0/g/e$a;

    iget-object v1, p0, Lokhttp3/f0/g/e;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lokhttp3/f0/g/e$a;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-object v6

    .line 12
    :cond_8
    iget-boolean v0, p0, Lokhttp3/f0/g/e;->f:Z

    if-eqz v0, :cond_a

    .line 13
    iget-wide v6, p0, Lokhttp3/f0/g/e;->g:J

    sub-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-gez v0, :cond_9

    .line 14
    iget-object v0, p0, Lokhttp3/f0/g/e;->d:Lokhttp3/f0/g/e$a;

    invoke-interface {v0, p0}, Lokhttp3/f0/g/e$a;->a(Lokhttp3/f0/g/e;)V

    :cond_9
    return-object v1

    .line 15
    :cond_a
    iput-boolean v8, p0, Lokhttp3/f0/g/e;->f:Z

    add-long/2addr v2, v4

    .line 16
    iput-wide v2, p0, Lokhttp3/f0/g/e;->g:J

    .line 17
    :try_start_0
    iget-object v0, p0, Lokhttp3/f0/g/e;->d:Lokhttp3/f0/g/e$a;

    invoke-interface {v0, p0, v4, v5}, Lokhttp3/f0/g/e$a;->b(Lokhttp3/f0/g/e;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_3
    iput-boolean v9, p0, Lokhttp3/f0/g/e;->f:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 19
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/f0/g/e;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 20
    :goto_4
    iput-boolean v9, p0, Lokhttp3/f0/g/e;->f:Z

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 2
    iget-object v2, p0, Lokhttp3/f0/g/e;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/f0/g/d;

    invoke-virtual {v0}, Lokhttp3/f0/g/d;->b()Z

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v0, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 4
    iget-object v2, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/f0/g/d;

    .line 5
    invoke-virtual {v2}, Lokhttp3/f0/g/d;->b()Z

    .line 6
    invoke-virtual {v2}, Lokhttp3/f0/g/d;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final g()Lokhttp3/f0/g/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/e;->d:Lokhttp3/f0/g/e$a;

    return-object v0
.end method

.method public final h(Lokhttp3/f0/g/d;)V
    .locals 2

    const-string v0, "taskQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lokhttp3/f0/g/d;->c()Lokhttp3/f0/g/a;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lokhttp3/f0/g/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-static {v0, p1}, Lokhttp3/f0/d;->a(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lokhttp3/f0/g/e;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lokhttp3/f0/g/e;->f:Z

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lokhttp3/f0/g/e;->d:Lokhttp3/f0/g/e$a;

    invoke-interface {p1, p0}, Lokhttp3/f0/g/e$a;->a(Lokhttp3/f0/g/e;)V

    goto :goto_2

    .line 9
    :cond_4
    iget-object p1, p0, Lokhttp3/f0/g/e;->d:Lokhttp3/f0/g/e$a;

    iget-object v0, p0, Lokhttp3/f0/g/e;->j:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lokhttp3/f0/g/e$a;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public final i()Lokhttp3/f0/g/d;
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/f0/g/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/f0/g/e;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2
    new-instance v1, Lokhttp3/f0/g/d;

    const-string v2, "Q"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lokhttp3/f0/g/d;-><init>(Lokhttp3/f0/g/e;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0

    throw v0
.end method
