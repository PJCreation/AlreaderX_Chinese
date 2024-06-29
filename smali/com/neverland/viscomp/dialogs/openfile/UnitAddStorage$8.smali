.class Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$8;
.super Ljava/lang/Object;
.source "UnitAddStorage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$8;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$8;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1, p3}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$702(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;I)I

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$8;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$1000(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Lcom/neverland/viscomp/dialogs/SwitchPlus;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$8;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$1000(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Lcom/neverland/viscomp/dialogs/SwitchPlus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

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
