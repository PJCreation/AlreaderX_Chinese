.class public final Lokhttp3/internal/connection/e;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Lokhttp3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/e$a;,
        Lokhttp3/internal/connection/e$b;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final e:Lokhttp3/z;

.field private final f:Lokhttp3/a0;

.field private final g:Z

.field private final h:Lokhttp3/internal/connection/g;

.field private final i:Lokhttp3/t;

.field private final j:Lokhttp3/internal/connection/e$c;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Ljava/lang/Object;

.field private m:Lokhttp3/internal/connection/d;

.field private n:Lokhttp3/internal/connection/f;

.field private o:Z

.field private p:Lokhttp3/internal/connection/c;

.field private q:Z

.field private r:Z

.field private s:Z

.field private volatile t:Z

.field private volatile u:Lokhttp3/internal/connection/c;

.field private volatile v:Lokhttp3/internal/connection/f;


# direct methods
.method public constructor <init>(Lokhttp3/z;Lokhttp3/a0;Z)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/a0;

    .line 4
    iput-boolean p3, p0, Lokhttp3/internal/connection/e;->g:Z

    .line 5
    invoke-virtual {p1}, Lokhttp3/z;->j()Lokhttp3/l;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/l;->a()Lokhttp3/internal/connection/g;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/g;

    .line 6
    invoke-virtual {p1}, Lokhttp3/z;->o()Lokhttp3/t$c;

    move-result-object p1

    invoke-interface {p1, p0}, Lokhttp3/t$c;->a(Lokhttp3/f;)Lokhttp3/t;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    .line 7
    new-instance p1, Lokhttp3/internal/connection/e$c;

    invoke-direct {p1, p0}, Lokhttp3/internal/connection/e$c;-><init>(Lokhttp3/internal/connection/e;)V

    .line 8
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->k()Lokhttp3/z;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/z;->f()I

    move-result p2

    int-to-long p2, p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lokio/w;->g(JLjava/util/concurrent/TimeUnit;)Lokio/w;

    .line 9
    iput-object p1, p0, Lokhttp3/internal/connection/e;->j:Lokhttp3/internal/connection/e$c;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/e;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lokhttp3/internal/connection/e;->s:Z

    return-void
.end method

.method public static final synthetic a(Lokhttp3/internal/connection/e;)Lokhttp3/internal/connection/e$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/e;->j:Lokhttp3/internal/connection/e$c;

    return-object p0
.end method

