.class public Lcom/neverland/viscomp/TScrollPage;
.super Ljava/lang/Object;
.source "TScrollPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/viscomp/TScrollPage$RollParameters;
    }
.end annotation


# static fields
.field private static final FAKE_PROCESS:Z = false

.field private static final POST_INVALIDATE_TIME:I = 0x7

.field private static final ROLL_TIME:F = 500.0f

.field private static final TAG:Ljava/lang/String; = "SCROLL"


# instance fields
.field private final FAKE_END:F

.field private final FAKE_START:F

.field private final FAKE_STEP:F

.field private back1:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private currentCoord1:I

.field private currentY:I

.field private dir:Lcom/neverland/utils/finit$EDIRECTION;

.field private final dstRect:Landroid/graphics/Rect;

.field private volatile enable:Z

.field private fakePercent:F

.field private hKind:Lcom/neverland/utils/finit$EHKIND;

.field private height:I

.field private initialCoord:I

.field private lastCoord:I

.field private lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

.field private marginBottom1:I

.field private marginLeft:I

.field private marginRight:I

.field private marginTop1:I

.field private mode:Lcom/neverland/utils/finit$EMODE;

.field private next1:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private final paintShadow:Landroid/graphics/Paint;

.field private paintText:Landroid/graphics/Paint;

.field private prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private final rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

.field private scrollTime:J

.field private final srcRect:Landroid/graphics/Rect;

.field private startTime:J

.field private twoColumn:Z

.field private useOpenGL:Z

.field private vKind1:Lcom/neverland/utils/finit$EVKIND;

.field private final variantShift:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/forpublic/n;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/neverland/viscomp/TScrollPage;->useOpenGL:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    .line 4
    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->lastCoord:I

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentY:I

    .line 5
    sget-object v0, Lcom/neverland/utils/finit$EDIRECTION;->dir_none:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    .line 6
    sget-object v0, Lcom/neverland/utils/finit$EHKIND;->shift_wave:Lcom/neverland/utils/finit$EHKIND;

    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->hKind:Lcom/neverland/utils/finit$EHKIND;

    .line 7
    sget-object v0, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 9
    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 10
    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 11
    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    const-wide/16 v1, 0x320

    .line 12
    iput-wide v1, p0, Lcom/neverland/viscomp/TScrollPage;->scrollTime:J

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/neverland/viscomp/TScrollPage;->startTime:J

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    .line 15
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    .line 16
    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    .line 17
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    iput v1, p0, Lcom/neverland/viscomp/TScrollPage;->FAKE_START:F

    const v1, 0x3f8147ae    # 1.01f

    .line 19
    iput v1, p0, Lcom/neverland/viscomp/TScrollPage;->FAKE_END:F

    const v1, 0x38d1b717    # 1.0E-4f

    .line 20
    iput v1, p0, Lcom/neverland/viscomp/TScrollPage;->FAKE_STEP:F

    .line 21
    new-instance v1, Lcom/neverland/viscomp/TScrollPage$RollParameters;

    invoke-direct {v1, v0}, Lcom/neverland/viscomp/TScrollPage$RollParameters;-><init>(Lcom/neverland/viscomp/TScrollPage$1;)V

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->variantShift:Ljava/util/ArrayList;

    return-void
.end method

.method private getGravityBorder(Ljava/util/ArrayList;II)Lcom/neverland/engbook/forpublic/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/forpublic/n;",
            ">;II)",
            "Lcom/neverland/engbook/forpublic/n;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float v1, v1, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v4, 0x0

    if-lez p2, :cond_1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/forpublic/n;

    iget v5, v5, Lcom/neverland/engbook/forpublic/n;->b:I

    add-int v6, p3, v1

    if-lt v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/forpublic/n;

    iget v5, v5, Lcom/neverland/engbook/forpublic/n;->b:I

    sub-int v6, p3, v1

    if-gt v5, v6, :cond_2

    :goto_2
    move v0, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_3
    :goto_3
    iget p3, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/forpublic/n;

    iget v1, v1, Lcom/neverland/engbook/forpublic/n;->b:I

    sub-int/2addr p3, v1

    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    sub-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v2

    float-to-double v1, p3

    const-wide v4, 0x400199999999999aL    # 2.2

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    double-to-int p2, p2

    int-to-float p3, p2

    cmpl-float p3, p3, v3

    if-lez p3, :cond_4

    const/16 p2, 0x3e8

    .line 9
    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neverland/engbook/forpublic/n;

    iput p2, p3, Lcom/neverland/engbook/forpublic/n;->c:I

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/engbook/forpublic/n;

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/viscomp/TScrollPage;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SCROLL"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private needAutoStop()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget-boolean v3, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 3
    iget-wide v6, p0, Lcom/neverland/viscomp/TScrollPage;->startTime:J

    sub-long/2addr v0, v6

    iget-wide v2, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->time:J

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v2, p0, Lcom/neverland/viscomp/TScrollPage;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/neverland/viscomp/TScrollPage;->scrollTime:J

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    :goto_0
    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p0, v5, v5}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    :cond_2
    return v4
.end method

