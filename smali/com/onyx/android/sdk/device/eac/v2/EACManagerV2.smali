.class public Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;
.super Lcom/onyx/android/sdk/device/eac/BaseEACManager;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->eInkHelperClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/List;

    aput-object v3, v1, v2

    const-string v2, "applyAppConfigToService"

    invoke-static {v0, v2, v1}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "enable"

    .line 5
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "globalActivityConfig"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "refreshConfig"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/utils/ReflectUtil;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "applyAppConfigToService config failed"

    invoke-static {p1, v1, v0}, Lcom/onyx/android/sdk/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 10
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enable"

    .line 5
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "rotationConfig"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodApplyRefreshConfigToAll:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/utils/ReflectUtil;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "applyRefreshConfigToAll config failed"

    invoke-static {p1, v1, v0}, Lcom/onyx/android/sdk/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetAppConfigFromService:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/utils/ReflectUtil;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-static {p1}, Lcom/onyx/android/sdk/api/utils/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "getAppConfigFromService: invalid config result"

    invoke-static {p1, v1, v0}, Lcom/onyx/android/sdk/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1

    .line 5
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enable"

    .line 8
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "supportEAC"

    .line 2
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected applyAppConfigToService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/device/eac/BaseEACManager;->sendOECConfigChanged(Landroid/content/Context;ZI)V

    return-void
.end method

.method public isAppEACEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "supportEAC"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enable"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEACRefreshConfigEnable(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->isAppEACEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "enable"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public isHookEpdc(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->isAppEACEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRotationConfigEnable(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "supportEAC"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enable"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return v1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSupportEAC(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "supportEAC"

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setAppEACEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->applyAppConfigToService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setEACRefreshConfigEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->applyAppConfigToService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setRotationConfigEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->applyAppConfigToService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setSupportEAC(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;->applyAppConfigToService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
