.class Lcom/neverland/viscomp/dialogs/openfile/UnitOpenFile$1;
.super Ljava/lang/Object;
.source "UnitOpenFile.java"

# interfaces
.implements Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/openfile/UnitOpenFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenFile;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenFile$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCustomDevice;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f1100a0

    invoke-virtual {v0, p1, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    .line 4
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenFile$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenFile;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->reload()V

    goto :goto_0

    .line 5
    :cond_0
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
