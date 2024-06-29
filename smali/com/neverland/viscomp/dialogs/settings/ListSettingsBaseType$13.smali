.class Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$13;
.super Ljava/lang/Object;
.source "ListSettingsBaseType.java"

# interfaces
.implements Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->makeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0}, Lcom/neverland/book/TBook;->bookCanChangeCP()Z

    move-result v0

    return v0
.end method
