.class public final enum Lokhttp3/logging/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final enum BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private static final synthetic e:[Lokhttp3/logging/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 2
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v1, "BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 3
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v1, "HEADERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 4
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v1, "BODY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {}, Lokhttp3/logging/HttpLoggingInterceptor$Level;->a()[Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-result-object v0

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->e:[Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lokhttp3/logging/HttpLoggingInterceptor$Level;

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    const-class v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->e:[Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method
