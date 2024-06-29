.class Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;
.super Ljava/lang/Object;
.source "UnitSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$200(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 2
    iget-object p2, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object p3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tSearchRes:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    const/4 p4, -0x1

    if-ne p2, p3, :cond_1

    .line 3
    iget-object p2, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$300(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->hideKeyBoard(Landroid/widget/EditText;)V

    .line 5
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object p2

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    iget p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    iput p1, p2, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object p2

    iget p2, p2, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    invoke-static {p1, p2, p4}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$500(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;II)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    if-ne p2, p3, :cond_3

    .line 8
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object p2

    iget p3, p2, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->level:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->level:I

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    iget p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    invoke-static {p2, p1, p4}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$500(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;II)V

    :cond_3
    :goto_0
    return-void
.end method
