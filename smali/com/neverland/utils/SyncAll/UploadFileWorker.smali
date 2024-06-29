.class public Lcom/neverland/utils/SyncAll/UploadFileWorker;
.super Landroidx/work/Worker;
.source "UploadFileWorker.java"


# static fields
.field public static final FILE_NAME1:Ljava/lang/String; = "filename"

.field public static final FOLDER_BACKUP:I = 0x2

.field public static final FOLDER_BMK:I = 0x1

.field public static final FOLDER_BOOK:I = 0x0

.field public static final FOLDER_SYNC:I = 0x4

.field public static final SYNC_FOLD:Ljava/lang/String; = "folder"

.field public static final SYNC_MODE:Ljava/lang/String; = "syncmode"

.field private static final TAG:Ljava/lang/String; = "uploadbook"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "uploadbook"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 18
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "start sync"

    .line 1
    invoke-direct {v0, v1}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "filename"

    .line 3
    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "folder"

    const/4 v4, 0x4

    .line 4
    invoke-virtual {v1, v3, v4}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "AlReaderX-01Sync"

    const/16 v6, 0x2f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    if-eq v3, v7, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v3, v9

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v11, v11, Lcom/neverland/utils/TCustomDevice;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 7
    :cond_1
    new-instance v3, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AlReaderX-01Book"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v3, Landroid/text/format/Time;->year:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    iget v3, v3, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v9

    const-string v3, "/%04d-%02d"

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v3, v2

    :goto_1
    const-string v10, "syncmode"

    .line 10
    invoke-virtual {v1, v10, v8}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 11
    sget-object v10, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v11, 0x7f110235

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v2, :cond_7

    .line 12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sync file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;)V

    .line 13
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 15
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/32 v15, 0x6400000

    cmp-long v17, v13, v15

    if-gez v17, :cond_5

    if-ne v1, v7, :cond_2

    .line 16
    new-instance v11, Lcom/neverland/utils/SyncAll/SyncFileSystem;

    invoke-direct {v11}, Lcom/neverland/utils/SyncAll/SyncFileSystem;-><init>()V

    goto :goto_3

    :cond_2
    if-ne v1, v4, :cond_3

    .line 17
    new-instance v1, Lcom/neverland/utils/SyncAll/SyncFTPApache;

    invoke-direct {v1, v11}, Lcom/neverland/utils/SyncAll/SyncFTPApache;-><init>(Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;)V

    :goto_2
    move-object v11, v1

    goto :goto_3

    :cond_3
    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 18
    new-instance v1, Lcom/neverland/utils/SyncAll/SyncSFTP;

    invoke-direct {v1, v11}, Lcom/neverland/utils/SyncAll/SyncSFTP;-><init>(Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    if-ne v1, v4, :cond_8

    .line 19
    new-instance v1, Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-direct {v1, v11}, Lcom/neverland/utils/SyncAll/SyncWebDav1;-><init>(Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;)V

    goto :goto_2

    :cond_5
    const-string v10, "file size is too big"

    .line 20
    invoke-direct {v0, v10, v9}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    const-string v10, "file read error"

    .line 21
    invoke-direct {v0, v10, v9}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    const-string v10, "file not found"

    .line 22
    invoke-direct {v0, v10, v9}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;Z)V

    move-object v12, v11

    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    .line 23
    invoke-virtual {v11, v8, v8}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->isReady(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v12, v1, v5, v9}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ok!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_9
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v5, 0x7f11030b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "error sync method"

    .line 27
    invoke-direct {v0, v1, v9}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;Z)V

    :goto_4
    const-string v1, "end sync"

    .line 28
    invoke-direct {v0, v1}, Lcom/neverland/utils/SyncAll/UploadFileWorker;->log(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    return-object v1
.end method
