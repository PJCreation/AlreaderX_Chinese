.class Lcom/neverland/viscomp/dialogs/UnitTTS$17;
.super Ljava/lang/Object;
.source "UnitTTS.java"

# interfaces
.implements Lcom/neverland/viscomp/dialogs/popups/IPopupSelectText;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/UnitTTS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/UnitTTS;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/UnitTTS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/UnitTTS$17;->this$0:Lcom/neverland/viscomp/dialogs/UnitTTS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 8

    const-string v0, "\n\n"

    const-string v1, " > %05.2f%%"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1, v5}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/neverland/utils/finit$ESTATUSINFO;->authortitle:Lcom/neverland/utils/finit$ESTATUSINFO;

    invoke-virtual {p1, v7}, Lcom/neverland/book/TBook;->getStatusInfo(Lcom/neverland/utils/finit$ESTATUSINFO;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget p1, p1, Lcom/neverland/book/TBook$TBookInfo;->percent:F

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;->lastsharetext:Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;

    invoke-virtual {v0, p1, v1, v3}, Lcom/neverland/utils/TCustomDevice;->openExternal(Ljava/lang/String;Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 6
    :pswitch_1
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1, v5}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;->lastsharetext:Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;

    invoke-virtual {v0, p1, v1, v3}, Lcom/neverland/utils/TCustomDevice;->openExternal(Ljava/lang/String;Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 9
    :pswitch_2
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1, v5}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/neverland/utils/finit$ESTATUSINFO;->authortitle:Lcom/neverland/utils/finit$ESTATUSINFO;

    invoke-virtual {p1, v7}, Lcom/neverland/book/TBook;->getStatusInfo(Lcom/neverland/utils/finit$ESTATUSINFO;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget p1, p1, Lcom/neverland/book/TBook$TBookInfo;->percent:F

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;->text:Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;

    invoke-virtual {v0, p1, v1, v3}, Lcom/neverland/utils/TCustomDevice;->openExternal(Ljava/lang/String;Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;Ljava/lang/String;)Z

    goto :goto_0

    .line 14
    :pswitch_3
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1, v5}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 16
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;->text:Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;

    invoke-virtual {v0, p1, v1, v3}, Lcom/neverland/utils/TCustomDevice;->openExternal(Ljava/lang/String;Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;Ljava/lang/String;)Z

    goto :goto_0

    .line 17
    :pswitch_4
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_add_quickcite:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p1, v0}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_0

    .line 18
    :pswitch_5
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_add_quickbookmark:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p1, v0}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_0

    .line 19
    :pswitch_6
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1, v5}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 21
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;->TRANSLATE:Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;

    invoke-virtual {v0, p1, v4, v4, v1}, Lcom/neverland/utils/TCustomDevice;->callDictionary(Ljava/lang/String;IILcom/neverland/utils/TCustomDevice$DICTIONARU_USE;)Z

    goto :goto_0

    .line 22
    :pswitch_7
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1, v2}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 24
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;->AUTO:Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;

    invoke-virtual {v0, p1, v4, v4, v1}, Lcom/neverland/utils/TCustomDevice;->callDictionary(Ljava/lang/String;IILcom/neverland/utils/TCustomDevice$DICTIONARU_USE;)Z

    goto :goto_0

    .line 25
    :pswitch_8
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1, v5}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCustomDevice;->copyTextToClipboard(Ljava/lang/String;)Z

    .line 28
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/UnitTTS$17;->this$0:Lcom/neverland/viscomp/dialogs/UnitTTS;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/UnitTTS;->access$1400(Lcom/neverland/viscomp/dialogs/UnitTTS;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/UnitTTS$17;->this$0:Lcom/neverland/viscomp/dialogs/UnitTTS;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/UnitTTS;->access$1400(Lcom/neverland/viscomp/dialogs/UnitTTS;)V

    return-void
.end method

.method public onNoAction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/UnitTTS$17;->this$0:Lcom/neverland/viscomp/dialogs/UnitTTS;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/UnitTTS;->access$1400(Lcom/neverland/viscomp/dialogs/UnitTTS;)V

    return-void
.end method
