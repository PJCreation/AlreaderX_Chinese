.class public Lcom/neverland/viscomp/TAutoScroll;
.super Ljava/lang/Object;
.source "TAutoScroll.java"


# static fields
.field private static final POST_INVALIDATE_TIME_START:I = 0x17

.field private static final SCROLL_MODE_PAGE2:I = 0x2

.field private static final SCROLL_MODE_PAGE3:I = 0x3

.field private static final SCROLL_MODE_ROLL:I = 0x1

.field private static final SCROLL_MODE_WAVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoScroll"

.field private static final uiHandler:Landroid/os/Handler;


# instance fields
.field private activeY:I

.field private actualShift:I

.field private back1:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private final backRect:Landroid/graphics/Rect;

.field private countEqual:I

.field private curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private final dstRect:Landroid/graphics/Rect;

.field private enable:Z

.field private volatile endOfText:Z

.field private height:I

.field private mBottom1:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private needRepaint:Z

.field private next1:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private oldActiveY:I

.field private paint:Landroid/graphics/Paint;

.field private final paintShadow:Landroid/graphics/Paint;

.field private pause:Z

.field private postInvalidateTime:I

.field private scrollMode2:I

.field private scrollTime:J

.field private final srcRect:Landroid/graphics/Rect;

.field private startTime:J

.field private twoColumn:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/neverland/viscomp/TAutoScroll;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    .line 3
    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    .line 4
    iput-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->endOfText:Z

    .line 5
    iput-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->enable:Z

    .line 6
    iput-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 8
    iput-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 9
    iput-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 10
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    .line 11
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->backRect:Landroid/graphics/Rect;

    .line 13
    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->actualShift:I

    .line 14
    iput-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    .line 15
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    const-wide/16 v1, 0x320

    .line 16
    iput-wide v1, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollTime:J

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    .line 18
    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->activeY:I

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->oldActiveY:I

    .line 19
    iput-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->needRepaint:Z

    .line 20
    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->countEqual:I

    return-void
.end method

.method private getBothPage1()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget v1, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/neverland/book/TBook;->getCurrentPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v1, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    invoke-virtual {v0, v1, v3}, Lcom/neverland/book/TBook;->getNextPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez v1, :cond_2

    .line 4
    iget v1, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    invoke-virtual {v0, v1, v3}, Lcom/neverland/book/TBook;->getBackPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 5
    :cond_2
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->twoColumn:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    aget v0, v0, v2

    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    aget v2, v3, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->actualShift:I

    .line 7
    :cond_3
    iput-boolean v1, p0, Lcom/neverland/viscomp/TAutoScroll;->needRepaint:Z

    return v1
.end method

