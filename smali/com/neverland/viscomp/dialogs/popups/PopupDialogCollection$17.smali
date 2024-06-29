.class Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$17;
.super Ljava/lang/Object;
.source "PopupDialogCollection.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZLjava/lang/String;Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$17;->val$action:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$17;->val$action:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;->onDismiss()V

    :cond_0
    return-void
.end method
