.class Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$5;
.super Ljava/lang/Object;
.source "UnitAddOPDS.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

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
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$402(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$5;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->access$402(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
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
