.class public final enum Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
.super Ljava/lang/Enum;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

.field public static final enum WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

.field private static final synthetic e:[Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    const-string v1, "TEXT_TOKEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    .line 2
    new-instance v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    const-string v3, "WORD_ENTITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->e:[Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    return-object p0
.end method

.method public static values()[Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->e:[Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-virtual {v0}, [Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    return-object v0
.end method
