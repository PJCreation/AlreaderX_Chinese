.class Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase$16;
.super Ljava/lang/Object;
.source "UnitOpenBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->showSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase$16;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase$16;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->access$000(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;)Lcom/neverland/viscomp/dialogs/MyEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase$16;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/TBaseDialog;->secondaryDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v0, v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->hideKeyBoard(Landroid/widget/EditText;Landroid/app/Dialog;)V

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase$16;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->secodaryDialogClose()V

    return-void
.end method
