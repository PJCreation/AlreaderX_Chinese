.class public Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;
.super Ljava/lang/Object;
.source "BaseSyncAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/utils/SyncAll/BaseSyncAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalAddress"
.end annotation


# instance fields
.field public addon:Z

.field public addr:Ljava/lang/String;

.field public pass:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;->addr:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;->user:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;->pass:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;->addon:Z

    return-void
.end method