.method private synthetic lambda$onDraw$0()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/TMainTextView;->get2DScroll()Lcom/neverland/viscomp/TScrollPage;

    move-result-object v0

    sget-object v2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v3, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    sget-object v4, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    .line 3
    invoke-virtual {v4}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 4
    invoke-virtual {v0, v2, v3, v4}, Lcom/neverland/viscomp/TScrollPage;->startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-wide v2, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v0, v0, Lcom/neverland/prefs/TAnimation;->time:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v2, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v0, v2}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    const/4 v0, 0x1

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/neverland/viscomp/TAutoScroll;->getBothPage1()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-direct {p0, v1}, Lcom/neverland/viscomp/TAutoScroll;->setEndOfText(Z)V

    return-void

    :cond_1
    const-wide/16 v1, 0x12c

    if-eqz v0, :cond_3

    .line 9
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0}, Lcom/neverland/book/TBook;->updatePosition()V

    .line 10
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v3, v4, :cond_2

    const-wide/16 v1, 0xa

    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/neverland/utils/TCustomDevice;->repaintDelayed(J)V

    goto :goto_1

    .line 11
    :cond_3
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v3, v4, :cond_4

    iget v1, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    int-to-long v1, v1

    :cond_4
    invoke-virtual {v0, v1, v2}, Lcom/neverland/utils/TCustomDevice;->repaintDelayed(J)V

    :goto_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/viscomp/TAutoScroll;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "AutoScroll"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized setEndOfText(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/neverland/viscomp/TAutoScroll;->endOfText:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateAutoPosition()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    long-to-float v0, v2

    .line 3
    iget-wide v2, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollTime:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->actualShift:I

    sub-int/2addr v4, v5

    int-to-float v5, v4

    mul-float v5, v5, v0

    float-to-int v0, v5

    .line 5
    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->activeY:I

    if-le v0, v4, :cond_3

    .line 6
    iput v4, p0, Lcom/neverland/viscomp/TAutoScroll;->activeY:I

    goto :goto_2

    .line 7
    :cond_3
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->oldActiveY:I

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->countEqual:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->countEqual:I

    .line 9
    iget-boolean v1, p0, Lcom/neverland/viscomp/TAutoScroll;->twoColumn:Z

    if-le v0, v1, :cond_6

    .line 10
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    goto :goto_1

    .line 11
    :cond_4
    iput v1, p0, Lcom/neverland/viscomp/TAutoScroll;->countEqual:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_5

    .line 12
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    add-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    goto :goto_1

    :cond_5
    if-le v0, v3, :cond_6

    .line 13
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    add-int/lit8 v0, v0, -0x7

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    .line 14
    :cond_6
    :goto_1
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->activeY:I

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->oldActiveY:I

    .line 15
    :goto_2
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_7

    .line 16
    iput v1, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    .line 17
    :cond_7
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    const/16 v1, 0x73

    if-le v0, v1, :cond_8

    .line 18
    iput v1, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    :cond_8
    move v1, v2

    :goto_3
    return v1
.end method

.method private updateMenuVisible1(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/neverland/mainApp;->e()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/neverland/viscomp/dialogs/UnitAS;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/neverland/viscomp/dialogs/UnitAS;

    .line 4
    iget-boolean v1, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/neverland/viscomp/dialogs/UnitAS;->updateMenuVisible(ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/neverland/viscomp/TAutoScroll;->lambda$onDraw$0()V

    return-void
.end method

.method public clearNeedRepaint()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->needRepaint:Z

    return-void
.end method

.method public getNeedRepaint()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->needRepaint:Z

    return v0
.end method

.method public declared-synchronized isEndOfText()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->endOfText:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    return v0
.end method

.method public isWork()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->enable:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/TAutoScroll;->updateAutoPosition()Z

    move-result v0

    .line 2
    iget v1, p0, Lcom/neverland/viscomp/TAutoScroll;->activeY:I

    .line 3
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->backRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, -0x1000000

    .line 6
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v4}, Lcom/neverland/prefs/TPref;->getProfile()Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    move-result-object v4

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    or-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 9
    iget-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 10
    :cond_2
    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_a

    if-ne v5, v6, :cond_3

    goto/16 :goto_1

    :cond_3
    if-ne v5, v3, :cond_6

    .line 11
    iget-boolean v2, p0, Lcom/neverland/viscomp/TAutoScroll;->twoColumn:Z

    if-eqz v2, :cond_5

    mul-int/lit8 v1, v1, 0x2

    .line 12
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    sub-int v5, v2, v4

    if-le v1, v5, :cond_4

    sub-int v5, v2, v4

    sub-int/2addr v1, v5

    .line 13
    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v7, v6, 0x1

    iget v8, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 14
    iget v7, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    sub-int v9, v6, v7

    iput v9, v5, Landroid/graphics/Rect;->right:I

    add-int v9, v4, v1

    .line 15
    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 16
    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 17
    iget-object v9, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iput v7, v9, Landroid/graphics/Rect;->left:I

    shr-int/2addr v6, v3

    sub-int/2addr v6, v8

    .line 18
    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 19
    iput v4, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    .line 20
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 21
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 22
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 23
    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v6, v5, 0x1

    iget v7, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 24
    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    .line 25
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 26
    iget-object v6, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    shr-int/lit8 v3, v5, 0x1

    sub-int/2addr v3, v7

    .line 27
    iput v3, v6, Landroid/graphics/Rect;->right:I

    .line 28
    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    sub-int v4, v3, v1

    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 29
    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 30
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 31
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 32
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 33
    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int v7, v5, v1

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 34
    iget v7, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 35
    iget-object v8, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v9, v4, 0x1

    add-int/2addr v9, v6

    iput v9, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    .line 36
    iput v4, v8, Landroid/graphics/Rect;->right:I

    .line 37
    iput v5, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v1

    .line 38
    iput v7, v8, Landroid/graphics/Rect;->bottom:I

    .line 39
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 40
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v4, v3, 0x1

    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 41
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    sub-int v6, v3, v4

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 42
    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    .line 43
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 44
    iget-object v6, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 45
    iput v3, v6, Landroid/graphics/Rect;->right:I

    .line 46
    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    sub-int v1, v3, v1

    iput v1, v6, Landroid/graphics/Rect;->top:I

    .line 47
    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 48
    iget-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 49
    :cond_4
    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 50
    iget v7, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v8, v7, 0x1

    iget v9, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->right:I

    add-int v8, v4, v1

    .line 51
    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 52
    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 53
    iget-object v8, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iput v6, v8, Landroid/graphics/Rect;->left:I

    shr-int/lit8 v6, v7, 0x1

    sub-int/2addr v6, v9

    .line 54
    iput v6, v8, Landroid/graphics/Rect;->right:I

    .line 55
    iput v4, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    .line 56
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 57
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 59
    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    sub-int v7, v4, v5

    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 60
    iget v7, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    iput v7, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    .line 61
    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 62
    iget-object v7, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->left:I

    shr-int/lit8 v3, v4, 0x1

    sub-int/2addr v3, v6

    .line 63
    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 64
    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    sub-int v4, v3, v1

    iput v4, v7, Landroid/graphics/Rect;->top:I

    .line 65
    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 66
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 67
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v4, v3, 0x1

    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 68
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    sub-int v6, v3, v4

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 69
    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int v7, v6, v1

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 70
    iget v7, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 71
    iget-object v8, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v9, v3, 0x1

    add-int/2addr v9, v5

    iput v9, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 72
    iput v3, v8, Landroid/graphics/Rect;->right:I

    .line 73
    iput v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v1

    .line 74
    iput v7, v8, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 77
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 78
    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    .line 79
    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 80
    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v7, v4, 0x1

    add-int/2addr v7, v6

    iput v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    .line 81
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 82
    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    sub-int v1, v3, v1

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 83
    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 84
    iget-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 85
    :cond_5
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int v4, v3, v1

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 86
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 87
    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    .line 88
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 89
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 90
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    .line 91
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->actualShift:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 92
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    .line 93
    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 94
    iget-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 95
    :cond_6
    iget-boolean v5, p0, Lcom/neverland/viscomp/TAutoScroll;->twoColumn:Z

    if-eqz v5, :cond_7

    mul-int/lit8 v1, v1, 0x2

    :cond_7
    if-eqz v5, :cond_9

    .line 96
    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    sub-int v7, v5, v6

    if-le v1, v7, :cond_8

    sub-int/2addr v1, v5

    add-int/2addr v1, v6

    .line 97
    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    .line 98
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 99
    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 100
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int/2addr v5, v1

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 101
    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 102
    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 103
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1, v3}, Lcom/neverland/viscomp/TAutoScroll;->paintLine(Landroid/graphics/Canvas;IZ)V

    .line 104
    iget-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 105
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 106
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 107
    :cond_8
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    .line 108
    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 109
    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 110
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 111
    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 112
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1, v4}, Lcom/neverland/viscomp/TAutoScroll;->paintLine(Landroid/graphics/Canvas;IZ)V

    .line 114
    iget-object v1, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 115
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 116
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 117
    :cond_9
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 118
    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int/2addr v5, v1

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 119
    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 120
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 121
    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 122
    iget-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1, v4}, Lcom/neverland/viscomp/TAutoScroll;->paintLine(Landroid/graphics/Canvas;IZ)V

    goto :goto_2

    .line 124
    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 125
    iget-object v4, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 126
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    if-eq v2, v6, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    sub-long/2addr v4, v6

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v2, v2, Lcom/neverland/prefs/TAnimation;->time:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_c

    .line 127
    :cond_b
    iget v2, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1, v3}, Lcom/neverland/viscomp/TAutoScroll;->paintLine(Landroid/graphics/Canvas;IZ)V

    .line 128
    :cond_c
    :goto_2
    iget-boolean p1, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    if-nez p1, :cond_e

    .line 129
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    .line 130
    iget-object v1, p1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v1, v2, :cond_d

    iget v1, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    int-to-long v1, v1

    goto :goto_3

    :cond_d
    const-wide/16 v1, 0x2bc

    .line 131
    :goto_3
    invoke-virtual {p1, v1, v2}, Lcom/neverland/utils/TCustomDevice;->repaintDelayed(J)V

    :cond_e
    if-eqz v0, :cond_f

    .line 132
    new-instance p1, Lcom/neverland/viscomp/a;

    invoke-direct {p1, p0}, Lcom/neverland/viscomp/a;-><init>(Lcom/neverland/viscomp/TAutoScroll;)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    .line 134
    sget-object v0, Lcom/neverland/viscomp/TAutoScroll;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method public paintLine(Landroid/graphics/Canvas;IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    if-eqz v2, :cond_6

    .line 2
    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v2}, Lcom/neverland/prefs/TPref;->getTextColor()I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    .line 3
    iget-object v3, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget v2, v0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v5, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-boolean v2, v0, Lcom/neverland/viscomp/TAutoScroll;->twoColumn:Z

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    .line 6
    iget v2, v0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v3, v2, 0x1

    int-to-float v5, v3

    int-to-float v8, v1

    int-to-float v7, v2

    iget-object v9, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_2
    const/4 v11, 0x0

    int-to-float v14, v1

    .line 7
    iget v1, v0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/2addr v1, v5

    int-to-float v13, v1

    iget-object v15, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v12, v14

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    int-to-float v5, v1

    .line 8
    iget v1, v0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    sget v2, Lcom/neverland/mainApp;->g:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v2, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v2, v2, v6

    float-to-int v2, v2

    .line 10
    sget-object v6, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v6, v6, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v7, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v6, v7, :cond_5

    mul-int/lit8 v2, v2, 0x2

    .line 11
    iget-object v3, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v6, 0x0

    int-to-float v9, v1

    int-to-float v8, v2

    .line 12
    iget-object v10, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    int-to-float v15, v1

    int-to-float v2, v2

    .line 13
    iget-object v3, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v13, v15

    move v14, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 14
    iget-object v3, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x0

    add-int/lit8 v3, v1, -0x1

    int-to-float v10, v3

    .line 15
    iget-object v11, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v8, v10

    move v9, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 16
    iget-object v3, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    add-int/2addr v1, v5

    int-to-float v10, v1

    .line 17
    iget-object v11, v0, Lcom/neverland/viscomp/TAutoScroll;->paintShadow:Landroid/graphics/Paint;

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public readSpeed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v0}, Lcom/neverland/prefs/TPref;->getAutoscrollTime()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollTime:J

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->enable:Z

    return-void
