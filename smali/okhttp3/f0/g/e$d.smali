.class public final Lokhttp3/f0/g/e$d;
.super Ljava/lang/Object;
.source "TaskRunner.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/f0/g/e;-><init>(Lokhttp3/f0/g/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/f0/g/e;


# direct methods
.method constructor <init>(Lokhttp3/f0/g/e;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/f0/g/e$d;->e:Lokhttp3/f0/g/e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lokhttp3/f0/g/e$d;->e:Lokhttp3/f0/g/e;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/f0/g/e;->d()Lokhttp3/f0/g/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    monitor-exit v0

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v1}, Lokhttp3/f0/g/a;->d()Lokhttp3/f0/g/d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lokhttp3/f0/g/e$d;->e:Lokhttp3/f0/g/e;

    const-wide/16 v3, -0x1

    .line 5
    sget-object v5, Lokhttp3/f0/g/e;->a:Lokhttp3/f0/g/e$b;

    invoke-virtual {v5}, Lokhttp3/f0/g/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v0}, Lokhttp3/f0/g/d;->h()Lokhttp3/f0/g/e;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/f0/g/e;->g()Lokhttp3/f0/g/e$a;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/f0/g/e$a;->c()J

    move-result-wide v3

    const-string v6, "starting"

    .line 7
    invoke-static {v1, v0, v6}, Lokhttp3/f0/g/b;->a(Lokhttp3/f0/g/a;Lokhttp3/f0/g/d;Ljava/lang/String;)V

    .line 8
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Lokhttp3/f0/g/e;->b(Lokhttp3/f0/g/e;Lokhttp3/f0/g/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    sget-object v2, Lkotlin/m;->a:Lkotlin/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v0}, Lokhttp3/f0/g/d;->h()Lokhttp3/f0/g/e;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/f0/g/e;->g()Lokhttp3/f0/g/e$a;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/f0/g/e$a;->c()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-string v2, "finished run in "

    .line 11
    invoke-static {v5, v6}, Lokhttp3/f0/g/b;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lokhttp3/f0/g/b;->a(Lokhttp3/f0/g/a;Lokhttp3/f0/g/d;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v6

    .line 12
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/f0/g/e;->g()Lokhttp3/f0/g/e$a;

    move-result-object v2

    invoke-interface {v2, p0}, Lokhttp3/f0/g/e$a;->execute(Ljava/lang/Runnable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v0}, Lokhttp3/f0/g/d;->h()Lokhttp3/f0/g/e;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/f0/g/e;->g()Lokhttp3/f0/g/e$a;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/f0/g/e$a;->c()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-string v3, "failed a run in "

    .line 14
    invoke-static {v5, v6}, Lokhttp3/f0/g/b;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lokhttp3/f0/g/b;->a(Lokhttp3/f0/g/a;Lokhttp3/f0/g/d;Ljava/lang/String;)V

    :cond_3
    throw v2

    :catchall_2
    move-exception v1

    .line 15
    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
