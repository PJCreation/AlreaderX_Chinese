.class Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;
.super Ljava/lang/Object;
.source "PopupStorageBookInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo;->show(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Landroid/view/View;Lcom/neverland/viscomp/dialogs/openfile/OPDSState;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;Lcom/neverland/viscomp/dialogs/popups/IPopupRelatedLink;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$entry:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

.field final synthetic val$owner:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;->val$entry:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;->val$owner:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;->val$entry:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->startDownloadStorage()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;->val$owner:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11022c

    invoke-virtual {p1, v1, v2, v0}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    .line 3
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;->val$owner:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopupClose()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;->val$owner:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11022a

    invoke-virtual {p1, v1, v2, v0}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    :goto_0
    return-void
.end method
