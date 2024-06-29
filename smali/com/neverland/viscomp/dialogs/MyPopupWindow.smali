.class public Lcom/neverland/viscomp/dialogs/MyPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MyPopupWindow.java"

# interfaces
.implements Lcom/neverland/viscomp/dialogs/sharedialog/IShareOwnerData;


# instance fields
.field private owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

.field private panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private shareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neverland/utils/ShareApplicationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    .line 12
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->shareList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    .line 3
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->shareList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZLcom/neverland/viscomp/dialogs/TBaseDialog;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    .line 7
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->shareList:Ljava/util/List;

    .line 9
    iput-object p5, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getDeviderBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getDeviderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShareList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neverland/utils/ShareApplicationItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->shareList:Ljava/util/List;

    return-object v0
.end method

.method public getmenuTextColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPanelConfirmAndHide(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setShareList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neverland/utils/ShareApplicationItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->shareList:Ljava/util/List;

    return-void
.end method

.method public setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/MyPopupWindow;->owner:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    :cond_0
    return-void
.end method
