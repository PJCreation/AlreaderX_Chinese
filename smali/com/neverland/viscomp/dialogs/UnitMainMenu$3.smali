.class Lcom/neverland/viscomp/dialogs/UnitMainMenu$3;
.super Ljava/lang/Object;
.source "UnitMainMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/UnitMainMenu;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/UnitMainMenu;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/UnitMainMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/UnitMainMenu$3;->this$0:Lcom/neverland/viscomp/dialogs/UnitMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/UnitMainMenu$3;->this$0:Lcom/neverland/viscomp/dialogs/UnitMainMenu;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v0, v0, Lcom/neverland/prefs/TOptions;->reverseBookmark:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_add_bookmark:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_add_quickbookmark:Lcom/neverland/utils/finit$ECOMMANDS;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    const/4 p1, 0x1

    return p1
.end method
