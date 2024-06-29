.class Lcom/neverland/utils/SyncAll/SyncWebDav1$2;
.super Ljava/lang/Object;
.source "SyncWebDav1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/utils/SyncAll/SyncWebDav1;->writePosition(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

.field final synthetic val$autoMode:Z

.field final synthetic val$os:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neverland/utils/SyncAll/SyncWebDav1;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iput-object p2, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->val$os:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->val$autoMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_ok:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 2
    sget-object v1, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v3, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3, v2}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v1

    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v1, v2, :cond_4

    .line 3
    new-instance v1, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-static {v2}, Lcom/neverland/utils/SyncAll/SyncWebDav1;->access$000(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-static {v3}, Lcom/neverland/utils/SyncAll/SyncWebDav1;->access$100(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;-><init>(Ljava/lang/String;Z)V

    .line 4
    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v3, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AlReaderX-01Sync"

    .line 5
    invoke-virtual {v1, v2}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->cdOrCreateFolder(Ljava/lang/String;)V

    .line 6
    iget v3, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 7
    :try_start_0
    iget-object v3, v1, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-static {v8}, Lcom/neverland/utils/SyncAll/SyncWebDav1;->access$000(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v2, v2, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->val$os:Ljava/lang/String;

    const-string v8, "UTF-8"

    .line 8
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "*/*"

    .line 9
    invoke-interface {v3, v2, v7, v8}, Lcom/thegrizzlylabs/sardineandroid/b;->e(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    iput v6, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 12
    :cond_0
    :goto_0
    iget v1, v1, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v3, 0x7f110139

    invoke-virtual {v0, v1, v3, v2}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 14
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_write_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_1

    .line 15
    :cond_2
    iget-boolean v1, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->val$autoMode:Z

    if-nez v1, :cond_3

    .line 16
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v6, 0x7f11023d

    invoke-virtual {v1, v3, v6, v2}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 17
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$2;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v1, v1, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v4, v5, v2, v1}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    :cond_4
    return-void
.end method
