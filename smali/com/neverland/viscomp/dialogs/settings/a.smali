.class public final synthetic Lcom/neverland/viscomp/dialogs/settings/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;


# static fields
.field public static final synthetic a:Lcom/neverland/viscomp/dialogs/settings/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/neverland/viscomp/dialogs/settings/a;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/settings/a;-><init>()V

    sput-object v0, Lcom/neverland/viscomp/dialogs/settings/a;->a:Lcom/neverland/viscomp/dialogs/settings/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    invoke-static {}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->lambda$makeMenu$0()Z

    move-result v0

    return v0
.end method
