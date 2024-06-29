.class public Lcom/neverland/engbook/util/AlScreenParameters;
.super Ljava/lang/Object;
.source "AlScreenParameters.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public borderWidth:I

.field public fletter_mask0_:J

.field public fletter_mask1_:J

.field public free_picture_height:I

.field public free_picture_width:I

.field public heightEmptyLine:I

.field public marginB:I

.field public marginL1:I

.field public marginR1:I

.field public marginT:I

.field public reservHeight:I

.field public vikluch:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/neverland/engbook/util/AlScreenParameters;->borderWidth:I

    return-void
.end method
