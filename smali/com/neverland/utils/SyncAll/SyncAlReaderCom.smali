.class public Lcom/neverland/utils/SyncAll/SyncAlReaderCom;
.super Lcom/neverland/utils/SyncAll/BaseSyncAll;
.source "SyncAlReaderCom.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_alreader"

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/utils/SyncAll/SyncAlReaderCom;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/utils/SyncAll/SyncAlReaderCom;->syncAddUser()Z

    move-result p0

    return p0
.end method

.method private syncAddUser()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TInternalOptions;->networkUseHttps:Z

    if-eqz v4, :cond_0

    const-string v4, "https"

    goto :goto_0

    :cond_0
    const-string v4, "http"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://www.alreader.com/aldb/index2.php?o=setUser&u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&p=null&n="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v4, v4, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object v4, v4, Lcom/neverland/book/TBook$TBookInfo;->crc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&a=AlReaderX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "POST"

    .line 3
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-length"

    const-string v3, "0"

    .line 4
    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 6
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 7
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v1, 0x2710

    .line 8
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 9
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 12
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 13
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "adduser"

    const-string v3, "except"

    .line 14
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 15
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 16
    :catch_3
    :cond_3
    throw v0
.end method


# virtual methods
.method public downloadBookmarks(Ljava/io/File;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public downloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 0

    .line 1
    sget-object p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p1
.end method

.method public getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady(ZZ)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/neverland/utils/TCustomDevice;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-static {p1}, Lcom/neverland/mainApp;->m(Landroid/app/Activity;)V

    :cond_0
    return v0
.end method

.method public readPosition(ZZ)Z
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_command_resetfornew:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_command:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    goto :goto_1

    :cond_1
    const-string v0, "manual"

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {p2, v2, v3, v0, v1}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object p2

    .line 4
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    const/4 v1, 0x1

    const v4, 0x7f110139

    const/4 v5, 0x0

    if-ne p2, v0, :cond_3

    .line 5
    iget-object p2, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sread user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/neverland/utils/SyncAll/SyncAlReaderCom$1;

    invoke-direct {v0, p0, p1}, Lcom/neverland/utils/SyncAll/SyncAlReaderCom$1;-><init>(Lcom/neverland/utils/SyncAll/SyncAlReaderCom;Z)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return v1

    .line 9
    :cond_2
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object p2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1, p2, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 10
    sget-object p1, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    const/4 p2, 0x0

    const-string v0, "invalid user"

    invoke-static {p1, v2, v3, v0, p2}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    goto :goto_2

    .line 11
    :cond_3
    sget-object p1, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne p2, p1, :cond_4

    .line 12
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object p2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1, p2, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 13
    :cond_4
    sget-object p1, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied_but_not_error:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne p2, p1, :cond_5

    return v1

    :cond_5
    :goto_2
    return v5
.end method

.method public uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writePosition(Z)Z
    .locals 7

    .line 1
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

    .line 2
    sget-object v1, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    const/4 v2, 0x1

    const v3, 0x7f110139

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swrite user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/neverland/utils/SyncAll/SyncAlReaderCom$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/neverland/utils/SyncAll/SyncAlReaderCom$2;-><init>(Lcom/neverland/utils/SyncAll/SyncAlReaderCom;Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v2

    .line 8
    :cond_1
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1, v0, v3, v4}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 9
    sget-object p1, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "invalid user"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    goto :goto_1

    .line 10
    :cond_2
    sget-object p1, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, p1, :cond_3

    .line 11
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1, v0, v3, v4}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 12
    :cond_3
    sget-object p1, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->denied_but_not_error:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, p1, :cond_4

    return v2

    :cond_4
    :goto_1
    return v4
.end method
