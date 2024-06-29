.class public abstract Lcom/neverland/utils/SyncAll/BaseSyncAll;
.super Ljava/lang/Object;
.source "BaseSyncAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;,
        Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;
    }
.end annotation


# static fields
.field public static final BookmarksRemoteCopy:Ljava/lang/String; = "_alrxbookmarks.db"

.field protected static final DEFAULT_TIMEOUT:I = 0x2710

.field public static final HTTPS_START:Ljava/lang/String; = "https://"

.field public static final HTTP_START:Ljava/lang/String; = "http://"

.field public static final MAX_FILESIZE_FORSYNC:I = 0x6400000

.field public static final NetFolderBook:Ljava/lang/String; = "AlReaderX-01Book"

.field public static final NetFolderSync:Ljava/lang/String; = "AlReaderX-01Sync"


# instance fields
.field protected TAG:Ljava/lang/String;

.field final pass:Ljava/lang/String;

.field protected syncCRC:Ljava/lang/String;

.field protected syncID:J

.field protected syncReadPos:J

.field final user:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    .line 4
    iput-wide v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    .line 5
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p2

    .line 5
    :goto_0
    invoke-virtual {v0, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->cd(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->deleteDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/neverland/utils/SyncAll/ConnectionBase;->disconnect()V

    .line 8
    iget p1, v0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p2

    .line 5
    :goto_0
    invoke-virtual {v0, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->cd(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/neverland/utils/SyncAll/ConnectionBase;->disconnect()V

    .line 8
    iget p1, v0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public downloadBookmarks(Ljava/io/File;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "AlReaderX-01Sync"

    .line 4
    invoke-virtual {v6, v7}, Lcom/neverland/utils/SyncAll/ConnectionBase;->cdOrCreateFolder(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "AlReaderX-01Sync"

    const-string v3, "_alrxbookmarks.db"

    move-object v0, v6

    move-object v1, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/neverland/utils/SyncAll/ConnectionBase;->downloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V

    .line 6
    iget v0, v6, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_0

    iget-boolean v0, v6, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->testCorrectBookmarks(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 8
    iput p1, v6, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const-string p1, "_alrxbookmarks.db"

    .line 9
    invoke-virtual {v6, v7, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->deleteFileSilence(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {v6}, Lcom/neverland/utils/SyncAll/ConnectionBase;->disconnect()V

    .line 11
    iget p1, v6, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_2

    iget-boolean p1, v6, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->OK:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->NOTEXISTS:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    :goto_0
    return-object p1

    .line 12
    :cond_3
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1
.end method

.method public downloadBookmarks(Ljava/lang/String;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->downloadBookmarks(Ljava/io/File;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    move-result-object p1

    return-object p1
.end method

.method public downloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->connect(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 6
    :goto_0
    invoke-virtual {v6, v0}, Lcom/neverland/utils/SyncAll/ConnectionBase;->cd(Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/neverland/utils/SyncAll/ConnectionBase;->downloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)V

    .line 8
    invoke-virtual {v6}, Lcom/neverland/utils/SyncAll/ConnectionBase;->disconnect()V

    .line 9
    iget p1, v6, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_2

    iget-boolean p1, v6, Lcom/neverland/utils/SyncAll/ConnectionBase;->fileExist:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->OK:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->NOTEXISTS:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    :goto_1
    return-object p1

    .line 10
    :cond_3
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 6

    .line 1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->downloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    move-result-object p1

    return-object p1
.end method

.method public abstract getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;
.end method

.method public getList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
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
    invoke-virtual {p0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->connect(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->cd(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/neverland/utils/SyncAll/ConnectionBase;->list(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 5
    :goto_0
    iget v0, v0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez v0, :cond_1

    move-object v1, p1

    :cond_1
    return-object v1
.end method

.method public isReady(ZZ)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method protected log(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public readParameters()V
    .locals 3

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v1, v0, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object v1, v1, Lcom/neverland/book/TBook$TBookInfo;->crc:Ljava/lang/String;

    iput-object v1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->getSyncId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    .line 3
    iget-object v0, v0, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget v0, v0, Lcom/neverland/book/TBook$TBookInfo;->readPositionStart:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    return-void
.end method

.method public readPosition(ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected testCorrectBookmarks(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->connect(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/neverland/utils/SyncAll/ConnectionBase;->cdOrCreateFolder(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/neverland/utils/SyncAll/ConnectionBase;->uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    iget p1, v0, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public writePosition(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
