.class Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;
.super Ljava/lang/Object;
.source "UnitAddStorage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$400(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->hideKeyBoard(Landroid/widget/EditText;)V

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$500(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$500(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$600(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$600(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$000(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$100(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$700(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)I

    move-result v4

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$800(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Z

    move-result v5

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$900(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->realAddStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f110117

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    .line 8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    .line 9
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_open_networkstorage:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p1, v0}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v1, 0x7f110116

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
