.class Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$43;
.super Ljava/lang/Object;
.source "PopupDialogCollection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->favoritesEdit(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;Lcom/neverland/viscomp/dialogs/popups/IPopupFavorChange;Ljava/lang/String;ZZ)Lcom/neverland/viscomp/dialogs/MyPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1

    .line 1
    invoke-static {p1, p2}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->access$278(J)J

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean p1, p1, Lcom/neverland/prefs/TOptions;->favorIsDefault:Z

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x2

    .line 3
    invoke-static {p1, p2}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->access$274(J)J

    :goto_0
    return-void
.end method
