.class Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$12;
.super Ljava/lang/Object;
.source "PopupDialogCollection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/TBaseDialog;Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$12;->val$owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$12;->val$action:Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$12;->val$owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopupClose()V

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$12;->val$action:Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;->onAction(I)V

    return-void
.end method