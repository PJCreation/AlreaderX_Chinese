.class public final enum Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;
.super Ljava/lang/Enum;
.source "ConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/utils/SyncAll/ConnectionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

.field public static final enum ERR:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

.field public static final enum FTP:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

.field public static final enum SFTP:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

.field public static final enum WebDav:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    const-string v1, "ERR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->ERR:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    .line 2
    new-instance v1, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    const-string v3, "WebDav"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->WebDav:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    .line 3
    new-instance v3, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    const-string v5, "FTP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->FTP:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    .line 4
    new-instance v5, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    const-string v7, "SFTP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->SFTP:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->$VALUES:[Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;
    .locals 5

    .line 1
    invoke-static {}, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->values()[Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toInt(Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->$VALUES:[Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    invoke-virtual {v0}, [Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    return-object v0
.end method