.method public static final synthetic b(Lokhttp3/internal/connection/e;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

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
    iget-object v1, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/f;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_3

    .line 4
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_3
    :goto_1
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->u()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v1

    .line 9
    iget-object v2, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/f;

    if-nez v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {v0}, Lokhttp3/f0/d;->k(Ljava/net/Socket;)V

    .line 11
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    invoke-virtual {v0, p0, v1}, Lokhttp3/t;->l(Lokhttp3/f;Lokhttp3/k;)V

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const-string p1, "Check failed."

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v1

    throw p1

    .line 14
    :cond_8
    :goto_4
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/e;->y(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Lokhttp3/t;->e(Lokhttp3/f;Ljava/io/IOException;)V

    goto :goto_5

    .line 16
    :cond_9
    iget-object p1, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    invoke-virtual {p1, p0}, Lokhttp3/t;->d(Lokhttp3/f;)V

    :goto_5
    return-object v0
.end method

.method private final e()V
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/h$a;->g()Lokhttp3/f0/j/h;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/f0/j/h;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/e;->l:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    invoke-virtual {v0, p0}, Lokhttp3/t;->f(Lokhttp3/f;)V

    return-void
.end method

.method private final h(Lokhttp3/w;)Lokhttp3/b;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/w;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->G()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 3
    iget-object v1, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->s()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v3}, Lokhttp3/z;->h()Lokhttp3/h;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 5
    :goto_0
    new-instance v1, Lokhttp3/b;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lokhttp3/w;->h()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual/range {p1 .. p1}, Lokhttp3/w;->l()I

    move-result v6

    .line 8
    iget-object v2, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->n()Lokhttp3/s;

    move-result-object v7

    .line 9
    iget-object v2, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->F()Ljavax/net/SocketFactory;

    move-result-object v8

    .line 10
    iget-object v2, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->B()Lokhttp3/c;

    move-result-object v12

    .line 11
    iget-object v2, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->A()Ljava/net/Proxy;

    move-result-object v13

    .line 12
    iget-object v2, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->z()Ljava/util/List;

    move-result-object v14

    .line 13
    iget-object v2, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->k()Ljava/util/List;

    move-result-object v15

    .line 14
    iget-object v2, v0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->C()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    .line 15
    invoke-direct/range {v4 .. v16}, Lokhttp3/b;-><init>(Ljava/lang/String;ILokhttp3/s;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/h;Lokhttp3/c;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private final y(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->o:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->j:Lokhttp3/internal/connection/e$c;

    invoke-virtual {v0}, Lokio/a;->u()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_2
    return-object v0
.end method

.method private final z()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Lokhttp3/internal/connection/e;->g:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    .line 3
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->t()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Lokhttp3/internal/connection/f;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/f;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/f;

    .line 5
    invoke-virtual {p1}, Lokhttp3/internal/connection/f;->n()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lokhttp3/internal/connection/e$b;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->l:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/connection/e$b;-><init>(Lokhttp3/internal/connection/e;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->g()Lokhttp3/internal/connection/e;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lokhttp3/c0;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->j:Lokhttp3/internal/connection/e$c;

    invoke-virtual {v0}, Lokio/a;->t()V

    .line 3
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->e()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->m()Lokhttp3/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/r;->a(Lokhttp3/internal/connection/e;)V

    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->o()Lokhttp3/c0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->m()Lokhttp3/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/r;->e(Lokhttp3/internal/connection/e;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->m()Lokhttp3/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/r;->e(Lokhttp3/internal/connection/e;)V

    throw v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/connection/e;->t:Z

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lokhttp3/internal/connection/c;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->b()V

    .line 4
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->v:Lokhttp3/internal/connection/f;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 5
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    invoke-virtual {v0, p0}, Lokhttp3/t;->g(Lokhttp3/f;)V

    return-void
.end method

.method public g()Lokhttp3/internal/connection/e;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/internal/connection/e;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    iget-object v2, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/a0;

    iget-boolean v3, p0, Lokhttp3/internal/connection/e;->g:Z

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/connection/e;-><init>(Lokhttp3/z;Lokhttp3/a0;Z)V

    return-object v0
.end method

.method public final i(Lokhttp3/a0;Z)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->p:Lokhttp3/internal/connection/c;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->r:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->q:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Lokhttp3/internal/connection/d;

    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/g;

    .line 9
    invoke-virtual {p1}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/e;->h(Lokhttp3/w;)Lokhttp3/b;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    .line 11
    invoke-direct {p2, v0, p1, p0, v1}, Lokhttp3/internal/connection/d;-><init>(Lokhttp3/internal/connection/g;Lokhttp3/b;Lokhttp3/internal/connection/e;Lokhttp3/t;)V

    iput-object p2, p0, Lokhttp3/internal/connection/e;->m:Lokhttp3/internal/connection/d;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string p1, "Check failed."

    .line 12
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 13
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    throw p1

    :cond_4
    const-string p1, "Check failed."

    .line 15
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->s:Z

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lokhttp3/internal/connection/e;->u:Lokhttp3/internal/connection/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lokhttp3/internal/connection/c;->d()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lokhttp3/internal/connection/e;->p:Lokhttp3/internal/connection/c;

    return-void

    :cond_2
    :try_start_1
    const-string p1, "released"

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    throw p1
.end method

.method public final k()Lokhttp3/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    return-object v0
.end method

.method public final l()Lokhttp3/internal/connection/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method public final m()Lokhttp3/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    return-object v0
.end method

.method public final n()Lokhttp3/internal/connection/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->p:Lokhttp3/internal/connection/c;

    return-object v0
.end method

.method public final o()Lokhttp3/c0;
    .locals 10

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->t()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/collections/p;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 3
    new-instance v0, Lokhttp3/f0/h/j;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-direct {v0, v1}, Lokhttp3/f0/h/j;-><init>(Lokhttp3/z;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lokhttp3/f0/h/a;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->l()Lokhttp3/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/f0/h/a;-><init>(Lokhttp3/p;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lokhttp3/f0/f/a;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->e()Lokhttp3/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/f0/f/a;-><init>(Lokhttp3/d;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lokhttp3/internal/connection/a;->b:Lokhttp3/internal/connection/a;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->g:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->v()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/collections/p;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 9
    :cond_0
    new-instance v0, Lokhttp3/f0/h/b;

    iget-boolean v1, p0, Lokhttp3/internal/connection/e;->g:Z

    invoke-direct {v0, v1}, Lokhttp3/f0/h/b;-><init>(Z)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v9, Lokhttp3/f0/h/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11
    iget-object v5, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/a0;

    .line 12
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->i()I

    move-result v6

    .line 13
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->D()I

    move-result v7

    .line 14
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->I()I

    move-result v8

    move-object v0, v9

    move-object v1, p0

    .line 15
    invoke-direct/range {v0 .. v8}, Lokhttp3/f0/h/g;-><init>(Lokhttp3/internal/connection/e;Ljava/util/List;ILokhttp3/internal/connection/c;Lokhttp3/a0;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/a0;

    invoke-virtual {v9, v2}, Lokhttp3/f0/h/g;->a(Lokhttp3/a0;)Lokhttp3/c0;

    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->q()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 18
    invoke-virtual {p0, v1}, Lokhttp3/internal/connection/e;->s(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    .line 19
    :cond_1
    :try_start_1
    invoke-static {v2}, Lokhttp3/f0/d;->j(Ljava/io/Closeable;)V

    .line 20
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    .line 21
    :try_start_2
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/e;->s(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 22
    invoke-virtual {p0, v1}, Lokhttp3/internal/connection/e;->s(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v2
.end method

.method public final p(Lokhttp3/f0/h/g;)Lokhttp3/internal/connection/c;
    .locals 4

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->s:Z

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->r:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->q:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    monitor-exit p0

    .line 7
    iget-object v0, p0, Lokhttp3/internal/connection/e;->m:Lokhttp3/internal/connection/d;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lokhttp3/internal/connection/e;->e:Lokhttp3/z;

    invoke-virtual {v0, v2, p1}, Lokhttp3/internal/connection/d;->a(Lokhttp3/z;Lokhttp3/f0/h/g;)Lokhttp3/f0/h/d;

    move-result-object p1

    .line 9
    new-instance v2, Lokhttp3/internal/connection/c;

    iget-object v3, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/t;

    invoke-direct {v2, p0, v3, v0, p1}, Lokhttp3/internal/connection/c;-><init>(Lokhttp3/internal/connection/e;Lokhttp3/t;Lokhttp3/internal/connection/d;Lokhttp3/f0/h/d;)V

    .line 10
    iput-object v2, p0, Lokhttp3/internal/connection/e;->p:Lokhttp3/internal/connection/c;

    .line 11
    iput-object v2, p0, Lokhttp3/internal/connection/e;->u:Lokhttp3/internal/connection/c;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_1
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->q:Z

    .line 14
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    iget-boolean p1, p0, Lokhttp3/internal/connection/e;->t:Z

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1

    :cond_1
    :try_start_2
    const-string p1, "Check failed."

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "Check failed."

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "released"

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 21
    monitor-exit p0

    throw p1
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->t:Z

    return v0
.end method

.method public final r(Lokhttp3/internal/connection/c;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lokhttp3/internal/connection/c;",
            "ZZTE;)TE;"
        }
    .end annotation

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->u:Lokhttp3/internal/connection/c;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p4

    .line 2
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->q:Z

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->r:Z

    if-eqz v0, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/connection/e;->q:Z

    :cond_3
    if-eqz p3, :cond_4

    .line 5
    iput-boolean p1, p0, Lokhttp3/internal/connection/e;->r:Z

    .line 6
    :cond_4
    iget-boolean p2, p0, Lokhttp3/internal/connection/e;->q:Z

    const/4 p3, 0x1

    if-nez p2, :cond_5

    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->r:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_6

    .line 7
    iget-boolean p2, p0, Lokhttp3/internal/connection/e;->r:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lokhttp3/internal/connection/e;->s:Z

    if-nez p2, :cond_6

    const/4 p1, 0x1

    :cond_6
    move p2, p1

    move p1, v0

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    .line 8
    :goto_2
    sget-object p3, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lokhttp3/internal/connection/e;->u:Lokhttp3/internal/connection/c;

    .line 11
    iget-object p1, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/f;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lokhttp3/internal/connection/f;->s()V

    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    .line 12
    invoke-direct {p0, p4}, Lokhttp3/internal/connection/e;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_a
    return-object p4

    .line 13
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final s(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->s:Z

    .line 4
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 5
    :cond_0
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/e;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    throw p1
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/a0;

    invoke-virtual {v0}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/w;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/net/Socket;
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/f;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    .line 2
    sget-boolean v1, Lokhttp3/f0/d;->h:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " MUST hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->n()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Ljava/lang/ref/Reference;

    .line 7
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_2
    if-eq v4, v6, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_6

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lokhttp3/internal/connection/e;->n:Lokhttp3/internal/connection/f;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lokhttp3/internal/connection/f;->B(J)V

    .line 12
    iget-object v1, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/internal/connection/g;

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/g;->c(Lokhttp3/internal/connection/f;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->D()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v2

    .line 14
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->m:Lokhttp3/internal/connection/d;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/internal/connection/d;->e()Z

    move-result v0

    return v0
.end method

.method public final w(Lokhttp3/internal/connection/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/e;->v:Lokhttp3/internal/connection/f;

    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/e;->o:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lokhttp3/internal/connection/e;->o:Z

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/e;->j:Lokhttp3/internal/connection/e$c;

    invoke-virtual {v0}, Lokio/a;->u()Z

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
