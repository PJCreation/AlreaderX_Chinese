.class Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark$1;
.super Ljava/lang/Object;
.source "UnitAddBookmark.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark$1;->this$0:Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark$1;->this$0:Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark$1;->this$0:Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;->access$000(Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_viewbookmarks:Lcom/neverland/utils/finit$ECOMMANDS;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark$1;->this$0:Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;

    invoke-static {v1}, Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;->access$000(Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    :cond_0
    return-void
.end method
