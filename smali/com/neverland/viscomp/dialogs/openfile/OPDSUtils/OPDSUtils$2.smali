.class Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;
.super Ljava/lang/Object;
.source "OPDSUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils;->deleteStorageFileOrFolder(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$delDir:Z

.field final synthetic val$remoteFileName:Ljava/lang/String;

.field final synthetic val$remoteFolder:Ljava/lang/String;

.field final synthetic val$syncObject:Lcom/neverland/utils/SyncAll/BaseSyncAll;


# direct methods
.method constructor <init>(ZLcom/neverland/utils/SyncAll/BaseSyncAll;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$delDir:Z

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$syncObject:Lcom/neverland/utils/SyncAll/BaseSyncAll;

    iput-object p3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$remoteFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$remoteFolder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$delDir:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$syncObject:Lcom/neverland/utils/SyncAll/BaseSyncAll;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$remoteFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$remoteFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->deleteDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$syncObject:Lcom/neverland/utils/SyncAll/BaseSyncAll;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$remoteFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->val$remoteFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->deleteFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 5
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
