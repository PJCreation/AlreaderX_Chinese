.class Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;
.super Ljava/lang/Object;
.source "TBaseSettingDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->initSpinnerForPathAdapter(Landroid/widget/Spinner;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

.field final synthetic val$spinner:Landroid/widget/Spinner;

.field final synthetic val$typeOfPath:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;Landroid/widget/Spinner;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;->val$spinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;->val$typeOfPath:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    iget-object p4, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {p4}, Landroid/widget/Spinner;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    iget p4, p4, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    iget p4, p4, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuDisableColor:I

    :goto_0
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$PathArrayAdapter;

    iput p3, p2, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$PathArrayAdapter;->selNum:I

    const/16 p2, 0x12

    const/16 p4, 0x11

    if-nez p3, :cond_4

    .line 3
    sget-object p1, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$31;->$SwitchMap$com$neverland$viscomp$dialogs$settings$TBaseSettingDialog$OPTIONS_TYPE:[I

    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;->val$typeOfPath:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x0

    if-eq p1, p4, :cond_3

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput-object p3, p1, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_3
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput-object p3, p1, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_4
    sget-object p5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$31;->$SwitchMap$com$neverland$viscomp$dialogs$settings$TBaseSettingDialog$OPTIONS_TYPE:[I

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$8;->val$typeOfPath:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p5, p5, v0

    if-eq p5, p4, :cond_6

    if-eq p5, p2, :cond_5

    goto :goto_1

    .line 7
    :cond_5
    sget-object p2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p2, p2, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p2, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_6
    sget-object p2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p2, p2, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p2, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
