.class public final enum Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;
.super Ljava/lang/Enum;
.source "DBOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/readbase/DBOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COMPARE_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

.field public static final enum ERROR:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

.field public static final enum NEWEST:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

.field public static final enum NONEW:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->ERROR:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    .line 2
    new-instance v1, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    const-string v3, "NONEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->NONEW:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    .line 3
    new-instance v3, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    const-string v5, "NEWEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->NEWEST:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->$VALUES:[Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;
    .locals 1

    .line 1
    const-class v0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    return-object p0
.end method

.method public static values()[Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->$VALUES:[Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    invoke-virtual {v0}, [Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    return-object v0
.end method
