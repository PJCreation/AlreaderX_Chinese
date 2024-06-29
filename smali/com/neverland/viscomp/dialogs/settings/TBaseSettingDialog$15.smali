.class Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;
.super Ljava/lang/Object;
.source "TBaseSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadString(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

.field final synthetic val$ev:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->val$ev:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->access$100(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->access$100(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->access$202(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;I)I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->access$208(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;)I

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    invoke-static {p1, v0, v1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->access$102(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;J)J

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->this$0:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->access$200(Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;)I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->val$ev:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$15;->val$ev:Landroid/widget/EditText;

    const v0, 0x80091

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :cond_2
    return-void
.end method
