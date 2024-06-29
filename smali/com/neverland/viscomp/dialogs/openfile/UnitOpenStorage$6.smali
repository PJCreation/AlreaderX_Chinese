.class Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$6;
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
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$6;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$6;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    invoke-virtual {v0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->verifyFileExists(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    .line 3
    iget-boolean v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    const/4 v1, 0x0

    const v2, 0x7f1100a0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v3, v2}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    .line 5
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    iget-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/neverland/readbase/TBase;->deleteOneFileBookmark(ZJ)Z

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$6;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->reload()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/neverland/utils/TCustomDevice;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0, v3, v2}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    .line 9
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    iget-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/neverland/readbase/TBase;->deleteOneFileBookmark(ZJ)Z

    .line 10
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$6;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->reload()V

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f11009f

    invoke-virtual {v0, p1, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    :goto_0
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
