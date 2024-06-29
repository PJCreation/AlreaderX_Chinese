.class public Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;
.super Lcom/neverland/utils/SyncAll/ConnectionBase;
.source "ConnectionWebDAV1.java"


# instance fields
.field addr:Ljava/lang/String;

.field sardine:Lcom/thegrizzlylabs/sardineandroid/b;

.field useHTTP1:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/neverland/utils/SyncAll/ConnectionBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->useHTTP1:Z

    .line 4
    sget-object v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->WebDav:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->NETWORKType:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    .line 5
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->useHTTP1:Z

    return-void
.end method


# virtual methods
.method cd(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/thegrizzlylabs/sardineandroid/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    iput v1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 6
    :goto_1
    iget p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-ne p1, v0, :cond_1

    .line 7
    iput v1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_1
    return-void
.end method

.method public cdOrCreateFolder(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->cd(Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->cdOrCreateFolderReal(Ljava/lang/String;)V

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
    invoke-virtual {p0, v5}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->cdOrCreateFolderReal(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->cdOrCreateFolderReal(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public cdOrCreateFolderReal(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/thegrizzlylabs/sardineandroid/b;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    :goto_1
    iput v4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    iput v2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 6
    :goto_2
    iget v4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-eq v4, v3, :cond_1

    goto :goto_4

    :cond_1
    if-nez v1, :cond_2

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thegrizzlylabs/sardineandroid/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_4
    iget p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-ne p1, v3, :cond_4

    .line 10
    iput v2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_4
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->useHTTP1:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0}, Lokhttp3/z$a;-><init>()V

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/z$a;->H(Ljava/util/List;)Lokhttp3/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/z$a;->c()Lokhttp3/z;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/impl/b;

    invoke-direct {v1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;-><init>(Lokhttp3/z;)V

    iput-object v1, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/b;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;-><init>()V

    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    invoke-interface {v0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :goto_1
    return-void
.end method

.method deleteDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/b;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteFileSilence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/b;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public downloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 1
    iput-boolean v4, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z

    move-object/from16 v5, p2

    .line 2
    invoke-virtual {v1, v5}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {v1, v0}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    iget v7, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, -0x1

    if-nez v7, :cond_2

    .line 5
    :try_start_0
    iget-object v7, v1, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Lcom/thegrizzlylabs/sardineandroid/b;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v13, 0x0

    .line 6
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 7
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/thegrizzlylabs/sardineandroid/a;

    invoke-virtual {v14}, Lcom/thegrizzlylabs/sardineandroid/a;->x()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/thegrizzlylabs/sardineandroid/a;

    invoke-virtual {v14}, Lcom/thegrizzlylabs/sardineandroid/a;->n()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v16, v14, v8

    if-lez v16, :cond_1

    const-string v0, "file exist!"

    .line 8
    invoke-virtual {v1, v0}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    .line 9
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/a;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/a;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v0, v11, v8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_1
    iput-boolean v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    iput v10, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 13
    :cond_2
    :goto_2
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z

    if-eqz v0, :cond_6

    iget v0, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_6

    .line 14
    :try_start_1
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/thegrizzlylabs/sardineandroid/b;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x3

    const-string v7, "%d/%d kB, %s"

    if-eqz v0, :cond_4

    const/16 v15, 0x1000

    :try_start_2
    new-array v15, v15, [B

    .line 15
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v16, 0x0

    .line 16
    :goto_3
    :try_start_3
    invoke-virtual {v0, v15}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v13, -0x1

    if-eq v9, v13, :cond_3

    .line 17
    invoke-virtual {v8, v15, v4, v9}, Ljava/io/FileOutputStream;->write([BII)V

    move-object v13, v15

    int-to-long v14, v9

    add-long v14, v16, v14

    new-array v9, v5, [Ljava/lang/Object;

    .line 18
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    const/16 v18, 0xa

    shr-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v9, v4

    shr-long v16, v11, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v9, v10

    const/16 v16, 0x2

    aput-object v6, v9, v16

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-virtual {v1, v9, v2, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->reportMessage(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V

    move-wide/from16 v16, v14

    move-object v15, v13

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 21
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-wide/from16 v8, v16

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 24
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :try_start_6
    throw v0

    :cond_4
    const-wide/16 v8, 0x0

    :goto_4
    cmp-long v0, v8, v11

    if-eqz v0, :cond_5

    const-string v0, "error size %d > %d"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    .line 25
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v14, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v14, v10

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v1, v0, v10}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;Z)V

    .line 27
    iput v10, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_5
    new-array v0, v5, [Ljava/lang/Object;

    .line 28
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const/16 v5, 0xa

    shr-long/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v4

    shr-long v4, v11, v5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v10

    const/4 v4, 0x2

    aput-object v6, v0, v4

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v0, v2, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->reportMessage(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    iput v10, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_6
    :goto_5
    return-void
.end method

.method protected escapeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "@#%"

    .line 1
    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, "%25"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "%23"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v0}, Lcom/thegrizzlylabs/sardineandroid/b;->c(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_9

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thegrizzlylabs/sardineandroid/a;

    .line 8
    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->x()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->C()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 10
    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->t()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 12
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_1

    .line 13
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_1

    .line 14
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v6, "UTF-8"

    .line 15
    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_1

    .line 17
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 19
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    .line 20
    :cond_8
    new-instance v5, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;

    invoke-direct {v5}, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;-><init>()V

    .line 21
    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->C()Z

    move-result v6

    iput-boolean v6, v5, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->isDir:Z

    .line 22
    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->x()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->path:Ljava/lang/String;

    .line 23
    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->n()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->size:J

    .line 24
    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->x()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->name:Ljava/lang/String;

    .line 25
    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->v()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->date:J

    .line 26
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    iput v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method public uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z

    .line 2
    invoke-virtual {p0, p2}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p3}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "/"

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 4
    iget p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p4, :cond_1

    .line 5
    :try_start_0
    iget-object p4, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Lcom/thegrizzlylabs/sardineandroid/b;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_1

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thegrizzlylabs/sardineandroid/a;

    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thegrizzlylabs/sardineandroid/a;

    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/a;->n()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-string p4, "file exist!"

    .line 8
    invoke-virtual {p0, p4}, Lcom/neverland/utils/SyncAll/ConnectionBase;->log(Ljava/lang/String;)V

    .line 9
    iput-boolean v2, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p4

    .line 10
    invoke-virtual {p4}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_1
    :goto_1
    iget-boolean p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->needUpload:Z

    if-eqz p4, :cond_2

    iget p4, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p4, :cond_2

    .line 12
    :try_start_1
    iget-object p4, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "*/*"

    invoke-interface {p4, p2, p1, p3, v2}, Lcom/thegrizzlylabs/sardineandroid/b;->g(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    iput v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :cond_2
    :goto_2
    return-void
.end method
