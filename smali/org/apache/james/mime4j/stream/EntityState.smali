.class public final enum Lorg/apache/james/mime4j/stream/EntityState;
.super Ljava/lang/Enum;
.source "EntityState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/james/mime4j/stream/EntityState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_END_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_END_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_END_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_EPILOGUE:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_FIELD:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_PREAMBLE:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_RAW_ENTITY:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_START_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_START_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

.field public static final enum T_START_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

.field private static final synthetic e:[Lorg/apache/james/mime4j/stream/EntityState;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v1, "T_START_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    .line 2
    new-instance v1, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v3, "T_END_MESSAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    .line 3
    new-instance v3, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v5, "T_RAW_ENTITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/james/mime4j/stream/EntityState;->T_RAW_ENTITY:Lorg/apache/james/mime4j/stream/EntityState;

    .line 4
    new-instance v5, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v7, "T_START_HEADER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/james/mime4j/stream/EntityState;->T_START_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    .line 5
    new-instance v7, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v9, "T_FIELD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/james/mime4j/stream/EntityState;->T_FIELD:Lorg/apache/james/mime4j/stream/EntityState;

    .line 6
    new-instance v9, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v11, "T_END_HEADER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/james/mime4j/stream/EntityState;->T_END_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    .line 7
    new-instance v11, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v13, "T_START_MULTIPART"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    .line 8
    new-instance v13, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v15, "T_END_MULTIPART"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    .line 9
    new-instance v15, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v14, "T_PREAMBLE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/james/mime4j/stream/EntityState;->T_PREAMBLE:Lorg/apache/james/mime4j/stream/EntityState;

    .line 10
    new-instance v14, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v12, "T_EPILOGUE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/james/mime4j/stream/EntityState;->T_EPILOGUE:Lorg/apache/james/mime4j/stream/EntityState;

    .line 11
    new-instance v12, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v10, "T_START_BODYPART"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/james/mime4j/stream/EntityState;->T_START_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

    .line 12
    new-instance v10, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v8, "T_END_BODYPART"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/james/mime4j/stream/EntityState;->T_END_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

    .line 13
    new-instance v8, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v6, "T_BODY"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/james/mime4j/stream/EntityState;->T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

    .line 14
    new-instance v6, Lorg/apache/james/mime4j/stream/EntityState;

    const-string v4, "T_END_OF_STREAM"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/apache/james/mime4j/stream/EntityState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    const/16 v4, 0xe

    new-array v4, v4, [Lorg/apache/james/mime4j/stream/EntityState;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 15
    sput-object v4, Lorg/apache/james/mime4j/stream/EntityState;->e:[Lorg/apache/james/mime4j/stream/EntityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/EntityState;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/stream/EntityState;

    return-object p0
.end method

.method public static values()[Lorg/apache/james/mime4j/stream/EntityState;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->e:[Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v0}, [Lorg/apache/james/mime4j/stream/EntityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0
.end method