.end method

.method public start(II)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->enable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    .line 2
    invoke-direct {p0, v2}, Lcom/neverland/viscomp/TAutoScroll;->setEndOfText(Z)V

    .line 3
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    .line 4
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    const/16 v0, 0x17

    .line 5
    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->postInvalidateTime:I

    .line 6
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v0}, Lcom/neverland/prefs/TPref;->getAutoscrollTime()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollTime:J

    .line 7
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neverland/viscomp/TMainTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    .line 8
    sget-object v3, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v3}, Lcom/neverland/book/TBook;->isTwoClumn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/neverland/viscomp/TAutoScroll;->twoColumn:Z

    .line 9
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v3, Lcom/neverland/prefs/TOptions;->autoscrollMode:I

    iput v3, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    .line 10
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    invoke-static {}, Lcom/neverland/utils/OnyxUtils;->setWakeLock1()V

    .line 12
    :cond_0
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    if-ne v4, v1, :cond_1

    invoke-virtual {v0}, Lcom/neverland/prefs/TPref;->getProfile()Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->keepOneItem:Z

    if-eqz v0, :cond_1

    .line 13
    iput v2, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    .line 14
    :cond_1
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v0}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iput v2, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    .line 16
    :cond_2
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    sget-object v0, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v0}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iput v4, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    .line 18
    :cond_3
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->twoColumn:Z

    if-eqz v0, :cond_4

    .line 19
    iput v2, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    .line 20
    :cond_4
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->twoColumn:Z

    if-eqz v0, :cond_7

    .line 21
    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_5

    goto :goto_0

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 23
    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    shr-int/lit8 v5, v4, 0x1

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 24
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v5, v4, 0x1

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 25
    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 26
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->srcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 28
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->dstRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 29
    :goto_1
    invoke-direct {p0}, Lcom/neverland/viscomp/TAutoScroll;->getBothPage1()Z

    move-result v0

    if-nez v0, :cond_8

    .line 30
    invoke-direct {p0, v1}, Lcom/neverland/viscomp/TAutoScroll;->setEndOfText(Z)V

    return v2

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v4, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->textTop:I

    iput v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    .line 32
    iget v4, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->textBottom:I

    iput v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    .line 33
    iget v4, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->textSide:I

    iput v4, p0, Lcom/neverland/viscomp/TAutoScroll;->mLeft:I

    .line 34
    iget v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->textPages:I

    iput v0, p0, Lcom/neverland/viscomp/TAutoScroll;->mRight:I

    .line 35
    iget-object v0, p0, Lcom/neverland/viscomp/TAutoScroll;->backRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->width:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 36
    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/neverland/viscomp/TAutoScroll;->height:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    .line 38
    iput-boolean v2, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    .line 39
    iput-boolean v1, p0, Lcom/neverland/viscomp/TAutoScroll;->enable:Z

    .line 40
    invoke-virtual {v3}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    goto :goto_2

    .line 41
    :cond_9
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    if-nez v0, :cond_a

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v0, p0, Lcom/neverland/viscomp/TAutoScroll;->activeY:I

    int-to-float v0, v0

    iget v5, p0, Lcom/neverland/viscomp/TAutoScroll;->mBottom1:I

    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-wide v5, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollTime:J

    long-to-float v5, v5

    mul-float v0, v0, v5

    float-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    .line 43
    :cond_a
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v0}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    .line 44
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/neverland/viscomp/TAutoScroll;->updateMenuVisible1(II)V

    .line 45
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-boolean p2, p0, Lcom/neverland/viscomp/TAutoScroll;->pause:Z

    xor-int/2addr p2, v1

    invoke-virtual {p1, v2, p2}, Lcom/neverland/utils/TCustomDevice;->setKeepScreen2(ZZ)V

    return v1
.end method

.method public stepToNextPage()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/neverland/viscomp/TAutoScroll;->startTime:J

    return-void
.end method

.method public stop()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TAutoScroll;->enable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/neverland/utils/OnyxUtils;->clearWakeLock1()V

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/neverland/viscomp/TAutoScroll;->enable:Z

    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lcom/neverland/viscomp/TAutoScroll;->paint:Landroid/graphics/Paint;

    .line 6
    iget v3, p0, Lcom/neverland/viscomp/TAutoScroll;->scrollMode2:I

    if-ne v3, v1, :cond_1

    .line 7
    sget-object v3, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v4, Lcom/neverland/utils/finit$ECOMMANDS;->command_goto_pos:Lcom/neverland/utils/finit$ECOMMANDS;

    sget-object v5, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget v6, p0, Lcom/neverland/viscomp/TAutoScroll;->activeY:I

    invoke-virtual {v5, v6}, Lcom/neverland/book/TBook;->getPosAfterAS(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;I)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 8
    sget-object v3, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v4, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/neverland/utils/TCustomDevice;->setKeepScreen2(ZZ)V

    :cond_3
    return v1
.end method
