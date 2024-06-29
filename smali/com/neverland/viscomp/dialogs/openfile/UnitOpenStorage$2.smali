.class Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$2;
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
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$2;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/neverland/readbase/TBase;->removeDeletedDownloadList(Ljava/util/ArrayList;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$2;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110111

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$2;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110110

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$2;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->reload()V

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
