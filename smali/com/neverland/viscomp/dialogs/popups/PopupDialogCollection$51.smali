.class Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$51;
.super Ljava/lang/Object;
.source "PopupDialogCollection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->viewBookmark(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;Ljava/lang/String;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bmktext:Ljava/lang/String;

.field final synthetic val$owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/TBaseDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$51;->val$owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$51;->val$bmktext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$51;->val$owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopupClose()V

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$51;->val$owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    .line 3
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$51;->val$bmktext:Ljava/lang/String;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;->text:Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/neverland/utils/TCustomDevice;->openExternal(Ljava/lang/String;Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;Ljava/lang/String;)Z

    return-void
.end method
