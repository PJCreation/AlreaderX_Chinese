.class public final enum Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
.super Ljava/lang/Enum;
.source "BaseSyncAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/utils/SyncAll/BaseSyncAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DOWNLOADRESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

.field public static final enum ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

.field public static final enum NOTEXISTS:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

.field public static final enum OK:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    .line 2
    new-instance v1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    const-string v3, "NOTEXISTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->NOTEXISTS:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    .line 3
    new-instance v3, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    const-string v5, "OK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->OK:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->$VALUES:[Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 1

    .line 1
    const-class v0, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object p0
.end method

.method public static values()[Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->$VALUES:[Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    invoke-virtual {v0}, [Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    return-object v0
.end method
