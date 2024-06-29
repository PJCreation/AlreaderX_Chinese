.class public Lcom/neverland/utils/SyncAll/ConnectionSFTP;
.super Lcom/neverland/utils/SyncAll/ConnectionBase;
.source "ConnectionSFTP.java"


# instance fields
.field channelSftp:Lcom/jcraft/jsch/ChannelSftp;

.field scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

.field session:Lcom/jcraft/jsch/Session;

.field ssh:Lcom/jcraft/jsch/JSch;


# direct methods
.method public constructor <init>(Lcom/neverland/utils/SyncAll/SyncScanAddr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/neverland/utils/SyncAll/ConnectionBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->ssh:Lcom/jcraft/jsch/JSch;

    .line 3
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->session:Lcom/jcraft/jsch/Session;

    .line 4
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    .line 5
    sget-object v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->SFTP:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->NETWORKType:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    .line 6
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    return-void
.end method


# virtual methods
.method public cd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->cd(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cd root return: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->pwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_0
    :goto_0
    return-void
.end method

.method public cdOrCreateFolder(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->cd(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput v1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_1
    const/16 v0, 0x2f

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->cdOrCreateFolderReal(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 8
    iget v5, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-eqz v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0, v3}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->cdOrCreateFolderReal(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-eq v3, v0, :cond_5

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->cdOrCreateFolderReal(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public cdOrCreateFolderReal(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/ChannelSftp;->cd(Ljava/lang/String;)V

    .line 3
    iput v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cd root return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v4}, Lcom/jcraft/jsch/ChannelSftp;->pwd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iput v2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 7
    :goto_1
    iget v3, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    if-ne v3, v2, :cond_1

    if-nez v1, :cond_1

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->mkdir(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/JSch;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch;-><init>()V

    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->ssh:Lcom/jcraft/jsch/JSch;

    .line 2
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    iget-object v2, v1, Lcom/neverland/utils/SyncAll/SyncScanAddr;->host:Ljava/lang/String;

    iget v1, v1, Lcom/neverland/utils/SyncAll/SyncScanAddr;->port:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->session:Lcom/jcraft/jsch/Session;

    .line 3
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->setPassword(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    const-string p2, "StrictHostKeyChecking"

    const-string v0, "no"

    .line 5
    invoke-virtual {p1, p2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/util/Properties;)V

    .line 7
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->connect()V

    .line 8
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->session:Lcom/jcraft/jsch/Session;

    const-string p2, "sftp"

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    iput-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    .line 9
    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->connect()V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "after start: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p2}, Lcom/jcraft/jsch/ChannelSftp;->pwd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    iget-object p1, p1, Lcom/neverland/utils/SyncAll/SyncScanAddr;->rootPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->cd(Ljava/lang/String;)V

    return-void
.end method

.method deleteDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->rmdir(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->rm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteFileSilence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->rm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public downloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    .line 1
    iput-boolean v5, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z

    .line 2
    iget v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, -0x1

    if-nez v0, :cond_1

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v11

    cmp-long v13, v11, v6

    if-lez v13, :cond_1

    const-string v11, "file exist!"

    .line 5
    invoke-virtual {v1, v11}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v9

    cmp-long v0, v9, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iput-boolean v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_1
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_5

    .line 10
    :try_start_1
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x3

    const-string v12, "%d/%d kB, %s"

    const/16 v14, 0xa

    if-eqz v0, :cond_3

    const/16 v15, 0x1000

    :try_start_2
    new-array v15, v15, [B

    .line 11
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v16, 0x0

    .line 12
    :goto_2
    :try_start_3
    invoke-virtual {v0, v15}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_2

    .line 13
    invoke-virtual {v6, v15, v5, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v6

    int-to-long v5, v7

    add-long v5, v16, v5

    :try_start_4
    new-array v7, v11, [Ljava/lang/Object;

    .line 14
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    shr-long v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/4 v13, 0x0

    aput-object v16, v7, v13

    shr-long v16, v9, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v7, v8

    const/16 v16, 0x2

    aput-object v2, v7, v16

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {v1, v7, v3, v4}, Lcom/neverland/utils/SyncAll/ConnectionBase;->reportMessage(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V

    move-wide/from16 v16, v5

    move-object/from16 v6, v18

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v18, v6

    .line 16
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 17
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-wide/from16 v6, v16

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v18, v6

    .line 20
    :goto_3
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :try_start_7
    throw v0

    :cond_3
    const-wide/16 v6, 0x0

    :goto_4
    cmp-long v0, v6, v9

    if-eqz v0, :cond_4

    const-string v0, "error size %d > %d"

    const/4 v5, 0x2

    new-array v15, v5, [Ljava/lang/Object;

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v15, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v15, v8

    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v1, v0, v8}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;Z)V

    .line 23
    iput v8, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_4
    new-array v0, v11, [Ljava/lang/Object;

    .line 24
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    shr-long/2addr v5, v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    shr-long v5, v9, v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v8

    const/4 v5, 0x2

    aput-object v2, v0, v5

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v1, v0, v3, v4}, Lcom/neverland/utils/SyncAll/ConnectionBase;->reportMessage(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    iput v8, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_5
    :goto_5
    return-void
.end method

.method list(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_4

    .line 2
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "list: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->pwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    .line 8
    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v3, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;

    invoke-direct {v3}, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;-><init>()V

    .line 11
    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->isDir:Z

    .line 12
    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->path:Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->size:J

    .line 14
    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->name:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getMTime()I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iput-wide v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->date:J

    .line 16
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 2
    iget p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p4, :cond_0

    .line 3
    :try_start_0
    iget-object p4, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p4, p3}, Lcom/jcraft/jsch/ChannelSftp;->stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p4}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p4, v1, v3

    if-nez p4, :cond_0

    .line 5
    iput-boolean v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 6
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iget-boolean p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z

    if-eqz p4, :cond_2

    iget p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p4, :cond_2

    const/4 p4, 0x0

    .line 8
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p4, v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz p4, :cond_1

    .line 10
    :try_start_2
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionSFTP;->channelSftp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1, p4, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 11
    iput v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    iput p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 14
    :goto_2
    :try_start_3
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 16
    :cond_1
    iput p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_2
    :goto_3
    return-void
.end method
