.class public abstract Lcom/neverland/libservice/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# instance fields
.field public e:Landroid/app/Service;

.field public f:Ljava/lang/String;

.field g:Landroid/app/Service;

.field h:J

.field i:J

.field volatile j:Z

.field k:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/neverland/libservice/BaseService;->j:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/neverland/libservice/BaseService;->k:Landroid/os/PowerManager$WakeLock;

    .line 4
    iput-object p0, p0, Lcom/neverland/libservice/BaseService;->e:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/neverland/libservice/BaseService;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "WAKELOCKTTS OFF"

    .line 3
    invoke-virtual {p0, v0}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/neverland/libservice/BaseService;->k:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/neverland/libservice/BaseService;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/libservice/BaseService;->f:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/neverland/libservice/BaseService;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "power"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_old:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v1, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "#"

    if-eqz v1, :cond_1

    const/16 v1, 0x1a

    .line 4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neverland/libservice/BaseService;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/libservice/BaseService;->k:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neverland/libservice/BaseService;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/libservice/BaseService;->k:Landroid/os/PowerManager$WakeLock;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/neverland/libservice/BaseService;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "WAKELOCKTTS ON"

    .line 8
    invoke-virtual {p0, v0}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/neverland/libservice/BaseService;->k:Landroid/os/PowerManager$WakeLock;

    :cond_2
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p1, "Bind"

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    iput-object p0, p0, Lcom/neverland/libservice/BaseService;->g:Landroid/app/Service;

    .line 3
    invoke-virtual {p0}, Lcom/neverland/libservice/BaseService;->e()V

    const-string v0, "Create"

    .line 4
    invoke-virtual {p0, v0}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "Destroy"

    .line 2
    invoke-virtual {p0, v0}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    return-void
.end method
