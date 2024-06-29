.class Lcom/neverland/viscomp/TScrollPage$RollParameters;
.super Ljava/lang/Object;
.source "TScrollPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/TScrollPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RollParameters"
.end annotation


# instance fields
.field public active:Z

.field public endY:I

.field public posAfter:I

.field public startY:I

.field public time:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/neverland/viscomp/TScrollPage$RollParameters;->active:Z

    const-wide/16 v0, 0x5dc

    .line 3
    iput-wide v0, p0, Lcom/neverland/viscomp/TScrollPage$RollParameters;->time:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/neverland/viscomp/TScrollPage$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/neverland/viscomp/TScrollPage$RollParameters;-><init>()V

    return-void
.end method
