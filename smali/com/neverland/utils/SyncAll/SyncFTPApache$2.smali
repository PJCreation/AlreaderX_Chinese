.class Lcom/neverland/utils/SyncAll/SyncFTPApache$2;
.super Ljava/lang/Object;
.source "SyncFTPApache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/utils/SyncAll/SyncFTPApache;->writePosition(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

.field final synthetic val$autoMode:Z

.field final synthetic val$os:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neverland/utils/SyncAll/SyncFTPApache;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iput-object p2, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->val$os:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->val$autoMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_ok:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 2
    sget-object v1, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v3, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3, v2}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v1

    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v1, v2, :cond_7

    .line 3
    new-instance v1, Lcom/neverland/utils/SyncAll/ConnectionAFTP;

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/SyncFTPApache;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    invoke-direct {v1, v2}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;-><init>(Lcom/neverland/utils/SyncAll/SyncScanAddr;)V

    .line 4
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v3, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AlReaderX-01Sync"

    .line 5
    invoke-virtual {v1, v2}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->cdOrCreateFolder(Ljava/lang/String;)V

    .line 6
    iget v2, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_3

    .line 7
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->val$os:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 9
    :try_start_1
    iget-object v8, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeSYNC1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 10
    iget-object v8, v1, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    iget-object v9, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v9, v9, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v8, v9, v2}, Lorg/apache/commons/net/ftp/c;->V0(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    :goto_1
    iput v8, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 11
    iget-object v8, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeSYNC2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->val$os:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/b;->H()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    .line 12
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    iput v7, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 14
    :goto_2
    :try_start_2
    iget v8, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-eqz v8, :cond_1

    .line 15
    iget-object v8, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeFile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/b;->H()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 17
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 18
    :cond_2
    iput v7, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 19
    :cond_3
    :goto_3
    invoke-virtual {v1}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->disconnect()V

    .line 20
    iget v1, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_4

    .line 21
    :cond_4
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v2, 0x7f110139

    invoke-virtual {v0, v1, v2, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 22
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_4

    .line 23
    :cond_5
    iget-boolean v1, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->val$autoMode:Z

    if-nez v1, :cond_6

    .line 24
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v7, 0x7f11023d

    invoke-virtual {v1, v2, v7, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 25
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/SyncFTPApache$2;->this$0:Lcom/neverland/utils/SyncAll/SyncFTPApache;

    iget-object v1, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v0, v4, v5, v3, v1}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    :cond_7
    return-void
.end method
