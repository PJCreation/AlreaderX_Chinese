.class public Lcom/neverland/viscomp/dialogs/GestureSpeed;
.super Ljava/lang/Object;
.source "GestureSpeed.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "speedY"


# instance fields
.field private final lastCoord:[I

.field private final lastEventTime:[J

.field private speed:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->speed:I

    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 3
    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastEventTime:[J

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastCoord:[I

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/viscomp/dialogs/GestureSpeed;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "speedY"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addData(IJZ)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastEventTime:[J

    if-eqz p4, :cond_0

    aget-wide v3, v2, v0

    goto :goto_0

    :cond_0
    aget-wide v3, v2, v1

    :goto_0
    if-eqz p4, :cond_1

    .line 2
    iget-object p4, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastCoord:[I

    aget p4, p4, v0

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastCoord:[I

    aget p4, p4, v1

    :goto_1
    int-to-long v5, p4

    sub-long v3, p2, v3

    const-wide/16 v7, 0x0

    cmp-long p4, v3, v7

    if-gtz p4, :cond_2

    const/4 p4, 0x0

    goto :goto_2

    :cond_2
    const/high16 p4, 0x447a0000    # 1000.0f

    int-to-long v9, p1

    sub-long v9, v5, v9

    long-to-float v2, v9

    mul-float v2, v2, p4

    long-to-float p4, v3

    div-float/2addr v2, p4

    float-to-int p4, v2

    :goto_2
    const v2, 0x3f4ccccd    # 0.8f

    int-to-float p4, p4

    mul-float p4, p4, v2

    const v2, 0x3e4ccccd    # 0.2f

    .line 3
    iget v3, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->speed:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr p4, v3

    float-to-int p4, p4

    iput p4, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->speed:I

    if-nez p4, :cond_4

    int-to-long v2, p1

    sub-long/2addr v5, v2

    cmp-long p4, v5, v7

    if-ltz p4, :cond_3

    .line 4
    iput v0, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->speed:I

    goto :goto_3

    :cond_3
    cmp-long p4, v5, v7

    if-gez p4, :cond_4

    const/4 p4, -0x1

    .line 5
    iput p4, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->speed:I

    .line 6
    :cond_4
    :goto_3
    iget-object p4, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastEventTime:[J

    aget-wide v2, p4, v1

    aput-wide v2, p4, v0

    .line 7
    aput-wide p2, p4, v1

    .line 8
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastCoord:[I

    aget p3, p2, v1

    aput p3, p2, v0

    .line 9
    aput p1, p2, v1

    return-void
.end method

.method public getSpeed(I)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->speed:I

    int-to-float v1, v0

    int-to-float v2, p1

    const v3, 0x3f99999a    # 1.2f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    float-to-int v0, v2

    :cond_0
    int-to-float v1, v0

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    cmpg-float v1, v1, p1

    if-gez v1, :cond_1

    :goto_0
    float-to-int v0, p1

    :cond_1
    const/16 p1, 0x14

    if-ge v0, p1, :cond_2

    const/16 p1, -0x14

    if-le v0, p1, :cond_2

    int-to-float p1, v0

    const v0, 0x40066666    # 2.1f

    mul-float p1, p1, v0

    goto :goto_0

    :cond_2
    return v0
.end method

.method public reset(IJ)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->speed:I

    .line 2
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastEventTime:[J

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    aput-wide p2, v1, v0

    .line 3
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/GestureSpeed;->lastCoord:[I

    aput p1, p2, v2

    aput p1, p2, v0

    return-void
.end method
