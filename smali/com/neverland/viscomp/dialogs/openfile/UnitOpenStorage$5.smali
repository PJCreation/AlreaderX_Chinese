.class Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$5;
.super Ljava/lang/Object;
.source "UnitOpenStorage.java"

# interfaces
.implements Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    iget-wide v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadId:J

    invoke-virtual {v0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getCatalog(J)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->seriesNum:Ljava/lang/String;

    iget-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    iget-wide v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->reloadStorage(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f11022c

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f11022a

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method

.method public synthetic onDismiss()V
    .locals 0

    invoke-static {p0}, Lcom/neverland/viscomp/dialogs/popups/e;->a(Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;)V

    return-void
.end method

.method public synthetic onNoAction(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/neverland/viscomp/dialogs/popups/e;->b(Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)V

    return-void
.end method
