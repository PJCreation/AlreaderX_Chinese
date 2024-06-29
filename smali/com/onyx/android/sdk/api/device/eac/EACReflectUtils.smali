.class public Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EINK_HELPER_CLS_NAME:Ljava/lang/String; = "android.onyx.optimization.EInkHelper"

.field public static final eInkHelperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final sMethodApplyAppConfigToService:Ljava/lang/reflect/Method;

.field public static final sMethodApplyDefaultAppConfigToService:Ljava/lang/reflect/Method;

.field public static final sMethodApplyRefreshConfigToAll:Ljava/lang/reflect/Method;

.field public static final sMethodGetAppConfigFromService:Ljava/lang/reflect/Method;

.field public static final sMethodGetAutoFreezeApps:Ljava/lang/reflect/Method;

.field public static final sMethodGetDeviceConfig:Ljava/lang/reflect/Method;

.field public static final sMethodGetDeviceConfigVersionCode:Ljava/lang/reflect/Method;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final sMethodGetDeviceExtraConfig:Ljava/lang/reflect/Method;

.field public static final sMethodGetDisallowedAutoFreezeApps:Ljava/lang/reflect/Method;

.field public static final sMethodGetDisallowedEACApps:Ljava/lang/reflect/Method;

.field public static final sMethodRemoveAllAppConfig:Ljava/lang/reflect/Method;

.field public static final sMethodRemoveAppConfig:Ljava/lang/reflect/Method;

.field public static final sMethodSetAccessibilityTouchEventDelay:Ljava/lang/reflect/Method;

.field public static final sMethodSetDeviceConfigVersionCode:Ljava/lang/reflect/Method;

.field public static final sMethodSetEACServiceConfig:Ljava/lang/reflect/Method;

.field public static final sMethodSetSystemRefreshMode:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Ljava/lang/String;

    const-string v1, "android.onyx.optimization.EInkHelper"

    .line 1
    invoke-static {v1}, Lcom/onyx/android/sdk/utils/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->eInkHelperClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Ljava/util/List;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "removeAppConfigFromService"

    invoke-static {v1, v4, v3}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodRemoveAppConfig:Ljava/lang/reflect/Method;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "removeAllAppConfigFromService"

    .line 3
    invoke-static {v1, v4, v3}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodRemoveAllAppConfig:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v2

    const-string v6, "applyAppConfigToService"

    invoke-static {v1, v6, v4}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodApplyAppConfigToService:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v0, v4, v5

    const-string v6, "applyRefreshConfigToAll"

    .line 5
    invoke-static {v1, v6, v4}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodApplyRefreshConfigToAll:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Class;

    .line 6
    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    const-string v6, "getAppConfigFromService"

    invoke-static {v1, v6, v4}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetAppConfigFromService:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Class;

    .line 7
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    aput-object v4, v3, v2

    const-string v4, "setEACServiceConfig"

    invoke-static {v1, v4, v3}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodSetEACServiceConfig:Ljava/lang/reflect/Method;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "getDeviceExtraConfigString"

    .line 8
    invoke-static {v1, v4, v3}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetDeviceExtraConfig:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v0, v3, v5

    const-string v0, "applyDefaultAppConfigToService"

    .line 9
    invoke-static {v1, v0, v3}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodApplyDefaultAppConfigToService:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    .line 10
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v5

    const-string v4, "setAccessibilityTouchEventDelay"

    invoke-static {v1, v4, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodSetAccessibilityTouchEventDelay:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    aput-object v3, v0, v5

    const-string v4, "setSystemRefreshMode"

    .line 11
    invoke-static {v1, v4, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodSetSystemRefreshMode:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Class;

    const-string v4, "getAutoFreezeApps"

    .line 12
    invoke-static {v1, v4, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetAutoFreezeApps:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Class;

    const-string v4, "getDisallowedAutoFreezeApps"

    .line 13
    invoke-static {v1, v4, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetDisallowedAutoFreezeApps:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Class;

    const-string v4, "getDisallowedEACApps"

    .line 14
    invoke-static {v1, v4, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetDisallowedEACApps:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    .line 15
    const-class v4, Ljava/util/List;

    aput-object v4, v0, v5

    const-string v4, "getDeviceConfig"

    invoke-static {v1, v4, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetDeviceConfig:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    aput-object v3, v0, v5

    const-string v2, "setDeviceConfigVersionCode"

    .line 16
    invoke-static {v1, v2, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodSetDeviceConfigVersionCode:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Class;

    const-string v2, "getDeviceConfigVersionCode"

    .line 17
    invoke-static {v1, v2, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodGetDeviceConfigVersionCode:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
