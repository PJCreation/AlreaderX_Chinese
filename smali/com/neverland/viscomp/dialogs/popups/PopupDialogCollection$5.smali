.class Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$5;
.super Ljava/lang/Object;
.source "PopupDialogCollection.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->ttsSelectText(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$5;->val$action:Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$5;->val$action:Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;->onDismiss()V

    :cond_0
    return-void
.end method
