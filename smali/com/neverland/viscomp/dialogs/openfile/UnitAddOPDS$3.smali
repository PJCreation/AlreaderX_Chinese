.class Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;
.super Ljava/lang/Object;
.source "UnitAddOPDS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$200(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->hideKeyBoard(Landroid/widget/EditText;)V

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$300(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$300(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$400(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$400(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$000(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$500(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$600(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)I

    move-result v4

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$700(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->realAddOPDS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f1100e4

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    .line 8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    .line 9
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_open_opds:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p1, v0}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f1100e3

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
