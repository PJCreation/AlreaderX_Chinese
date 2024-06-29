.class public final enum Lcom/neverland/utils/AppIconChanger$MainIcon;
.super Ljava/lang/Enum;
.source "AppIconChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/utils/AppIconChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MainIcon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neverland/utils/AppIconChanger$MainIcon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neverland/utils/AppIconChanger$MainIcon;

.field public static final enum DEFAULT:Lcom/neverland/utils/AppIconChanger$MainIcon;

.field public static final enum EINKONYX:Lcom/neverland/utils/AppIconChanger$MainIcon;


# instance fields
.field private componentName:Landroid/content/ComponentName;

.field public final ico:I

.field public final key:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/neverland/utils/AppIconChanger$MainIcon;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, "dflt"

    const v4, 0x7f08007b

    const-string v5, "com.neverland.viscomp.TMainActivity"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/neverland/utils/AppIconChanger$MainIcon;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/neverland/utils/AppIconChanger$MainIcon;->DEFAULT:Lcom/neverland/utils/AppIconChanger$MainIcon;

    .line 2
    new-instance v0, Lcom/neverland/utils/AppIconChanger$MainIcon;

    const-string v8, "EINKONYX"

    const/4 v9, 0x1

    const-string v10, "onyx"

    const v11, 0x7f08007a

    const-string v12, "com.neverland.viscomp.TMainActivityEink"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/neverland/utils/AppIconChanger$MainIcon;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/neverland/utils/AppIconChanger$MainIcon;->EINKONYX:Lcom/neverland/utils/AppIconChanger$MainIcon;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/neverland/utils/AppIconChanger$MainIcon;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    sput-object v1, Lcom/neverland/utils/AppIconChanger$MainIcon;->$VALUES:[Lcom/neverland/utils/AppIconChanger$MainIcon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/neverland/utils/AppIconChanger$MainIcon;->key:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/neverland/utils/AppIconChanger$MainIcon;->ico:I

    .line 4
    iput-object p5, p0, Lcom/neverland/utils/AppIconChanger$MainIcon;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neverland/utils/AppIconChanger$MainIcon;
    .locals 1

    .line 1
    const-class v0, Lcom/neverland/utils/AppIconChanger$MainIcon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neverland/utils/AppIconChanger$MainIcon;

    return-object p0
.end method

.method public static values()[Lcom/neverland/utils/AppIconChanger$MainIcon;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/utils/AppIconChanger$MainIcon;->$VALUES:[Lcom/neverland/utils/AppIconChanger$MainIcon;

    invoke-virtual {v0}, [Lcom/neverland/utils/AppIconChanger$MainIcon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neverland/utils/AppIconChanger$MainIcon;

    return-object v0
.end method


# virtual methods
.method public getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/utils/AppIconChanger$MainIcon;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/neverland/utils/AppIconChanger$MainIcon;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/neverland/utils/AppIconChanger$MainIcon;->componentName:Landroid/content/ComponentName;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/neverland/utils/AppIconChanger$MainIcon;->componentName:Landroid/content/ComponentName;

    return-object p1
.end method