.method private updateAutoPosition()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/neverland/viscomp/TScrollPage;->startTime:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget-boolean v3, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    if-eqz v3, :cond_0

    long-to-float v0, v0

    .line 3
    iget-wide v1, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->time:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const-wide v1, 0x3ff04dd2f1a9fbe7L    # 1.019

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    neg-float v0, v0

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v0, v0, v5

    float-to-double v5, v0

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    mul-double v3, v3, v1

    double-to-float v0, v3

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    .line 5
    iget-wide v1, p0, Lcom/neverland/viscomp/TScrollPage;->scrollTime:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    const/4 v0, 0x0

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget-boolean v3, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    if-eq v4, v5, :cond_3

    sub-float v0, v1, v0

    :cond_3
    if-eqz v3, :cond_4

    .line 7
    iget v1, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->startY:I

    int-to-float v3, v1

    iget v2, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->endY:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float v0, v0, v1

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    goto/16 :goto_1

    .line 8
    :cond_4
    sget-object v1, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EDIRECTION:[I

    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    goto/16 :goto_1

    .line 9
    :cond_5
    iget-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    sget-object v2, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    if-ne v1, v2, :cond_6

    .line 10
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    int-to-float v1, v1

    iget v2, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    goto/16 :goto_1

    .line 11
    :cond_6
    sget-object v2, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    if-ne v1, v2, :cond_7

    .line 12
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    int-to-float v1, v1

    iget v2, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    goto :goto_1

    .line 13
    :cond_7
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    int-to-float v1, v1

    iget v2, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    goto :goto_1

    .line 14
    :cond_8
    iget-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    sget-object v2, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    if-ne v1, v2, :cond_9

    .line 15
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    goto :goto_1

    .line 16
    :cond_9
    sget-object v2, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    if-ne v1, v2, :cond_a

    .line 17
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    goto :goto_1

    .line 18
    :cond_a
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    iget v2, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    goto :goto_1

    .line 19
    :cond_b
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    goto :goto_1

    .line 20
    :cond_c
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    int-to-float v1, v1

    iget v2, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    :goto_1
    return-void
.end method


# virtual methods
.method public getAutoState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->mode:Lcom/neverland/utils/finit$EMODE;

    sget-object v1, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EDIRECTION:[I

    iget-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TScrollPage;->useOpenGL:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    invoke-virtual {v0}, Lcom/neverland/prefs/TAnimation;->useOpenGLScroll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v0}, Lcom/neverland/viscomp/TMainActivity;->get3DScroll()Lcom/neverland/viscomp/PageCurlGLSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/PageCurlGLSurface;->getIsLoaded()Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isWork()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->mode:Lcom/neverland/utils/finit$EMODE;

    sget-object v1, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/neverland/viscomp/TScrollPage;->updateAutoPosition()V

    .line 3
    :cond_0
    sget-object v0, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EDIRECTION:[I

    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v2, p0, Lcom/neverland/viscomp/TScrollPage;->useOpenGL:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    invoke-virtual {v2}, Lcom/neverland/prefs/TAnimation;->useOpenGLScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 6
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    const/high16 v2, -0x1000000

    .line 7
    sget-object v6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v6}, Lcom/neverland/prefs/TPref;->getProfile()Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    move-result-object v6

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    or-int/2addr v2, v6

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    if-eq v0, v5, :cond_1b

    if-eq v0, v3, :cond_1b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    goto/16 :goto_7

    .line 9
    :cond_4
    iget v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    sub-int/2addr v0, v3

    .line 10
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    if-le v0, v3, :cond_5

    move v0, v3

    :cond_5
    neg-int v6, v3

    if-ge v0, v6, :cond_6

    .line 11
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget-boolean v6, v6, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    if-nez v6, :cond_6

    neg-int v0, v3

    .line 12
    :cond_6
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->mode:Lcom/neverland/utils/finit$EMODE;

    if-eq v6, v1, :cond_9

    .line 13
    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->lastCoord:I

    if-le v0, v6, :cond_7

    .line 14
    sget-object v6, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    goto :goto_2

    :cond_7
    if-ge v0, v6, :cond_8

    .line 15
    sget-object v6, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    .line 16
    :cond_8
    :goto_2
    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->lastCoord:I

    .line 17
    :cond_9
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    iput v8, v6, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_19

    if-lez v0, :cond_a

    .line 18
    iget-object v8, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v8, :cond_19

    :cond_a
    if-gez v0, :cond_b

    iget-object v8, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez v8, :cond_b

    goto/16 :goto_4

    :cond_b
    if-lez v0, :cond_10

    .line 19
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    sget-object v8, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    if-ne v4, v8, :cond_c

    .line 20
    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 21
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 22
    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 23
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 24
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 25
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 26
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 28
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 29
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 30
    :cond_c
    sget-object v8, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    if-ne v4, v8, :cond_d

    sub-int v4, v3, v0

    .line 31
    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 32
    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 33
    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 34
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 35
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 36
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 37
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    sub-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 38
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 39
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 40
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 41
    :cond_d
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    sub-int v7, v3, v6

    if-le v0, v7, :cond_e

    sub-int v0, v3, v6

    .line 42
    :cond_e
    sget-object v3, Lcom/neverland/utils/finit$EVKIND;->position:Lcom/neverland/utils/finit$EVKIND;

    if-ne v4, v3, :cond_f

    sget-object v3, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v3}, Lcom/neverland/book/TBook;->isTwoClumn()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 43
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 44
    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    sub-int v8, v4, v6

    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 45
    iget v8, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    sub-int v9, v8, v0

    iput v9, v3, Landroid/graphics/Rect;->top:I

    .line 46
    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 47
    iget-object v8, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v6, v8, Landroid/graphics/Rect;->left:I

    shr-int/2addr v4, v5

    sub-int/2addr v4, v7

    .line 48
    iput v4, v8, Landroid/graphics/Rect;->right:I

    .line 49
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v7, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    aget v9, v7, v5

    add-int/2addr v9, v4

    iget-object v10, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    aget v11, v10, v2

    add-int/2addr v9, v11

    iput v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    .line 50
    aget v7, v7, v5

    add-int/2addr v4, v7

    aget v7, v10, v2

    add-int/2addr v4, v7

    iput v4, v8, Landroid/graphics/Rect;->bottom:I

    .line 51
    iget-object v4, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 53
    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/2addr v6, v5

    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 54
    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 55
    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    sub-int v8, v7, v0

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 56
    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    .line 57
    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 58
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 59
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 60
    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/lit8 v7, v6, 0x1

    iget v8, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 61
    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    sub-int v9, v7, v0

    iput v9, v3, Landroid/graphics/Rect;->top:I

    .line 62
    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 63
    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v9, v6, 0x1

    add-int/2addr v9, v8

    iput v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v4

    .line 64
    iput v6, v7, Landroid/graphics/Rect;->right:I

    .line 65
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v8, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    aget v9, v8, v2

    add-int/2addr v9, v4

    iget-object v10, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    aget v11, v10, v5

    add-int/2addr v9, v11

    iput v9, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    .line 66
    aget v8, v8, v2

    add-int/2addr v4, v8

    aget v5, v10, v5

    add-int/2addr v4, v5

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 67
    iget-object v4, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 68
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 69
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    sub-int v7, v4, v5

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 70
    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 71
    iget v8, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    sub-int v9, v8, v0

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 72
    iget-object v9, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v10, v4, 0x1

    add-int/2addr v10, v6

    iput v10, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 73
    iput v4, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    .line 74
    iput v7, v9, Landroid/graphics/Rect;->top:I

    .line 75
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 76
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 77
    :cond_f
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    sub-int v5, v4, v0

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v7, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    aget v8, v7, v2

    sub-int/2addr v5, v8

    iget-object v8, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v8, v8, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    aget v9, v8, v2

    sub-int/2addr v5, v9

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 78
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 79
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 80
    aget v7, v7, v2

    add-int/2addr v5, v7

    aget v7, v8, v2

    add-int/2addr v5, v7

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 81
    iget-object v5, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 83
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    sub-int v6, v5, v0

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 84
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    .line 85
    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 86
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 87
    :cond_10
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    sget-object v8, Lcom/neverland/utils/finit$EVKIND;->wave:Lcom/neverland/utils/finit$EVKIND;

    if-ne v4, v8, :cond_11

    .line 88
    iput v2, v6, Landroid/graphics/Rect;->top:I

    add-int v4, v3, v0

    .line 89
    iput v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 90
    iput v2, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    .line 91
    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 92
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 93
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    add-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 94
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 95
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    add-int/2addr v0, v4

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 96
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 97
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 98
    :cond_11
    sget-object v8, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    if-ne v4, v8, :cond_12

    neg-int v4, v0

    .line 99
    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 100
    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 101
    iput v2, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    .line 102
    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 103
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 104
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 105
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 106
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    add-int/2addr v0, v5

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 107
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 108
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 109
    :cond_12
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget-boolean v3, v3, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    if-eqz v3, :cond_13

    goto :goto_3

    .line 110
    :cond_13
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    neg-int v6, v3

    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    add-int/2addr v6, v7

    if-ge v0, v6, :cond_14

    neg-int v0, v3

    add-int/2addr v0, v7

    .line 111
    :cond_14
    :goto_3
    sget-object v3, Lcom/neverland/utils/finit$EVKIND;->position:Lcom/neverland/utils/finit$EVKIND;

    if-ne v4, v3, :cond_15

    sget-object v3, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v3}, Lcom/neverland/book/TBook;->isTwoClumn()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 112
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 113
    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/2addr v6, v5

    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v6, v3, Landroid/graphics/Rect;->right:I

    neg-int v6, v0

    .line 114
    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    add-int v8, v6, v7

    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 115
    iget v8, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 116
    iput v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    .line 117
    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 118
    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/lit8 v7, v4, 0x1

    iget v8, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 120
    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    sub-int v9, v4, v7

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 121
    iget v9, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iput v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v6

    .line 122
    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 123
    iget-object v9, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v7, v9, Landroid/graphics/Rect;->left:I

    shr-int/2addr v4, v5

    sub-int/2addr v4, v8

    .line 124
    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 125
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    add-int v7, v4, v0

    iget-object v8, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v10, v8, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    aget v11, v10, v2

    sub-int/2addr v7, v11

    iget-object v11, v8, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    aget v12, v11, v5

    sub-int/2addr v7, v12

    iput v7, v9, Landroid/graphics/Rect;->top:I

    .line 126
    aget v7, v10, v2

    sub-int/2addr v4, v7

    aget v7, v11, v5

    sub-int/2addr v4, v7

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 127
    iget-object v4, v8, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/lit8 v7, v4, 0x1

    iget v8, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 129
    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    sub-int v9, v4, v7

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 130
    iget v9, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    add-int v10, v6, v9

    iput v10, v3, Landroid/graphics/Rect;->top:I

    .line 131
    iget v10, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    iput v10, v3, Landroid/graphics/Rect;->bottom:I

    .line 132
    iget-object v11, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v12, v4, 0x1

    add-int/2addr v12, v8

    iput v12, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    .line 133
    iput v4, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v0

    .line 134
    iput v10, v11, Landroid/graphics/Rect;->bottom:I

    .line 135
    iput v9, v11, Landroid/graphics/Rect;->top:I

    .line 136
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 138
    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/lit8 v8, v7, 0x1

    iget v9, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 139
    iget v8, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iput v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    .line 140
    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 141
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    shr-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v4

    .line 142
    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 143
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    add-int/2addr v0, v4

    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v8, v7, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    aget v9, v8, v2

    sub-int/2addr v0, v9

    iget-object v9, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    aget v10, v9, v5

    sub-int/2addr v0, v10

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 144
    aget v0, v8, v2

    sub-int/2addr v4, v0

    aget v0, v9, v5

    sub-int/2addr v4, v0

    iput v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 145
    iget-object v0, v7, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 146
    :cond_15
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    add-int v4, v3, v0

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    if-gt v4, v5, :cond_16

    .line 147
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    neg-int v4, v4

    add-int/2addr v4, v5

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    aget v6, v6, v2

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v7, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    aget v7, v7, v2

    add-int/2addr v4, v7

    sub-int/2addr v0, v4

    .line 148
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    neg-int v7, v0

    add-int/2addr v7, v5

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 149
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 150
    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    .line 151
    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 152
    iget-object v0, v6, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 153
    :cond_16
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    neg-int v6, v0

    add-int v7, v6, v5

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 154
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 155
    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    .line 156
    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 157
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    if-lez v3, :cond_17

    .line 158
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 159
    :cond_17
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 160
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    aget v7, v5, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v8, v7, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    aget v9, v8, v2

    add-int/2addr v6, v9

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 161
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    aget v5, v5, v2

    sub-int v5, v9, v5

    aget v8, v8, v2

    sub-int/2addr v5, v8

    add-int/2addr v5, v0

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 162
    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v4, :cond_18

    .line 163
    iget v0, v3, Landroid/graphics/Rect;->top:I

    sub-int v5, v4, v5

    add-int/2addr v0, v5

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 164
    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 165
    :cond_18
    iget-object v0, v7, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 166
    :cond_19
    :goto_4
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    sget-object v3, Lcom/neverland/utils/finit$EVKIND;->position:Lcom/neverland/utils/finit$EVKIND;

    if-ne v0, v3, :cond_1a

    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0}, Lcom/neverland/book/TBook;->isTwoClumn()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 167
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 168
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 169
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 170
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/2addr v4, v5

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 171
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 173
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 174
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 175
    :cond_1a
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 176
    :cond_1b
    iget v0, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    sub-int/2addr v0, v3

    .line 177
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    if-le v0, v3, :cond_1c

    move v0, v3

    :cond_1c
    neg-int v6, v3

    if-ge v0, v6, :cond_1d

    neg-int v0, v3

    .line 178
    :cond_1d
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->mode:Lcom/neverland/utils/finit$EMODE;

    if-eq v3, v1, :cond_20

    .line 179
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->lastCoord:I

    if-le v0, v3, :cond_1e

    .line 180
    sget-object v3, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    goto :goto_5

    :cond_1e
    if-ge v0, v3, :cond_1f

    .line 181
    sget-object v3, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    .line 182
    :cond_1f
    :goto_5
    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->lastCoord:I

    .line 183
    :cond_20
    iget-boolean v3, p0, Lcom/neverland/viscomp/TScrollPage;->useOpenGL:Z

    if-eqz v3, :cond_21

    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    invoke-virtual {v3}, Lcom/neverland/prefs/TAnimation;->useOpenGLScroll()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 184
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get3DScroll()Lcom/neverland/viscomp/PageCurlGLSurface;

    move-result-object p1

    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->currentY:I

    invoke-virtual {p1, v0, v3}, Lcom/neverland/viscomp/PageCurlGLSurface;->_listToHorizontal(II)V

    goto/16 :goto_8

    .line 185
    :cond_21
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2f

    if-lez v0, :cond_22

    .line 186
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v3, :cond_2f

    :cond_22
    if-gez v0, :cond_23

    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez v3, :cond_23

    goto/16 :goto_6

    :cond_23
    if-lez v0, :cond_29

    .line 187
    sget-object v3, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EHKIND:[I

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->hKind:Lcom/neverland/utils/finit$EHKIND;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 188
    :pswitch_0
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 189
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 190
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v5, :cond_24

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_24

    .line 191
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    :cond_24
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    sub-int v4, v3, v0

    mul-int/lit16 v4, v4, 0xc4

    div-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x18

    .line 193
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    sub-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 196
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 197
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 198
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 199
    :pswitch_1
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    sub-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 200
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 201
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v5, :cond_25

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_25

    .line 202
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 203
    :cond_25
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 204
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 205
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v4, :cond_26

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_26

    .line 206
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_26
    mul-int/lit16 v0, v0, 0xc4

    .line 207
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    div-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    .line 208
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 210
    :pswitch_2
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 211
    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 212
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 213
    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 214
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v5, :cond_27

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_27

    .line 215
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 216
    :cond_27
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 217
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 218
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 219
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 220
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 221
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 222
    :pswitch_3
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    sub-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 223
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 224
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v5, :cond_28

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_28

    .line 225
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    :cond_28
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    sub-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 227
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 228
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 229
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 230
    :cond_29
    sget-object v3, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EHKIND:[I

    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->hKind:Lcom/neverland/utils/finit$EHKIND;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_7

    .line 231
    :pswitch_4
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 232
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 233
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v4, :cond_2a

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2a

    .line 234
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2a
    neg-int v3, v0

    mul-int/lit16 v4, v3, 0xc4

    .line 235
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    div-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x18

    .line 236
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 238
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 239
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int/2addr v0, v5

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 240
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 241
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 242
    :pswitch_5
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    neg-int v4, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/neverland/viscomp/TScrollPage;->log(Ljava/lang/String;Z)V

    .line 244
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 245
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v4, :cond_2b

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2b

    .line 246
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 247
    :cond_2b
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 248
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    add-int v6, v4, v0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 249
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v4, :cond_2c

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2c

    .line 250
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 251
    :cond_2c
    iget v3, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0xc4

    div-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    .line 252
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->paintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 254
    :pswitch_6
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 255
    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 256
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    .line 257
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 258
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v4, :cond_2d

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2d

    .line 259
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 260
    :cond_2d
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int v5, v4, v0

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 261
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 262
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    add-int/2addr v0, v4

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 263
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 264
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 265
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 266
    :pswitch_7
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    neg-int v4, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 267
    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 268
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v5, :cond_2e

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2e

    .line 269
    iget-object v7, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 270
    :cond_2e
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->srcRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 271
    iget-object v4, p0, Lcom/neverland/viscomp/TScrollPage;->dstRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int/2addr v0, v5

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 272
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 273
    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 274
    :cond_2f
    :goto_6
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 275
    iget-object v3, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_30
    :goto_7
    const/4 v5, 0x0

    .line 276
    :goto_8
    iget-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->mode:Lcom/neverland/utils/finit$EMODE;

    if-ne p1, v1, :cond_31

    .line 277
    invoke-direct {p0}, Lcom/neverland/viscomp/TScrollPage;->needAutoStop()Z

    move-result p1

    if-nez p1, :cond_32

    .line 278
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    const-wide/16 v0, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/neverland/utils/TCustomDevice;->repaintDelayed(J)V

    :cond_31
    move v2, v5

    :cond_32
    if-eqz v2, :cond_33

    .line 279
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get3DScroll()Lcom/neverland/viscomp/PageCurlGLSurface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_33
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public paintLine(Landroid/graphics/Canvas;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    const/high16 v3, -0x1000000

    .line 2
    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v4}, Lcom/neverland/prefs/TPref;->getTextColor()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-nez v1, :cond_0

    const/4 v5, 0x0

    move/from16 v1, p3

    int-to-float v8, v1

    .line 3
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v7, v1

    iget-object v9, v0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    int-to-float v13, v1

    const/4 v12, 0x0

    .line 4
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->height:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v14, v1

    iget-object v15, v0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public paintLineHorizontal(Landroid/graphics/Canvas;III)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    sget-object p3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p3}, Lcom/neverland/prefs/TPref;->getTextColor()I

    move-result p3

    const/high16 v0, -0x1000000

    or-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, p4

    .line 2
    iget p2, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int/lit8 p2, p2, -0x1

    int-to-float v3, p2

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public paintRect(Landroid/graphics/Canvas;III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p4, p2

    int-to-float v7, p3

    .line 3
    iget v0, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p4

    move v3, v7

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4
    iget v0, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    add-int v1, p3, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v3, v1

    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget v0, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    move v3, v7

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget p4, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    add-int v0, p2, p4

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    int-to-float v3, p2

    iget p2, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    int-to-float v4, p3

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setVKind(Lcom/neverland/utils/finit$EVKIND;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    .line 2
    sget-object v0, Lcom/neverland/utils/finit$EVKIND;->position:Lcom/neverland/utils/finit$EVKIND;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {p1}, Lcom/neverland/book/TBook;->isRealPages()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/neverland/utils/finit$EVKIND;->pages:Lcom/neverland/utils/finit$EVKIND;

    iput-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    :cond_0
    return-void
.end method

.method public startScroll(Lcom/neverland/utils/finit$EDIRECTION;Lcom/neverland/utils/finit$EMODE;I)Z
    .locals 7

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    iput v0, p0, Lcom/neverland/viscomp/TScrollPage;->fakePercent:F

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v0, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v1, v1, Lcom/neverland/prefs/TAnimation;->type:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/neverland/utils/finit$EHKIND;->shift_two:Lcom/neverland/utils/finit$EHKIND;

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->hKind:Lcom/neverland/utils/finit$EHKIND;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/neverland/utils/finit$EHKIND;->shift_wave:Lcom/neverland/utils/finit$EHKIND;

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->hKind:Lcom/neverland/utils/finit$EHKIND;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v1, Lcom/neverland/utils/finit$EHKIND;->shift_right:Lcom/neverland/utils/finit$EHKIND;

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->hKind:Lcom/neverland/utils/finit$EHKIND;

    goto :goto_0

    .line 6
    :cond_3
    sget-object v1, Lcom/neverland/utils/finit$EHKIND;->shift_left:Lcom/neverland/utils/finit$EHKIND;

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->hKind:Lcom/neverland/utils/finit$EHKIND;

    .line 7
    :goto_0
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v3, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v1, v3}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    sget-object v1, Lcom/neverland/utils/finit$EHKIND;->shift_wave:Lcom/neverland/utils/finit$EHKIND;

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->hKind:Lcom/neverland/utils/finit$EHKIND;

    .line 9
    :cond_4
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->get3DScroll()Lcom/neverland/viscomp/PageCurlGLSurface;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->get3DScroll()Lcom/neverland/viscomp/PageCurlGLSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neverland/viscomp/PageCurlGLSurface;->isCreatedNormal()Z

    move-result v1

    if-nez v1, :cond_6

    .line 10
    :cond_5
    iput-boolean v3, p0, Lcom/neverland/viscomp/TScrollPage;->useOpenGL:Z

    .line 11
    :cond_6
    iget-boolean v1, p0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {p0, v4, v3}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    .line 13
    :cond_7
    iget-boolean v1, p0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    if-nez v1, :cond_11

    .line 14
    sget v1, Lcom/neverland/utils/finit;->MARGINS_VALUE:I

    if-lez v1, :cond_8

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    shr-int/2addr v1, v4

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 15
    :goto_1
    invoke-virtual {v0}, Lcom/neverland/prefs/TPref;->getProfile()Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->twoColumn:Z

    iput-boolean v1, p0, Lcom/neverland/viscomp/TScrollPage;->twoColumn:Z

    .line 16
    iput-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    .line 17
    sget-object p1, Lcom/neverland/utils/finit$EMODE;->scroll_manual:Lcom/neverland/utils/finit$EMODE;

    iput-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->mode:Lcom/neverland/utils/finit$EMODE;

    .line 18
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    .line 19
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    .line 20
    iget-object p1, v0, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget p1, p1, Lcom/neverland/prefs/TAnimation;->time:I

    int-to-long v5, p1

    iput-wide v5, p0, Lcom/neverland/viscomp/TScrollPage;->scrollTime:J

    .line 21
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->getMainText()Lcom/neverland/viscomp/TMainTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    .line 22
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget v1, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    invoke-virtual {p1, v1, v5}, Lcom/neverland/book/TBook;->getCurrentPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez v1, :cond_9

    return v3

    :cond_9
    const/4 v5, 0x0

    .line 23
    iput-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 24
    iget v5, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->textTop:I

    iput v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    .line 25
    iget v5, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->textBottom:I

    iput v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    .line 26
    iget v5, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->textSide:I

    iput v5, p0, Lcom/neverland/viscomp/TScrollPage;->marginLeft:I

    .line 27
    iget v1, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->textPages:I

    iput v1, p0, Lcom/neverland/viscomp/TScrollPage;->marginRight:I

    .line 28
    sget-object v1, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EDIRECTION:[I

    iget-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v1, v5

    if-eq v5, v4, :cond_b

    if-eq v5, v2, :cond_a

    .line 29
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    invoke-virtual {p1, v5, v6}, Lcom/neverland/book/TBook;->getPrevPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 30
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    invoke-virtual {p1, v5, v6}, Lcom/neverland/book/TBook;->getNextPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    goto :goto_2

    .line 31
    :cond_a
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    invoke-virtual {p1, v5, v6}, Lcom/neverland/book/TBook;->getPrevPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    goto :goto_2

    .line 32
    :cond_b
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    invoke-virtual {p1, v5, v6}, Lcom/neverland/book/TBook;->getNextPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 33
    :goto_2
    iget v5, p0, Lcom/neverland/viscomp/TScrollPage;->width:I

    iget v6, p0, Lcom/neverland/viscomp/TScrollPage;->height:I

    invoke-virtual {p1, v5, v6}, Lcom/neverland/book/TBook;->getBackPage(II)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 34
    iget-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez p1, :cond_c

    return v3

    .line 35
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/neverland/viscomp/TScrollPage;->startTime:J

    .line 36
    iput p3, p0, Lcom/neverland/viscomp/TScrollPage;->lastCoord:I

    iput p3, p0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    .line 37
    iput p3, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    .line 38
    iput v3, p0, Lcom/neverland/viscomp/TScrollPage;->currentY:I

    .line 39
    iput-boolean v4, p0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    .line 40
    iget-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object p3, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    if-eq p1, p3, :cond_d

    sget-object p3, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne p1, p3, :cond_10

    :cond_d
    iget-boolean p1, p0, Lcom/neverland/viscomp/TScrollPage;->useOpenGL:Z

    if-eqz p1, :cond_10

    iget-object p1, v0, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    invoke-virtual {p1}, Lcom/neverland/prefs/TAnimation;->useOpenGLScroll()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 41
    iget-object p1, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_f

    if-eq p1, v2, :cond_e

    const/4 p1, 0x1

    goto :goto_3

    .line 42
    :cond_e
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get3DScroll()Lcom/neverland/viscomp/PageCurlGLSurface;

    move-result-object p1

    iget-object p3, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/neverland/viscomp/PageCurlGLSurface;->_startHorizontal(Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/utils/finit$EDIRECTION;)Z

    move-result p1

    goto :goto_3

    .line 43
    :cond_f
    sget-object p1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {p1}, Lcom/neverland/viscomp/TMainActivity;->get3DScroll()Lcom/neverland/viscomp/PageCurlGLSurface;

    move-result-object p1

    iget-object p3, p0, Lcom/neverland/viscomp/TScrollPage;->curr1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, p0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v1, p0, Lcom/neverland/viscomp/TScrollPage;->back1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v2, p0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/neverland/viscomp/PageCurlGLSurface;->_startHorizontal(Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/utils/finit$EDIRECTION;)Z

    move-result p1

    :goto_3
    if-nez p1, :cond_10

    .line 44
    invoke-virtual {p0, v4, v3}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    return v3

    .line 45
    :cond_10
    sget-object p1, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    if-ne p2, p1, :cond_11

    .line 46
    invoke-virtual {p0, v3, v3}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    :cond_11
    return v4
.end method

.method public stopScroll(ZI)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2c

    .line 2
    new-instance v2, Lcom/neverland/engbook/forpublic/h;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/neverland/engbook/forpublic/h;-><init>(I)V

    new-instance v6, Lcom/neverland/engbook/forpublic/h;

    invoke-direct {v6, v5}, Lcom/neverland/engbook/forpublic/h;-><init>(I)V

    .line 3
    iget-object v7, v0, Lcom/neverland/viscomp/TScrollPage;->mode:Lcom/neverland/utils/finit$EMODE;

    sget-object v8, Lcom/neverland/utils/finit$EMODE;->scroll_manual:Lcom/neverland/utils/finit$EMODE;

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ne v7, v8, :cond_20

    if-nez p1, :cond_20

    .line 4
    sget-object v7, Lcom/neverland/utils/finit$EMODE;->scroll_auto:Lcom/neverland/utils/finit$EMODE;

    iput-object v7, v0, Lcom/neverland/viscomp/TScrollPage;->mode:Lcom/neverland/utils/finit$EMODE;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 6
    iget v12, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iget v13, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    .line 7
    sget-object v13, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EDIRECTION:[I

    iget-object v14, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v13, v14

    if-eq v14, v4, :cond_18

    if-eq v14, v11, :cond_17

    if-eq v14, v10, :cond_c

    if-eq v14, v9, :cond_1

    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 8
    :cond_1
    iget v14, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iget v15, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    if-le v14, v15, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    .line 9
    :goto_0
    sget-object v15, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EVKIND:[I

    iget-object v9, v0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v15, v9

    if-eq v9, v4, :cond_b

    if-eq v9, v11, :cond_a

    if-eq v9, v10, :cond_3

    goto/16 :goto_a

    .line 10
    :cond_3
    iput v5, v2, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 11
    iget v9, v0, Lcom/neverland/viscomp/TScrollPage;->height:I

    iput v9, v6, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 12
    sget-object v6, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget v9, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iget v15, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    sub-int/2addr v9, v15

    iget-object v15, v0, Lcom/neverland/viscomp/TScrollPage;->variantShift:Ljava/util/ArrayList;

    invoke-virtual {v6, v9, v1, v15}, Lcom/neverland/book/TBook;->getScrollVariant(IILjava/util/ArrayList;)I

    move-result v9

    if-eqz v9, :cond_4

    .line 13
    iget-object v9, v0, Lcom/neverland/viscomp/TScrollPage;->variantShift:Ljava/util/ArrayList;

    iget v15, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iget v10, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    sub-int/2addr v15, v10

    invoke-direct {v0, v9, v1, v15}, Lcom/neverland/viscomp/TScrollPage;->getGravityBorder(Ljava/util/ArrayList;II)Lcom/neverland/engbook/forpublic/n;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_4
    iget v9, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iget v10, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v9, v1, v3}, Lcom/neverland/book/TBook;->getScrollVariant(IILjava/util/ArrayList;)I

    move-result v1

    iput v1, v2, Lcom/neverland/engbook/forpublic/h;->a:I

    move-object v1, v3

    :goto_1
    if-eqz v14, :cond_5

    .line 15
    iget-object v9, v0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v9, :cond_6

    :cond_5
    if-nez v14, :cond_7

    iget-object v9, v0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez v9, :cond_7

    .line 16
    :cond_6
    iput-boolean v5, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    goto/16 :goto_a

    :cond_7
    if-eqz v1, :cond_9

    .line 17
    iget-object v9, v0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget v10, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iput v10, v9, Lcom/neverland/viscomp/TScrollPage$RollParameters;->startY:I

    .line 18
    iget v15, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iget v3, v1, Lcom/neverland/engbook/forpublic/n;->b:I

    sub-int/2addr v15, v3

    iput v15, v9, Lcom/neverland/viscomp/TScrollPage$RollParameters;->endY:I

    .line 19
    iget v3, v1, Lcom/neverland/engbook/forpublic/n;->a:I

    iput v3, v9, Lcom/neverland/viscomp/TScrollPage$RollParameters;->posAfter:I

    .line 20
    iget v1, v1, Lcom/neverland/engbook/forpublic/n;->c:I

    int-to-long v4, v1

    iput-wide v4, v9, Lcom/neverland/viscomp/TScrollPage$RollParameters;->time:J

    sub-int/2addr v15, v10

    .line 21
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v11, :cond_8

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    .line 23
    iget v2, v2, Lcom/neverland/engbook/forpublic/h;->a:I

    invoke-virtual {v6, v2}, Lcom/neverland/book/TBook;->gotoPosAfterVScroll(I)V

    goto/16 :goto_a

    :cond_8
    const/4 v1, 0x0

    .line 24
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    goto/16 :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    .line 26
    iget v1, v2, Lcom/neverland/engbook/forpublic/h;->a:I

    invoke-virtual {v6, v1}, Lcom/neverland/book/TBook;->gotoPosAfterVScroll(I)V

    goto/16 :goto_a

    .line 27
    :cond_a
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    iget v2, v0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    :goto_2
    sub-int/2addr v1, v2

    goto :goto_3

    .line 28
    :cond_b
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->height:I

    :goto_3
    int-to-float v1, v1

    div-float/2addr v12, v1

    goto/16 :goto_a

    .line 29
    :cond_c
    iget v4, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iget v5, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    if-ge v4, v5, :cond_d

    const/4 v14, 0x1

    goto :goto_4

    :cond_d
    const/4 v14, 0x0

    .line 30
    :goto_4
    sget-object v4, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EVKIND:[I

    iget-object v5, v0, Lcom/neverland/viscomp/TScrollPage;->vKind1:Lcom/neverland/utils/finit$EVKIND;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v3, 0x1

    if-eq v4, v3, :cond_16

    if-eq v4, v11, :cond_15

    const/4 v5, 0x3

    if-eq v4, v5, :cond_e

    goto/16 :goto_a

    :cond_e
    const/4 v4, 0x0

    .line 31
    iput v4, v2, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 32
    iget v4, v0, Lcom/neverland/viscomp/TScrollPage;->height:I

    iput v4, v6, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 33
    sget-object v4, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget v5, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iget v6, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/neverland/viscomp/TScrollPage;->variantShift:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v1, v6}, Lcom/neverland/book/TBook;->getScrollVariant(IILjava/util/ArrayList;)I

    move-result v5

    if-eqz v5, :cond_f

    .line 34
    iget-object v5, v0, Lcom/neverland/viscomp/TScrollPage;->variantShift:Ljava/util/ArrayList;

    iget v6, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iget v9, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    sub-int/2addr v6, v9

    invoke-direct {v0, v5, v1, v6}, Lcom/neverland/viscomp/TScrollPage;->getGravityBorder(Ljava/util/ArrayList;II)Lcom/neverland/engbook/forpublic/n;

    move-result-object v1

    goto :goto_5

    .line 35
    :cond_f
    iget v5, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iget v6, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Lcom/neverland/book/TBook;->getScrollVariant(IILjava/util/ArrayList;)I

    move-result v1

    iput v1, v2, Lcom/neverland/engbook/forpublic/h;->a:I

    const/4 v1, 0x0

    :goto_5
    if-nez v14, :cond_11

    .line 36
    iget-object v5, v0, Lcom/neverland/viscomp/TScrollPage;->prev1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v5, :cond_10

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v1, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    if-eqz v14, :cond_12

    iget-object v5, v0, Lcom/neverland/viscomp/TScrollPage;->next1:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-nez v5, :cond_12

    goto :goto_6

    .line 37
    :goto_8
    iput-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    goto :goto_a

    :cond_12
    if-eqz v1, :cond_14

    .line 38
    iget-object v5, v0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget v6, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iput v6, v5, Lcom/neverland/viscomp/TScrollPage$RollParameters;->startY:I

    .line 39
    iget v9, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    iget v10, v1, Lcom/neverland/engbook/forpublic/n;->b:I

    sub-int/2addr v9, v10

    iput v9, v5, Lcom/neverland/viscomp/TScrollPage$RollParameters;->endY:I

    .line 40
    iget v10, v1, Lcom/neverland/engbook/forpublic/n;->a:I

    iput v10, v5, Lcom/neverland/viscomp/TScrollPage$RollParameters;->posAfter:I

    .line 41
    iget v1, v1, Lcom/neverland/engbook/forpublic/n;->c:I

    move-object v10, v4

    int-to-long v3, v1

    iput-wide v3, v5, Lcom/neverland/viscomp/TScrollPage$RollParameters;->time:J

    sub-int/2addr v9, v6

    .line 42
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v11, :cond_13

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    .line 44
    iget v2, v2, Lcom/neverland/engbook/forpublic/h;->a:I

    invoke-virtual {v10, v2}, Lcom/neverland/book/TBook;->gotoPosAfterVScroll(I)V

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    .line 45
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    goto :goto_a

    :cond_14
    move-object v10, v4

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    .line 47
    iget v1, v2, Lcom/neverland/engbook/forpublic/h;->a:I

    invoke-virtual {v10, v1}, Lcom/neverland/book/TBook;->gotoPosAfterVScroll(I)V

    goto :goto_a

    .line 48
    :cond_15
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->marginBottom1:I

    iget v2, v0, Lcom/neverland/viscomp/TScrollPage;->marginTop1:I

    goto/16 :goto_2

    .line 49
    :cond_16
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->height:I

    goto/16 :goto_3

    .line 50
    :cond_17
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->width:I

    int-to-float v1, v1

    div-float/2addr v12, v1

    .line 51
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iget v2, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    if-ge v1, v2, :cond_0

    :goto_9
    const/4 v14, 0x1

    goto :goto_a

    .line 52
    :cond_18
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->width:I

    int-to-float v1, v1

    div-float/2addr v12, v1

    .line 53
    iget v1, v0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    iget v2, v0, Lcom/neverland/viscomp/TScrollPage;->initialCoord:I

    if-le v1, v2, :cond_0

    goto :goto_9

    :goto_a
    if-eqz v14, :cond_1d

    .line 54
    iget-object v1, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v13, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    if-eq v1, v11, :cond_1b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_19

    goto :goto_b

    .line 55
    :cond_19
    sget-object v1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v1, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    goto :goto_b

    .line 56
    :cond_1a
    sget-object v1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v1, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    goto :goto_b

    .line 57
    :cond_1b
    sget-object v1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v1, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    .line 59
    sget-object v2, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    iput-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    .line 60
    iput-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    .line 61
    :cond_1d
    :goto_b
    iget-object v1, v0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget-boolean v1, v1, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    if-eqz v1, :cond_1e

    .line 62
    iput-wide v7, v0, Lcom/neverland/viscomp/TScrollPage;->startTime:J

    goto :goto_c

    .line 63
    :cond_1e
    iget-object v1, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    if-eq v1, v2, :cond_1f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v12, v1, v12

    .line 64
    :cond_1f
    iget-wide v1, v0, Lcom/neverland/viscomp/TScrollPage;->scrollTime:J

    long-to-float v1, v1

    mul-float v12, v12, v1

    float-to-long v1, v12

    sub-long/2addr v7, v1

    iput-wide v7, v0, Lcom/neverland/viscomp/TScrollPage;->startTime:J

    .line 65
    :goto_c
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v1}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    goto/16 :goto_e

    :cond_20
    const/4 v1, 0x0

    .line 66
    iput-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    .line 67
    sget-object v1, Lcom/neverland/viscomp/TScrollPage$1;->$SwitchMap$com$neverland$utils$finit$EDIRECTION:[I

    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_29

    if-eq v2, v11, :cond_27

    const/4 v4, 0x3

    if-eq v2, v4, :cond_24

    const/4 v4, 0x4

    if-eq v2, v4, :cond_21

    goto/16 :goto_d

    .line 68
    :cond_21
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget-boolean v4, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    if-eqz v4, :cond_22

    const/4 v4, 0x0

    .line 69
    iput-boolean v4, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    .line 70
    sget-object v4, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget v2, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->posAfter:I

    invoke-virtual {v4, v2}, Lcom/neverland/book/TBook;->gotoPosAfterVScroll(I)V

    goto/16 :goto_d

    .line 71
    :cond_22
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_up:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v2, v4, :cond_23

    .line 72
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->disableAppRegalSupport()V

    .line 73
    sget-object v4, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 74
    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->restoreAppRegalSupport()V

    goto :goto_d

    .line 75
    :cond_23
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    goto :goto_d

    .line 76
    :cond_24
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->rollScroll:Lcom/neverland/viscomp/TScrollPage$RollParameters;

    iget-boolean v4, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    if-eqz v4, :cond_25

    const/4 v4, 0x0

    .line 77
    iput-boolean v4, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    .line 78
    sget-object v4, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget v2, v2, Lcom/neverland/viscomp/TScrollPage$RollParameters;->posAfter:I

    invoke-virtual {v4, v2}, Lcom/neverland/book/TBook;->gotoPosAfterVScroll(I)V

    goto :goto_d

    .line 79
    :cond_25
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_down:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v2, v4, :cond_26

    .line 80
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->disableAppRegalSupport()V

    .line 81
    sget-object v4, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 82
    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->restoreAppRegalSupport()V

    goto :goto_d

    .line 83
    :cond_26
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    goto :goto_d

    .line 84
    :cond_27
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_right:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v2, v4, :cond_28

    .line 85
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->disableAppRegalSupport()V

    .line 86
    sget-object v4, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_prev_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 87
    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->restoreAppRegalSupport()V

    goto :goto_d

    .line 88
    :cond_28
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    goto :goto_d

    .line 89
    :cond_29
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->lastDraw:Lcom/neverland/utils/finit$EDIRECTION;

    sget-object v4, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v2, v4, :cond_2a

    .line 90
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->disableAppRegalSupport()V

    .line 91
    sget-object v4, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_next_page:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    .line 92
    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->restoreAppRegalSupport()V

    goto :goto_d

    .line 93
    :cond_2a
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    .line 94
    :goto_d
    iget-boolean v2, v0, Lcom/neverland/viscomp/TScrollPage;->useOpenGL:Z

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    invoke-virtual {v2}, Lcom/neverland/prefs/TAnimation;->useOpenGLScroll()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 95
    iget-object v2, v0, Lcom/neverland/viscomp/TScrollPage;->dir:Lcom/neverland/utils/finit$EDIRECTION;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    if-eq v1, v11, :cond_2b

    goto :goto_e

    .line 96
    :cond_2b
    sget-object v1, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-virtual {v1}, Lcom/neverland/viscomp/TMainActivity;->get3DScroll()Lcom/neverland/viscomp/PageCurlGLSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neverland/viscomp/PageCurlGLSurface;->_stop()Z

    .line 97
    :cond_2c
    :goto_e
    iget-boolean v1, v0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    .line 98
    iput-object v1, v0, Lcom/neverland/viscomp/TScrollPage;->paintText:Landroid/graphics/Paint;

    :cond_2d
    const/4 v1, 0x1

    return v1
.end method

.method public update(I)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/neverland/viscomp/TScrollPage;->update(II)V

    return-void
.end method

.method public update(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/neverland/viscomp/TScrollPage;->currentY:I

    .line 2
    iget-boolean p2, p0, Lcom/neverland/viscomp/TScrollPage;->enable:Z

    if-eqz p2, :cond_0

    .line 3
    iput p1, p0, Lcom/neverland/viscomp/TScrollPage;->currentCoord1:I

    .line 4
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p1}, Lcom/neverland/utils/TCustomDevice;->repaint()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/TScrollPage;->stopScroll(ZI)Z

    :goto_0
    return-void
.end method
