.class public Lcom/neverland/viscomp/dialogs/settings/UnitSettings;
.super Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;
.source "UnitSettings.java"


# static fields
.field private static final SAVE_RESULT_AFTER_CLOSE:Ljava/lang/String; = "start_point"

.field private static final SEARCH_STR:Ljava/lang/String; = "search_string"

.field private static final SUPPORT_SEARCH:Z = true


# instance fields
.field private adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

.field protected clickReturn:Landroid/view/View$OnClickListener;

.field private countTapInfo:I

.field private headerIcon:Landroid/widget/Button;

.field private final headerStr:Ljava/lang/StringBuilder;

.field private headerText:Landroid/widget/TextView;

.field private mainLayout:Landroid/view/ViewGroup;

.field private search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

.field private searchEdit:Landroid/widget/EditText;

.field private final searchEditListener:Landroid/text/TextWatcher;

.field private searchIcon:Landroid/widget/Button;

.field private timeTapInfo:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    .line 3
    new-instance v0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$6;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$6;-><init>(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEditListener:Landroid/text/TextWatcher;

    .line 4
    new-instance v0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$7;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$7;-><init>(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->clickReturn:Landroid/view/View$OnClickListener;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerStr:Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->timeTapInfo:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->countTapInfo:I

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->timeTapInfo:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->timeTapInfo:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->countTapInfo:I

    return p0
.end method

.method static synthetic access$102(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->countTapInfo:I

    return p1
.end method

.method static synthetic access$108(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->countTapInfo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->countTapInfo:I

    return v0
.end method

.method static synthetic access$200(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    return-object p0
.end method

.method static synthetic access$402(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;)Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    return-object p1
.end method

.method static synthetic access$500(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->initAdapter1(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchIcon:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$800(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->returnToUpDir()V

    return-void
.end method

.method private getAdapter1(I)Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 3
    iget-object p1, v1, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->str:Ljava/lang/String;

    invoke-static {p1}, Lcom/neverland/d/b/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 6
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 7
    iget-object v3, v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tSimpleText:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget v3, v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neverland/d/b/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    new-instance v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    invoke-direct {v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;-><init>()V

    .line 11
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tSearchRes:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    iput-object v4, v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    .line 12
    iput-object v1, v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_d

    .line 15
    new-instance p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    invoke-direct {p1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;-><init>()V

    .line 16
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tSearchRes:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    iput-object v1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    const/4 v1, 0x0

    .line 17
    iput-object v1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 19
    :cond_3
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 20
    iget-object v3, v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    if-ne v3, v4, :cond_6

    .line 21
    :goto_2
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    .line 22
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 23
    iget-object v3, v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-nez v3, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    iget v3, v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    if-eq v3, p1, :cond_5

    goto :goto_3

    .line 25
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 26
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    if-nez p1, :cond_9

    .line 27
    :goto_4
    sget-object p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_d

    .line 28
    sget-object p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 29
    iget-object v1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-nez v1, :cond_8

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 31
    :goto_5
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 32
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 33
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-nez v4, :cond_a

    goto :goto_6

    .line 34
    :cond_a
    iget v4, v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    if-eq v4, p1, :cond_b

    goto :goto_6

    .line 35
    :cond_b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 36
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_d

    .line 37
    invoke-direct {p0, v2}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->getAdapter1(I)Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    move-result-object p1

    return-object p1

    .line 38
    :cond_d
    :goto_7
    new-instance p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-direct {p1, v1, v0, p0, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;Lcom/neverland/viscomp/dialogs/BaseGridView;)V

    return-object p1
.end method

.method private getParentPath(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_5

    .line 1
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerStr:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerStr:Ljava/lang/StringBuilder;

    const-string v2, "../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerStr:Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-eqz p1, :cond_4

    .line 8
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerStr:Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerStr:Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerStr:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initAdapter1(II)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->getAdapter1(I)Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    const v1, 0x7f110147

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget p1, v0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    if-ne p1, v3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchIcon:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchIcon:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {p1, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 11
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->getParentPath(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerIcon:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 13
    :cond_1
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput p1, v0, Lcom/neverland/prefs/TInternalOptions;->activeMenuItem:I

    .line 14
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {p1, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 17
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-nez v0, :cond_2

    .line 18
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchIcon:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    const v0, 0x7f11042d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 20
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerIcon:Landroid/widget/Button;

    const v0, 0x7f11019f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchIcon:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->getParentPath(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerIcon:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 24
    :goto_1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {p1, v0}, Lcom/neverland/viscomp/dialogs/BaseGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-eq p2, v3, :cond_6

    const/4 p1, 0x0

    .line 26
    :goto_2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 27
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    goto :goto_3

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    :goto_3
    if-ne v0, p2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    :goto_4
    if-eq p1, v3, :cond_6

    .line 30
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void

    .line 31
    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1, v5}, Landroid/widget/GridView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private returnToUpDir()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->hideKeyBoard(Landroid/widget/EditText;)V

    .line 5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    iget v3, v0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    if-eq v3, v2, :cond_0

    .line 6
    iput v2, v0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    .line 8
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->initAdapter1(II)V

    goto :goto_2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 10
    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    iget v3, v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    iget v5, v4, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    if-eq v3, v5, :cond_4

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-eqz v1, :cond_4

    iget v3, v4, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->level:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 11
    iput v3, v4, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->level:I

    .line 12
    :cond_3
    iget v1, v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    invoke-direct {p0, v1, v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->initAdapter1(II)V

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    iput v2, v4, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    .line 14
    invoke-direct {p0, v2, v5}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->initAdapter1(II)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 16
    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-eqz v0, :cond_7

    .line 17
    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-nez v2, :cond_6

    .line 18
    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    invoke-direct {p0, v1, v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->initAdapter1(II)V

    goto :goto_2

    .line 19
    :cond_6
    iget v1, v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    invoke-direct {p0, v1, v0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->initAdapter1(II)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    iget-object v0, v0, Lcom/neverland/mainApp;->A:Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->clear()V

    .line 3
    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/neverland/mainApp;->A:Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    .line 4
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->dismiss()V

    return-void
.end method

.method public isAcceptKeyUp0(I)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->isAcceptKeyUp0(I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->close()V

    return v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->adapter:Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 4
    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->close()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->returnToUpDir()V

    :goto_0
    return v1
.end method

.method protected onClickCloseAndCommand()V
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v0}, Lcom/neverland/utils/TCustomDevice;->saveScreen()V

    .line 2
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->onClickCloseAndCommand()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    sget-object p1, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    new-instance v3, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    invoke-direct {v3}, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;-><init>()V

    iput-object v3, p1, Lcom/neverland/mainApp;->A:Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    iget-object p1, p1, Lcom/neverland/mainApp;->A:Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p1, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA:Ljava/io/ByteArrayOutputStream;

    .line 3
    new-instance p1, Ljava/io/ObjectOutputStream;

    sget-object v3, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    iget-object v3, v3, Lcom/neverland/mainApp;->A:Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v3, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 5
    iget-object v4, v3, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 6
    sget-object v4, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    iget-object v4, v4, Lcom/neverland/mainApp;->A:Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    iget-object v5, v3, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v6, v5, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v7, v6, v0

    iget-object v7, v7, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->background:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v7, v4, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA_background_0:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 7
    aget-object v7, v6, v0

    iget-object v7, v7, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v7, v4, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA_backgroundTexture_0:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 8
    aget-object v7, v6, v1

    iget-object v7, v7, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->background:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v7, v4, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA_background_1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 9
    aget-object v7, v6, v1

    iget-object v7, v7, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v7, v4, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA_backgroundTexture_1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 10
    aget-object v4, v6, v0

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-object v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->background:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 11
    aget-object v4, v6, v0

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-object v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 12
    aget-object v4, v6, v1

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-object v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->background:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 13
    aget-object v4, v6, v1

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-object v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 14
    iget-object v4, v5, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iput-object v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    .line 15
    iput-object v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->fonts:Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    .line 16
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 17
    iget-object v4, v3, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v5, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v6, v5, v0

    iget-object v6, v6, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    sget-object v7, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    iget-object v7, v7, Lcom/neverland/mainApp;->A:Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA_background_0:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v8, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->background:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 18
    aget-object v6, v5, v0

    iget-object v6, v6, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA_backgroundTexture_0:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v8, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 19
    aget-object v6, v5, v1

    iget-object v6, v6, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA_background_1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v8, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->background:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 20
    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v6, v7, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA_backgroundTexture_1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v6, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 21
    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    invoke-virtual {v3}, Lcom/neverland/prefs/TPref;->getActiveProfileColor()Lcom/neverland/prefs/TProfileColors;

    move-result-object v5

    iget-object v5, v5, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-object v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    .line 22
    iget-object v4, v3, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    invoke-virtual {v3}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v5

    iput-object v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->fonts:Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    .line 23
    iget-object v4, v3, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 24
    iget-object v4, v3, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 25
    iget-object v4, v3, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 26
    iget-object v3, v3, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :goto_0
    sget-object p1, Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;->normal:Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->resultAfterClose:Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;

    .line 29
    iput-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    goto :goto_1

    :cond_0
    const-string v3, "start_point"

    .line 30
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->resultAfterClose:Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;

    const-string v3, "search_string"

    .line 31
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    .line 32
    :goto_1
    invoke-static {}, Lcom/neverland/viscomp/TTapCommand;->setCommandLang()V

    const p1, 0x7f0d00b3

    .line 33
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->initAll(I)Landroid/app/Dialog;

    move-result-object p1

    .line 34
    iput-boolean v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->dialogMayUseKeyboard1:Z

    .line 35
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v4, 0x7f0a0063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->mainLayout:Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {p0, v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    .line 37
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v4, 0x7f0a008a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->clickCloseAndCommand:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v4, 0x7f110433

    .line 40
    invoke-static {v3, v4}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 41
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v4, 0x7f0a007b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 42
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 43
    sget-object v2, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    iget-object v2, v2, Lcom/neverland/mainApp;->A:Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/settings/SettingBackupStorage;->outBackupBA:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    new-instance v0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$1;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$1;-><init>(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f110408

    .line 45
    invoke-static {v3, v0}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 46
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x76

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getApplicationFingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->getDeviceInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v1, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$2;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$2;-><init>(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    .line 51
    invoke-static {}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->makeMenu()V

    .line 52
    iget-object v0, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v1, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v0, v1, :cond_4

    .line 53
    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->updateSkinList1()V

    .line 54
    :cond_4
    invoke-virtual {v2}, Lcom/neverland/utils/TCustomDevice;->updatePathList()V

    .line 55
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/BaseGridView;

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/high16 v1, 0x40400000    # 3.0f

    .line 56
    sget v2, Lcom/neverland/mainApp;->g:F

    mul-float v2, v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 57
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    new-instance v1, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$3;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$3;-><init>(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 58
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    .line 59
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    new-instance v1, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$4;-><init>(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerIcon:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchIcon:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEdit:Landroid/widget/EditText;

    .line 63
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->clickReturn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->clickReturn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->headerText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchIcon:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchIcon:Landroid/widget/Button;

    new-instance v1, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings$5;-><init>(Lcom/neverland/viscomp/dialogs/settings/UnitSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->searchEditListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;->index:I

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v0, v0, Lcom/neverland/prefs/TInternalOptions;->activeMenuItem:I

    :goto_2
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->initAdapter1(II)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->resultAfterClose:Lcom/neverland/viscomp/dialogs/TBaseDialog$SETTINGS_RESULT;

    const-string v1, "start_point"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/UnitSettings;->search:Lcom/neverland/viscomp/dialogs/settings/SettingSearchData;

    const-string v1, "search_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->onStop()V

    return-void
.end method
