.class public Lcom/neverland/utils/AppIconChanger;
.super Ljava/lang/Object;
.source "AppIconChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/utils/AppIconChanger$MainIcon;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIcon(Lcom/neverland/utils/AppIconChanger$MainIcon;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/neverland/utils/AppIconChanger$MainIcon;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Lcom/neverland/utils/AppIconChanger$MainIcon;->DEFAULT:Lcom/neverland/utils/AppIconChanger$MainIcon;

    if-ne p0, v2, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {}, Lcom/neverland/utils/AppIconChanger$MainIcon;->values()[Lcom/neverland/utils/AppIconChanger$MainIcon;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 6
    invoke-virtual {v6, v0}, Lcom/neverland/utils/AppIconChanger$MainIcon;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v7

    if-ne v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    :goto_1
    invoke-virtual {v1, v7, v6, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
