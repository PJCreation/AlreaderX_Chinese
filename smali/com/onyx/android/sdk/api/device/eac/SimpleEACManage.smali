.class public Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JSON_VERSION:Ljava/lang/String; = "jsonVersion"

.field private static final managerSingleton:Lcom/onyx/android/sdk/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/utils/Singleton<",
            "Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->managerSingleton:Lcom/onyx/android/sdk/utils/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->initEacManager()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;-><init>()V

    return-void
.end method

.method private getDeviceConfigVersionCode()I
    .locals 5

    const-string v0, "jsonVersion"

    .line 1
    sget-object v1, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetDeviceConfig:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/onyx/android/sdk/utils/ReflectUtil;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/onyx/android/sdk/api/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->getOldDeviceConfigVersionCode()I

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v4
.end method

.method public static getInstance()Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;
    .locals 1

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->managerSingleton:Lcom/onyx/android/sdk/utils/Singleton;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;

    return-object v0
.end method

.method private getOldDeviceConfigVersionCode()I
    .locals 3

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetDeviceConfigVersionCode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/onyx/android/sdk/utils/ReflectUtil;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2
    invoke-static {v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getSafely(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private initEacManager()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->getDeviceConfigVersionCode()I

    move-result v0

    const/16 v1, 0x6b

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/device/eac/v3/EACManagerV3;

    invoke-direct {v0}, Lcom/onyx/android/sdk/device/eac/v3/EACManagerV3;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;

    invoke-direct {v0}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/device/eac/v1/EACManagerV1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/device/eac/v1/EACManagerV1;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    :goto_0
    return-void
.end method


# virtual methods
.method public isAppEACEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->isAppEACEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEACRefreshConfigEnable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->isEACRefreshConfigEnable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isFollowSystemRotation(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->isRotationConfigEnable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isHookEpdc(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->isHookEpdc(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSupportEAC(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->isSupportEAC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setAppEACEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->setAppEACEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public setEACRefreshConfigEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->setEACRefreshConfigEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public setFollowSystemRotation(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->setRotationConfigEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public setSupportEAC(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/api/device/eac/SimpleEACManage;->baseEACManager:Lcom/onyx/android/sdk/device/eac/BaseEACManager;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->setSupportEAC(Landroid/content/Context;Z)V

    return-void
.end method
