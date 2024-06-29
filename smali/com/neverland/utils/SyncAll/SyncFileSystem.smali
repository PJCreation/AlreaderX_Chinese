.class public Lcom/neverland/utils/SyncAll/SyncFileSystem;
.super Lcom/neverland/utils/SyncAll/BaseSyncAll;
.source "SyncFileSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_file"

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public downloadBookmarks(Ljava/io/File;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->syncPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AlReaderX-01Sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "_alrxbookmarks.db"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    const-string v0, "file exist"

    .line 5
    invoke-virtual {p0, v0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 6
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 7
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v3, 0x2000

    :try_start_3
    new-array v3, v3, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    if-lez v4, :cond_0

    const/4 v5, 0x0

    .line 9
    :try_start_5
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 10
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 13
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->testCorrectBookmarks(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez p1, :cond_2

    .line 15
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 16
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_2
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 18
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 19
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    return-object p1

    .line 20
    :cond_2
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 21
    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 22
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->OK:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception p1

    .line 24
    :try_start_f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    :try_start_10
    throw p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :catch_3
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "can\'t write"

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1

    .line 28
    :cond_3
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->NOTEXISTS:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1

    :catch_4
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1
.end method

.method public downloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 2

    .line 1
    new-instance p4, Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, v0, Lcom/neverland/utils/TCustomDevice;->syncPath:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p4}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3
    new-instance p3, Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x2f

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p4

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_2

    const-string p2, "file exist"

    .line 5
    invoke-virtual {p0, p2}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 6
    :try_start_1
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 7
    :try_start_2
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 p1, 0x2000

    :try_start_3
    new-array p1, p1, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gtz p4, :cond_1

    goto :goto_1

    :cond_1
    if-lez p4, :cond_0

    const/4 p5, 0x0

    .line 9
    :try_start_5
    invoke-virtual {p3, p1, p5, p4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 12
    :goto_1
    :try_start_7
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 13
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 14
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->OK:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_9
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 16
    :try_start_b
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    :try_start_c
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception p1

    const/4 p2, 0x1

    const-string p3, "can\'t write"

    .line 17
    invoke-virtual {p0, p3, p2}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;Z)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1

    .line 20
    :cond_2
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->NOTEXISTS:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1

    :catch_3
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1
.end method

.method public getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public readPosition(ZZ)Z
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "sync read file start"

    .line 1
    invoke-virtual {v1, v0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_command_resetfornew:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_command:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "auto"

    goto :goto_1

    :cond_1
    const-string v2, "manual"

    .line 3
    :goto_1
    iget-object v3, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 4
    invoke-static {v0, v4, v5, v2, v3}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    const v3, 0x7f110139

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v0, v2, :cond_19

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sread user "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 8
    sget-object v8, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iget-object v9, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v10, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v8, v4, v5, v9, v10}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v8

    if-ne v8, v2, :cond_18

    .line 9
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v9, v9, Lcom/neverland/utils/TCustomDevice;->syncPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    .line 11
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 13
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    move-object v2, v0

    move-object v8, v10

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_4

    if-eqz v8, :cond_4

    .line 14
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x400

    new-array v12, v12, [B

    .line 15
    :goto_3
    invoke-virtual {v8, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_2

    .line 16
    new-instance v14, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-direct {v14, v12, v7, v13, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 17
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v10

    move v10, v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v10

    const/4 v10, 0x1

    .line 19
    :goto_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v8, v0

    .line 20
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    move v0, v10

    move-object v10, v11

    goto :goto_6

    :cond_3
    move-object v2, v0

    const/4 v0, 0x3

    :cond_4
    :goto_6
    const/4 v8, 0x2

    if-ne v0, v9, :cond_5

    .line 21
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_c

    :cond_5
    if-nez v0, :cond_16

    if-eqz v10, :cond_16

    .line 22
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_16

    const/16 v2, 0x23

    .line 23
    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v9, 0x20

    const-wide/16 v12, -0x1

    const/16 v14, 0xa

    if-lez v2, :cond_d

    .line 24
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v6

    if-ge v2, v15, :cond_d

    .line 25
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_6

    .line 27
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 28
    :cond_6
    invoke-static {v15, v14}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v4

    cmp-long v16, v4, v12

    if-eqz v16, :cond_b

    .line 29
    iget-wide v11, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    cmp-long v13, v4, v11

    if-eqz v13, :cond_b

    .line 30
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/2addr v2, v6

    .line 31
    :goto_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 32
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v9, :cond_7

    .line 33
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 34
    :cond_8
    invoke-static {v15, v14}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v4

    const-wide/16 v11, -0x1

    cmp-long v2, v4, v11

    if-eqz v2, :cond_9

    .line 35
    iget-wide v11, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_9

    .line 36
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_goto_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_c

    :cond_9
    if-nez p1, :cond_a

    .line 37
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v9, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v11, 0x7f11023c

    invoke-virtual {v2, v9, v11, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 38
    :cond_a
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_c

    :cond_b
    const v11, 0x7f11023c

    if-nez p1, :cond_c

    .line 39
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v2, v4, v11, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 40
    :cond_c
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    :goto_9
    const-wide/16 v4, 0x0

    goto/16 :goto_c

    :cond_d
    const/16 v2, 0x21

    .line 41
    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 42
    invoke-virtual {v10, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v11, -0x1

    if-eq v4, v11, :cond_15

    if-eq v2, v11, :cond_15

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_a
    if-ge v5, v2, :cond_e

    .line 45
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 46
    :cond_e
    invoke-static {v4, v14}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v11

    const-wide/16 v16, -0x1

    cmp-long v5, v11, v16

    if-eqz v5, :cond_13

    .line 47
    iget-wide v14, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    cmp-long v13, v11, v14

    if-eqz v13, :cond_13

    .line 48
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/2addr v2, v6

    .line 49
    :goto_b
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_10

    .line 50
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v9, :cond_f

    .line 51
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    const/16 v2, 0xa

    .line 52
    invoke-static {v4, v2}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v4

    const-wide/16 v11, -0x1

    cmp-long v2, v4, v11

    if-eqz v2, :cond_11

    .line 53
    iget-wide v11, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_11

    .line 54
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_goto_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_c

    :cond_11
    if-nez p1, :cond_12

    .line 55
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v9, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v11, 0x7f11023c

    invoke-virtual {v2, v9, v11, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 56
    :cond_12
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_c

    :cond_13
    const v11, 0x7f11023c

    if-nez p1, :cond_14

    .line 57
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v2, v4, v11, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 58
    :cond_14
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_9

    .line 59
    :cond_15
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_9

    :cond_16
    const/4 v0, 0x2

    goto/16 :goto_9

    :goto_c
    if-eq v0, v6, :cond_17

    if-eq v0, v8, :cond_17

    goto :goto_d

    .line 60
    :cond_17
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v8, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v8, v3, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 61
    :goto_d
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v2, v4, v5, v10, v0}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    :cond_18
    return v6

    .line 62
    :cond_19
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, v2, :cond_1a

    .line 63
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v2, v3, v7}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto :goto_e

    .line 64
    :cond_1a
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied_but_not_error:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, v2, :cond_1b

    return v6

    :cond_1b
    :goto_e
    return v7
.end method

.method public uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->syncPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long p4, v2, v4

    if-nez p4, :cond_0

    const-string p1, "file exist"

    .line 5
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    return p2

    .line 6
    :cond_0
    :try_start_1
    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 7
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v0, 0x2000

    :try_start_3
    new-array v0, v0, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    if-lez v1, :cond_1

    .line 9
    :try_start_5
    invoke-virtual {p1, v0, p3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 12
    :goto_1
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 13
    :try_start_8
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    return p2

    :catchall_0
    move-exception v0

    .line 14
    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 15
    :try_start_b
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    :try_start_c
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception p1

    const-string p4, "can\'t write"

    .line 16
    invoke-virtual {p0, p4, p2}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p3

    :catch_3
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p3
.end method

.method public writePosition(Z)Z
    .locals 12

    const-string v0, "sync write file start"

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_command:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iget-wide v1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    if-eqz p1, :cond_0

    const-string v3, "auto"

    goto :goto_0

    :cond_0
    const-string v3, "manual"

    :goto_0
    iget-object v4, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    const v2, 0x7f110139

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_7

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "swrite user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 6
    sget-object v5, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_ok:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 7
    sget-object v6, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iget-object v7, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v9, 0x0

    invoke-static {v6, v9, v10, v7, v8}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v6

    const/4 v7, 0x0

    if-ne v6, v1, :cond_6

    .line 8
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v8, v8, Lcom/neverland/utils/TCustomDevice;->syncPath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 11
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x0

    :goto_2
    const/4 v8, 0x2

    if-nez v6, :cond_3

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 13
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v11, v7

    const/4 v6, 0x2

    .line 15
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v6, 0x2

    .line 17
    :goto_4
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v6, 0x2

    .line 19
    :goto_5
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    const/4 v6, 0x2

    :cond_3
    :goto_6
    if-eqz v6, :cond_5

    if-eq v6, v3, :cond_4

    if-eq v6, v8, :cond_4

    goto :goto_7

    .line 21
    :cond_4
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1, v0, v2, v4}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 22
    sget-object v5, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_7

    :cond_5
    if-nez p1, :cond_6

    .line 23
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f11023d

    invoke-virtual {p1, v0, v1, v4}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 24
    :cond_6
    :goto_7
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v5, v9, v10, v7, p1}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    return v3

    .line 25
    :cond_7
    sget-object p1, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, p1, :cond_8

    .line 26
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1, v0, v2, v4}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto :goto_8

    .line 27
    :cond_8
    sget-object p1, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied_but_not_error:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, p1, :cond_9

    return v3

    :cond_9
    :goto_8
    return v4
.end method
