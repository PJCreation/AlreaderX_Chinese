.class public Lokio/w;
.super Ljava/lang/Object;
.source "Timeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/w$b;
    }
.end annotation


# static fields
.field public static final a:Lokio/w$b;

.field public static final b:Lokio/w;


# instance fields
.field private c:Z

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/w$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/w$b;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokio/w;->a:Lokio/w$b;

    .line 1
    new-instance v0, Lokio/w$a;

    invoke-direct {v0}, Lokio/w$a;-><init>()V

    sput-object v0, Lokio/w;->b:Lokio/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokio/w;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lokio/w;->c:Z

    return-object p0
.end method

.method public b()Lokio/w;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lokio/w;->e:J

    return-object p0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokio/w;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lokio/w;->d:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(J)Lokio/w;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lokio/w;->c:Z

    .line 2
    iput-wide p1, p0, Lokio/w;->d:J

    return-object p0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokio/w;->c:Z

    return v0
.end method

.method public f()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lokio/w;->c:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lokio/w;->d:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lokio/w;
    .locals 3

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lokio/w;->e:J

    return-object p0

    .line 2
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "timeout < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/w;->e:J

    return-wide v0
.end method
