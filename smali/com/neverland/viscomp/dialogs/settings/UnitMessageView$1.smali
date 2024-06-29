.class Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;
.super Ljava/lang/Object;
.source "UnitMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;
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
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$100(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v1}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$000(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcom/neverland/utils/WorkBackupZip;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/neverland/utils/WorkBackupZip;->getError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$200(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f11021f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$300(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v0

    sget-object v1, Lcom/neverland/utils/finit$ECOMMANDS;->command_wait_bookmarksync:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {}, Lcom/neverland/utils/WorkBackupZip;->getNeedRestart()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    sget-object v1, Lcom/neverland/utils/finit$ECOMMANDS;->command_nothins:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-static {v0, v1}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$302(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$300(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v0

    sget-object v1, Lcom/neverland/utils/finit$ECOMMANDS;->command_wait_bookmarksync:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v0, v1, :cond_2

    .line 9
    invoke-static {}, Lcom/neverland/utils/WorkBackupZip;->getNeedRestart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$200(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f110224

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$200(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f110223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    sget-object v1, Lcom/neverland/utils/finit$ECOMMANDS;->command_nothins:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-static {v0, v1}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$302(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMANDS;

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$400(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$100(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView$1;->this$0:Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;

    invoke-static {v1}, Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;->access$000(Lcom/neverland/viscomp/dialogs/settings/UnitMessageView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
