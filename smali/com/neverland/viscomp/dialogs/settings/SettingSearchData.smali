.class public Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;
.super Ljava/lang/Object;
.source "SettingSearchData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public index:I

.field public level:I

.field public str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->str:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->level:I

    return-void
.end method
