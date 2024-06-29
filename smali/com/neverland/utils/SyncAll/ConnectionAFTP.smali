.class public Lcom/neverland/utils/SyncAll/ConnectionAFTP;
.super Lcom/neverland/utils/SyncAll/ConnectionBase;
.source "ConnectionAFTP.java"


# instance fields
.field ftp:Lorg/apache/commons/net/ftp/c;

.field scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;


# direct methods
.method public constructor <init>(Lcom/neverland/utils/SyncAll/SyncScanAddr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/neverland/utils/SyncAll/ConnectionBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    .line 3
    sget-object v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->FTP:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->NETWORKType:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    .line 4
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    return-void
.end method


# virtual methods
.method public cd(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    iget-object v1, v1, Lcom/neverland/utils/SyncAll/SyncScanAddr;->rootPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/c;->k0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    goto :goto_2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    iget-object v4, v4, Lcom/neverland/utils/SyncAll/SyncScanAddr;->rootPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/c;->k0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    iput v2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cd root return: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/b;->H()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/c;->O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    iput v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_3
    :goto_3
    return-void
.end method

.method public cdOrCreateFolder(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->cd(Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->cdOrCreateFolderReal(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v3, v2

    .line 7
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 8
    iget v5, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-eqz v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p0, v5}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->cdOrCreateFolderReal(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->cdOrCreateFolderReal(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public cdOrCreateFolderReal(Ljava/lang/String;)V
    .locals 5

    const-string v0, " >"

    .line 1
    iget v1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v1, :cond_3

    .line 2
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    iget-object v1, v1, Lcom/neverland/utils/SyncAll/SyncScanAddr;->rootPath:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge p1, v2, :cond_3

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/c;->k0(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "cd return: "

    if-eqz v2, :cond_1

    .line 6
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/b;->H()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/c;->O0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    .line 7
    iput v3, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    goto :goto_3

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/b;->H()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/c;->O0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_2

    .line 11
    :try_start_2
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/c;->L0(Ljava/lang/String;)Z

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "md return: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/b;->H()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/c;->O0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    new-instance v1, Lorg/apache/commons/net/ftp/c;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/c;-><init>()V

    iput-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    const/16 v2, 0x2710

    .line 2
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/c;->T0(I)V

    .line 3
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/b;->Z(Ljava/lang/String;)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/b;->q(Ljava/nio/charset/Charset;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/c;->S0(Z)V

    .line 7
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->scanAddr:Lcom/neverland/utils/SyncAll/SyncScanAddr;

    iget-object v3, v2, Lcom/neverland/utils/SyncAll/SyncScanAddr;->host:Ljava/lang/String;

    iget v2, v2, Lcom/neverland/utils/SyncAll/SyncScanAddr;->port:I

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/net/b;->g(Ljava/lang/String;I)V

    .line 8
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/b;->s(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    iput v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 11
    :goto_0
    iget v1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v1, :cond_1

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    const-string v2, "OPTS UTF8 ON"

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/b;->V(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_1
    :goto_1
    iget v1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v1, :cond_4

    .line 15
    :try_start_2
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/net/ftp/c;->J0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-ne p1, v0, :cond_3

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "login return: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/b;->H()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;Z)V

    goto :goto_3

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/c;->o0()V

    .line 18
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/c;->U0(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    iput v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 21
    :cond_4
    :goto_3
    iget p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_5

    .line 22
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "charset "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p2}, Lorg/apache/commons/net/b;->k()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    const-string p1, ""

    .line 24
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->cd(Ljava/lang/String;)V

    return-void
.end method

.method deleteDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/c;->P0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 3
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_1
    :goto_1
    return-void
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/c;->n0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 3
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_1
    :goto_1
    return-void
.end method

.method public deleteFileSilence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/c;->n0(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->K0()Z
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
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->h()V
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

    if-nez v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->F0()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v11, 0x0

    .line 4
    :goto_0
    array-length v12, v0

    if-ge v11, v12, :cond_2

    .line 5
    aget-object v12, v0, v11

    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    aget-object v12, v0, v11

    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v12

    cmp-long v14, v12, v6

    if-lez v14, :cond_1

    const-string v12, "file exist!"

    .line 6
    invoke-virtual {v1, v12}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    .line 7
    aget-object v0, v0, v11

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v9

    cmp-long v0, v9, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_1
    iput-boolean v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :cond_2
    :goto_2
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z

    if-eqz v0, :cond_6

    iget v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_6

    .line 11
    :try_start_1
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/c;->R0(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x3

    const-string v12, "%d/%d kB, %s"

    const/16 v14, 0xa

    if-eqz v0, :cond_4

    const/16 v15, 0x1000

    :try_start_2
    new-array v15, v15, [B

    .line 12
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v16, 0x0

    .line 13
    :goto_3
    :try_start_3
    invoke-virtual {v0, v15}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_3

    .line 14
    invoke-virtual {v6, v15, v5, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v6

    int-to-long v5, v7

    add-long v5, v16, v5

    :try_start_4
    new-array v7, v11, [Ljava/lang/Object;

    .line 15
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

    .line 16
    invoke-virtual {v1, v7, v3, v4}, Lcom/neverland/utils/SyncAll/ConnectionBase;->reportMessage(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V

    move-wide/from16 v16, v5

    move-object/from16 v6, v18

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v18, v6

    .line 17
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 18
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-wide/from16 v6, v16

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v18, v6

    .line 21
    :goto_4
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :try_start_7
    throw v0

    :cond_4
    const-wide/16 v6, 0x0

    :goto_5
    cmp-long v0, v6, v9

    if-eqz v0, :cond_5

    const-string v0, "error size %d > %d"

    const/4 v5, 0x2

    new-array v15, v5, [Ljava/lang/Object;

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v15, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v15, v8

    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {v1, v0, v8}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;Z)V

    .line 24
    iput v8, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_5
    new-array v0, v11, [Ljava/lang/Object;

    .line 25
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

    .line 26
    invoke-virtual {v1, v0, v3, v4}, Lcom/neverland/utils/SyncAll/ConnectionBase;->reportMessage(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    iput v8, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_6
    :goto_6
    return-void
.end method

.method list(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
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
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_7

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/c;->O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/c;->F0()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5
    array-length v2, v1

    if-lez v2, :cond_6

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 7
    aget-object v3, v1, v2

    .line 8
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    new-instance v4, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;

    invoke-direct {v4}, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;-><init>()V

    .line 13
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->isDir:Z

    .line 14
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->path:Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->size:J

    .line 16
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->date:J

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 2
    iget p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p4, :cond_1

    .line 3
    :try_start_0
    iget-object p4, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p4}, Lorg/apache/commons/net/ftp/c;->F0()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p4

    if-eqz p4, :cond_1

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_1

    .line 5
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p4, v1

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-string p4, "file exist!"

    .line 6
    invoke-virtual {p0, p4}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    .line 7
    iput-boolean v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p4

    .line 8
    invoke-virtual {p4}, Ljava/io/IOException;->printStackTrace()V

    .line 9
    :cond_1
    :goto_1
    iget-boolean p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z

    if-eqz p4, :cond_4

    iget p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p4, :cond_4

    const/4 p4, 0x0

    .line 10
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p4, v1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz p4, :cond_3

    .line 12
    :try_start_2
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionAFTP;->ftp:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p1, p3, p4}, Lorg/apache/commons/net/ftp/c;->V0(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    iput p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 15
    :goto_4
    :try_start_3
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 17
    :cond_3
    iput p2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_4
    :goto_5
    return-void
.end method
