.class Lcom/neverland/viscomp/SelectUtil$10;
.super Ljava/lang/Object;
.source "SelectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/SelectUtil;->initAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/SelectUtil;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/SelectUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/SelectUtil$10;->this$0:Lcom/neverland/viscomp/SelectUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p1, v0}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/SelectUtil$10;->this$0:Lcom/neverland/viscomp/SelectUtil;

    invoke-static {p1}, Lcom/neverland/viscomp/SelectUtil;->access$008(Lcom/neverland/viscomp/SelectUtil;)I

    .line 3
    iget-object p1, p0, Lcom/neverland/viscomp/SelectUtil$10;->this$0:Lcom/neverland/viscomp/SelectUtil;

    invoke-static {p1}, Lcom/neverland/viscomp/SelectUtil;->access$100(Lcom/neverland/viscomp/SelectUtil;)V

    .line 4
    iget-object p1, p0, Lcom/neverland/viscomp/SelectUtil$10;->this$0:Lcom/neverland/viscomp/SelectUtil;

    invoke-static {p1}, Lcom/neverland/viscomp/SelectUtil;->access$200(Lcom/neverland/viscomp/SelectUtil;)Lcom/neverland/viscomp/TMainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/TMainActivity;->PanelSelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/neverland/viscomp/SelectUtil;->initSelectMenu(Landroid/view/ViewGroup;)V

    return-void
.end method
