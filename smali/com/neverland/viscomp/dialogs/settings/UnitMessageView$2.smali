.class Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$2;
.super Ljava/lang/Object;
.source "UnitMessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$2;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$2;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_nothins:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-static {p1, v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$302(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMANDS;

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$2;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->close()V

    return-void
.end method
