.class public Lcom/neverland/engbook/level1/AlFileZipEntry;
.super Ljava/lang/Object;
.source "AlFileZipEntry.java"


# instance fields
.field public cSize:I

.field public chmRealName:Ljava/lang/String;

.field public compress:I

.field public flag:I

.field public name:Ljava/lang/String;

.field public obj1:Ljava/lang/Object;

.field public position:J

.field public time:J

.field public uSize:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->chmRealName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    .line 5
    iput v1, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->cSize:I

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->position:J

    .line 7
    iput v1, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->compress:I

    .line 8
    iput-wide v2, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->time:J

    .line 9
    iput v1, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->flag:I

    .line 10
    iput-object v0, p0, Lcom/neverland/engbook/level1/AlFileZipEntry;->obj1:Ljava/lang/Object;

    return-void
.end method
