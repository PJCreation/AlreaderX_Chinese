.class Lcom/neverland/utils/SyncAll/SyncSFTP$2;
.super Ljava/lang/Object;
.source "SyncSFTP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/utils/SyncAll/SyncSFTP;->writePosition(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

.field final synthetic val$autoMode:Z

.field final synthetic val$os:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neverland/utils/SyncAll/SyncSFTP;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iput-object p2, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->val$os:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->val$autoMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_ok:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 2
    sget-object v1, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v3, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3, v2}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v1

    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v1, v2, :cond_5

    .line 3
    new-instance v1, Lcom/neverland/utils/SyncAll/ConnectionSFTP;

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/SyncSFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    invoke-direct {v1, v2}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;-><init>(Lcom/neverland/utils/SyncAll/SyncScanAddr;)V

    .line 4
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v3, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AlReaderX-01Sync"

    .line 5
    invoke-virtual {v1, v2}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->cdOrCreateFolder(Ljava/lang/String;)V

    .line 6
    iget v2, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    .line 7
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->val$os:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_0

    .line 9
    :try_start_1
    iget-object v7, v1, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v8, v8, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    .line 10
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    iput v6, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 12
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 14
    :cond_0
    iput v6, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 15
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->disconnect()V

    .line 16
    iget v1, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    goto :goto_3

    .line 17
    :cond_2
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v6, 0x7f110139

    invoke-virtual {v0, v1, v6, v2}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 18
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_3

    .line 19
    :cond_3
    iget-boolean v1, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->val$autoMode:Z

    if-nez v1, :cond_4

    .line 20
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v6, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v7, 0x7f11023d

    invoke-virtual {v1, v6, v7, v2}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 21
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$2;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v1, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v0, v4, v5, v3, v1}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    :cond_5
    return-void
.end method
