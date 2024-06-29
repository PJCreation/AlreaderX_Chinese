.class public Lcom/neverland/utils/SyncAll/SyncWebDav1;
.super Lcom/neverland/utils/SyncAll/BaseSyncAll;
.source "SyncWebDav1.java"


# instance fields
.field private final addr:Ljava/lang/String;

.field private final useHTTP1:Z


# direct methods
.method public constructor <init>(Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;->user:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVName:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;->pass:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_webdav"

    .line 4
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;->addr:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVAddr1:Ljava/lang/String;

    :goto_2
    if-eqz p1, :cond_4

    .line 6
    iget-boolean p1, p1, Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;->addon:Z

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean p1, p1, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVUseHTTP1:Z

    :goto_3
    iput-boolean p1, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->useHTTP1:Z

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "htt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v1, v1, Lcom/neverland/prefs/TInternalOptions;->networkUseHttps:Z

    if-eqz v1, :cond_5

    const-string v1, "https://"

    goto :goto_4

    :cond_5
    const-string v1, "http://"

    :goto_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_7

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_7
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->addr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->addr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->useHTTP1:Z

    return p0
.end method


# virtual methods
.method public getConnection()Lcom/neverland/utils/SyncAll/ConnectionBase;
    .locals 3

    .line 1
    new-instance v0, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->addr:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->useHTTP1:Z

    invoke-direct {v0, v1, v2}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public isReady(ZZ)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/neverland/utils/TCustomDevice;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-static {p1}, Lcom/neverland/mainApp;->m(Landroid/app/Activity;)V

    :cond_1
    if-eqz v0, :cond_4

    .line 4
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->addr:Ljava/lang/String;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, p2, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :cond_5
    :goto_0
    return v1
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

    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->addr:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;

    invoke-direct {v0, p0, p1}, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;-><init>(Lcom/neverland/utils/SyncAll/SyncWebDav1;Z)V

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

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1;->addr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->log(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;-><init>(Lcom/neverland/utils/SyncAll/SyncWebDav1;Ljava/lang/String;Z)V

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
