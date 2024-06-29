.class Lcom/neverland/viscomp/TMainActivity$2;
.super Ljava/lang/Object;
.source "TMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/TMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/TMainActivity;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/TMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/TMainActivity$2;->this$0:Lcom/neverland/viscomp/TMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v0, v0, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0}, Lcom/neverland/book/TBook;->getSelectMode()Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    move-result-object v0

    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->NONE:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v0, v0, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/TMainActivity$2;->this$0:Lcom/neverland/viscomp/TMainActivity;

    invoke-static {v0}, Lcom/neverland/viscomp/TMainActivity;->access$100(Lcom/neverland/viscomp/TMainActivity;)Lcom/neverland/viscomp/TStatusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/TStatusView;->tapCorrect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget p1, p1, Lcom/neverland/prefs/TTaps;->status:I

    invoke-static {p1}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget p1, p1, Lcom/neverland/prefs/TTaps;->header:I

    invoke-static {p1}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    :cond_3
    :goto_0
    return-void
.end method
