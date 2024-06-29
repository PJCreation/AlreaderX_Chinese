.class Lcom/neverland/utils/SyncAll/SyncSFTP$1;
.super Ljava/lang/Object;
.source "SyncSFTP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/utils/SyncAll/SyncSFTP;->readPosition(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

.field final synthetic val$autoMode:Z


# direct methods
.method constructor <init>(Lcom/neverland/utils/SyncAll/SyncSFTP;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iput-boolean p2, p0, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->val$autoMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 2
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iget-object v3, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v4, v3, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v3, v3, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-static {v0, v5, v6, v4, v3}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v0

    sget-object v3, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, v3, :cond_f

    .line 3
    new-instance v3, Lcom/neverland/utils/SyncAll/ConnectionSFTP;

    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v0, v0, Lcom/neverland/utils/SyncAll/SyncSFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    invoke-direct {v3, v0}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;-><init>(Lcom/neverland/utils/SyncAll/SyncScanAddr;)V

    .line 4
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v4, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v0, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlReaderX-01Sync"

    .line 5
    invoke-virtual {v3, v0}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->cdOrCreateFolder(Ljava/lang/String;)V

    .line 6
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v4, 0x3

    if-nez v0, :cond_1

    .line 7
    :try_start_0
    iget-object v0, v3, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v7, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v7, v7, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/ChannelSftp;->stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-gtz v0, :cond_1

    .line 9
    :cond_0
    iput v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    iput v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 12
    :cond_1
    :goto_0
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_3

    .line 13
    :try_start_1
    iget-object v0, v3, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v10, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v10, v10, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 14
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v11, 0x400

    new-array v11, v11, [B

    .line 15
    :goto_1
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_2

    .line 16
    new-instance v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v13, v11, v7, v12, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    iput v8, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 21
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->disconnect()V

    .line 22
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v10, 0x2

    if-ne v0, v4, :cond_4

    .line 23
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_7

    :cond_4
    if-nez v0, :cond_d

    if-eqz v9, :cond_d

    .line 24
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    const/16 v0, 0x21

    .line 25
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    .line 26
    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v11, -0x1

    if-eq v2, v11, :cond_c

    if-eq v0, v11, :cond_c

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_3
    if-ge v4, v0, :cond_5

    .line 29
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/16 v4, 0xa

    .line 30
    invoke-static {v2, v4}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v11

    const v13, 0x7f11023c

    const-wide/16 v14, -0x1

    cmp-long v16, v11, v14

    if-eqz v16, :cond_a

    .line 31
    iget-object v5, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-wide v5, v5, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    cmp-long v17, v11, v5

    if-eqz v17, :cond_a

    .line 32
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/2addr v0, v8

    .line 33
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 34
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_6

    .line 35
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 36
    :cond_7
    invoke-static {v2, v4}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v5

    cmp-long v0, v5, v14

    if-eqz v0, :cond_8

    .line 37
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-wide v11, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    cmp-long v0, v5, v11

    if-eqz v0, :cond_8

    .line 38
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_goto_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_5

    .line 39
    :cond_8
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->val$autoMode:Z

    if-nez v0, :cond_9

    .line 40
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v2, v13, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 41
    :cond_9
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_5

    .line 42
    :cond_a
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->val$autoMode:Z

    if-nez v0, :cond_b

    .line 43
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v2, v13, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 44
    :cond_b
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    const-wide/16 v5, 0x0

    :goto_5
    move-object v2, v0

    goto :goto_7

    .line 45
    :cond_c
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    move-object v2, v0

    goto :goto_6

    .line 46
    :cond_d
    iput v10, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :goto_6
    const-wide/16 v5, 0x0

    .line 47
    :goto_7
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-eq v0, v8, :cond_e

    if-eq v0, v10, :cond_e

    goto :goto_8

    .line 48
    :cond_e
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v4, 0x7f110139

    invoke-virtual {v0, v3, v4, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 49
    :goto_8
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncSFTP$1;->this$0:Lcom/neverland/utils/SyncAll/SyncSFTP;

    iget-object v0, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v2, v5, v6, v9, v0}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    :cond_f
    return-void
.end method
