.class public Lcom/neverland/viscomp/TMousePointGesture;
.super Ljava/lang/Object;
.source "TMousePointGesture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mouse"


# instance fields
.field private Height:I

.field private Width:I

.field private X0:I

.field private X1:I

.field private X2:I

.field private Y0:I

.field private Y1:I

.field private Y2:I

.field public countTap:I

.field private doit:Z

.field private edgeZone:I

.field private final handlerDoubleTapPress:Landroid/os/Handler;

.field private final handlerLongPress:Landroid/os/Handler;

.field private lastSelectedX:I

.field private lastSelectedY:I

.field private lastTapX0:I

.field private lastTapY0:I

.field mDoubleTapPressed:Ljava/lang/Runnable;

.field mLongPressed:Ljava/lang/Runnable;

.field private parentHeight:I

.field private parentWidth:I

.field private pressCount:I

.field private pressTime:J

.field private reject:I

.field private screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

.field private final speedY:Lcom/neverland/viscomp/dialogs/GestureSpeed;

.field private startX0:I

.field private startX1:I

.field private startX2:I

.field private startY0:I

.field private startY1:I

.field private startY2:I

.field private start_distance:I

.field private swipeZone:I

.field public timeDoubleTap:J

.field public waitDoubleTap1:Z

.field private workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

.field public xDoubeTap:I

.field public yDoubleTap:I

.field private zoomZone:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->start_distance:I

    .line 3
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->NONE:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    iput-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    .line 4
    sget-object v1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_unknown:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    .line 5
    iput-boolean v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    .line 6
    iput v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->countTap:I

    .line 7
    iput-boolean v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->waitDoubleTap1:Z

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->timeDoubleTap:J

    .line 9
    iput v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    .line 10
    new-instance v1, Lcom/neverland/viscomp/dialogs/GestureSpeed;

    invoke-direct {v1}, Lcom/neverland/viscomp/dialogs/GestureSpeed;-><init>()V

    iput-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->speedY:Lcom/neverland/viscomp/dialogs/GestureSpeed;

    .line 11
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->handlerLongPress:Landroid/os/Handler;

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->handlerDoubleTapPress:Landroid/os/Handler;

    .line 13
    new-instance v1, Lcom/neverland/viscomp/TMousePointGesture$1;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/TMousePointGesture$1;-><init>(Lcom/neverland/viscomp/TMousePointGesture;)V

    iput-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->mDoubleTapPressed:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lcom/neverland/viscomp/TMousePointGesture$2;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/TMousePointGesture$2;-><init>(Lcom/neverland/viscomp/TMousePointGesture;)V

    iput-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->mLongPressed:Ljava/lang/Runnable;

    .line 15
    iput v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->reject:I

    .line 16
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/TMousePointGesture;)Lcom/neverland/utils/finit$EFLAG_MOUSE;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    return-object p0
.end method

.method static synthetic access$002(Lcom/neverland/viscomp/TMousePointGesture;Lcom/neverland/utils/finit$EFLAG_MOUSE;)Lcom/neverland/utils/finit$EFLAG_MOUSE;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    return-object p1
.end method

