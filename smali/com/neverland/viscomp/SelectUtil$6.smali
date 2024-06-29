.class Lcom/neverland/viscomp/SelectUtil$6;
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
    iput-object p1, p0, Lcom/neverland/viscomp/SelectUtil$6;->this$0:Lcom/neverland/viscomp/SelectUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/neverland/book/TBook;->getSelectionRange()Lcom/neverland/engbook/forpublic/m;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/neverland/engbook/forpublic/m;

    invoke-direct {p1}, Lcom/neverland/engbook/forpublic/m;-><init>()V

    .line 5
    :cond_0
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget v2, p1, Lcom/neverland/engbook/forpublic/m;->a:I

    iget p1, p1, Lcom/neverland/engbook/forpublic/m;->b:I

    sget-object v3, Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;->AUTO:Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/neverland/utils/TCustomDevice;->callDictionary(Ljava/lang/String;IILcom/neverland/utils/TCustomDevice$DICTIONARU_USE;)Z

    .line 6
    :cond_1
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_clear_all_selected:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p1, v0}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-void
.end method
