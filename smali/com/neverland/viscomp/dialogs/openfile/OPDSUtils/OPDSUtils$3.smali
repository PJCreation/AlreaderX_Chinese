.class Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$3;
.super Ljava/lang/Object;
.source "OPDSUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils;->readStorage(Lcom/neverland/viscomp/dialogs/openfile/OPDSState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/ArrayList<",
        "Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$libState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

.field final synthetic val$storage:Lcom/neverland/utils/SyncAll/BaseSyncAll;


# direct methods
.method constructor <init>(Lcom/neverland/utils/SyncAll/BaseSyncAll;Lcom/neverland/viscomp/dialogs/openfile/OPDSState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$3;->val$storage:Lcom/neverland/utils/SyncAll/BaseSyncAll;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$3;->val$libState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$3;->call()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$3;->val$storage:Lcom/neverland/utils/SyncAll/BaseSyncAll;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$3;->val$libState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
