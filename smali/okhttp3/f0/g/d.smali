.class public final Lokhttp3/f0/g/d;
.super Ljava/lang/Object;
.source "TaskQueue.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final a:Lokhttp3/f0/g/e;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Lokhttp3/f0/g/a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/f0/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lokhttp3/f0/g/e;Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/f0/g/d;->a:Lokhttp3/f0/g/e;

    .line 3
    iput-object p2, p0, Lokhttp3/f0/g/d;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic j(Lokhttp3/f0/g/d;Lokhttp3/f0/g/a;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/f0/g/d;->a:Lokhttp3/f0/g/e;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/f0/g/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lokhttp3/f0/g/d;->h()Lokhttp3/f0/g/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/f0/g/e;->h(Lokhttp3/f0/g/d;)V

    .line 6
    :cond_2
    sget-object v1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/d;->d:Lokhttp3/f0/g/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/f0/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lokhttp3/f0/g/d;->f:Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v2, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ltz v2, :cond_4

    :goto_0
    add-int/lit8 v3, v2, -0x1

    .line 4
    iget-object v4, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/f0/g/a;

    invoke-virtual {v4}, Lokhttp3/f0/g/a;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    iget-object v0, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/f0/g/a;

    .line 6
    sget-object v4, Lokhttp3/f0/g/e;->a:Lokhttp3/f0/g/e$b;

    invoke-virtual {v4}, Lokhttp3/f0/g/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "canceled"

    .line 7
    invoke-static {v0, p0, v4}, Lokhttp3/f0/g/b;->a(Lokhttp3/f0/g/a;Lokhttp3/f0/g/d;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_2
    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public final c()Lokhttp3/f0/g/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/d;->d:Lokhttp3/f0/g/a;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/f0/g/d;->f:Z

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/f0/g/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/f0/g/d;->c:Z

    return v0
.end method

.method public final h()Lokhttp3/f0/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/d;->a:Lokhttp3/f0/g/e;

    return-object v0
.end method

.method public final i(Lokhttp3/f0/g/a;J)V
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/d;->a:Lokhttp3/f0/g/e;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/f0/g/d;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lokhttp3/f0/g/a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Lokhttp3/f0/g/e;->a:Lokhttp3/f0/g/e$b;

    invoke-virtual {p2}, Lokhttp3/f0/g/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "schedule canceled (queue is shutdown)"

    .line 5
    invoke-static {p1, p0, p2}, Lokhttp3/f0/g/b;->a(Lokhttp3/f0/g/a;Lokhttp3/f0/g/d;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    :try_start_1
    sget-object p2, Lokhttp3/f0/g/e;->a:Lokhttp3/f0/g/e$b;

    invoke-virtual {p2}, Lokhttp3/f0/g/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "schedule failed (queue is shutdown)"

    .line 8
    invoke-static {p1, p0, p2}, Lokhttp3/f0/g/b;->a(Lokhttp3/f0/g/a;Lokhttp3/f0/g/d;Ljava/lang/String;)V

    .line 9
    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1

    :cond_3
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, p3, v1}, Lokhttp3/f0/g/d;->k(Lokhttp3/f0/g/a;JZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lokhttp3/f0/g/d;->h()Lokhttp3/f0/g/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/f0/g/e;->h(Lokhttp3/f0/g/d;)V

    .line 12
    :cond_4
    sget-object p1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final k(Lokhttp3/f0/g/a;JZ)Z
    .locals 10

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Lokhttp3/f0/g/a;->e(Lokhttp3/f0/g/d;)V

    .line 2
    iget-object v0, p0, Lokhttp3/f0/g/d;->a:Lokhttp3/f0/g/e;

    invoke-virtual {v0}, Lokhttp3/f0/g/e;->g()Lokhttp3/f0/g/e$a;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/f0/g/e$a;->c()J

    move-result-wide v0

    add-long v2, v0, p2

    .line 3
    iget-object v4, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    .line 4
    invoke-virtual {p1}, Lokhttp3/f0/g/a;->c()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-gtz v9, :cond_1

    .line 5
    sget-object p2, Lokhttp3/f0/g/e;->a:Lokhttp3/f0/g/e$b;

    invoke-virtual {p2}, Lokhttp3/f0/g/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "already scheduled"

    .line 6
    invoke-static {p1, p0, p2}, Lokhttp3/f0/g/b;->a(Lokhttp3/f0/g/a;Lokhttp3/f0/g/d;Ljava/lang/String;)V

    :cond_0
    return v6

    .line 7
    :cond_1
    iget-object v7, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_2
    invoke-virtual {p1, v2, v3}, Lokhttp3/f0/g/a;->g(J)V

    .line 9
    sget-object v4, Lokhttp3/f0/g/e;->a:Lokhttp3/f0/g/e$b;

    invoke-virtual {v4}, Lokhttp3/f0/g/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p4, :cond_3

    sub-long/2addr v2, v0

    .line 10
    invoke-static {v2, v3}, Lokhttp3/f0/g/b;->b(J)Ljava/lang/String;

    move-result-object p4

    const-string v2, "run again after "

    invoke-static {v2, p4}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_3
    sub-long/2addr v2, v0

    .line 11
    invoke-static {v2, v3}, Lokhttp3/f0/g/b;->b(J)Ljava/lang/String;

    move-result-object p4

    const-string v2, "scheduled after "

    invoke-static {v2, p4}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 12
    :goto_0
    invoke-static {p1, p0, p4}, Lokhttp3/f0/g/b;->a(Lokhttp3/f0/g/a;Lokhttp3/f0/g/d;Ljava/lang/String;)V

    .line 13
    :cond_4
    iget-object p4, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    .line 14
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Lokhttp3/f0/g/a;

    .line 16
    invoke-virtual {v3}, Lokhttp3/f0/g/a;->c()J

    move-result-wide v7

    sub-long/2addr v7, v0

    cmp-long v3, v7, p2

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, -0x1

    :goto_3
    if-ne v2, v5, :cond_8

    .line 17
    iget-object p2, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 18
    :cond_8
    iget-object p2, p0, Lokhttp3/f0/g/d;->e:Ljava/util/List;

    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v2, :cond_9

    const/4 v6, 0x1

    :cond_9
    return v6
.end method

.method public final l(Lokhttp3/f0/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/f0/g/d;->d:Lokhttp3/f0/g/a;

    return-void
.end method

.method public final m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/f0/g/d;->f:Z

    return-void
.end method

.method public final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/f0/g/d;->c:Z

    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/f0/g/d;->a:Lokhttp3/f0/g/e;

    monitor-enter v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0, v1}, Lokhttp3/f0/g/d;->n(Z)V

    .line 5
    invoke-virtual {p0}, Lokhttp3/f0/g/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lokhttp3/f0/g/d;->h()Lokhttp3/f0/g/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/f0/g/e;->h(Lokhttp3/f0/g/d;)V

    .line 7
    :cond_2
    sget-object v1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/d;->b:Ljava/lang/String;

    return-object v0
.end method
