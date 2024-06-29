.class Lcom/neverland/utils/SyncAll/SyncFTPApache$1;
.super Ljava/lang/Object;
.source "SyncFTPApache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/utils/SyncAll/SyncFTPApache;->readPosition(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

.field final synthetic val$autoMode:Z


# direct methods
.method constructor <init>(Lcom/neverland/utils/SyncAll/SyncFTPApache;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iput-boolean p2, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->val$autoMode:Z

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

    iget-object v3, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v4, v3, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v3, v3, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-static {v0, v5, v6, v4, v3}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v0

    sget-object v3, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, v3, :cond_10

    .line 3
    new-instance v3, Lcom/neverland/utils/SyncAll/ConnectionAFTP;

    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v0, v0, Lcom/neverland/utils/SyncAll/SyncFTPApache;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    invoke-direct {v3, v0}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;-><init>(Lcom/neverland/utils/SyncAll/SyncScanAddr;)V

    .line 4
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v4, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v0, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlReaderX-01Sync"

    .line 5
    invoke-virtual {v3, v0}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->cdOrCreateFolder(Ljava/lang/String;)V

    .line 6
    iget v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v4, :cond_2

    .line 7
    :try_start_0
    iget-object v4, v3, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/c;->k0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v3, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->H0()[Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v4, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v4, v4, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    goto :goto_1

    .line 10
    :cond_1
    iput v7, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    iput v9, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 13
    :cond_2
    :goto_1
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 14
    :try_start_1
    iget-object v0, v3, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    iget-object v10, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v10, v10, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/c;->R0(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 15
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v11, 0x400

    new-array v11, v11, [B

    .line 16
    :goto_2
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_3

    .line 17
    new-instance v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v13, v11, v8, v12, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 21
    iput v9, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 22
    :cond_4
    :goto_3
    invoke-virtual {v3}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->disconnect()V

    .line 23
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v10, 0x2

    if-ne v0, v7, :cond_5

    .line 24
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_8

    :cond_5
    if-nez v0, :cond_e

    if-eqz v4, :cond_e

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/16 v0, 0x21

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    .line 27
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    if-eq v0, v11, :cond_d

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_4
    if-ge v7, v0, :cond_6

    .line 30
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/16 v7, 0xa

    .line 31
    invoke-static {v2, v7}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v11

    const v13, 0x7f11023c

    const-wide/16 v14, -0x1

    cmp-long v16, v11, v14

    if-eqz v16, :cond_b

    .line 32
    iget-object v5, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-wide v5, v5, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    cmp-long v17, v11, v5

    if-eqz v17, :cond_b

    .line 33
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/2addr v0, v9

    .line 34
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_7

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 37
    :cond_8
    invoke-static {v2, v7}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v5

    cmp-long v0, v5, v14

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-wide v11, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    cmp-long v0, v5, v11

    if-eqz v0, :cond_9

    .line 39
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_goto_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_6

    .line 40
    :cond_9
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->val$autoMode:Z

    if-nez v0, :cond_a

    .line 41
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v2, v13, v8}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 42
    :cond_a
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_6

    .line 43
    :cond_b
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->val$autoMode:Z

    if-nez v0, :cond_c

    .line 44
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v2, v13, v8}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 45
    :cond_c
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    const-wide/16 v5, 0x0

    :goto_6
    move-object v2, v0

    goto :goto_8

    .line 46
    :cond_d
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    move-object v2, v0

    goto :goto_7

    .line 47
    :cond_e
    iput v10, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :goto_7
    const-wide/16 v5, 0x0

    .line 48
    :goto_8
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-eq v0, v9, :cond_f

    if-eq v0, v10, :cond_f

    goto :goto_9

    .line 49
    :cond_f
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v7, 0x7f110139

    invoke-virtual {v0, v3, v7, v8}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 50
    :goto_9
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncFTPApache$1;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v0, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v2, v5, v6, v4, v0}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    :cond_10
    return-void
.end method
