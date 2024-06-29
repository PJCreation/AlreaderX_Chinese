.class Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$25;
.super Ljava/lang/Object;
.source "TBaseSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->initActionButton(Landroid/widget/Spinner;Landroid/widget/Button;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Landroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$25;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    invoke-virtual {p1}, Lcom/neverland/mainApp;->o()V

    .line 2
    invoke-static {}, Lcom/neverland/mainApp;->e()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;->restartapp:Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;

    iput-object v0, p1, Lcom/neverland/viscomp/dialogs/TBaseDialog;->resultAfterClose:Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$25;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    return-void
.end method
