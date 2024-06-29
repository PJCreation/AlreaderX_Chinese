.class Lcom/neverland/viscomp/dialogs/settings/UnitSettings$6;
.super Ljava/lang/Object;
.source "UnitSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/settings/UnitSettings;
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
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$6;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$6;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$6;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object v0

    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$6;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->str:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$6;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitSettings;

    invoke-static {p1, v1, v1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->access$500(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;II)V

    :cond_0
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
