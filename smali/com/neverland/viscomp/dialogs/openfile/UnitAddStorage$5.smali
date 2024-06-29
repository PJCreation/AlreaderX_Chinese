.class Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;
.super Ljava/lang/Object;
.source "UnitAddStorage.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$502(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$502(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$300(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$200(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->access$300(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
