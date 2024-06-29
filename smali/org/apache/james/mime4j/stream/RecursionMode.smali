.class public final enum Lorg/apache/james/mime4j/stream/RecursionMode;
.super Ljava/lang/Enum;
.source "RecursionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/james/mime4j/stream/RecursionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum M_FLAT:Lorg/apache/james/mime4j/stream/RecursionMode;

.field public static final enum M_NO_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

.field public static final enum M_RAW:Lorg/apache/james/mime4j/stream/RecursionMode;

.field public static final enum M_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

.field private static final synthetic e:[Lorg/apache/james/mime4j/stream/RecursionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/stream/RecursionMode;

    const-string v1, "M_RECURSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/stream/RecursionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/james/mime4j/stream/RecursionMode;->M_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

    .line 2
    new-instance v1, Lorg/apache/james/mime4j/stream/RecursionMode;

    const-string v3, "M_NO_RECURSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/james/mime4j/stream/RecursionMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/james/mime4j/stream/RecursionMode;->M_NO_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

    .line 3
    new-instance v3, Lorg/apache/james/mime4j/stream/RecursionMode;

    const-string v5, "M_RAW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/james/mime4j/stream/RecursionMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/james/mime4j/stream/RecursionMode;->M_RAW:Lorg/apache/james/mime4j/stream/RecursionMode;

    .line 4
    new-instance v5, Lorg/apache/james/mime4j/stream/RecursionMode;

    const-string v7, "M_FLAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/james/mime4j/stream/RecursionMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/james/mime4j/stream/RecursionMode;->M_FLAT:Lorg/apache/james/mime4j/stream/RecursionMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/james/mime4j/stream/RecursionMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/apache/james/mime4j/stream/RecursionMode;->e:[Lorg/apache/james/mime4j/stream/RecursionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/RecursionMode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/stream/RecursionMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/james/mime4j/stream/RecursionMode;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/RecursionMode;->e:[Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-virtual {v0}, [Lorg/apache/james/mime4j/stream/RecursionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/james/mime4j/stream/RecursionMode;

    return-object v0
.end method
