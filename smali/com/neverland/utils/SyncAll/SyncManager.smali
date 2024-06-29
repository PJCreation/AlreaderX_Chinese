.class public Lcom/neverland/utils/SyncAll/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/utils/SyncAll/SyncManager$STATE;,
        Lcom/neverland/utils/SyncAll/SyncManager$RESULT;
    }
.end annotation


# static fields
.field public static LOGSYNCSUPPORT:Z = true

.field private static final TAG:Ljava/lang/String; = "sync"

.field private static final USE_NETWORK_RECEIVER:Z = true


# instance fields
.field private currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

.field private lastOperationTime:J

.field private lastWritePosition:J

.field private lastWriteTime:J

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private final syncObject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->syncObject:Ljava/lang/String;

    const-wide/16 v0, -0x64

    .line 3
    iput-wide v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->lastWritePosition:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->lastWriteTime:J

    .line 5
    iput-wide v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->lastOperationTime:J

    .line 6
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->wait:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iput-object v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/TMainActivity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/neverland/utils/SyncAll/SyncManager;->openGoto(Lcom/neverland/viscomp/TMainActivity;I)V

    return-void
.end method

.method public static gotoNewPosition(I)Z
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 1
    :try_start_0
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, v0, Lcom/neverland/viscomp/TMainActivity;->isActive:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {v0, p0}, Lcom/neverland/utils/SyncAll/SyncManager;->openGoto(Lcom/neverland/viscomp/TMainActivity;I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/neverland/utils/SyncAll/SyncManager$1;

    invoke-direct {v1, v0, p0}, Lcom/neverland/utils/SyncAll/SyncManager$1;-><init>(Lcom/neverland/viscomp/TMainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/neverland/utils/SyncAll/SyncManager;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/neverland/utils/SyncAll/SyncManager;->LOGSYNCSUPPORT:Z

    if-eqz v0, :cond_0

    const-string v0, "sync"

    .line 3
    invoke-static {v0, p0, p1}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private static openGoto(Lcom/neverland/viscomp/TMainActivity;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/neverland/mainApp;->e()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMainActivity;->clearActiveDialog()V

    .line 3
    :cond_0
    sget-object p0, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_goto_sync:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p0, v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;I)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-void
.end method


# virtual methods
.method public regReceiver1(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "regReceiver1"

    .line 2
    invoke-static {v0}, Lcom/neverland/utils/SyncAll/SyncManager;->log(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;

    invoke-direct {v0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public requestOperation(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v0, p4

    const-string v4, ""

    .line 1
    monitor-enter v4

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    .line 4
    iget-object v8, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 5
    sget-object v9, Lcom/neverland/utils/SyncAll/SyncManager$2;->$SwitchMap$com$neverland$utils$SyncAll$SyncManager$STATE:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v9, v10

    const/4 v11, 0x1

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 6
    :pswitch_1
    sget-object v5, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    if-ne v8, v5, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v10, v2, v5

    if-eqz v10, :cond_0

    long-to-int v3, v2

    .line 7
    invoke-static {v3}, Lcom/neverland/utils/SyncAll/SyncManager;->gotoNewPosition(I)Z

    .line 8
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    .line 9
    :cond_0
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->wait:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iput-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_1

    .line 10
    :pswitch_2
    iget-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    sget-object v3, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_command:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 11
    :cond_1
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iput-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 12
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    goto :goto_1

    .line 13
    :pswitch_3
    iget-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v9, v2

    if-eq v2, v11, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied_but_not_error:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    .line 15
    :goto_0
    iget-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    sget-object v3, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->wait:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    :pswitch_4
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_command:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iput-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 17
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    goto :goto_1

    :pswitch_5
    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->lastWriteTime:J

    .line 19
    :pswitch_6
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->wait:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iput-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 20
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    goto :goto_1

    .line 21
    :pswitch_7
    iget-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    sget-object v3, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_command:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iput-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 23
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    goto :goto_1

    .line 24
    :pswitch_8
    iget-object v10, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    sget-object v12, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->wait:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    if-eq v10, v12, :cond_5

    goto :goto_1

    .line 25
    :cond_5
    iget-wide v12, v1, Lcom/neverland/utils/SyncAll/SyncManager;->lastWritePosition:J

    cmp-long v7, v2, v12

    if-nez v7, :cond_6

    iget-wide v12, v1, Lcom/neverland/utils/SyncAll/SyncManager;->lastWriteTime:J

    sub-long v12, v5, v12

    const-wide/32 v14, 0xea60

    cmp-long v7, v12, v14

    if-gez v7, :cond_6

    .line 26
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied_but_not_error:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    goto :goto_1

    .line 27
    :cond_6
    iput-wide v5, v1, Lcom/neverland/utils/SyncAll/SyncManager;->lastWriteTime:J

    .line 28
    iput-wide v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->lastWritePosition:J

    .line 29
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_command:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iput-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 30
    sget-object v7, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    .line 31
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v7, v3, :cond_7

    const-string v5, " ok "

    goto :goto_2

    :cond_7
    const-string v5, " error "

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/neverland/utils/SyncAll/SyncManager;->log(Ljava/lang/String;)V

    if-eq v7, v3, :cond_9

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prev: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/neverland/utils/SyncAll/SyncManager;->log(Ljava/lang/String;Z)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/neverland/utils/SyncAll/SyncManager;->currentState:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 36
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v9, v0

    if-eq v0, v11, :cond_a

    const/4 v2, 0x6

    if-eq v0, v2, :cond_a

    const/4 v2, 0x7

    if-eq v0, v2, :cond_a

    goto :goto_4

    .line 37
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "book: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/SyncManager;->log(Ljava/lang/String;)V

    .line 38
    :goto_4
    monitor-exit v4

    return-object v7

    :catchall_0
    move-exception v0

    .line 39
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public unregReceiver1(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->stop(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "unregReceiver1"

    .line 4
    invoke-static {v0}, Lcom/neverland/utils/SyncAll/SyncManager;->log(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/SyncManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncManager;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method
