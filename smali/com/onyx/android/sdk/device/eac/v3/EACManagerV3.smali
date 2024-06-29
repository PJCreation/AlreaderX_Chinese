.class public Lcom/onyx/android/sdk/device/eac/v3/EACManagerV3;
.super Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/device/eac/v2/EACManagerV2;-><init>()V

    return-void
.end method

.method private a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_operation_flag"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected applyAppConfigToService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/onyx/android/sdk/api/device/eac/EACReflectUtils;->sMethodApplyAppConfigToService:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/device/eac/v3/EACManagerV3;->a()Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 p1, 0x0

    .line 4
    invoke-static {p2, p1, v0}, Lcom/onyx/android/sdk/utils/ReflectUtil;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "applyAppConfigToService config failed"

    invoke-static {p1, v0, p2}, Lcom/onyx/android/sdk/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
