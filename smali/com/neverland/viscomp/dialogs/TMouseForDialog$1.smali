.class Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;
.super Ljava/lang/Object;
.source "TMouseForDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/TMouseForDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$000(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$100(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;

    move-result-object v0

    sget-object v1, Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;->mouse_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;

    if-ne v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$200(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v2, Lcom/neverland/prefs/TOptions;->tapGuard:I

    int-to-float v2, v2

    sget v3, Lcom/neverland/mainApp;->g:F

    mul-float v2, v2, v3

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    .line 3
    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$200(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-static {v2}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$300(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)I

    move-result v2

    int-to-float v2, v2

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v1, Lcom/neverland/prefs/TOptions;->tapGuard:I

    int-to-float v1, v1

    sget v3, Lcom/neverland/mainApp;->g:F

    mul-float v1, v1, v3

    sub-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$400(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v0}, Lcom/neverland/utils/TCustomDevice;->setFullScreen()V

    .line 6
    sget-object v1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    .line 7
    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$500(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)I

    move-result v2

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$600(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)I

    move-result v3

    sget-object v4, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_long_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v9, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 8
    invoke-virtual {v0}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 9
    invoke-virtual {v0}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object v5, v9

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_select:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    if-ne v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->END:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-static {v0, v1}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$702(Lcom/neverland/viscomp/dialogs/TMouseForDialog;Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    .line 13
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    sget-object v8, Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;->mouse_long_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;

    invoke-static {v0, v8}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$102(Lcom/neverland/viscomp/dialogs/TMouseForDialog;Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;)Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;

    .line 14
    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    const/4 v6, 0x0

    invoke-static {v5}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$600(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)I

    move-result v7

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$800(Lcom/neverland/viscomp/dialogs/TMouseForDialog;IILcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;Lcom/neverland/utils/finit$EDIRECTION;I)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->clear()V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-static {v1}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$500(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)I

    move-result v2

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$600(Lcom/neverland/viscomp/dialogs/TMouseForDialog;)I

    move-result v3

    sget-object v4, Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;->mouse_long_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;

    sget-object v5, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->access$800(Lcom/neverland/viscomp/dialogs/TMouseForDialog;IILcom/neverland/utils/finit$EFLAG_MOUSE_FORDIALOG;Lcom/neverland/utils/finit$EDIRECTION;I)V

    .line 17
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->clear()V

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TMouseForDialog$1;->this$0:Lcom/neverland/viscomp/dialogs/TMouseForDialog;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/TMouseForDialog;->clear()V

    :cond_4
    :goto_1
    return-void
.end method
