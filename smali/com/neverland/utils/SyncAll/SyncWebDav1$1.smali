.class Lcom/neverland/utils/SyncAll/SyncWebDav1$1;
.super Ljava/lang/Object;
.source "SyncWebDav1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/utils/SyncAll/SyncWebDav1;->readPosition(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

.field final synthetic val$autoMode:Z


# direct methods
.method constructor <init>(Lcom/neverland/utils/SyncAll/SyncWebDav1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iput-boolean p2, p0, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->val$autoMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    .line 2
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_start:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    iget-object v3, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v4, v3, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v3, v3, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-static {v0, v5, v6, v4, v3}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    move-result-object v0

    sget-object v3, Lcom/neverland/utils/SyncAll/SyncManager$RESULT;->access:Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    if-ne v0, v3, :cond_f

    .line 3
    new-instance v3, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;

    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/SyncWebDav1;->access$000(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-static {v4}, Lcom/neverland/utils/SyncAll/SyncWebDav1;->access$100(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;-><init>(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v4, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->user:Ljava/lang/String;

    iget-object v0, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->pass:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->connect(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "AlReaderX-01Sync"

    .line 5
    invoke-virtual {v3, v4}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->cdOrCreateFolder(Ljava/lang/String;)V

    .line 6
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const-string v7, "/"

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_1

    .line 7
    :try_start_0
    iget-object v0, v3, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-static {v12}, Lcom/neverland/utils/SyncAll/SyncWebDav1;->access$000(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v12, v12, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v3, v12}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcom/thegrizzlylabs/sardineandroid/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 9
    iput v10, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 10
    :cond_1
    :goto_1
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v11, 0x0

    if-nez v0, :cond_3

    .line 11
    :try_start_1
    iget-object v0, v3, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->sardine:Lcom/thegrizzlylabs/sardineandroid/b;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-static {v13}, Lcom/neverland/utils/SyncAll/SyncWebDav1;->access$000(Lcom/neverland/utils/SyncAll/SyncWebDav1;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v4, v4, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->escapeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/thegrizzlylabs/sardineandroid/b;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 13
    :goto_2
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_2

    .line 14
    new-instance v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v13, v7, v9, v12, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 18
    iput v10, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    .line 19
    :cond_3
    :goto_3
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    const/4 v4, 0x2

    if-ne v0, v8, :cond_4

    .line 20
    sget-object v2, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto/16 :goto_8

    :cond_4
    if-nez v0, :cond_d

    if-eqz v11, :cond_d

    .line 21
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    const/16 v0, 0x21

    .line 22
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    .line 23
    invoke-virtual {v11, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v8, -0x1

    if-eq v2, v8, :cond_c

    if-eq v0, v8, :cond_c

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_4
    if-ge v7, v0, :cond_5

    .line 26
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    const/16 v7, 0xa

    .line 27
    invoke-static {v2, v7}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v12

    const v8, 0x7f11023c

    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-eqz v16, :cond_a

    .line 28
    iget-object v5, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-wide v5, v5, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncID:J

    cmp-long v17, v12, v5

    if-eqz v17, :cond_a

    .line 29
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/2addr v0, v10

    .line 30
    :goto_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 31
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_6

    .line 32
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 33
    :cond_7
    invoke-static {v2, v7}, Lcom/neverland/engbook/util/f0;->i(Ljava/lang/StringBuilder;I)J

    move-result-wide v5

    cmp-long v0, v5, v14

    if-eqz v0, :cond_8

    .line 34
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-wide v12, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncReadPos:J

    cmp-long v0, v5, v12

    if-eqz v0, :cond_8

    .line 35
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_goto_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_6

    .line 36
    :cond_8
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->val$autoMode:Z

    if-nez v0, :cond_9

    .line 37
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v2, v8, v9}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 38
    :cond_9
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    goto :goto_6

    .line 39
    :cond_a
    iget-boolean v0, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->val$autoMode:Z

    if-nez v0, :cond_b

    .line 40
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v2, v8, v9}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 41
    :cond_b
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_no_new:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    const-wide/16 v5, 0x0

    :goto_6
    move-object v2, v0

    goto :goto_8

    .line 42
    :cond_c
    sget-object v0, Lcom/neverland/utils/SyncAll/SyncManager$STATE;->net_read_error:Lcom/neverland/utils/SyncAll/SyncManager$STATE;

    move-object v2, v0

    goto :goto_7

    .line 43
    :cond_d
    iput v4, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    :goto_7
    const-wide/16 v5, 0x0

    .line 44
    :goto_8
    invoke-virtual {v3}, Lcom/neverland/utils/SyncAll/ConnectionWebDAV1;->disconnect()V

    .line 45
    iget v0, v3, Lcom/neverland/utils/SyncAll/ConnectionBase;->resSync:I

    if-eq v0, v10, :cond_e

    if-eq v0, v4, :cond_e

    goto :goto_9

    .line 46
    :cond_e
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v4, 0x7f110139

    invoke-virtual {v0, v3, v4, v9}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 47
    :goto_9
    iget-object v0, v1, Lcom/neverland/utils/SyncAll/SyncWebDav1$1;->this$0:Lcom/neverland/utils/SyncAll/SyncWebDav1;

    iget-object v0, v0, Lcom/neverland/utils/SyncAll/BaseSyncAll;->syncCRC:Ljava/lang/String;

    invoke-static {v2, v5, v6, v11, v0}, Lcom/neverland/mainApp;->n(Lcom/neverland/utils/SyncAll/SyncManager$STATE;JLjava/lang/String;Ljava/lang/String;)Lcom/neverland/utils/SyncAll/SyncManager$RESULT;

    :cond_f
    return-void
.end method
