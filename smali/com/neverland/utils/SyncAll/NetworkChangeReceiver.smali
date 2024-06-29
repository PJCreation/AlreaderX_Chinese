.class public Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# static fields
.field public static LOGSYNCSUPPORT:Z = true

.field private static MAX_CALLBACK:I = 0x14

.field private static final TAG:Ljava/lang/String; = "syncncm"

.field private static WAIT_AFTER_RECEIVE:I = 0x1f4

.field private static networkHandler:Landroid/os/Handler;


# instance fields
.field private cntCallback:I

.field private syncReaderRun:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->networkHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->cntCallback:I

    .line 3
    new-instance v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;-><init>(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)V

    iput-object v0, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->syncReaderRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->syncReaderRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->networkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->cntCallback:I

    return p0
.end method

.method static synthetic access$308(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->cntCallback:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->cntCallback:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 1
    sget v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->MAX_CALLBACK:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 1
    sget v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->WAIT_AFTER_RECEIVE:I

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->LOGSYNCSUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "syncncm"

    .line 3
    invoke-static {v0, p0, p1}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private startCallback()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->stopCallback()V

    const-string v0, "startCallback"

    .line 2
    invoke-static {v0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->log(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->networkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->syncReaderRun:Ljava/lang/Runnable;

    sget v2, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->WAIT_AFTER_RECEIVE:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopCallback()V
    .locals 2

    const-string v0, "stopCallback"

    .line 1
    invoke-static {v0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->cntCallback:I

    .line 3
    sget-object v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->networkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->syncReaderRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "onReceive"

    .line 1
    invoke-static {p1}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "networkInfo"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->startCallback()V

    :cond_1
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public stop(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->stopCallback()V

    return-void
.end method
