.class public Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListSettingsAdapter.java"


# static fields
.field private static final TAG_DIR:I = -0x1


# instance fields
.field private final currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

.field private hide:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/neverland/viscomp/dialogs/BaseGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;Lcom/neverland/viscomp/dialogs/BaseGridView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;",
            ">;",
            "Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;",
            "Lcom/neverland/viscomp/dialogs/BaseGridView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->hide:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 4
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->mItems:Ljava/util/ArrayList;

    .line 6
    iput-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    .line 7
    iput-object p4, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->parent:Lcom/neverland/viscomp/dialogs/BaseGridView;

    return-void
.end method

.method private getSpinnerResorce()I
    .locals 1

    const v0, 0x7f0d00bd

    return v0
.end method

.method private initDir(Landroid/view/ViewGroup;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)V
    .locals 3

    const v0, 0x7f0a0148

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0107

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/MenuButton;

    .line 3
    iget-object v1, p2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    iget v1, v1, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    const v1, 0x7f110168

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 6
    iget p1, p2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    iget p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 2
    iget p3, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    int-to-long v0, p3

    .line 3
    iget-object p3, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    if-ne p3, v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez p3, :cond_2

    .line 6
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 7
    :cond_2
    sget-object p3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter$1;->$SwitchMap$com$neverland$viscomp$dialogs$settings$ListSettingsBaseType$OPTIONS_SHORT:[I

    iget-object v2, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p3, p3, v2

    const v2, 0x7f0d00b7

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 8
    :pswitch_0
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00bb

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 9
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    invoke-virtual {p3, v3, v2, p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadSearchResult(ZLandroid/view/ViewGroup;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 10
    :pswitch_1
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00c0

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-virtual {p3, v3, v2, p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadText(ZLandroid/view/ViewGroup;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 12
    :pswitch_2
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00b4

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 13
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadAction(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Landroid/widget/BaseAdapter;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 14
    :pswitch_3
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00b5

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 15
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadActionList(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Landroid/widget/BaseAdapter;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 16
    :pswitch_4
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00b9

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 17
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    iget v4, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-virtual {p3, v3, v2, v4, p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadString(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 18
    :pswitch_5
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00be

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 19
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    iget v4, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-virtual {p3, v3, v2, v4, p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadString(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 20
    :pswitch_6
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00bf

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 21
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    iget-object v7, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->isEnabled:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadBoolean(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;Landroid/widget/BaseAdapter;)Landroid/widget/Switch;

    goto/16 :goto_0

    .line 22
    :pswitch_7
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getSpinnerResorce()I

    move-result p3

    invoke-virtual {p2, p3, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 23
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    iget-object v7, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->isEnabled:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;

    invoke-virtual/range {v2 .. v7}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadSpinnerForPath(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 24
    :pswitch_8
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getSpinnerResorce()I

    move-result p3

    invoke-virtual {p2, p3, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 25
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadSpinnerForSkin(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Landroid/widget/BaseAdapter;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 26
    :pswitch_9
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getSpinnerResorce()I

    move-result p3

    invoke-virtual {p2, p3, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 27
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    iget-object v7, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->isEnabled:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadSpinnerForList(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;Landroid/widget/BaseAdapter;)Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 28
    :pswitch_a
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->getSpinnerResorce()I

    move-result p3

    invoke-virtual {p2, p3, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 29
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    iget v4, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-virtual {p3, v3, v2, v4, p1}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadSpinnerForFont(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;)Landroid/view/ViewGroup;

    goto :goto_0

    .line 30
    :pswitch_b
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    iget p3, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->valMin:I

    int-to-float v7, p3

    iget p3, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->valMax:I

    int-to-float v8, p3

    iget v9, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->fieldLength:I

    invoke-virtual/range {v2 .. v9}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadFloat(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;FFI)Landroid/view/ViewGroup;

    goto :goto_0

    .line 32
    :pswitch_c
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00b6

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 33
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    iget-object v7, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->isEnabled:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadColor(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;Landroid/widget/BaseAdapter;)Landroid/view/ViewGroup;

    goto :goto_0

    .line 34
    :pswitch_d
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    iget-object v6, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    iget v7, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->valMin:I

    iget v8, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->valMax:I

    iget v9, p1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->fieldLength:I

    invoke-virtual/range {v2 .. v9}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->loadInteger(ZLandroid/view/ViewGroup;ILcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;III)Landroid/view/ViewGroup;

    goto :goto_0

    .line 36
    :pswitch_e
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00b8

    invoke-virtual {p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 37
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, p3, p1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->initDir(Landroid/view/ViewGroup;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)V

    .line 38
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->currentDialog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;

    iget-boolean p3, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->hide:Z

    invoke-virtual {p1, p2, p3}, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog;->setSettingsColorForView(Landroid/view/View;Z)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setHide(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsAdapter;->hide:Z

    return-void
.end method
