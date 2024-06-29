.class Lcom/neverland/ttsservice/TTSService$d;
.super Ljava/lang/Object;
.source "TTSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/ttsservice/TTSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/neverland/ttsservice/TTSService;


# direct methods
.method constructor <init>(Lcom/neverland/ttsservice/TTSService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->P(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->Q(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->S(Lcom/neverland/ttsservice/TTSService;)V

    .line 4
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->h(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v2, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    if-eqz v2, :cond_7

    .line 5
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->j(Lcom/neverland/ttsservice/TTSService;)I

    .line 6
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v4}, Lcom/neverland/ttsservice/TTSService;->i(Lcom/neverland/ttsservice/TTSService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->i(Lcom/neverland/ttsservice/TTSService;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v4, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    int-to-long v5, v5

    const-wide/16 v7, 0x2

    mul-long v5, v5, v7

    const-wide/16 v9, 0x4

    add-long/2addr v5, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmp-long v11, v2, v5

    if-nez v11, :cond_2

    .line 8
    iget-boolean v1, v4, Lcom/neverland/prefs/TOptions;->ttsStopAfterTimer:Z

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1, v9}, Lcom/neverland/ttsservice/TTSService;->E(Lcom/neverland/ttsservice/TTSService;Z)V

    goto/16 :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1, v10}, Lcom/neverland/ttsservice/TTSService;->k(Lcom/neverland/ttsservice/TTSService;Z)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->i(Lcom/neverland/ttsservice/TTSService;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    int-to-long v4, v4

    mul-long v4, v4, v7

    sub-long/2addr v4, v7

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5

    .line 12
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->l(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-virtual {v3}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11044c

    invoke-virtual {v2, v3, v4}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2, v10}, Lcom/neverland/ttsservice/TTSService;->m(Lcom/neverland/ttsservice/TTSService;Z)Z

    .line 15
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->o(Lcom/neverland/ttsservice/TTSService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v3}, Lcom/neverland/ttsservice/TTSService;->n(Lcom/neverland/ttsservice/TTSService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->i(Lcom/neverland/ttsservice/TTSService;)I

    move-result v3

    int-to-long v3, v3

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v1, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    int-to-long v5, v1

    mul-long v5, v5, v7

    const-wide/16 v7, 0x3

    add-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    const/4 v9, 0x1

    :cond_4
    invoke-static {v2, v9}, Lcom/neverland/ttsservice/TTSService;->p(Lcom/neverland/ttsservice/TTSService;Z)V

    .line 17
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->q(Lcom/neverland/ttsservice/TTSService;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->o(Lcom/neverland/ttsservice/TTSService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->n(Lcom/neverland/ttsservice/TTSService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 19
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$d;->e:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->R(Lcom/neverland/ttsservice/TTSService;)V

    .line 20
    :cond_7
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
