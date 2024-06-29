.class public Lcom/neverland/utils/TCommands;
.super Ljava/lang/Object;
.source "TCommands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/utils/TCommands$TAP_ON_RESULT;
    }
.end annotation


# static fields
.field private static final LAST_PAGE_OPERATION_TIMEOUT:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "commands"

.field private static final USE_REAL_LOCK:Z = false


# instance fields
.field private lastBackPressed:J

.field private lastPageOperationTime:J

.field private volatile operationBlocked:Z

.field private final operationBlockedObject:Ljava/lang/String;

.field private prevstatcomm:Lcom/neverland/utils/finit$ECOMMANDS;

.field private prevstattime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/TCommands;->operationBlockedObject:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/neverland/utils/TCommands;->operationBlocked:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/neverland/utils/TCommands;->lastPageOperationTime:J

    .line 5
    iput-wide v0, p0, Lcom/neverland/utils/TCommands;->lastBackPressed:J

    .line 6
    sget-object v2, Lcom/neverland/utils/finit$ECOMMANDS;->command_nothins:Lcom/neverland/utils/finit$ECOMMANDS;

    iput-object v2, p0, Lcom/neverland/utils/TCommands;->prevstatcomm:Lcom/neverland/utils/finit$ECOMMANDS;

    .line 7
    iput-wide v0, p0, Lcom/neverland/utils/TCommands;->prevstattime:J

    return-void
.end method