.method static synthetic access$100(Lcom/neverland/viscomp/TMousePointGesture;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    return p0
.end method

.method static synthetic access$200(Lcom/neverland/viscomp/TMousePointGesture;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    return p0
.end method

.method static synthetic access$300(Lcom/neverland/viscomp/TMousePointGesture;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/TMousePointGesture;->parentWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/neverland/viscomp/TMousePointGesture;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    return p0
.end method

.method static synthetic access$500(Lcom/neverland/viscomp/TMousePointGesture;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    return p0
.end method

.method static synthetic access$602(Lcom/neverland/viscomp/TMousePointGesture;Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    return-object p1
.end method

.method private disableDoubleTapPress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->handlerDoubleTapPress:Landroid/os/Handler;

    iget-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->mDoubleTapPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private disableLongPress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->handlerLongPress:Landroid/os/Handler;

    iget-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private distance()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    sub-int v2, v0, v1

    sub-int/2addr v0, v1

    mul-int v2, v2, v0

    iget v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    sub-int v3, v0, v1

    sub-int/2addr v0, v1

    mul-int v3, v3, v0

    add-int/2addr v2, v3

    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/viscomp/TMousePointGesture;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/neverland/utils/finit;->LOGMOUSESUPPORT:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const-string v0, "mouse"

    .line 3
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->stopLongPress()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    .line 3
    sget-object v0, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_unknown:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    return-void
.end method

.method endMouse(IIIJ)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "end mouse"

    .line 1
    invoke-direct {v0, v1}, Lcom/neverland/viscomp/TMousePointGesture;->log(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/neverland/viscomp/TMousePointGesture;->speedY:Lcom/neverland/viscomp/dialogs/GestureSpeed;

    const/4 v2, 0x1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/GestureSpeed;->addData(IJZ)V

    .line 5
    iget v1, v0, Lcom/neverland/viscomp/TMousePointGesture;->reject:I

    sub-int v1, p1, v1

    const/4 v3, 0x0

    if-gez v1, :cond_1

    .line 6
    iput v3, v0, Lcom/neverland/viscomp/TMousePointGesture;->reject:I

    .line 7
    :cond_1
    iget-boolean v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    if-nez v4, :cond_25

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->stopLongPress()V

    .line 9
    sget-object v4, Lcom/neverland/viscomp/TMousePointGesture$3;->$SwitchMap$com$neverland$engbook$forpublic$EngBookMyType$TAL_SCREEN_SELECTION_MODE:[I

    iget-object v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_22

    const/4 v5, 0x2

    if-eq v4, v5, :cond_22

    const/4 v6, 0x3

    if-eq v4, v6, :cond_21

    const/4 v7, 0x4

    if-eq v4, v7, :cond_2

    goto/16 :goto_6

    .line 10
    :cond_2
    sget-object v4, Lcom/neverland/viscomp/TMousePointGesture$3;->$SwitchMap$com$neverland$utils$finit$EFLAG_MOUSE:[I

    iget-object v8, v0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v4, v4, v8

    if-eq v4, v2, :cond_20

    if-eq v4, v5, :cond_1f

    if-eq v4, v7, :cond_12

    const/4 v7, 0x5

    if-eq v4, v7, :cond_19

    const/4 v7, 0x6

    if-eq v4, v7, :cond_3

    goto/16 :goto_6

    .line 11
    :cond_3
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v7, v4, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v7, v7, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    if-eqz v7, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 13
    :cond_4
    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    int-to-float v8, v7

    iget-object v9, v4, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v10, v9, Lcom/neverland/prefs/TOptions;->tapGuard:I

    int-to-float v11, v10

    sget v12, Lcom/neverland/mainApp;->g:F

    mul-float v11, v11, v12

    cmpg-float v8, v8, v11

    if-ltz v8, :cond_11

    int-to-float v7, v7

    iget v8, v0, Lcom/neverland/viscomp/TMousePointGesture;->parentWidth:I

    int-to-float v8, v8

    int-to-float v10, v10

    mul-float v10, v10, v12

    sub-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    goto/16 :goto_0

    .line 14
    :cond_5
    sget-object v7, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-nez v7, :cond_6

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 16
    :cond_6
    iget v7, v9, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    if-eqz v7, :cond_c

    .line 17
    iget-boolean v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->waitDoubleTap1:Z

    if-eqz v7, :cond_b

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->stopDoubleTapPress()V

    .line 19
    iput-boolean v3, v0, Lcom/neverland/viscomp/TMousePointGesture;->waitDoubleTap1:Z

    .line 20
    iget-object v7, v4, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v7, v7, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    if-ne v7, v6, :cond_7

    .line 21
    sget-object v4, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_quickpanel:Lcom/neverland/utils/finit$ECOMMANDS;

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedX:I

    const v7, 0xffff

    and-int/2addr v6, v7

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedY:I

    and-int/lit16 v7, v7, 0x7fff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;I)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto/16 :goto_6

    .line 22
    :cond_7
    sget-object v6, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget v8, v0, Lcom/neverland/viscomp/TMousePointGesture;->xDoubeTap:I

    iget v9, v0, Lcom/neverland/viscomp/TMousePointGesture;->yDoubleTap:I

    sget-object v10, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_dictionary:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v11, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v7, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 23
    invoke-virtual {v7}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v12

    sget-object v7, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 24
    invoke-virtual {v7}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object v7, v6

    .line 25
    invoke-virtual/range {v7 .. v13}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object v7

    .line 26
    sget-object v8, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_dictionary:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    if-ne v7, v8, :cond_8

    .line 27
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedX:I

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedY:I

    sget-object v7, Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;->DICTIONARY:Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;

    invoke-virtual {v4, v5, v6, v7}, Lcom/neverland/viscomp/TMainActivity;->showDictionary1(IILcom/neverland/utils/TCustomDevice$DICTIONARU_USE;)V

    goto/16 :goto_6

    .line 28
    :cond_8
    sget-object v8, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_select:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    if-ne v7, v8, :cond_24

    .line 29
    iget-object v4, v4, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    if-ne v4, v5, :cond_a

    .line 30
    sget-object v4, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v4, v2}, Lcom/neverland/book/TBook;->getSelectText(Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 32
    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v5, v4}, Lcom/neverland/utils/TCustomDevice;->copyTextToClipboard(Ljava/lang/String;)Z

    .line 33
    :cond_9
    sget-object v4, Lcom/neverland/utils/finit$ECOMMANDS;->command_clear_all_selected:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v6, v4}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto/16 :goto_6

    .line 34
    :cond_a
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->xDoubeTap:I

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->yDoubleTap:I

    invoke-virtual {v4, v5, v6}, Lcom/neverland/viscomp/TMainActivity;->showSelectMenu1(II)V

    goto/16 :goto_6

    .line 35
    :cond_b
    iput-boolean v2, v0, Lcom/neverland/viscomp/TMousePointGesture;->waitDoubleTap1:Z

    .line 36
    iget v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    iput v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->xDoubeTap:I

    .line 37
    iget v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    iput v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->yDoubleTap:I

    .line 38
    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v4}, Lcom/neverland/utils/TCustomDevice;->getCurrentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->timeDoubleTap:J

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->startDoubleTapPress()V

    goto/16 :goto_6

    .line 40
    :cond_c
    sget-object v4, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    iget v8, v0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    sget-object v9, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v10, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v6, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 41
    invoke-virtual {v6}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    sget-object v6, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 42
    invoke-virtual {v6}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    move-object v6, v4

    .line 43
    invoke-virtual/range {v6 .. v12}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object v6

    .line 44
    sget-object v7, Lcom/neverland/viscomp/TMousePointGesture$3;->$SwitchMap$com$neverland$utils$finit$ECOMMAND_RESULT:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v2, :cond_f

    if-eq v6, v5, :cond_d

    goto/16 :goto_6

    .line 45
    :cond_d
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v5}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v5

    sget-object v6, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v7, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    invoke-virtual {v5, v6, v7, v3}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 46
    sget-object v1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_h_scroll:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object v1, v0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    return-void

    .line 47
    :cond_e
    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 49
    :cond_f
    sget-object v5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v5}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v5

    sget-object v6, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v7, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    invoke-virtual {v5, v6, v7, v3}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 50
    sget-object v1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_h_scroll:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object v1, v0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    return-void

    .line 51
    :cond_10
    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 53
    :cond_11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 54
    :cond_12
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v5, v4, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v5, v5, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    if-eqz v5, :cond_14

    .line 55
    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v5}, Lcom/neverland/utils/TCustomDevice;->getCurrentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->pressTime:J

    sub-long/2addr v5, v7

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->longTapTime:I

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-lez v4, :cond_13

    .line 56
    sget-object v4, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_block_touch:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 57
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 58
    :cond_14
    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    int-to-float v7, v5

    sget v8, Lcom/neverland/mainApp;->g:F

    const/high16 v9, 0x41400000    # 12.0f

    mul-float v10, v8, v9

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_18

    int-to-float v5, v5

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->parentWidth:I

    int-to-float v10, v7

    mul-float v11, v8, v9

    sub-float/2addr v10, v11

    cmpl-float v5, v5, v10

    if-lez v5, :cond_15

    goto :goto_1

    .line 59
    :cond_15
    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    int-to-float v10, v5

    mul-float v11, v8, v9

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_19

    int-to-float v5, v5

    int-to-float v7, v7

    mul-float v8, v8, v9

    sub-float/2addr v7, v8

    cmpl-float v5, v5, v7

    if-lez v5, :cond_16

    goto :goto_2

    .line 60
    :cond_16
    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v5}, Lcom/neverland/utils/TCustomDevice;->getCurrentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->pressTime:J

    sub-long/2addr v5, v7

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->longTapTime:I

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-lez v4, :cond_17

    .line 61
    sget-object v5, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapX0:I

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapY0:I

    sget-object v8, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_long_double_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v9, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 62
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 63
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 64
    invoke-virtual/range {v5 .. v11}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto/16 :goto_6

    .line 65
    :cond_17
    sget-object v12, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget v13, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapX0:I

    iget v14, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapY0:I

    sget-object v15, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v16, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 66
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 67
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 68
    invoke-virtual/range {v12 .. v18}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto/16 :goto_6

    .line 69
    :cond_18
    :goto_1
    iget v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    iput v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    .line 70
    iget v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->startY1:I

    iput v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    .line 71
    :cond_19
    :goto_2
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v5, v4, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v5, v5, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    if-eqz v5, :cond_1a

    .line 72
    sget-object v4, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_block_touch:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 74
    :cond_1a
    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-gt v5, v7, :cond_1e

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-gt v5, v7, :cond_1e

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->X2:I

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->startX2:I

    sub-int/2addr v5, v7

    .line 75
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-gt v5, v7, :cond_1e

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->Y2:I

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->startY2:I

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-gt v5, v7, :cond_1e

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    sub-int/2addr v5, v7

    .line 76
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-gt v5, v7, :cond_1e

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->startY1:I

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-le v5, v7, :cond_1b

    goto :goto_4

    .line 77
    :cond_1b
    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    if-gt v5, v6, :cond_1d

    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v5}, Lcom/neverland/utils/TCustomDevice;->getCurrentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->pressTime:J

    sub-long/2addr v5, v7

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->longTapTime:I

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-lez v4, :cond_1c

    goto :goto_3

    .line 78
    :cond_1c
    sget-object v5, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapX0:I

    iget v7, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapY0:I

    sget-object v8, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_third_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v9, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 79
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 80
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 81
    invoke-virtual/range {v5 .. v11}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_4

    .line 82
    :cond_1d
    :goto_3
    sget-object v12, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    iget v13, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapX0:I

    iget v14, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapY0:I

    sget-object v15, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_third_long_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v16, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 83
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 84
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 85
    invoke-virtual/range {v12 .. v18}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 86
    :cond_1e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto :goto_6

    .line 87
    :cond_1f
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    goto :goto_6

    .line 88
    :cond_20
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v4

    iget-object v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->speedY:Lcom/neverland/viscomp/dialogs/GestureSpeed;

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->parentHeight:I

    invoke-virtual {v5, v6}, Lcom/neverland/viscomp/dialogs/GestureSpeed;->getSpeed(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    goto :goto_6

    .line 89
    :cond_21
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedX:I

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedY:I

    sget-object v7, Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;->AUTO:Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;

    invoke-virtual {v4, v5, v6, v7}, Lcom/neverland/viscomp/TMainActivity;->showDictionary1(IILcom/neverland/utils/TCustomDevice$DICTIONARU_USE;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto :goto_6

    .line 91
    :cond_22
    iget-object v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v5, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_long_tap_selectdict:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    if-ne v4, v5, :cond_23

    .line 92
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedX:I

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedY:I

    sget-object v7, Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;->AUTO:Lcom/neverland/utils/TCustomDevice$DICTIONARU_USE;

    invoke-virtual {v4, v5, v6, v7}, Lcom/neverland/viscomp/TMainActivity;->showDictionary1(IILcom/neverland/utils/TCustomDevice$DICTIONARU_USE;)V

    goto :goto_5

    .line 93
    :cond_23
    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    iget v5, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedX:I

    iget v6, v0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedY:I

    invoke-virtual {v4, v5, v6}, Lcom/neverland/viscomp/TMainActivity;->showSelectMenu1(II)V

    .line 94
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    .line 95
    :cond_24
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    .line 96
    :cond_25
    iget v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    sub-int/2addr v4, v2

    iput v4, v0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    if-gtz v1, :cond_26

    .line 97
    sget-object v1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_unknown:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object v1, v0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    .line 98
    iput v3, v0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    :cond_26
    return-void
.end method

.method public getSpeedY()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->speedY:Lcom/neverland/viscomp/dialogs/GestureSpeed;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->parentHeight:I

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/GestureSpeed;->getSpeed(I)I

    move-result v0

    return v0
.end method

.method public getWorkMode()Lcom/neverland/utils/finit$EFLAG_MOUSE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    return-object v0
.end method

.method public isScrollProcess()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/TScrollPage;->isWork()Z

    move-result v0

    return v0
.end method

.method public needScrollStop()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object v1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_unknown:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;I)V

    return-void
.end method

.method prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;I)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->stopLongPress()V

    .line 3
    iput-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    .line 4
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v0, v0, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    .line 7
    sget-object v8, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_item_scroll:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    if-ne p2, v8, :cond_1

    move v2, p3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapX0:I

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapY0:I

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 8
    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 9
    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object v1, v0

    move-object v4, p2

    move-object v5, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/neverland/utils/TCommands;->commandMouse(IILcom/neverland/utils/finit$EFLAG_MOUSE;Lcom/neverland/utils/finit$EDIRECTION;II)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    move-result-object p1

    .line 11
    sget-object v1, Lcom/neverland/viscomp/TMousePointGesture$3;->$SwitchMap$com$neverland$utils$finit$ECOMMAND_RESULT:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    packed-switch v1, :pswitch_data_0

    .line 12
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 13
    :pswitch_0
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EMODE;->scroll_manual:Lcom/neverland/utils/finit$EMODE;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_h_scroll:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    goto/16 :goto_6

    .line 15
    :cond_2
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 16
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 17
    :pswitch_1
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EMODE;->scroll_manual:Lcom/neverland/utils/finit$EMODE;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_h_scroll:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    goto/16 :goto_6

    .line 19
    :cond_3
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 20
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 21
    :pswitch_2
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 23
    :goto_1
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 24
    :pswitch_3
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 26
    :goto_2
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 27
    :pswitch_4
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EMODE;->scroll_manual:Lcom/neverland/utils/finit$EMODE;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 28
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_v_scroll:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    goto/16 :goto_6

    .line 29
    :cond_6
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 30
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 31
    :pswitch_5
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EMODE;->scroll_manual:Lcom/neverland/utils/finit$EMODE;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_v_scroll:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    goto/16 :goto_6

    .line 33
    :cond_7
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 34
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_6

    .line 35
    :pswitch_6
    sget-object v0, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_backlight_change_all:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    if-ne p1, v0, :cond_8

    .line 36
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_backlight_change_all:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    goto :goto_3

    .line 37
    :cond_8
    sget-object v0, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_backlight_change_left:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    if-ne p1, v0, :cond_9

    .line 38
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_backlight_change_left:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    goto :goto_3

    .line 39
    :cond_9
    sget-object v0, Lcom/neverland/utils/finit$ECOMMAND_RESULT;->commres_backlight_change_right:Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    if-ne p1, v0, :cond_a

    .line 40
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_backlight_change_right:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    goto :goto_3

    .line 41
    :cond_a
    iput-object v8, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    .line 42
    :goto_3
    :pswitch_7
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_zoom:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    if-ne p2, p1, :cond_b

    .line 43
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->start_distance:I

    goto :goto_6

    .line 44
    :cond_b
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    .line 45
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    .line 46
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    .line 47
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY1:I

    goto :goto_6

    .line 48
    :cond_c
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    .line 49
    :cond_d
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 50
    :goto_4
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto :goto_6

    .line 51
    :cond_e
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    iget v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    .line 52
    :cond_f
    sget-object p1, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, p1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 53
    :goto_5
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setXYMouse(IIIJ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->speedY:Lcom/neverland/viscomp/dialogs/GestureSpeed;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, p4, p5, v2}, Lcom/neverland/viscomp/dialogs/GestureSpeed;->addData(IJZ)V

    .line 3
    iget p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->reject:I

    sub-int/2addr p1, p4

    if-gez p1, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object p4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-nez p4, :cond_2

    return-void

    .line 5
    :cond_2
    iget-boolean p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    if-eqz p5, :cond_3

    invoke-virtual {p4}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p4

    invoke-virtual {p4}, Lcom/neverland/viscomp/TScrollPage;->isWork()Z

    move-result p4

    if-nez p4, :cond_3

    return-void

    :cond_3
    const/4 p4, 0x2

    if-nez p1, :cond_4

    .line 6
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapX0:I

    .line 7
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapY0:I

    .line 8
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    .line 9
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_2b

    .line 10
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    .line 11
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    .line 12
    :goto_0
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    iget p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    sub-int/2addr p1, p5

    .line 13
    iget p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    iget v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    sub-int/2addr p5, v0

    .line 14
    sget-object v0, Lcom/neverland/viscomp/TMousePointGesture$3;->$SwitchMap$com$neverland$engbook$forpublic$EngBookMyType$TAL_SCREEN_SELECTION_MODE:[I

    iget-object v2, p0, Lcom/neverland/viscomp/TMousePointGesture;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_29

    if-eq v0, p4, :cond_29

    const/4 p4, 0x3

    if-eq v0, p4, :cond_29

    const/4 p2, 0x4

    if-eq v0, p2, :cond_5

    goto/16 :goto_3

    .line 15
    :cond_5
    sget-object p2, Lcom/neverland/viscomp/TMousePointGesture$3;->$SwitchMap$com$neverland$utils$finit$EFLAG_MOUSE:[I

    iget-object p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 16
    :pswitch_1
    invoke-direct {p0}, Lcom/neverland/viscomp/TMousePointGesture;->distance()I

    move-result p1

    .line 17
    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->start_distance:I

    int-to-double p3, p2

    iget p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->zoomZone:I

    int-to-double v0, p5

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p3, v0

    int-to-double v0, p1

    cmpg-double v4, p3, v0

    if-gez v4, :cond_6

    .line 18
    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_zoom:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p2, p3, p1}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;I)V

    goto/16 :goto_3

    :cond_6
    int-to-double p3, p5

    .line 19
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p3

    int-to-double p2, p2

    cmpg-double p4, v0, p2

    if-gez p4, :cond_2a

    .line 20
    sget-object p2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_zoom:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p2, p3, p1}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;I)V

    goto/16 :goto_3

    .line 21
    :pswitch_2
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-le p5, p1, :cond_7

    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY1:I

    sub-int/2addr p2, p3

    if-le p2, p1, :cond_7

    .line 22
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_swipe_y:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    :cond_7
    neg-int p2, p5

    if-le p2, p1, :cond_2a

    .line 23
    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY1:I

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    sub-int/2addr p2, p3

    if-le p2, p1, :cond_2a

    .line 24
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_swipe_y:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 25
    :pswitch_3
    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-le p1, p2, :cond_8

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    iget p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    sub-int/2addr p3, p4

    if-le p3, p2, :cond_8

    .line 26
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_swipe_x:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    :cond_8
    neg-int p1, p1

    if-le p1, p2, :cond_2a

    .line 27
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    sub-int/2addr p1, p3

    if-le p1, p2, :cond_2a

    .line 28
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_swipe_x:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 29
    :pswitch_4
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-le p5, p1, :cond_9

    .line 30
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    :cond_9
    neg-int p2, p5

    if-le p2, p1, :cond_2a

    .line 31
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 32
    :pswitch_5
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1}, Lcom/neverland/book/TBook;->getTextItemHeight()I

    move-result p1

    if-le p5, p1, :cond_a

    .line 33
    div-int/2addr p5, p1

    .line 34
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2, p5}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;I)V

    goto/16 :goto_3

    :cond_a
    neg-int p2, p5

    if-le p2, p1, :cond_2a

    .line 35
    div-int/2addr p2, p1

    .line 36
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p3, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;I)V

    goto/16 :goto_3

    :pswitch_6
    int-to-float p1, p5

    .line 37
    sget p2, Lcom/neverland/mainApp;->g:F

    const/high16 p3, 0x41900000    # 18.0f

    mul-float p4, p2, p3

    cmpl-float p1, p1, p4

    if-lez p1, :cond_b

    .line 38
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    :cond_b
    neg-int p1, p5

    int-to-float p1, p1

    mul-float p2, p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2a

    .line 39
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 40
    :pswitch_7
    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-le p1, p2, :cond_c

    .line 41
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 42
    :cond_c
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 43
    :pswitch_8
    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    const/high16 p3, 0x41400000    # 12.0f

    if-le p1, p2, :cond_10

    .line 44
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    int-to-float p1, p1

    sget p4, Lcom/neverland/mainApp;->g:F

    mul-float p4, p4, p3

    cmpg-float p1, p1, p4

    if-gez p1, :cond_d

    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->parentHeight:I

    shr-int/2addr p3, v1

    if-ge p1, p3, :cond_d

    .line 45
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object p2, Lcom/neverland/utils/finit$ECOMMANDS;->command_main_menu:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p1, p2}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 46
    iput-boolean v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    return-void

    .line 47
    :cond_d
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    if-ge p1, p2, :cond_e

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    if-ge p3, p2, :cond_e

    .line 48
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_up_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 49
    :cond_e
    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Height:I

    sub-int p4, p3, p2

    if-le p1, p4, :cond_f

    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    sub-int/2addr p3, p2

    if-le p1, p3, :cond_f

    .line 50
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_down_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 51
    :cond_f
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_swipe_x:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    :cond_10
    neg-int p4, p1

    if-le p4, p2, :cond_13

    .line 52
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    if-ge p1, p2, :cond_11

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    if-ge p3, p2, :cond_11

    .line 53
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_up_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 54
    :cond_11
    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Height:I

    sub-int p4, p3, p2

    if-le p1, p4, :cond_12

    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    sub-int/2addr p3, p2

    if-le p1, p3, :cond_12

    .line 55
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_down_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 56
    :cond_12
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_swipe_x:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    :cond_13
    if-gt p5, p2, :cond_1b

    shr-int/2addr p2, v1

    if-le p5, p2, :cond_14

    .line 57
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-le p2, p4, :cond_14

    goto/16 :goto_1

    :cond_14
    neg-int p2, p5

    .line 58
    iget p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-gt p2, p4, :cond_15

    shr-int/2addr p4, v1

    if-le p2, p4, :cond_2a

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p2, p1, :cond_2a

    .line 59
    :cond_15
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    int-to-float p1, p1

    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->parentHeight:I

    int-to-float p2, p2

    sget p4, Lcom/neverland/mainApp;->g:F

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    cmpl-float p1, p1, p2

    if-lez p1, :cond_16

    .line 60
    iput-boolean v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    return-void

    .line 61
    :cond_16
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->edgeZone:I

    if-ge p1, p2, :cond_18

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    if-ge p3, p2, :cond_18

    .line 62
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->sideBacklightLeft1:I

    if-eqz p1, :cond_17

    .line 63
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_left_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 64
    :cond_17
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_3

    .line 65
    :cond_18
    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Width:I

    sub-int p4, p3, p2

    if-le p1, p4, :cond_1a

    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    sub-int/2addr p3, p2

    if-le p1, p3, :cond_1a

    .line 66
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->sideBacklightRight1:I

    if-eqz p1, :cond_19

    .line 67
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_right_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 68
    :cond_19
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_3

    .line 69
    :cond_1a
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_swipe_y:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 70
    :cond_1b
    :goto_1
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    int-to-float p1, p1

    sget p2, Lcom/neverland/mainApp;->g:F

    mul-float p2, p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1c

    .line 71
    iput-boolean v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    return-void

    .line 72
    :cond_1c
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->edgeZone:I

    if-ge p1, p2, :cond_1e

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    if-ge p3, p2, :cond_1e

    .line 73
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->sideBacklightLeft1:I

    if-eqz p1, :cond_1d

    .line 74
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_left_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 75
    :cond_1d
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_3

    .line 76
    :cond_1e
    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Width:I

    sub-int p4, p3, p2

    if-le p1, p4, :cond_20

    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    sub-int/2addr p3, p2

    if-le p1, p3, :cond_20

    .line 77
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->sideBacklightRight1:I

    if-eqz p1, :cond_1f

    .line 78
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_right_border:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 79
    :cond_1f
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto/16 :goto_3

    .line 80
    :cond_20
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_swipe_y:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    .line 81
    :pswitch_9
    invoke-direct {p0}, Lcom/neverland/viscomp/TMousePointGesture;->distance()I

    move-result p2

    .line 82
    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->start_distance:I

    iget p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->zoomZone:I

    add-int v0, p3, p4

    if-ge v0, p2, :cond_22

    .line 83
    sget-object p3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p3, p3, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean p3, p3, Lcom/neverland/prefs/TOptions;->pinchFontSize:Z

    if-eqz p3, :cond_21

    .line 84
    sget-object p3, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p4, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_zoom:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p3, p4, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;I)V

    goto :goto_2

    .line 85
    :cond_21
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto :goto_2

    :cond_22
    add-int/2addr p4, p2

    if-ge p4, p3, :cond_24

    .line 86
    sget-object p3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p3, p3, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean p3, p3, Lcom/neverland/prefs/TOptions;->pinchFontSize:Z

    if-eqz p3, :cond_23

    .line 87
    sget-object p3, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p4, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_zoom:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p3, p4, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;I)V

    goto :goto_2

    .line 88
    :cond_23
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    .line 89
    :cond_24
    :goto_2
    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object p3, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    if-ne p2, p3, :cond_2a

    .line 90
    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    if-le p1, p2, :cond_25

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    iget p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    sub-int/2addr p3, p4

    if-le p3, p2, :cond_25

    .line 91
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_swipe_x:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto/16 :goto_3

    :cond_25
    neg-int p1, p1

    if-le p1, p2, :cond_26

    .line 92
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    sub-int/2addr p1, p3

    if-le p1, p2, :cond_26

    .line 93
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_swipe_x:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto :goto_3

    :cond_26
    if-le p5, p2, :cond_27

    .line 94
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY1:I

    sub-int/2addr p1, p3

    if-le p1, p2, :cond_27

    .line 95
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_swipe_y:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto :goto_3

    :cond_27
    neg-int p1, p5

    if-le p1, p2, :cond_2a

    .line 96
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY1:I

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    sub-int/2addr p1, p3

    if-le p1, p2, :cond_2a

    .line 97
    sget-object p1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_swipe_y:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TMousePointGesture;->prepare_swipe(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EFLAG_MOUSE;)V

    goto :goto_3

    .line 98
    :pswitch_a
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    goto :goto_3

    .line 99
    :pswitch_b
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    if-ne p1, v1, :cond_28

    .line 100
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    iget p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    sub-int/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/neverland/viscomp/TScrollPage;->update(II)V

    goto :goto_3

    .line 101
    :cond_28
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    invoke-virtual {p1, p2}, Lcom/neverland/viscomp/TScrollPage;->update(I)V

    goto :goto_3

    .line 102
    :pswitch_c
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    iget p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    invoke-virtual {p1, p2}, Lcom/neverland/viscomp/TScrollPage;->update(I)V

    goto :goto_3

    .line 103
    :cond_29
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1, p2, p3}, Lcom/neverland/book/TBook;->getTapInfo(II)Lcom/neverland/engbook/forpublic/s;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 104
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedX:I

    .line 105
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedY:I

    :cond_2a
    :goto_3
    return-void

    :cond_2b
    if-ne p1, p4, :cond_2c

    .line 106
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->X2:I

    .line 107
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y2:I

    :cond_2c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method startDoubleTapPress()V
    .locals 4

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->NONE:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->handlerDoubleTapPress:Landroid/os/Handler;

    iget-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->mDoubleTapPressed:Ljava/lang/Runnable;

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v2, Lcom/neverland/prefs/TOptions;->doubleTapTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method startLongPress()V
    .locals 4

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v0}, Lcom/neverland/utils/TCustomDevice;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->pressTime:J

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->NONE:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->handlerLongPress:Landroid/os/Handler;

    iget-object v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->mLongPressed:Ljava/lang/Runnable;

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v2, Lcom/neverland/prefs/TOptions;->longTapTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method startMouse(IIIIIJ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/TMousePointGesture;->reject:I

    sub-int/2addr p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 2
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->X0:I

    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    .line 3
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y0:I

    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY0:I

    .line 4
    iput p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->parentWidth:I

    .line 5
    iput p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->parentHeight:I

    .line 6
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neverland/viscomp/TScrollPage;->isWork()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    invoke-virtual {p1, v1, p4}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->speedY:Lcom/neverland/viscomp/dialogs/GestureSpeed;

    invoke-virtual {p1, p3, p6, p7}, Lcom/neverland/viscomp/dialogs/GestureSpeed;->reset(IJ)V

    .line 9
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->reject:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX0:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    int-to-float p5, p1

    .line 11
    sget-object p6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p6, p6, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p6, p6, Lcom/neverland/prefs/TOptions;->tapGuard:I

    int-to-float p7, p6

    sget v2, Lcom/neverland/mainApp;->g:F

    mul-float p7, p7, v2

    cmpg-float p5, p5, p7

    if-ltz p5, :cond_a

    int-to-float p1, p1

    iget p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->parentWidth:I

    int-to-float p5, p5

    int-to-float p6, p6

    mul-float p6, p6, v2

    sub-float/2addr p5, p6

    cmpl-float p1, p1, p5

    if-lez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    :goto_0
    const-string p1, "start mouse"

    .line 12
    invoke-direct {p0, p1}, Lcom/neverland/viscomp/TMousePointGesture;->log(Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-nez p1, :cond_4

    return-void

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Height:I

    .line 15
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->Width:I

    .line 16
    sget p1, Lcom/neverland/mainApp;->g:F

    const/high16 p5, 0x42300000    # 44.0f

    mul-float p5, p5, p1

    float-to-int p5, p5

    .line 17
    iput p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    const/high16 p5, 0x42400000    # 48.0f

    mul-float p5, p5, p1

    .line 18
    sget-object p6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p7, p6, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p7, p7, Lcom/neverland/prefs/TOptions;->tapGuard:I

    int-to-float p7, p7

    mul-float p7, p7, p1

    add-float/2addr p5, p7

    float-to-int p5, p5

    iput p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->edgeZone:I

    .line 19
    sget-object p5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object p7, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {p5, p7}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result p5

    if-eqz p5, :cond_5

    const p5, 0x3f99999a    # 1.2f

    .line 20
    iget p7, p0, Lcom/neverland/viscomp/TMousePointGesture;->edgeZone:I

    int-to-float p7, p7

    mul-float p7, p7, p5

    const/high16 p5, 0x3f000000    # 0.5f

    add-float/2addr p7, p5

    float-to-int p5, p7

    iput p5, p0, Lcom/neverland/viscomp/TMousePointGesture;->edgeZone:I

    :cond_5
    const/high16 p5, 0x42040000    # 33.0f

    mul-float p1, p1, p5

    float-to-int p1, p1

    .line 21
    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->zoomZone:I

    .line 22
    iget-object p5, p6, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p5, p5, Lcom/neverland/prefs/TOptions;->tapScale:I

    const/16 p6, 0xa

    if-eq p5, p6, :cond_6

    .line 23
    iget p6, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    int-to-float p6, p6

    int-to-float p7, p5

    mul-float p6, p6, p7

    const/high16 p7, 0x41200000    # 10.0f

    div-float/2addr p6, p7

    float-to-int p6, p6

    iput p6, p0, Lcom/neverland/viscomp/TMousePointGesture;->swipeZone:I

    .line 24
    iget p6, p0, Lcom/neverland/viscomp/TMousePointGesture;->edgeZone:I

    int-to-float p6, p6

    int-to-float v2, p5

    mul-float p6, p6, v2

    div-float/2addr p6, p7

    float-to-int p6, p6

    iput p6, p0, Lcom/neverland/viscomp/TMousePointGesture;->edgeZone:I

    int-to-float p1, p1

    int-to-float p5, p5

    mul-float p1, p1, p5

    div-float/2addr p1, p7

    float-to-int p1, p1

    .line 25
    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->zoomZone:I

    .line 26
    :cond_6
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapX0:I

    .line 27
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastTapY0:I

    .line 28
    iput v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    .line 29
    iput-boolean p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    .line 30
    iput v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->countTap:I

    .line 31
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    .line 32
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object p4, p1, Lcom/neverland/book/TBook;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    iput-object p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    .line 33
    sget-object p5, Lcom/neverland/viscomp/TMousePointGesture$3;->$SwitchMap$com$neverland$engbook$forpublic$EngBookMyType$TAL_SCREEN_SELECTION_MODE:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, p5, p4

    if-eq p4, v1, :cond_8

    if-eq p4, v0, :cond_8

    const/4 p5, 0x3

    if-eq p4, p5, :cond_8

    const/4 p1, 0x4

    if-eq p4, p1, :cond_7

    goto/16 :goto_2

    .line 34
    :cond_7
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedX:I

    .line 35
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedY:I

    .line 36
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->startLongPress()V

    goto/16 :goto_2

    .line 37
    :cond_8
    sget-object p4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p4}, Lcom/neverland/viscomp/TMainActivity;->hideSelectMenu()V

    .line 38
    invoke-virtual {p1, p2, p3}, Lcom/neverland/book/TBook;->getTapInfo(II)Lcom/neverland/engbook/forpublic/s;

    move-result-object p4

    if-eqz p4, :cond_12

    .line 39
    sget-object p5, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p5}, Lcom/neverland/viscomp/TMainActivity;->needResetSelectionRange1()Z

    move-result p5

    if-eqz p5, :cond_9

    .line 40
    iget p5, p4, Lcom/neverland/engbook/forpublic/s;->k:I

    iget p4, p4, Lcom/neverland/engbook/forpublic/s;->l:I

    invoke-virtual {p1, p5, p4}, Lcom/neverland/book/TBook;->resetTapZone(II)V

    .line 41
    :cond_9
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedX:I

    .line 42
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->lastSelectedY:I

    goto/16 :goto_2

    .line 43
    :cond_a
    :goto_1
    iput v1, p0, Lcom/neverland/viscomp/TMousePointGesture;->reject:I

    return-void

    .line 44
    :cond_b
    iget p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    add-int/2addr p4, v1

    iput p4, p0, Lcom/neverland/viscomp/TMousePointGesture;->pressCount:I

    const-string p4, "start addon mouse"

    .line 45
    invoke-direct {p0, p4}, Lcom/neverland/viscomp/TMousePointGesture;->log(Ljava/lang/String;)V

    .line 46
    sget-object p4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    if-nez p4, :cond_c

    .line 47
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    return-void

    .line 48
    :cond_c
    invoke-virtual {p4}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p4

    invoke-virtual {p4}, Lcom/neverland/viscomp/TScrollPage;->isWork()Z

    move-result p4

    if-eqz p4, :cond_d

    .line 49
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object p1

    iget-object p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->speedY:Lcom/neverland/viscomp/dialogs/GestureSpeed;

    iget p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->parentHeight:I

    invoke-virtual {p2, p3}, Lcom/neverland/viscomp/dialogs/GestureSpeed;->getSpeed(I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    return-void

    .line 50
    :cond_d
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->stopLongPress()V

    if-ne p1, v1, :cond_10

    .line 51
    iget-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->screenMode:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    sget-object p4, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;->NONE:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_SCREEN_SELECTION_MODE;

    if-eq p1, p4, :cond_e

    .line 52
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    return-void

    .line 53
    :cond_e
    iget-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object p4, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    if-ne p1, p4, :cond_f

    .line 54
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    .line 55
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->X1:I

    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX1:I

    .line 56
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y1:I

    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY1:I

    .line 57
    invoke-direct {p0}, Lcom/neverland/viscomp/TMousePointGesture;->distance()I

    move-result p1

    iput p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->start_distance:I

    goto :goto_2

    .line 58
    :cond_f
    invoke-virtual {p0}, Lcom/neverland/viscomp/TMousePointGesture;->clear()V

    return-void

    :cond_10
    if-ne p1, v0, :cond_11

    .line 59
    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->X2:I

    iput p2, p0, Lcom/neverland/viscomp/TMousePointGesture;->startX2:I

    .line 60
    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->Y2:I

    iput p3, p0, Lcom/neverland/viscomp/TMousePointGesture;->startY2:I

    .line 61
    :cond_11
    iget-boolean p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->doit:Z

    if-nez p1, :cond_12

    .line 62
    iget-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    sget-object p2, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_double_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    if-ne p1, p2, :cond_12

    .line 63
    sget-object p1, Lcom/neverland/utils/finit$EFLAG_MOUSE;->mouse_third_tap:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    iput-object p1, p0, Lcom/neverland/viscomp/TMousePointGesture;->workMode:Lcom/neverland/utils/finit$EFLAG_MOUSE;

    :cond_12
    :goto_2
    return-void
.end method

.method stopDoubleTapPress()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/TMousePointGesture;->disableDoubleTapPress()V

    return-void
.end method

.method stopLongPress()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/TMousePointGesture;->disableLongPress()V

    return-void
.end method
