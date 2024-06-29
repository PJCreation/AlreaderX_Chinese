.class public Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;
.super Ljava/lang/Object;
.source "ConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/utils/SyncAll/ConnectionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneFileRecord"
.end annotation


# instance fields
.field public date:J

.field public isDir:Z

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->path:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->isDir:Z

    .line 4
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->size:J

    .line 6
    iput-wide v0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase$OneFileRecord;->date:J

    return-void
.end method