.method private command(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    return-object p1
.end method

.method private command(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;JLjava/lang/String;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    return-object p1
.end method

.method private command(Lcom/neverland/utils/finit$ECOMMANDS;JLjava/lang/String;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get commX "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/neverland/utils/TCommands;->log(Ljava/lang/String;)V

    .line 3
    sget-object v5, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v6, v5, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v6, v6, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    const-wide/16 v11, 0x1

    if-eqz v6, :cond_8

    iget-object v6, v5, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v6, v6, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz v6, :cond_8

    .line 4
    sget-object v6, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v2, v6, :cond_8

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 6
    iget-object v15, v1, Lcom/neverland/utils/TCommands;->prevstatcomm:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v15, v6, :cond_7

    .line 7
    iget-wide v7, v1, Lcom/neverland/utils/TCommands;->prevstattime:J

    sub-long v7, v13, v7

    cmp-long v6, v7, v11

    if-gez v6, :cond_0

    move-wide v7, v11

    .line 8
    :cond_0
    iget-object v6, v5, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget v15, v6, Lcom/neverland/book/TBook$TBookInfo;->readPositionEnd:I

    iget v6, v6, Lcom/neverland/book/TBook$TBookInfo;->readPositionStart:I

    sub-int/2addr v15, v6

    int-to-long v11, v15

    long-to-double v9, v11

    const-wide v15, 0x40c3880000000000L    # 10000.0

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v15

    long-to-double v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v3

    double-to-long v3, v9

    const-wide/16 v9, 0x14

    cmp-long v6, v3, v9

    if-gez v6, :cond_1

    move-wide v3, v9

    :cond_1
    const-wide/16 v9, 0x7d0

    cmp-long v6, v3, v9

    if-lez v6, :cond_2

    move-wide v3, v9

    :cond_2
    const-wide/16 v9, 0x9c4

    cmp-long v6, v7, v9

    if-lez v6, :cond_7

    const-wide/32 v9, 0x2bf20

    cmp-long v6, v7, v9

    if-gez v6, :cond_7

    .line 10
    iget-object v6, v5, Lcom/neverland/book/TBook;->bookPosition:Lcom/neverland/engbook/forpublic/d;

    iget-boolean v9, v6, Lcom/neverland/engbook/forpublic/d;->e:Z

    if-nez v9, :cond_7

    iget-boolean v9, v6, Lcom/neverland/engbook/forpublic/d;->f:Z

    if-nez v9, :cond_7

    iget v6, v6, Lcom/neverland/engbook/forpublic/d;->n:I

    if-nez v6, :cond_7

    .line 11
    sget-object v6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v6, v6, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-wide v9, v6, Lcom/neverland/prefs/TInternalOptions;->allReadingStatCount1:J

    const-wide/16 v15, 0x7ff

    and-long/2addr v9, v15

    move-wide/from16 v19, v13

    sub-long v13, v3, v9

    long-to-double v1, v13

    const-wide/high16 v15, 0x4049000000000000L    # 50.0

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v15

    double-to-long v1, v1

    const-wide/16 v21, -0x7

    const-wide/16 v23, 0x7

    const-wide/16 v15, 0x0

    cmp-long v25, v1, v15

    if-nez v25, :cond_4

    const-wide/16 v15, 0x1

    cmp-long v21, v13, v15

    if-lez v21, :cond_3

    const-wide/16 v17, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v15, -0x1

    cmp-long v17, v13, v15

    if-gez v17, :cond_6

    const-wide/16 v17, -0x1

    goto :goto_0

    :cond_4
    cmp-long v13, v1, v23

    if-lez v13, :cond_5

    move-wide/from16 v17, v23

    goto :goto_0

    :cond_5
    cmp-long v13, v1, v21

    if-gez v13, :cond_6

    move-wide/from16 v17, v21

    goto :goto_0

    :cond_6
    move-wide/from16 v17, v1

    :goto_0
    add-long v9, v9, v17

    .line 13
    iput-wide v9, v6, Lcom/neverland/prefs/TInternalOptions;->allReadingStatCount1:J

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readtimestatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lcom/neverland/utils/TCommands;->log(Ljava/lang/String;)V

    move-wide/from16 v3, v19

    goto :goto_1

    :cond_7
    move-object v2, v1

    move-wide v3, v13

    .line 15
    :goto_1
    iput-wide v3, v2, Lcom/neverland/utils/TCommands;->prevstattime:J

    goto :goto_2

    :cond_8
    move-object v2, v1

    :goto_2
    move-object/from16 v1, p1

    .line 16
    iput-object v1, v2, Lcom/neverland/utils/TCommands;->prevstatcomm:Lcom/neverland/utils/finit$ECOMMANDS;

    const-string v3, ""

    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    iget-boolean v4, v2, Lcom/neverland/utils/TCommands;->operationBlocked:Z

    if-eqz v4, :cond_9

    .line 19
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    monitor-exit v3

    return-object v1

    .line 20
    :cond_9
    sget-object v4, Lcom/neverland/utils/TCommands$1;->$SwitchMap$com$neverland$utils$finit$ECOMMANDS:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/16 v8, 0x29

    const/16 v9, 0x28

    const v10, 0x7f11023b

    const v11, 0x7f11013b

    const/16 v12, 0x9

    const/16 v13, 0x20

    const/4 v15, 0x0

    const/4 v14, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 21
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 22
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 23
    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->deleteScanLibrary()Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x7f110292

    goto :goto_3

    :cond_a
    const v5, 0x7f110291

    .line 24
    :goto_3
    invoke-virtual {v1, v4, v5, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    .line 25
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 26
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->saveAll()V

    .line 27
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    move-object/from16 v5, p4

    .line 28
    invoke-virtual {v1, v5}, Lcom/neverland/utils/TCustomDevice;->scanLibrary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f110298

    goto :goto_4

    :cond_b
    const v5, 0x7f110297

    .line 29
    :goto_4
    invoke-virtual {v1, v4, v5, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    .line 30
    :pswitch_3
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->resetHiEINKCounter4()V

    .line 31
    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    goto/16 :goto_9

    .line 32
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 33
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->bookmarksync:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 34
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 35
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->restore1:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 36
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 37
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "showdialog_command"

    .line 38
    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_exitreset:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "showdialog_textid"

    const v5, 0x7f110246

    .line 39
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v5, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->messageview:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 41
    :pswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 42
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->cardchange:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 43
    :pswitch_8
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 44
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->backup:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 45
    :pswitch_9
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v1, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    if-nez v4, :cond_c

    const/4 v15, 0x1

    :cond_c
    iput-boolean v15, v1, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    .line 46
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v15, :cond_d

    const v5, 0x7f110222

    goto :goto_5

    :cond_d
    const v5, 0x7f110221

    :goto_5
    invoke-virtual {v1, v4, v5, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    .line 47
    :pswitch_a
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 48
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1, v4}, Lcom/neverland/utils/TCustomDevice;->sendLog(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 49
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110234

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 50
    :pswitch_b
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "showdialog_tap_x"

    const-wide v5, 0xffffffffL

    move-wide/from16 v8, p2

    and-long/2addr v5, v8

    long-to-int v6, v5

    .line 52
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "showdialog_tap_y"

    const-wide v5, 0x7fffffff00000000L

    and-long/2addr v5, v8

    shr-long/2addr v5, v13

    long-to-int v6, v5

    .line 53
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v5, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->tts:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 55
    :pswitch_c
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v4, :cond_2b

    .line 56
    sget-object v4, Lcom/neverland/utils/finit$ECOMMANDS;->command_tts_incvolume:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v1, v4, :cond_e

    const/4 v14, 0x1

    :cond_e
    invoke-static {v14}, Lcom/neverland/utils/APIWrap;->setVolumeTTSService(I)Z

    goto/16 :goto_9

    .line 57
    :pswitch_d
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 58
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v5, v4, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    add-int/lit8 v5, v5, -0x5

    iput v5, v4, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    const/16 v6, 0x3c

    if-ge v5, v6, :cond_f

    const/16 v5, 0x3c

    .line 59
    iput v5, v4, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    .line 60
    :cond_f
    sget-object v4, Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;->pitch:Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;

    invoke-static {v4}, Lcom/neverland/utils/APIWrap;->sendCommandTTSService(Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;)Z

    .line 61
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v4, :cond_2b

    .line 62
    sget-object v5, Lcom/neverland/utils/finit$SHOWINFOTYPE;->ttsPitch:Lcom/neverland/utils/finit$SHOWINFOTYPE;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v1, v1, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showInfo(Lcom/neverland/utils/finit$SHOWINFOTYPE;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 63
    :pswitch_e
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 64
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v5, v4, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    add-int/lit8 v5, v5, 0x5

    iput v5, v4, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    const/16 v6, 0x96

    if-le v5, v6, :cond_10

    const/16 v5, 0x96

    .line 65
    iput v5, v4, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    .line 66
    :cond_10
    sget-object v4, Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;->pitch:Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;

    invoke-static {v4}, Lcom/neverland/utils/APIWrap;->sendCommandTTSService(Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;)Z

    .line 67
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v4, :cond_2b

    .line 68
    sget-object v5, Lcom/neverland/utils/finit$SHOWINFOTYPE;->ttsPitch:Lcom/neverland/utils/finit$SHOWINFOTYPE;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v1, v1, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showInfo(Lcom/neverland/utils/finit$SHOWINFOTYPE;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 69
    :pswitch_f
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 70
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v4, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    add-int/lit8 v5, v5, -0x5

    iput v5, v4, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    const/16 v6, 0x19

    if-ge v5, v6, :cond_11

    const/16 v5, 0x19

    .line 71
    iput v5, v4, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    .line 72
    :cond_11
    sget-object v4, Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;->speed:Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;

    invoke-static {v4}, Lcom/neverland/utils/APIWrap;->sendCommandTTSService(Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;)Z

    .line 73
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v4, :cond_2b

    .line 74
    sget-object v5, Lcom/neverland/utils/finit$SHOWINFOTYPE;->ttsSpeed:Lcom/neverland/utils/finit$SHOWINFOTYPE;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v1, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showInfo(Lcom/neverland/utils/finit$SHOWINFOTYPE;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 75
    :pswitch_10
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 76
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v4, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    add-int/lit8 v5, v5, 0x5

    iput v5, v4, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    const/16 v6, 0x190

    if-le v5, v6, :cond_12

    const/16 v5, 0x190

    .line 77
    iput v5, v4, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    .line 78
    :cond_12
    sget-object v4, Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;->speed:Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;

    invoke-static {v4}, Lcom/neverland/utils/APIWrap;->sendCommandTTSService(Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;)Z

    .line 79
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v4, :cond_2b

    .line 80
    sget-object v5, Lcom/neverland/utils/finit$SHOWINFOTYPE;->ttsSpeed:Lcom/neverland/utils/finit$SHOWINFOTYPE;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v1, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showInfo(Lcom/neverland/utils/finit$SHOWINFOTYPE;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 81
    :pswitch_11
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 82
    sget-object v1, Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;->play:Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;

    invoke-static {v1}, Lcom/neverland/utils/APIWrap;->sendCommandTTSService(Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;)Z

    goto/16 :goto_9

    .line 83
    :pswitch_12
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 84
    sget-object v1, Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;->pause:Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;

    invoke-static {v1}, Lcom/neverland/utils/APIWrap;->sendCommandTTSService(Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;)Z

    goto/16 :goto_9

    .line 85
    :pswitch_13
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 86
    sget-object v1, Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;->playpause:Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;

    invoke-static {v1}, Lcom/neverland/utils/APIWrap;->sendCommandTTSService(Lcom/neverland/ttsservice/TTSService$TTS_COOMAND;)Z

    goto/16 :goto_9

    .line 87
    :pswitch_14
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v4, :cond_2b

    .line 88
    sget-object v4, Lcom/neverland/utils/finit$ECOMMANDS;->command_tts_next:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v1, v4, :cond_13

    const/4 v15, 0x1

    :cond_13
    invoke-static {v15}, Lcom/neverland/utils/APIWrap;->scrollTTSService(Z)Z

    goto/16 :goto_9

    :pswitch_15
    move-wide/from16 v8, p2

    .line 89
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 90
    sget-object v1, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    invoke-virtual {v1}, Lcom/neverland/readbase/TBase;->bookmarkPresent()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v4, -0x1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_14

    .line 91
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v1, "showdialog_long"

    .line 92
    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    :cond_14
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->viewbookmark:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 94
    :cond_15
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110127

    invoke-virtual {v1, v4, v5, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    .line 95
    :pswitch_16
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 96
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput v15, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseType:I

    .line 97
    iget v4, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkDefaultMarker:I

    iput v4, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseMarker:I

    .line 98
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->addbookmark:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 99
    :pswitch_17
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 100
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput v6, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseType:I

    .line 101
    iget v4, v1, Lcom/neverland/prefs/TInternalOptions;->citeQuickDefaultMarker:I

    iput v4, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseMarker:I

    .line 102
    invoke-static {v7, v14, v14}, Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;->realAddBookmark(Ljava/lang/String;II)Z

    goto/16 :goto_9

    .line 103
    :pswitch_18
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 104
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput v15, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseType:I

    .line 105
    iget v4, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkQuickDefaultMarker:I

    iput v4, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseMarker:I

    .line 106
    invoke-static {v7, v14, v14}, Lcom/neverland/viscomp/dialogs/bookmarks/UnitAddBookmark;->realAddBookmark(Ljava/lang/String;II)Z

    goto/16 :goto_9

    :pswitch_19
    move-wide/from16 v8, p2

    .line 107
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 108
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "showdialog_long"

    .line 109
    invoke-virtual {v1, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v5, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->addbookmark:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    :pswitch_1a
    move-wide/from16 v8, p2

    .line 111
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "showdialog_long"

    .line 113
    invoke-virtual {v1, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v5, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->addstorage:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    :pswitch_1b
    move-wide/from16 v8, p2

    .line 115
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 116
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "showdialog_long"

    .line 117
    invoke-virtual {v1, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v5, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->addopds:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 119
    :pswitch_1c
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 120
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput v6, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseType:I

    .line 121
    iget v4, v1, Lcom/neverland/prefs/TInternalOptions;->citeDefaultMarker:I

    iput v4, v1, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseMarker:I

    .line 122
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->addbookmark:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 123
    :pswitch_1d
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 124
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->favor:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 125
    :pswitch_1e
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 126
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->bookbookmark:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 127
    :pswitch_1f
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 128
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->openDocumentsTree()Z

    goto/16 :goto_9

    .line 129
    :pswitch_20
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 130
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->storageopen:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 131
    :pswitch_21
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 132
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->opdsopen1:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 133
    :pswitch_22
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 134
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->libraryopen:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 135
    :pswitch_23
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 136
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->recent:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 137
    :pswitch_24
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 138
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->fileopen:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 139
    :pswitch_25
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 140
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->bookopen:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 141
    :pswitch_26
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 142
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->srcedit:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 143
    :pswitch_27
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->reloadBook()Z

    goto/16 :goto_9

    .line 144
    :pswitch_28
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 145
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->top100:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 146
    :pswitch_29
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->loadPrevProfile()I

    move-result v1

    if-lt v1, v6, :cond_16

    if-gt v1, v12, :cond_16

    .line 147
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->setNewProfile()V

    .line 148
    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v4}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    .line 149
    invoke-static {v6}, Lcom/neverland/viscomp/TStatusView;->updateDPISize(Z)V

    .line 150
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v5}, Lcom/neverland/viscomp/TMainActivity;->getHeader()Lcom/neverland/viscomp/TStatusView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 151
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v5}, Lcom/neverland/viscomp/TMainActivity;->getStatus()Lcom/neverland/viscomp/TStatusView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 152
    invoke-virtual {v4}, Lcom/neverland/utils/TCustomDevice;->repaintStatus()V

    .line 153
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 154
    :cond_16
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1, v4, v11, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    .line 155
    :pswitch_2a
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->loadNextProfile()I

    move-result v1

    if-lt v1, v6, :cond_17

    if-gt v1, v12, :cond_17

    .line 156
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->setNewProfile()V

    .line 157
    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v4}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    .line 158
    invoke-static {v6}, Lcom/neverland/viscomp/TStatusView;->updateDPISize(Z)V

    .line 159
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v5}, Lcom/neverland/viscomp/TMainActivity;->getHeader()Lcom/neverland/viscomp/TStatusView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 160
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v5}, Lcom/neverland/viscomp/TMainActivity;->getStatus()Lcom/neverland/viscomp/TStatusView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 161
    invoke-virtual {v4}, Lcom/neverland/utils/TCustomDevice;->repaintStatus()V

    .line 162
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 163
    :cond_17
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1, v4, v11, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    .line 164
    :pswitch_2b
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 165
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v1, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    if-ne v4, v14, :cond_18

    .line 166
    iget v4, v1, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    iput v4, v1, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    .line 167
    :cond_18
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->onyxRotateRight90()V

    goto/16 :goto_9

    .line 168
    :pswitch_2c
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 169
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->onyxShowBacklightMenu()V

    goto/16 :goto_9

    .line 170
    :pswitch_2d
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 171
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v1, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    if-ne v4, v14, :cond_19

    .line 172
    iget v4, v1, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    iput v4, v1, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    .line 173
    :cond_19
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->onyxRotate180()V

    goto/16 :goto_9

    .line 174
    :pswitch_2e
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 175
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v1, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    if-ne v4, v14, :cond_1a

    .line 176
    iget v4, v1, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    iput v4, v1, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    .line 177
    :cond_1a
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->onyxRotateLeft90()V

    goto/16 :goto_9

    :pswitch_2f
    move-wide/from16 v8, p2

    .line 178
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 179
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "showdialog_pos"

    long-to-int v5, v8

    .line 180
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v5, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->syncrequest:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 182
    :pswitch_30
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->openPrevFile()V

    goto/16 :goto_9

    :pswitch_31
    move-wide/from16 v8, p2

    .line 183
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->isNeedReadSyncAfterClose()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 184
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    const-wide/16 v4, 0x1

    cmp-long v7, v8, v4

    if-nez v7, :cond_1b

    const/4 v15, 0x1

    :cond_1b
    invoke-virtual {v1, v15}, Lcom/neverland/utils/TCustomDevice;->writeSyncPosition(Z)Z

    move-result v7

    if-nez v7, :cond_2b

    and-long/2addr v4, v8

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_1c

    .line 185
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TInternalOptions;->syncSilentifNoNetwork:Z

    if-nez v4, :cond_2b

    .line 186
    :cond_1c
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110139

    invoke-virtual {v1, v4, v5, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    :pswitch_32
    move-wide/from16 v8, p2

    .line 187
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 188
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    const-wide/16 v4, 0x1

    and-long/2addr v4, v8

    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-eqz v7, :cond_1d

    const/4 v7, 0x1

    goto :goto_6

    :cond_1d
    const/4 v7, 0x0

    :goto_6
    const-wide/16 v12, 0x2

    and-long/2addr v8, v12

    cmp-long v12, v8, v10

    if-eqz v12, :cond_1e

    const/4 v15, 0x1

    :cond_1e
    invoke-virtual {v1, v7, v15}, Lcom/neverland/utils/TCustomDevice;->readSyncPosition(ZZ)Z

    move-result v7

    if-nez v7, :cond_2b

    cmp-long v7, v4, v10

    if-eqz v7, :cond_1f

    .line 189
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TInternalOptions;->syncSilentifNoNetwork:Z

    if-nez v4, :cond_2b

    .line 190
    :cond_1f
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110139

    invoke-virtual {v1, v4, v5, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    :pswitch_33
    const/16 v12, 0x8

    :pswitch_34
    add-int/2addr v12, v14

    :pswitch_35
    add-int/2addr v12, v14

    :pswitch_36
    add-int/2addr v12, v14

    :pswitch_37
    add-int/2addr v12, v14

    :pswitch_38
    add-int/2addr v12, v14

    :pswitch_39
    add-int/2addr v12, v14

    :pswitch_3a
    add-int/2addr v12, v14

    .line 191
    :pswitch_3b
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-static {v12}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->fromInt(I)Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/neverland/prefs/TPref;->loadProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 192
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->setNewProfile()V

    .line 193
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    .line 194
    invoke-static {v6}, Lcom/neverland/viscomp/TStatusView;->updateDPISize(Z)V

    .line 195
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getHeader()Lcom/neverland/viscomp/TStatusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 196
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getStatus()Lcom/neverland/viscomp/TStatusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 197
    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->repaintStatus()V

    .line 198
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 199
    :cond_20
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1, v4, v11, v6}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    .line 200
    :pswitch_3c
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 201
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->gotoPrevSearch()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 202
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110230

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 203
    :pswitch_3d
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 204
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->gotoNextSearch()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 205
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110230

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 206
    :pswitch_3e
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 207
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v4, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    if-eq v5, v14, :cond_21

    .line 208
    iput v5, v4, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    .line 209
    iput v14, v4, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    goto :goto_7

    .line 210
    :cond_21
    iget v5, v4, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    iput v5, v4, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    .line 211
    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v6, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 212
    invoke-virtual {v5, v6}, Lcom/neverland/utils/TCustomDevice;->getRotate(Landroid/app/Activity;)I

    move-result v5

    iput v5, v4, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    .line 213
    :goto_7
    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4, v5, v15}, Lcom/neverland/utils/TCustomDevice;->setRotate_2(Landroid/app/Activity;Z)V

    .line 214
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 215
    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v1, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    if-eq v1, v14, :cond_22

    const v1, 0x7f110247

    goto :goto_8

    :cond_22
    const v1, 0x7f110248

    .line 216
    :goto_8
    invoke-virtual {v4, v5, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 217
    :pswitch_3f
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 218
    invoke-static {v1}, Lcom/neverland/utils/TShortcut;->addShortcutBook(Landroidx/appcompat/app/AppCompatActivity;)Z

    goto/16 :goto_9

    :pswitch_40
    move-wide/from16 v8, p2

    .line 219
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 220
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "showdialog_tap_x"

    long-to-int v5, v8

    const v6, 0xffff

    and-int/2addr v6, v5

    .line 221
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "showdialog_tap_y"

    const/high16 v6, 0x7fff0000

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x10

    .line 222
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v5, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->quickpanel:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 224
    :pswitch_41
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 225
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->bookinfo:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 226
    :pswitch_42
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_2b

    .line 227
    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->editini:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    :pswitch_43
    move-wide/from16 v8, p2

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_2b

    const-wide/16 v10, 0x9

    cmp-long v1, v8, v10

    if-gtz v1, :cond_2b

    .line 228
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    long-to-int v4, v8

    invoke-static {v4}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->fromInt(I)Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/neverland/prefs/TPref;->loadProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z

    .line 229
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->setNewProfile()V

    .line 230
    invoke-static {v6}, Lcom/neverland/viscomp/TStatusView;->updateDPISize(Z)V

    .line 231
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->getHeader()Lcom/neverland/viscomp/TStatusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 232
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->getStatus()Lcom/neverland/viscomp/TStatusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 233
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->repaintStatus()V

    goto/16 :goto_9

    :pswitch_44
    move-wide/from16 v8, p2

    const-wide/16 v4, 0x1

    cmp-long v1, v8, v4

    if-ltz v1, :cond_2b

    const-wide/16 v4, 0x9

    cmp-long v1, v8, v4

    if-gtz v1, :cond_2b

    .line 234
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    long-to-int v4, v8

    invoke-static {v4}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->fromInt(I)Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/neverland/prefs/TPref;->saveProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z

    goto/16 :goto_9

    .line 235
    :pswitch_45
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 236
    iget-object v1, v5, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object v1, v1, Lcom/neverland/book/TBook$TBookInfo;->content:Ljava/util/ArrayList;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 237
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->gotoPrevContent()V

    goto/16 :goto_9

    .line 238
    :cond_23
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110237

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 239
    :pswitch_46
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 240
    iget-object v1, v5, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object v1, v1, Lcom/neverland/book/TBook$TBookInfo;->content:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 241
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->gotoNextContent()V

    goto/16 :goto_9

    .line 242
    :cond_24
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110237

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 243
    :pswitch_47
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 244
    iget-object v1, v5, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v1, v1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz v1, :cond_25

    .line 245
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->autoscroll:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 246
    :cond_25
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110237

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 247
    :pswitch_48
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 248
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->preview:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 249
    :pswitch_49
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 250
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->showimage:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 251
    :pswitch_4a
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 252
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->toc:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 253
    :cond_26
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110237

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 254
    :pswitch_4b
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 255
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->search:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 256
    :cond_27
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const v5, 0x7f110237

    invoke-virtual {v1, v4, v5}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_9

    :pswitch_4c
    move-wide/from16 v8, p2

    .line 257
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    long-to-int v1, v8

    .line 258
    invoke-virtual {v5, v1}, Lcom/neverland/book/TBook;->gotoStackNum(I)V

    goto/16 :goto_9

    .line 259
    :pswitch_4d
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 260
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->gotoForward()V

    goto/16 :goto_9

    .line 261
    :pswitch_4e
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 262
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->gotoBackward()V

    goto/16 :goto_9

    .line 263
    :pswitch_4f
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 264
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->createDebug()V

    goto/16 :goto_9

    .line 265
    :pswitch_50
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 266
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->DICTIONARY:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v5, v1}, Lcom/neverland/book/TBook;->setSelectMode(Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)V

    goto/16 :goto_9

    .line 267
    :pswitch_51
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 268
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->END:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v5, v1}, Lcom/neverland/book/TBook;->setSelectMode(Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)V

    .line 269
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1, v14, v14}, Lcom/neverland/viscomp/TMainActivity;->showSelectMenu1(II)V

    goto/16 :goto_9

    .line 270
    :pswitch_52
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 271
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v1, :cond_28

    .line 272
    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->hideSelectMenu()V

    .line 273
    :cond_28
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->NONE:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v5, v1}, Lcom/neverland/book/TBook;->setSelectMode(Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)V

    goto/16 :goto_9

    .line 274
    :pswitch_53
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 275
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->endDocument()V

    goto/16 :goto_9

    .line 276
    :pswitch_54
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 277
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->startDocument()V

    goto/16 :goto_9

    .line 278
    :pswitch_55
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->changeFullScreen()V

    .line 279
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->visibleStatusHeader()V

    .line 280
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    goto/16 :goto_9

    .line 281
    :pswitch_56
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->resetDefault()Z

    .line 282
    :pswitch_57
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->appExit()V

    goto/16 :goto_9

    .line 283
    :pswitch_58
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->app2Home()V

    goto/16 :goto_9

    .line 284
    :pswitch_59
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->appHide()V

    goto/16 :goto_9

    .line 285
    :pswitch_5a
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->menu:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 286
    :pswitch_5b
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object v4, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->settings:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {v1, v4, v7}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 287
    :pswitch_5c
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->dayToNight()V

    .line 288
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->setThemeButtonByProgressColor1()V

    .line 289
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    .line 290
    invoke-static {v6}, Lcom/neverland/viscomp/TStatusView;->updateDPISize(Z)V

    .line 291
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getHeader()Lcom/neverland/viscomp/TStatusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 292
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getStatus()Lcom/neverland/viscomp/TStatusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neverland/viscomp/TStatusView;->requestLayout()V

    .line 293
    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->repaintStatus()V

    goto/16 :goto_9

    .line 294
    :pswitch_5d
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 295
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->decInterline()V

    goto/16 :goto_9

    .line 296
    :pswitch_5e
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 297
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->incInterline()V

    goto/16 :goto_9

    :pswitch_5f
    move-wide/from16 v8, p2

    .line 298
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    long-to-int v1, v8

    .line 299
    invoke-virtual {v5, v1}, Lcom/neverland/book/TBook;->gotoPos(I)V

    goto/16 :goto_9

    .line 300
    :pswitch_60
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->getAutoscrollTime()I

    move-result v4

    add-int/lit16 v4, v4, 0x3e8

    const v5, 0x1d4c0

    if-le v4, v5, :cond_29

    const v4, 0x1d4c0

    .line 301
    :cond_29
    invoke-virtual {v1, v4}, Lcom/neverland/prefs/TPref;->setAutoscrollTime(I)V

    .line 302
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainTextView;->getAutoscroll()Lcom/neverland/viscomp/TAutoScroll;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neverland/viscomp/TAutoScroll;->readSpeed()V

    .line 303
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v4, :cond_2b

    .line 304
    sget-object v5, Lcom/neverland/utils/finit$SHOWINFOTYPE;->autoScrollTime:Lcom/neverland/utils/finit$SHOWINFOTYPE;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->getAutoscrollTime()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showInfo(Lcom/neverland/utils/finit$SHOWINFOTYPE;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 305
    :pswitch_61
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->getAutoscrollTime()I

    move-result v4

    add-int/lit16 v4, v4, -0x3e8

    const/16 v5, 0xbb8

    if-ge v4, v5, :cond_2a

    const/16 v4, 0xbb8

    .line 306
    :cond_2a
    invoke-virtual {v1, v4}, Lcom/neverland/prefs/TPref;->setAutoscrollTime(I)V

    .line 307
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainTextView;->getAutoscroll()Lcom/neverland/viscomp/TAutoScroll;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neverland/viscomp/TAutoScroll;->readSpeed()V

    .line 308
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz v4, :cond_2b

    .line 309
    sget-object v5, Lcom/neverland/utils/finit$SHOWINFOTYPE;->autoScrollTime:Lcom/neverland/utils/finit$SHOWINFOTYPE;

    invoke-virtual {v1}, Lcom/neverland/prefs/TPref;->getAutoscrollTime()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/neverland/viscomp/TMainActivity;->showInfo(Lcom/neverland/utils/finit$SHOWINFOTYPE;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 310
    :pswitch_62
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;->backlight_right:Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;

    invoke-virtual {v1, v7, v4}, Lcom/neverland/utils/TCustomDevice;->incBacklight(Landroid/app/Activity;Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;)V

    goto/16 :goto_9

    .line 311
    :pswitch_63
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;->backlight_right:Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;

    invoke-virtual {v1, v7, v4}, Lcom/neverland/utils/TCustomDevice;->decBacklight(Landroid/app/Activity;Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;)V

    goto :goto_9

    .line 312
    :pswitch_64
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;->backlight_left:Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;

    invoke-virtual {v1, v7, v4}, Lcom/neverland/utils/TCustomDevice;->incBacklight(Landroid/app/Activity;Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;)V

    goto :goto_9

    .line 313
    :pswitch_65
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;->backlight_left:Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;

    invoke-virtual {v1, v7, v4}, Lcom/neverland/utils/TCustomDevice;->decBacklight(Landroid/app/Activity;Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;)V

    goto :goto_9

    .line 314
    :pswitch_66
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;->backlight_all:Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;

    invoke-virtual {v1, v7, v4}, Lcom/neverland/utils/TCustomDevice;->incBacklight(Landroid/app/Activity;Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;)V

    goto :goto_9

    .line 315
    :pswitch_67
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;->backlight_all:Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;

    invoke-virtual {v1, v7, v4}, Lcom/neverland/utils/TCustomDevice;->decBacklight(Landroid/app/Activity;Lcom/neverland/utils/TCustomDevice$BACKLIGHT_SIDE;)V

    goto :goto_9

    .line 316
    :pswitch_68
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 317
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->incFontSize()V

    goto :goto_9

    .line 318
    :pswitch_69
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 319
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->decFontSize()V

    goto :goto_9

    :pswitch_6a
    move-wide/from16 v8, p2

    .line 320
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    long-to-int v1, v8

    .line 321
    invoke-virtual {v5, v1}, Lcom/neverland/book/TBook;->prevItem(I)V

    goto :goto_9

    :pswitch_6b
    move-wide/from16 v8, p2

    .line 322
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    long-to-int v1, v8

    .line 323
    invoke-virtual {v5, v1}, Lcom/neverland/book/TBook;->nextItem(I)V

    goto :goto_9

    .line 324
    :pswitch_6c
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 325
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->prevPage()V

    goto :goto_9

    .line 326
    :pswitch_6d
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/utils/TCommands;->isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 327
    invoke-virtual {v5}, Lcom/neverland/book/TBook;->nextPage()V

    .line 328
    :cond_2b
    :goto_9
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 330
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_0
        :pswitch_56
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getTapZone(IIII)I
    .locals 1

    .line 1
    div-int/lit8 v0, p4, 0x3

    if-le p2, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 p4, p4, 0x2

    .line 2
    div-int/lit8 p4, p4, 0x3

    if-le p2, p4, :cond_1

    add-int/lit8 v0, v0, 0x3

    .line 3
    :cond_1
    div-int/lit8 p2, p3, 0x3

    if-le p1, p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    mul-int/lit8 p3, p3, 0x2

    .line 4
    div-int/lit8 p3, p3, 0x3

    if-le p1, p3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method private isCommandMayBeRepeat(Lcom/neverland/utils/finit$ECOMMANDS;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/utils/TCommands$1;->$SwitchMap$com$neverland$utils$finit$ECOMMANDS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private lock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/utils/TCommands;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "commands"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private showPopupNotes(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "showdialog_pos"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "showdialog_text1"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    sget-object p2, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->popupnotes:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    invoke-virtual {p1, p2, v0}, Lcom/neverland/viscomp/TMainActivity;->showBaseDialog(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Landroid/content/Intent;)V

    return-void
.end method

.method private unlock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private verifyIsNeedCopyText(II)Lcom/neverland/utils/TCommands$TAP_ON_RESULT;
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0, p1, p2}, Lcom/neverland/book/TBook;->getTapInfo(II)Lcom/neverland/engbook/forpublic/s;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->EMPTY_PLACE:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->END:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/neverland/book/TBook;->getTapInfo(IILcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)Lcom/neverland/engbook/forpublic/s;

    .line 4
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->DICT:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1
.end method

.method private verifyIsNeedDictionary(II)Lcom/neverland/utils/TCommands$TAP_ON_RESULT;
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0, p1, p2}, Lcom/neverland/book/TBook;->getTapInfo(II)Lcom/neverland/engbook/forpublic/s;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->EMPTY_PLACE:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->DICTIONARY:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/neverland/book/TBook;->getTapInfo(IILcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)Lcom/neverland/engbook/forpublic/s;

    .line 4
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->DICT:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1
.end method

.method private verifyLongTap(II)Lcom/neverland/utils/TCommands$TAP_ON_RESULT;
    .locals 6

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0, p1, p2}, Lcom/neverland/book/TBook;->getTapInfo(II)Lcom/neverland/engbook/forpublic/s;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->EMPTY_PLACE:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 3
    :cond_0
    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v2, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v3, Lcom/neverland/prefs/TOptions;->openLinkLongTap:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 4
    iget-boolean v4, v1, Lcom/neverland/engbook/forpublic/s;->e:Z

    if-eqz v4, :cond_4

    .line 5
    iget-boolean p1, v1, Lcom/neverland/engbook/forpublic/s;->f:Z

    if-eqz p1, :cond_3

    .line 6
    iget p1, v3, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    if-eqz p1, :cond_2

    if-eq p1, v5, :cond_1

    .line 7
    iget p1, v1, Lcom/neverland/engbook/forpublic/s;->m:I

    iget-object p2, v1, Lcom/neverland/engbook/forpublic/s;->n:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/neverland/utils/TCommands;->showPopupNotes(ILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget p1, v1, Lcom/neverland/engbook/forpublic/s;->m:I

    invoke-virtual {v0, p1}, Lcom/neverland/book/TBook;->gotoPos(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget p1, v1, Lcom/neverland/engbook/forpublic/s;->m:I

    invoke-virtual {v0, p1}, Lcom/neverland/book/TBook;->gotoPos(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget p1, v1, Lcom/neverland/engbook/forpublic/s;->m:I

    invoke-virtual {v0, p1}, Lcom/neverland/book/TBook;->gotoPos(I)V

    .line 11
    :goto_0
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->IS_LINK:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 12
    :cond_4
    iget-boolean v3, v1, Lcom/neverland/engbook/forpublic/s;->g:Z

    if-eqz v3, :cond_5

    .line 13
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p2, v1, Lcom/neverland/engbook/forpublic/s;->n:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;->link:Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/neverland/utils/TCustomDevice;->openExternal(Ljava/lang/String;Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;Ljava/lang/String;)Z

    .line 14
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->IS_LINK:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 15
    :cond_5
    iget-boolean v3, v1, Lcom/neverland/engbook/forpublic/s;->h:Z

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/neverland/engbook/forpublic/s;->o:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 16
    iget-object p1, v1, Lcom/neverland/engbook/forpublic/s;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neverland/book/TBook;->openImage(Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->IS_IMAGE:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 18
    :cond_6
    iget-boolean v3, v1, Lcom/neverland/engbook/forpublic/s;->i:Z

    if-eqz v3, :cond_7

    .line 19
    iget-object p1, v1, Lcom/neverland/engbook/forpublic/s;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neverland/book/TBook;->openImage(Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->IS_TABLE:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 21
    :cond_7
    iget-object v1, v2, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v1, Lcom/neverland/prefs/TOptions;->longTapMode:I

    if-eq v1, v5, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    .line 22
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->TAPS:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 23
    :cond_8
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->END:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/neverland/book/TBook;->getTapInfo(IILcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)Lcom/neverland/engbook/forpublic/s;

    .line 24
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->SELECTDICT:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 25
    :cond_9
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->END:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/neverland/book/TBook;->getTapInfo(IILcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)Lcom/neverland/engbook/forpublic/s;

    .line 26
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->SELECT:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1

    .line 27
    :cond_a
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->DICTIONARY:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/neverland/book/TBook;->getTapInfo(IILcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)Lcom/neverland/engbook/forpublic/s;

    .line 28
    sget-object p1, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->DICT:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    return-object p1
.end method

.method private verifyTap(II)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0, p1, p2}, Lcom/neverland/book/TBook;->getTapInfo(II)Lcom/neverland/engbook/forpublic/s;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->shortTapMode:I

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    return p2

    .line 3
    :cond_1
    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v3, v2, Lcom/neverland/prefs/TOptions;->openLinkLongTap:Z

    if-nez v3, :cond_6

    .line 4
    iget-boolean v3, p1, Lcom/neverland/engbook/forpublic/s;->e:Z

    if-eqz v3, :cond_5

    .line 5
    iget-boolean p2, p1, Lcom/neverland/engbook/forpublic/s;->f:Z

    if-eqz p2, :cond_4

    .line 6
    iget p2, v2, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    .line 7
    iget p2, p1, Lcom/neverland/engbook/forpublic/s;->m:I

    iget-object p1, p1, Lcom/neverland/engbook/forpublic/s;->n:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/neverland/utils/TCommands;->showPopupNotes(ILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget p1, p1, Lcom/neverland/engbook/forpublic/s;->m:I

    invoke-virtual {v0, p1}, Lcom/neverland/book/TBook;->gotoPos(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget p1, p1, Lcom/neverland/engbook/forpublic/s;->m:I

    invoke-virtual {v0, p1}, Lcom/neverland/book/TBook;->gotoPos(I)V

    goto :goto_0

    .line 10
    :cond_4
    iget p1, p1, Lcom/neverland/engbook/forpublic/s;->m:I

    invoke-virtual {v0, p1}, Lcom/neverland/book/TBook;->gotoPos(I)V

    :goto_0
    return v1

    .line 11
    :cond_5
    iget-boolean v3, p1, Lcom/neverland/engbook/forpublic/s;->g:Z

    if-eqz v3, :cond_6

    .line 12
    sget-object p2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p1, p1, Lcom/neverland/engbook/forpublic/s;->n:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;->link:Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v0, v2}, Lcom/neverland/utils/TCustomDevice;->openExternal(Ljava/lang/String;Lcom/neverland/utils/TCustomDevice$SHARE_OBJECT;Ljava/lang/String;)Z

    return v1

    .line 13
    :cond_6
    iget v2, v2, Lcom/neverland/prefs/TOptions;->shortTapMode:I

    if-ne v2, v1, :cond_8

    .line 14
    iget p2, p1, Lcom/neverland/engbook/forpublic/s;->k:I

    if-ltz p2, :cond_7

    iget v2, p1, Lcom/neverland/engbook/forpublic/s;->l:I

    if-lt v2, p2, :cond_7

    .line 15
    invoke-virtual {v0, p2, v2, v1}, Lcom/neverland/book/TBook;->getTextByPosition(IIZ)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 17
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget v2, p1, Lcom/neverland/engbook/forpublic/s;->k:I

    iget p1, p1, Lcom/neverland/engbook/forpublic/s;->l:I

    sget-object v3, Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;->DICTIONARY:Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;

    invoke-virtual {v0, p2, v2, p1, v3}, Lcom/neverland/utils/TCustomDevice;->callDictionary(Ljava/lang/String;IILcom/neverland/utils/TCustomDevice$DICTIONARU_USE;)Z

    :cond_7
    return v1

    :cond_8
    return p2
.end method


# virtual methods
.method public commandKeyBoard(ILcom/neverland/utils/finit$EFLAG_KEY;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 9

    .line 1
    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_nothins:Lcom/neverland/utils/finit$ECOMMANDS;

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v2, v1, Lcom/neverland/book/TBook;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    sget-object v3, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->NONE:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->CLEAR:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_2

    .line 3
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_clear_all_selected:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    :cond_1
    :goto_0
    if-eq p1, v5, :cond_3

    if-lez p1, :cond_2

    .line 4
    sget v1, Lcom/neverland/prefs/TTaps;->KEYCODE_SUPPORTED_MAX:I

    if-ge p1, v1, :cond_2

    .line 5
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v1, v1, Lcom/neverland/prefs/TTaps;->keys:[I

    aget v2, v1, p1

    if-eqz v2, :cond_2

    .line 6
    aget p1, v1, p1

    invoke-static {p1}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_1

    .line 7
    :cond_3
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v2, v2, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    if-eqz v2, :cond_4

    .line 8
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_block_touch:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 9
    :cond_4
    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->backAction1:I

    if-eq p1, v4, :cond_c

    if-eq p1, v6, :cond_b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    if-eq p1, v5, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    .line 10
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_main_menu:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 11
    :cond_5
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcom/neverland/utils/TCommands;->lastBackPressed:J

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x12c

    cmp-long v3, v1, v7

    if-gez v3, :cond_6

    .line 13
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_main_menu:Lcom/neverland/utils/finit$ECOMMANDS;

    .line 14
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/neverland/utils/TCommands;->lastBackPressed:J

    goto :goto_1

    .line 15
    :cond_7
    iget-object p1, v1, Lcom/neverland/book/TBook;->bookStack:Lcom/neverland/book/TBook$TGotoStack;

    invoke-virtual {p1}, Lcom/neverland/book/TBook$TGotoStack;->isAvailableBackward()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 16
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_backward:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 17
    :cond_8
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_main_menu:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 18
    :cond_9
    iget-object p1, v1, Lcom/neverland/book/TBook;->bookStack:Lcom/neverland/book/TBook$TGotoStack;

    invoke-virtual {p1}, Lcom/neverland/book/TBook$TGotoStack;->isAvailableBackward()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 19
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_backward:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 20
    :cond_a
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_hide:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 21
    :cond_b
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_goto2home:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 22
    :cond_c
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_hide:Lcom/neverland/utils/finit$ECOMMANDS;

    :goto_1
    if-ne p1, v0, :cond_d

    .line 23
    sget-object p1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object p1

    .line 24
    :cond_d
    sget-object v0, Lcom/neverland/utils/finit$EFLAG_KEY;->key_repeat:Lcom/neverland/utils/finit$EFLAG_KEY;

    if-ne p2, v0, :cond_e

    .line 25
    invoke-direct {p0, p1}, Lcom/neverland/utils/TCommands;->isCommandMayBeRepeat(Lcom/neverland/utils/finit$ECOMMANDS;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 26
    sget-object p1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object p1

    .line 27
    :cond_e
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-boolean v1, v1, Lcom/neverland/utils/TCustomDevice;->supportScroll1:Z

    if-eqz v1, :cond_11

    .line 28
    sget-object v1, Lcom/neverland/utils/TCommands$1;->$SwitchMap$com$neverland$utils$finit$ECOMMANDS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_f

    if-eq v1, v6, :cond_10

    goto :goto_2

    .line 29
    :cond_f
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v1, v1, Lcom/neverland/prefs/TAnimation;->always:I

    if-ne v1, v6, :cond_10

    .line 30
    sget-object p1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_h_scroll_next:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object p1

    .line 31
    :cond_10
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v1, v1, Lcom/neverland/prefs/TAnimation;->always:I

    if-ne v1, v6, :cond_11

    .line 32
    sget-object p1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_h_scroll_prev:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object p1

    .line 33
    :cond_11
    :goto_2
    invoke-direct {p0, p1}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    if-ne p2, v0, :cond_12

    .line 34
    sget-object p1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_may_be_repeat:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    :cond_12
    return-object p1
.end method

.method public commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 2
    sget-object v6, Lcom/neverland/utils/finit$ECOMMANDS;->command_nothins:Lcom/neverland/utils/finit$ECOMMANDS;

    .line 3
    sget-object v7, Lcom/neverland/utils/TCommands$1;->$SwitchMap$com$neverland$utils$finit$EFLAG_MOUSE:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x2

    packed-switch v8, :pswitch_data_0

    :cond_0
    move-object/from16 v8, p3

    goto/16 :goto_c

    :pswitch_0
    move v9, v1

    .line 4
    :pswitch_1
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_7

    const-string v3, "y to up"

    .line 5
    invoke-direct {v0, v3}, Lcom/neverland/utils/TCommands;->log(Ljava/lang/String;)V

    .line 6
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v3, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    if-eqz v3, :cond_5

    if-eq v3, v11, :cond_3

    if-eq v3, v12, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->position:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 8
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 10
    :cond_2
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    .line 11
    :cond_3
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_item:Lcom/neverland/utils/finit$ECOMMANDS;

    .line 12
    sget-object v4, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v4}, Lcom/neverland/book/TBook;->isRealPages()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 13
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 14
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 15
    :cond_4
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    .line 16
    :cond_5
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 17
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 18
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 19
    :cond_6
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    :cond_7
    const-string v3, "y to down"

    .line 20
    invoke-direct {v0, v3}, Lcom/neverland/utils/TCommands;->log(Ljava/lang/String;)V

    .line 21
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v3, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    if-eqz v3, :cond_c

    if-eq v3, v11, :cond_a

    if-eq v3, v12, :cond_8

    :goto_0
    move-object/from16 v8, p3

    goto/16 :goto_5

    .line 22
    :cond_8
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->position:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 23
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 24
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 25
    :cond_9
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    .line 26
    :cond_a
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_item:Lcom/neverland/utils/finit$ECOMMANDS;

    .line 27
    sget-object v4, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v4}, Lcom/neverland/book/TBook;->isRealPages()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 28
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 29
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 30
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 31
    :cond_b
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    .line 32
    :cond_c
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 33
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 34
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v3, v4}, Lcom/neverland/viscomp/TScrollPage;->setVKind(Lcom/neverland/utils/finit$EVKIND;)V

    .line 35
    :cond_d
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    .line 36
    :pswitch_2
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_f

    .line 37
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v3, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v5, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v4, v5, :cond_e

    iget-boolean v3, v3, Lcom/neverland/utils/TCustomDevice;->supportBackLight:Z

    if-eqz v3, :cond_e

    .line 38
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_inc_backlight_left:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    .line 39
    :cond_e
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v3}, Lcom/neverland/prefs/TPref;->getAutoBacklight()Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_inc_backlight_all:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    .line 41
    :cond_f
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v3, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v5, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v4, v5, :cond_10

    iget-boolean v3, v3, Lcom/neverland/utils/TCustomDevice;->supportBackLight:Z

    if-eqz v3, :cond_10

    .line 42
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_dec_backlight_left:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_1

    .line 43
    :cond_10
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v3}, Lcom/neverland/prefs/TPref;->getAutoBacklight()Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_dec_backlight_all:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 45
    :pswitch_3
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_12

    .line 46
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v3, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v5, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v4, v5, :cond_11

    iget-boolean v3, v3, Lcom/neverland/utils/TCustomDevice;->supportBackLight:Z

    if-eqz v3, :cond_11

    .line 47
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_inc_backlight_right:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 48
    :cond_11
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v3}, Lcom/neverland/prefs/TPref;->getAutoBacklight()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_inc_backlight_all:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 50
    :cond_12
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v3, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v5, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v4, v5, :cond_13

    iget-boolean v3, v3, Lcom/neverland/utils/TCustomDevice;->supportBackLight:Z

    if-eqz v3, :cond_13

    .line 51
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_dec_backlight_right:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 52
    :cond_13
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v3}, Lcom/neverland/prefs/TPref;->getAutoBacklight()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_dec_backlight_all:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 54
    :pswitch_4
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_14

    .line 55
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_inc_backlight_right:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 56
    :cond_14
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_dec_backlight_right:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 57
    :pswitch_5
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_15

    .line 58
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_inc_backlight_left:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 59
    :cond_15
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_dec_backlight_left:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 60
    :pswitch_6
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_16

    .line 61
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_inc_backlight_all:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_1

    .line 62
    :cond_16
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_dec_backlight_all:Lcom/neverland/utils/finit$ECOMMANDS;

    :cond_17
    :goto_1
    move-object/from16 v8, p3

    goto/16 :goto_e

    :pswitch_7
    move-object/from16 v8, p3

    goto :goto_4

    .line 63
    :pswitch_8
    sget-object v4, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_up_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    move-object/from16 v8, p3

    if-ne v8, v4, :cond_19

    .line 64
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_18

    goto :goto_2

    .line 65
    :cond_18
    sget-object v4, Lcom/neverland/utils/finit$ECOMMANDS;->command_main_menu:Lcom/neverland/utils/finit$ECOMMANDS;

    goto :goto_3

    .line 66
    :cond_19
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    :goto_2
    move-object v4, v6

    :goto_3
    if-eq v4, v6, :cond_1a

    move-object v3, v4

    goto/16 :goto_e

    .line 67
    :cond_1a
    :goto_4
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-boolean v4, v4, Lcom/neverland/prefs/TTaps;->horizontalSwipeDisable:Z

    if-eqz v4, :cond_1b

    :goto_5
    move-object v3, v6

    goto/16 :goto_e

    .line 68
    :cond_1b
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_1c

    .line 69
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_e

    .line 70
    :cond_1c
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_e

    :pswitch_9
    move-object/from16 v8, p3

    .line 71
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_1d

    .line 72
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->doubleSwipe:[I

    aget v3, v3, v9

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto/16 :goto_e

    .line 73
    :cond_1d
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->doubleSwipe:[I

    aget v3, v3, v11

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_a
    move-object/from16 v8, p3

    .line 74
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_1e

    .line 75
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->doubleSwipe:[I

    aget v3, v3, v10

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto/16 :goto_e

    .line 76
    :cond_1e
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->doubleSwipe:[I

    aget v3, v3, v12

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_b
    move-object/from16 v8, p3

    .line 77
    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v3, v4, :cond_1f

    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_inc_font:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_e

    :cond_1f
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_dec_font:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_e

    :pswitch_c
    move-object/from16 v8, p3

    .line 78
    sget-object v3, Lcom/neverland/utils/finit$ECOMMANDS;->command_main_menu:Lcom/neverland/utils/finit$ECOMMANDS;

    goto/16 :goto_e

    :pswitch_d
    move-object/from16 v8, p3

    .line 79
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v3, v3, Lcom/neverland/prefs/TTaps;->thirdTap:I

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_e
    move-object/from16 v8, p3

    .line 80
    sget-object v3, Lcom/neverland/utils/TCommands$1;->$SwitchMap$com$neverland$utils$TCommands$TAP_ON_RESULT:[I

    invoke-direct/range {p0 .. p2}, Lcom/neverland/utils/TCommands;->verifyLongTap(II)Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v3, v3, v13

    packed-switch v3, :pswitch_data_1

    goto :goto_6

    .line 81
    :pswitch_f
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v3, Lcom/neverland/prefs/TOptions;->longTapMode:I

    if-eq v3, v11, :cond_20

    if-eq v3, v12, :cond_20

    if-eq v3, v10, :cond_20

    goto :goto_6

    .line 82
    :cond_20
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 83
    :pswitch_10
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_select:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 84
    :pswitch_11
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_select_dictionary:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 85
    :pswitch_12
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_dictionary:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 86
    :pswitch_13
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 87
    :goto_6
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/neverland/utils/TCommands;->getTapZone(IIII)I

    move-result v3

    .line 88
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v4, v4, Lcom/neverland/prefs/TTaps;->longTaps:[I

    sub-int/2addr v3, v11

    aget v3, v4, v3

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_14
    move-object/from16 v8, p3

    .line 89
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v3, v3, Lcom/neverland/prefs/TTaps;->longDoubleTap:I

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_15
    move-object/from16 v8, p3

    .line 90
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v3, v3, Lcom/neverland/prefs/TTaps;->shortDoubleTap:I

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto/16 :goto_e

    :pswitch_16
    move-object/from16 v8, p3

    .line 91
    invoke-direct/range {p0 .. p2}, Lcom/neverland/utils/TCommands;->verifyTap(II)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 92
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    :cond_21
    const/high16 v3, 0x42040000    # 33.0f

    .line 93
    sget v13, Lcom/neverland/mainApp;->g:F

    mul-float v13, v13, v3

    float-to-int v3, v13

    .line 94
    sget-object v13, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v14, v13, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v14, v14, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    if-eqz v14, :cond_22

    const/4 v14, 0x2

    goto :goto_7

    :cond_22
    const/4 v14, 0x1

    .line 95
    :goto_7
    iget-object v15, v13, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v9, v15, Lcom/neverland/prefs/TOptions;->useStatus:I

    and-int/2addr v9, v14

    if-nez v9, :cond_24

    .line 96
    iget-boolean v9, v15, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    if-eqz v9, :cond_23

    mul-int/lit8 v9, v3, 0x3

    .line 97
    div-int/lit8 v9, v9, 0x4

    if-ge v2, v9, :cond_25

    .line 98
    iget-object v9, v13, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v9, v9, Lcom/neverland/prefs/TTaps;->status:I

    invoke-static {v9}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v9

    if-eq v9, v6, :cond_25

    goto :goto_8

    :cond_23
    sub-int v9, v5, v3

    if-le v2, v9, :cond_25

    .line 99
    iget-object v9, v13, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v9, v9, Lcom/neverland/prefs/TTaps;->status:I

    invoke-static {v9}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v9

    if-eq v9, v6, :cond_25

    goto :goto_8

    .line 100
    :cond_24
    iget-boolean v9, v15, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    if-eqz v9, :cond_25

    if-ge v2, v3, :cond_25

    .line 101
    iget-object v9, v13, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v9, v9, Lcom/neverland/prefs/TTaps;->status:I

    invoke-static {v9}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v9

    if-eq v9, v6, :cond_25

    :goto_8
    move-object v3, v9

    goto/16 :goto_d

    .line 102
    :cond_25
    iget-object v9, v13, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v9, v9, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    if-eqz v9, :cond_26

    const/4 v9, 0x2

    goto :goto_9

    :cond_26
    const/4 v9, 0x1

    .line 103
    :goto_9
    iget-object v14, v13, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v15, v14, Lcom/neverland/prefs/TOptions;->useHeader:I

    and-int/2addr v9, v15

    if-nez v9, :cond_28

    .line 104
    iget-boolean v9, v14, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    if-nez v9, :cond_27

    mul-int/lit8 v3, v3, 0x3

    .line 105
    div-int/lit8 v3, v3, 0x4

    if-ge v2, v3, :cond_29

    .line 106
    iget-object v3, v13, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v3, v3, Lcom/neverland/prefs/TTaps;->header:I

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    if-eq v3, v6, :cond_29

    goto :goto_a

    :cond_27
    sub-int v3, v5, v3

    if-le v2, v3, :cond_29

    .line 107
    iget-object v3, v13, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v3, v3, Lcom/neverland/prefs/TTaps;->header:I

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    if-eq v3, v6, :cond_29

    goto :goto_a

    .line 108
    :cond_28
    iget-boolean v9, v14, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    if-nez v9, :cond_29

    if-ge v2, v3, :cond_29

    .line 109
    iget-object v3, v13, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v3, v3, Lcom/neverland/prefs/TTaps;->header:I

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    if-eq v3, v6, :cond_29

    :goto_a
    goto :goto_d

    .line 110
    :cond_29
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/neverland/utils/TCommands;->getTapZone(IIII)I

    move-result v3

    .line 111
    iget-object v4, v13, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v4, v4, Lcom/neverland/prefs/TTaps;->shortTaps:[I

    sub-int/2addr v3, v11

    aget v3, v4, v3

    invoke-static {v3}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(I)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    goto :goto_d

    .line 112
    :pswitch_17
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v3, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    if-ne v3, v10, :cond_2a

    goto :goto_b

    :cond_2a
    if-ne v3, v11, :cond_2b

    .line 113
    invoke-direct/range {p0 .. p2}, Lcom/neverland/utils/TCommands;->verifyIsNeedDictionary(II)Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    move-result-object v1

    sget-object v2, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->DICT:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    if-ne v1, v2, :cond_2c

    .line 114
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_dictionary:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 115
    :cond_2b
    invoke-direct/range {p0 .. p2}, Lcom/neverland/utils/TCommands;->verifyIsNeedCopyText(II)Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    move-result-object v1

    sget-object v2, Lcom/neverland/utils/TCommands$TAP_ON_RESULT;->DICT:Lcom/neverland/utils/TCommands$TAP_ON_RESULT;

    if-ne v1, v2, :cond_2c

    .line 116
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_select:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 117
    :cond_2c
    :goto_b
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    :goto_c
    move-object v3, v6

    :goto_d
    const/4 v9, 0x0

    :goto_e
    if-ne v3, v6, :cond_2d

    .line 118
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 119
    :cond_2d
    sget-object v4, Lcom/neverland/utils/TCommands$1;->$SwitchMap$com$neverland$utils$finit$ECOMMANDS:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v4, v5

    packed-switch v5, :pswitch_data_2

    .line 120
    sget-object v5, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v6, v5, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v6, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    if-eqz v6, :cond_2f

    .line 121
    sget-object v6, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_error:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 123
    iget-wide v11, v0, Lcom/neverland/utils/TCommands;->lastPageOperationTime:J

    sub-long v11, v13, v11

    iget-object v5, v5, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v5, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    move-object/from16 p4, v6

    int-to-long v5, v5

    cmp-long v16, v11, v5

    if-gez v16, :cond_2e

    .line 124
    sget-object v6, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_f

    :cond_2e
    move-object/from16 v6, p4

    .line 125
    :goto_f
    iput-wide v13, v0, Lcom/neverland/utils/TCommands;->lastPageOperationTime:J

    .line 126
    sget-object v5, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_stop:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    if-ne v6, v5, :cond_2f

    return-object v6

    .line 127
    :cond_2f
    :pswitch_18
    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-boolean v6, v5, Lcom/neverland/utils/TCustomDevice;->supportScroll1:Z

    if-eqz v6, :cond_40

    .line 128
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v10, 0x2

    if-eq v6, v10, :cond_3d

    const/4 v11, 0x5

    if-eq v6, v11, :cond_3c

    const/16 v11, 0x14

    if-eq v6, v11, :cond_36

    const/16 v11, 0x11

    if-eq v6, v11, :cond_36

    const/16 v11, 0x12

    if-eq v6, v11, :cond_36

    packed-switch v6, :pswitch_data_3

    goto/16 :goto_11

    .line 129
    :pswitch_19
    sget-object v6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v11, v6, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v11, v11, Lcom/neverland/prefs/TAnimation;->always:I

    if-eqz v11, :cond_40

    .line 130
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v4, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_33

    const/4 v10, 0x2

    if-eq v11, v10, :cond_30

    goto/16 :goto_11

    .line 131
    :cond_30
    iget-object v1, v6, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v1, v1, Lcom/neverland/prefs/TAnimation;->type:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_31

    .line 132
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_h_scroll_prev:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 133
    :cond_31
    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v5, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 134
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_h_scroll_prev:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 135
    :cond_32
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_manual_h_scroll_prev:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 136
    :cond_33
    iget-object v1, v6, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v1, v1, Lcom/neverland/prefs/TAnimation;->type:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_34

    .line 137
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_h_scroll_next:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 138
    :cond_34
    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v5, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 139
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_h_scroll_next:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 140
    :cond_35
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_manual_h_scroll_next:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 141
    :cond_36
    :pswitch_1a
    sget-object v6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v11, v6, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v11, v11, Lcom/neverland/prefs/TAnimation;->always:I

    if-nez v11, :cond_37

    iget-object v6, v6, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v6, v6, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    const/4 v10, 0x2

    if-ne v6, v10, :cond_40

    goto :goto_10

    :cond_37
    const/4 v10, 0x2

    .line 142
    :goto_10
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v4, v6

    const/4 v11, 0x1

    if-eq v6, v11, :cond_3a

    if-eq v6, v10, :cond_38

    goto :goto_11

    .line 143
    :cond_38
    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v5, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 144
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_v_scroll_prev:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 145
    :cond_39
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_manual_v_scroll_prev:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 146
    :cond_3a
    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v5, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 147
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_v_scroll_next:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 148
    :cond_3b
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_manual_v_scroll_next:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 149
    :cond_3c
    sget-object v5, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v5, v5, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v5, Lcom/neverland/prefs/TOptions;->longTapMode:I

    if-eqz v5, :cond_3d

    goto :goto_11

    .line 150
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v4, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3e

    goto :goto_11

    .line 151
    :cond_3e
    sget-object v5, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v5, v5, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v5, v5, Lcom/neverland/prefs/TAnimation;->always:I

    if-ne v5, v6, :cond_40

    .line 152
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_h_scroll_prev:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    :cond_3f
    const/4 v6, 0x2

    .line 153
    sget-object v5, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v5, v5, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v5, v5, Lcom/neverland/prefs/TAnimation;->always:I

    if-ne v5, v6, :cond_40

    .line 154
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_auto_h_scroll_next:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return-object v1

    .line 155
    :cond_40
    :goto_11
    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_quickpanel:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v3, v5, :cond_41

    const v5, 0xffff

    and-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x7fff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    int-to-long v1, v1

    .line 156
    invoke-direct {v0, v3, v1, v2}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object v1

    goto :goto_13

    .line 157
    :cond_41
    sget-object v1, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_item:Lcom/neverland/utils/finit$ECOMMANDS;

    if-eq v3, v1, :cond_43

    sget-object v1, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_item:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v3, v1, :cond_42

    goto :goto_12

    .line 158
    :cond_42
    invoke-direct {v0, v3}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object v1

    goto :goto_13

    :cond_43
    :goto_12
    int-to-long v1, v9

    .line 159
    invoke-direct {v0, v3, v1, v2}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object v1

    .line 160
    :goto_13
    sget-object v2, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_error:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    if-eq v1, v2, :cond_44

    .line 161
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_4

    goto :goto_14

    .line 162
    :pswitch_1b
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_5

    goto :goto_14

    .line 163
    :pswitch_1c
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_backlight_change_right:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_14

    .line 164
    :pswitch_1d
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_backlight_change_left:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_14

    .line 165
    :pswitch_1e
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_backlight_change_all:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_14

    .line 166
    :pswitch_1f
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_may_be_repeat:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_14

    .line 167
    :pswitch_20
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_item_scroll:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_14

    .line 168
    :pswitch_21
    sget-object v1, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_may_be_repeat:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    :cond_44
    :goto_14
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_21
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public commandMouse(Lcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    return-object p1
.end method

.method public commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    return-object p1
.end method

.method public commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;I)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 2

    int-to-long v0, p2

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    return-object p1
.end method

.method public commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;ILjava/lang/String;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 2

    int-to-long v0, p2

    .line 4
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;JLjava/lang/String;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    return-object p1
.end method

.method public commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    return-object p1
.end method

.method public commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;JLjava/lang/String;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/neverland/utils/TCommands;->command(Lcom/neverland/utils/finit$ECOMMANDS;JLjava/lang/String;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    return-object p1
.end method

.method public freeAll()V
    .locals 0

    return-void
.end method

.method public initAll()V
    .locals 0

    return-void
.end method

.method public isAvailableCommand(Lcom/neverland/utils/finit$ECOMMANDS;)Z
    .locals 4

    const-string v0, ""

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/neverland/utils/TCommands;->operationBlocked:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    sget-object v1, Lcom/neverland/utils/TCommands$1;->$SwitchMap$com$neverland$utils$finit$ECOMMANDS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 5
    :pswitch_1
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p1}, Lcom/neverland/utils/TCustomDevice;->isLibraryServiceRunning()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 6
    :pswitch_2
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p1}, Lcom/neverland/utils/TCustomDevice;->isLibraryServiceRunning()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    .line 7
    :pswitch_3
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {p1, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 8
    :pswitch_4
    monitor-exit v0

    return v1

    .line 9
    :pswitch_5
    monitor-exit v0

    return v1

    .line 10
    :pswitch_6
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    monitor-exit v0

    return v2

    .line 11
    :pswitch_7
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 12
    monitor-exit v0

    return v1

    .line 13
    :pswitch_8
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p1}, Lcom/neverland/utils/TCustomDevice;->isTTSServiceRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 14
    monitor-exit v0

    return v1

    .line 15
    :pswitch_9
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_4

    .line 16
    monitor-exit v0

    return v1

    .line 17
    :cond_4
    monitor-exit v0

    return v2

    .line 18
    :pswitch_a
    monitor-exit v0

    return v1

    .line 19
    :pswitch_b
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_5

    .line 20
    monitor-exit v0

    return v1

    .line 21
    :cond_5
    monitor-exit v0

    return v2

    .line 22
    :pswitch_c
    monitor-exit v0

    return v1

    .line 23
    :pswitch_d
    monitor-exit v0

    return v1

    .line 24
    :pswitch_e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt p1, v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    monitor-exit v0

    return v2

    .line 25
    :pswitch_f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    monitor-exit v0

    return v2

    .line 26
    :pswitch_10
    monitor-exit v0

    return v1

    .line 27
    :pswitch_11
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p1}, Lcom/neverland/utils/TCustomDevice;->isLibraryServiceRunning()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 v2, 0x1

    :cond_8
    monitor-exit v0

    return v2

    .line 28
    :pswitch_12
    monitor-exit v0

    return v1

    .line 29
    :pswitch_13
    monitor-exit v0

    return v1

    .line 30
    :pswitch_14
    monitor-exit v0

    return v1

    .line 31
    :pswitch_15
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_a

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, p1, Lcom/neverland/book/TBook$TBookInfo;->supportSource:Z

    if-nez v3, :cond_9

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->supportEdit:Z

    if-eqz p1, :cond_a

    .line 32
    :cond_9
    monitor-exit v0

    return v1

    .line 33
    :cond_a
    monitor-exit v0

    return v2

    .line 34
    :pswitch_16
    monitor-exit v0

    return v1

    .line 35
    :pswitch_17
    monitor-exit v0

    return v1

    .line 36
    :pswitch_18
    monitor-exit v0

    return v1

    .line 37
    :pswitch_19
    monitor-exit v0

    return v1

    .line 38
    :pswitch_1a
    monitor-exit v0

    return v1

    .line 39
    :pswitch_1b
    monitor-exit v0

    return v1

    .line 40
    :pswitch_1c
    monitor-exit v0

    return v1

    .line 41
    :pswitch_1d
    monitor-exit v0

    return v1

    .line 42
    :pswitch_1e
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 43
    monitor-exit v0

    return v1

    .line 44
    :pswitch_1f
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 45
    monitor-exit v0

    return v1

    .line 46
    :pswitch_20
    monitor-exit v0

    return v1

    .line 47
    :pswitch_21
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 48
    monitor-exit v0

    return v1

    .line 49
    :pswitch_22
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 50
    monitor-exit v0

    return v1

    .line 51
    :pswitch_23
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p1, p1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v3, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne p1, v3, :cond_b

    const/4 v2, 0x1

    :cond_b
    monitor-exit v0

    return v2

    .line 52
    :pswitch_24
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 53
    monitor-exit v0

    return v1

    .line 54
    :pswitch_25
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_c

    .line 55
    monitor-exit v0

    return v1

    .line 56
    :cond_c
    :pswitch_26
    monitor-exit v0

    return v1

    .line 57
    :pswitch_27
    monitor-exit v0

    return v1

    .line 58
    :pswitch_28
    monitor-exit v0

    return v1

    .line 59
    :pswitch_29
    monitor-exit v0

    return v1

    .line 60
    :pswitch_2a
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object p1, p1, Lcom/neverland/book/TBook$TBookInfo;->content:Ljava/util/ArrayList;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 61
    monitor-exit v0

    return v1

    .line 62
    :pswitch_2b
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object p1, p1, Lcom/neverland/book/TBook$TBookInfo;->content:Ljava/util/ArrayList;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 63
    monitor-exit v0

    return v1

    .line 64
    :pswitch_2c
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 65
    monitor-exit v0

    return v1

    .line 66
    :pswitch_2d
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 67
    monitor-exit v0

    return v1

    .line 68
    :pswitch_2e
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 69
    monitor-exit v0

    return v1

    .line 70
    :pswitch_2f
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object p1, p1, Lcom/neverland/book/TBook$TBookInfo;->content:Ljava/util/ArrayList;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 71
    monitor-exit v0

    return v1

    .line 72
    :pswitch_30
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 73
    monitor-exit v0

    return v1

    .line 74
    :pswitch_31
    monitor-exit v0

    return v1

    .line 75
    :pswitch_32
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookStack:Lcom/neverland/book/TBook$TGotoStack;

    invoke-virtual {p1}, Lcom/neverland/book/TBook$TGotoStack;->isAvailableForward()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 76
    :pswitch_33
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookStack:Lcom/neverland/book/TBook$TGotoStack;

    invoke-virtual {p1}, Lcom/neverland/book/TBook$TGotoStack;->isAvailableBackward()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 77
    :pswitch_34
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 78
    monitor-exit v0

    return v1

    .line 79
    :pswitch_35
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 80
    monitor-exit v0

    return v1

    .line 81
    :pswitch_36
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 82
    monitor-exit v0

    return v1

    .line 83
    :pswitch_37
    monitor-exit v0

    return v1

    .line 84
    :pswitch_38
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 85
    monitor-exit v0

    return v1

    .line 86
    :pswitch_39
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 87
    monitor-exit v0

    return v1

    .line 88
    :pswitch_3a
    monitor-exit v0

    return v1

    .line 89
    :pswitch_3b
    monitor-exit v0

    return v1

    .line 90
    :pswitch_3c
    monitor-exit v0

    return v1

    .line 91
    :pswitch_3d
    monitor-exit v0

    return v1

    .line 92
    :pswitch_3e
    monitor-exit v0

    return v1

    .line 93
    :pswitch_3f
    monitor-exit v0

    return v1

    .line 94
    :pswitch_40
    monitor-exit v0

    return v1

    .line 95
    :pswitch_41
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 96
    monitor-exit v0

    return v1

    .line 97
    :pswitch_42
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 98
    monitor-exit v0

    return v1

    .line 99
    :pswitch_43
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 100
    monitor-exit v0

    return v1

    .line 101
    :pswitch_44
    monitor-exit v0

    return v1

    .line 102
    :pswitch_45
    monitor-exit v0

    return v1

    .line 103
    :pswitch_46
    monitor-exit v0

    return v1

    .line 104
    :pswitch_47
    monitor-exit v0

    return v1

    .line 105
    :pswitch_48
    monitor-exit v0

    return v1

    .line 106
    :pswitch_49
    monitor-exit v0

    return v1

    .line 107
    :pswitch_4a
    monitor-exit v0

    return v1

    .line 108
    :pswitch_4b
    monitor-exit v0

    return v1

    .line 109
    :pswitch_4c
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 110
    monitor-exit v0

    return v1

    .line 111
    :pswitch_4d
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_d

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->isText:Z

    if-eqz p1, :cond_d

    .line 112
    monitor-exit v0

    return v1

    .line 113
    :pswitch_4e
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 114
    monitor-exit v0

    return v1

    .line 115
    :pswitch_4f
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 116
    monitor-exit v0

    return v1

    .line 117
    :pswitch_50
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 118
    monitor-exit v0

    return v1

    .line 119
    :pswitch_51
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p1, p1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean p1, p1, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz p1, :cond_d

    .line 120
    monitor-exit v0

    return v1

    .line 121
    :cond_d
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_25
        :pswitch_26
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isKeySupport(ILcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "commands"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/neverland/utils/TCommands$1;->$SwitchMap$com$neverland$engbook$forpublic$EngBookMyType$TAL_SCREEN_SELECTION_MODE:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    if-eq p2, v1, :cond_0

    const/4 v3, 0x5

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_1

    if-lez p1, :cond_4

    .line 3
    sget p2, Lcom/neverland/prefs/TTaps;->KEYCODE_SUPPORTED_MAX:I

    if-ge p1, p2, :cond_4

    .line 4
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p2, p2, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object p2, p2, Lcom/neverland/prefs/TTaps;->keys:[I

    aget p1, p2, p1

    if-eqz p1, :cond_4

    return v2

    .line 5
    :cond_1
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->backAction1:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    if-eq p1, v1, :cond_5

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v2
.end method

.method public resetReadingStatTime()V
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_nothins:Lcom/neverland/utils/finit$ECOMMANDS;

    iput-object v0, p0, Lcom/neverland/utils/TCommands;->prevstatcomm:Lcom/neverland/utils/finit$ECOMMANDS;

    return-void
.end method

.method public setOperationBlocked1(Z)V
    .locals 1

    const-string v0, ""

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/neverland/utils/TCommands;->operationBlocked:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
