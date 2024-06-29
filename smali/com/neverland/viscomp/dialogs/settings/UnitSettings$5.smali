.class Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;
.super Ljava/lang/Object;
.source "UnitSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$600(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$300(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$700(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    new-instance v0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;-><init>()V

    invoke-static {p1, v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$402(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    .line 5
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object p1

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$300(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->str:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->str:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->str:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$300(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->showKeyBoard(Landroid/widget/EditText;Landroid/app/Dialog;)V

    .line 9
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    const/4 v0, -0x1

    invoke-static {p1, v0, v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$500(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;II)V

    return-void
.end method
