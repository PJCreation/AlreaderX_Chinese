.class public Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;
.super Ljava/lang/Object;
.source "ListSettingsBaseType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;,
        Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;
    }
.end annotation


# static fields
.field private static init_index:I

.field public static settingsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fieldLength:I

.field public index:I

.field public isEnabled:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;

.field public kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

.field public level:I

.field public optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

.field public parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

.field public title:I

.field public valMax:I

.field public valMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    .line 3
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    .line 5
    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 6
    iput v0, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    .line 7
    iput v0, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->level:I

    .line 8
    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->isEnabled:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;

    return-void
.end method

.method public static addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->isEnabled:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;

    return-object p0
.end method

.method public static addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object p0

    return-object p0
.end method

.method public static addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;
    .locals 2

    .line 2
    new-instance v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->isEnabled:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;

    .line 4
    iput p0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->title:I

    .line 5
    iput-object p1, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->kind:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    .line 6
    iput-object p2, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->optionsType:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    .line 7
    iput-object p3, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 8
    iput p4, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->valMin:I

    .line 9
    iput p5, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->valMax:I

    .line 10
    iput p6, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->fieldLength:I

    .line 11
    sget p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->init_index:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->init_index:I

    iput p0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    const/4 p0, 0x0

    .line 12
    iput p0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->level:I

    :goto_0
    if-eqz p3, :cond_0

    .line 13
    iget p0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->level:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->level:I

    .line 14
    iget-object p3, p3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->parent:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$makeMenu$0()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, v0, Lcom/neverland/prefs/TOptions;->realCalcPages1:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeMenu()V
    .locals 22

    .line 1
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    const v2, 0x7f1103dc

    if-eqz v1, :cond_1

    const v1, 0x7f110333

    goto :goto_0

    :cond_1
    const v1, 0x7f1103dc

    :goto_0
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 4
    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    const v5, 0x7f110341

    const v12, 0x7f110334

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110346

    invoke-static {v6, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 7
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tFonts:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110343

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tFloat:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->float_textsize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x5

    const/16 v18, 0x64

    const/16 v19, 0x5

    move-object/from16 v16, v1

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_bold_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_italic_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v9, 0x7f11033d

    invoke-static {v9, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110336

    sget-object v21, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tInt:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_charwidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x32

    const/16 v18, 0x96

    const/16 v19, 0x3

    move-object/from16 v14, v21

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f110345

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_font_spacewidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f11033e

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_letterspace:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, -0x14

    const/16 v18, 0x14

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110335

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_charweight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x0

    const/16 v18, 0xa

    const/16 v19, 0x2

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f11033f

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_linespace_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, -0x32

    const/16 v18, 0x32

    const/16 v19, 0x3

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110340

    invoke-static {v6, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 18
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_mono:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110344

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_monosize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0xa

    const/16 v19, 0xc8

    const/16 v20, 0x3

    move-object/from16 v15, v21

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_bold_mono:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_italic_mono:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110336

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_monocharwidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x32

    const/16 v19, 0x96

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110335

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_monocharweight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x2

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f11033f

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_linespace_mono:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, -0x32

    const/16 v19, 0x32

    const/16 v20, 0x3

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110347

    invoke-static {v6, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 27
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110344

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_titlesize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0xa

    const/16 v19, 0xc8

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_bold_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_italic_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110336

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_titlecharwidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x32

    const/16 v19, 0x96

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110335

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_titlecharweight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x2

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f11033f

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_linespace_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, -0x32

    const/16 v19, 0x32

    const/16 v20, 0x3

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11033b

    invoke-static {v6, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 36
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110344

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_fletsize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0xa

    const/16 v19, 0xc8

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_bold_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_italic_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110336

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_fletcharwidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x32

    const/16 v19, 0x96

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110335

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_fletcharweight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x2

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f11033c

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_fletshift:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, -0x63

    const/16 v19, 0x63

    const/16 v20, 0x3

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110338

    invoke-static {v6, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 45
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_custom1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110344

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_custom1size:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0xa

    const/16 v19, 0xc8

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_bold_custom1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_italic_custom1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v11, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110336

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_custom1charwidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x32

    const/16 v19, 0x96

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110335

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_custom1charweight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x2

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f11033f

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_linespace_custom1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, -0x32

    const/16 v19, 0x32

    const/16 v20, 0x3

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110339

    invoke-static {v6, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 54
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_custom2:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v7, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110344

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_custom2size:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0xa

    const/16 v19, 0xc8

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_bold_custom2:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v11, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_italic_custom2:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v11, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110336

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_custom2charwidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x32

    const/16 v19, 0x96

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110335

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_custom2charweight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x2

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f11033f

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_linespace_custom2:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, -0x32

    const/16 v19, 0x32

    const/16 v20, 0x3

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110342

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_paragraphspace:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/4 v9, 0x0

    const/16 v10, 0xc8

    const/4 v3, 0x3

    move-object/from16 v6, v21

    move-object v8, v0

    move-object v13, v11

    move v11, v3

    invoke-static/range {v5 .. v11}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11033a

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_empty_line:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/4 v11, 0x3

    invoke-static/range {v5 .. v11}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110337

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_cleartype:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v13, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11034a

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_system:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v13, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110349

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_noto:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v13, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    new-instance v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$1;

    invoke-direct {v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$1;-><init>()V

    invoke-static {v3, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110348

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_union:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_2
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tFonts:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v3, v6, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110343

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tFloat:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->float_textsize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/4 v9, 0x5

    const/16 v10, 0x64

    const/4 v11, 0x5

    move-object v8, v0

    invoke-static/range {v5 .. v11}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11033f

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tInt:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_linespace_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v9, -0x32

    const/16 v10, 0x32

    const/4 v11, 0x3

    invoke-static/range {v5 .. v11}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110337

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_font_cleartype:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_1
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v1, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v3, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v1, v3, :cond_6

    .line 72
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_3

    const v5, 0x7f1102aa

    goto :goto_2

    :cond_3
    const v5, 0x7f1102bb

    :goto_2
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    invoke-static {v5, v6, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 74
    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_5

    .line 75
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110353

    invoke-static {v7, v6, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 77
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1102b4

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tColor:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_status:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v9, v10, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1102b2

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_line:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v9, v10, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1102b5

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_statusback:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v9, v10, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    new-instance v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$2;

    invoke-direct {v10}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$2;-><init>()V

    invoke-static {v8, v10}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1102c2

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_color_usestatusback:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v10, v11, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    new-instance v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$3;

    invoke-direct {v8}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$3;-><init>()V

    invoke-static {v5, v8}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v5, v7, :cond_4

    .line 82
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102be

    invoke-static {v7, v6, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 84
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102bd

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tSkin1:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->skin_one:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v8, v11, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102bf

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->skin_two:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v8, v11, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102c0

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_color_texturemodeX:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v8, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102c1

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_color_texturemodeY:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v8, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103ae

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_skinscale:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v8, v11, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103ad

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_separator:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v8, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102b9

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_color_fullskin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v8, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_4
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b6

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102ac

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_back:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b3

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_link:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b1

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b7

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102ad

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_bold:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102ae

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_italic:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102af

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_bolditalic:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b0

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102bc

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_select:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b8

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_find:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102ab

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_clockcolor:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 103
    :cond_5
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b6

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tColor:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102ac

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_back:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b3

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_link:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b4

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_status:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b2

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_line:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102bc

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_select:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b8

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_find:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 110
    :cond_6
    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_color:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->usereink:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 111
    :cond_7
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102bb

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    invoke-static {v5, v6, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 113
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b3

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tColor:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_link:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b1

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102b7

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->color_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v7, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_8
    :goto_3
    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    const v5, 0x7f110355

    const v6, 0x7f1103b0

    if-nez v1, :cond_e

    .line 117
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103a3

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    invoke-static {v7, v8, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 119
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110392

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tInt:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_page_top:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x0

    const/16 v18, 0x1e

    const/16 v19, 0x2

    move-object v14, v9

    move-object/from16 v16, v1

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110391

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_page_left:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f11038d

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_page_right:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x2

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f11038e

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_page_bottom:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110353

    invoke-static {v7, v8, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 125
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f110352

    invoke-static {v10, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 127
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_usestatus:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v11, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110354

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_statusinfo:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v11, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-boolean v10, Lcom/neverland/mainApp;->f:Z

    if-eqz v10, :cond_9

    .line 130
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_statustap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v11, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_9
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1103c6

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_percent:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v15, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1103c5

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_pages:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v15, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1103c4

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_info:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v15, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1103c3

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_battery:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v15, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1103c7

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_time:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v15, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f110350

    invoke-static {v10, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 138
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_useheader:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v11, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110354

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_headerinfo:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v11, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-boolean v10, Lcom/neverland/mainApp;->f:Z

    if-eqz v10, :cond_a

    .line 141
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_headertap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v11, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f11039f

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_header_underline:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v15, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f11039e

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_header_center:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v15, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_a
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f110351

    invoke-static {v10, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 146
    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_useprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v11, v10, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f11039a

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_contentprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v15, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f110398

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_batteryprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v15, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-boolean v8, Lcom/neverland/mainApp;->f:Z

    if-eqz v8, :cond_b

    .line 150
    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f1103a8

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_percentprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v15, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f11039b

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_filledprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v15, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_b
    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f1103a9

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_progressinstatus:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v15, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-boolean v8, Lcom/neverland/mainApp;->f:Z

    if-eqz v8, :cond_c

    .line 154
    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f1103aa

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_progresswidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v11, v13, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_c
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1103ab

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_reversestatus:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v15, v10, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tFonts:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_status:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v8, v10, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f1103af

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_pages_statussize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x7

    const/16 v19, 0x19

    const/16 v20, 0x2

    move-object v8, v15

    move-object v15, v9

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_d

    .line 159
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_bold:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v8, v10, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110336

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_status_charwidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x32

    const/16 v19, 0xc8

    const/16 v20, 0x3

    move-object v15, v9

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f1103c0

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_minimal_margis:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v8, v11, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_d
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_e

    .line 163
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v10, 0x7f1103c1

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_longclick:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v8, v11, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f1103c2

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_status_top:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x0

    const/16 v19, 0x9

    const/16 v20, 0x1

    move-object v15, v9

    move-object/from16 v17, v1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f1103bf

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_status_bottom:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_e
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110397

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    invoke-static {v7, v8, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 168
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_f

    .line 169
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v9, 0x7f1103a3

    invoke-static {v9, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 171
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110392

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tInt:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_page_top:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x0

    const/16 v18, 0x1e

    const/16 v19, 0x2

    move-object v14, v10

    move-object/from16 v16, v7

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110391

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_page_left:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f11038d

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_page_right:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x2

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f11038e

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_page_bottom:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f110393

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_margins_percent:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v13, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v9, 0x7f110353

    invoke-static {v9, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 178
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f110352

    invoke-static {v11, v8, v4, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 180
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_usestatus:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v14, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v15, 0x7f110354

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_statusinfo:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v14, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_statustap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v14, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1103c6

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_percent:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v13, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1103c5

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_pages:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v13, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1103c4

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_info:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v13, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1103c3

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_battery:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v13, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1103c7

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_visible_time:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v13, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f110350

    invoke-static {v11, v8, v4, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 190
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_useheader:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v14, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f110354

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_headerinfo:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v14, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_headertap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v14, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f11039f

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_header_underline:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v13, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f11039e

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_header_center:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v13, v15, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f110351

    invoke-static {v11, v8, v4, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 197
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_useprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v14, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f11039a

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_contentprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v13, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f110398

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_batteryprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v13, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f1103a8

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_percentprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v13, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f11039b

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_filledprogress:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v13, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f1103a9

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_progressinstatus:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v13, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f1103aa

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_progresswidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v14, v12, v9}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v9, 0x7f1103ab

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_reversestatus:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v13, v11, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tFonts:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->fonts_status:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v9, v11, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f1103af

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_pages_statussize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x7

    const/16 v19, 0x19

    const/16 v20, 0x2

    move-object v15, v10

    move-object/from16 v17, v7

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_bold:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v11, 0x7f110334

    invoke-static {v11, v13, v9, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110336

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_status_charwidth:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x32

    const/16 v19, 0xc8

    const/16 v20, 0x3

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v9, 0x7f1103c0

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_minimal_margis:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v13, v11, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v9, 0x7f1103c1

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_status_longclick:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v13, v11, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f1103c2

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_status_top:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v18, 0x0

    const/16 v19, 0x9

    const/16 v20, 0x1

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f1103bf

    sget-object v16, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_status_bottom:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static/range {v14 .. v20}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_f
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103a5

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_notesonpage:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v10, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103a1

    sget-object v10, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_jusify:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v11, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-boolean v6, Lcom/neverland/mainApp;->f:Z

    if-eqz v6, :cond_10

    .line 216
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103b1

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_valign:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v11, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103a2

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_keeponeitem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v11, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_10
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103ac

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_sectionnewpage:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v11, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v11, 0x7f1103de

    invoke-static {v11, v9, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110399

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_pagecount:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v6, v6, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v6, Lcom/neverland/prefs/TOptions;->realCalcPages1:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_11

    .line 222
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103a7

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_pagesizereal:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103a6

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_pagesize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    new-instance v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$4;

    invoke-direct {v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$4;-><init>()V

    invoke-static {v7, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_11
    sget-boolean v6, Lcom/neverland/mainApp;->f:Z

    if-eqz v6, :cond_12

    sget-object v6, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v6, v6, Lcom/neverland/book/TBook;->engOptions:Lcom/neverland/engbook/forpublic/f;

    iget-boolean v6, v6, Lcom/neverland/engbook/forpublic/f;->j:Z

    if-nez v6, :cond_12

    .line 225
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11039d

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_handingpunctuation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_12
    sget-boolean v6, Lcom/neverland/mainApp;->f:Z

    if-eqz v6, :cond_13

    .line 227
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103a0

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_imagescale:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11039c

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_firstletter:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_13
    sget-boolean v6, Lcom/neverland/mainApp;->f:Z

    if-eqz v6, :cond_14

    .line 230
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110396

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_clockundertext:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_14
    sget-boolean v6, Lcom/neverland/mainApp;->f:Z

    if-eqz v6, :cond_15

    sget-object v6, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v6}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 232
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102d9

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_gammamode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102da

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_gammavalue:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_15
    sget-boolean v6, Lcom/neverland/mainApp;->f:Z

    if-eqz v6, :cond_16

    .line 235
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110395

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_usenightfilter:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110394

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_margin_union:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_16
    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->usereink:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 238
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102d7

    invoke-static {v6, v8, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 240
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102ed

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_refreshrate:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102e8

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_dithering:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 242
    :cond_17
    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 243
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102d7

    invoke-static {v6, v8, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 245
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102ea

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_refreshdisable:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$5;

    invoke-direct {v6}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$5;-><init>()V

    .line 247
    iget-object v7, v0, Lcom/neverland/utils/TCustomDevice;->eink:Lcom/neverland/utils/TCustomDevice$TEink;

    iget-boolean v7, v7, Lcom/neverland/utils/TCustomDevice$TEink;->isDeviceRegalSupport:Z

    if-eqz v7, :cond_18

    .line 248
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102ef

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_regal:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_18
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102ed

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_refreshrate:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v9, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    new-instance v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$6;

    invoke-direct {v13}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$6;-><init>()V

    invoke-static {v12, v13}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102ec

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_refreshobj:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102eb

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_refreshdlg:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102ee

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_refreshres:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102d9

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_gammamode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102da

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_gammavalue:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v6, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_mono:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v6}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v6

    if-nez v6, :cond_19

    sget-object v6, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_old:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    .line 256
    invoke-virtual {v0, v6}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v6

    if-eqz v6, :cond_1a

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1a

    .line 257
    :cond_19
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102e8

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_dithering:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_1a
    :goto_4
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11034c

    invoke-static {v6, v8, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 260
    sget-object v6, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v6}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v7

    if-eqz v7, :cond_1b

    sget-object v7, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_old:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v7}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 261
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102f0

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_rotateonyxsystem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1b
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102f5

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_rotate:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v9, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    new-instance v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$7;

    invoke-direct {v13}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$7;-><init>()V

    invoke-static {v12, v13}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102d8

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_fontscale:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v9, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102de

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_lang:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v9, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_1c

    iget-object v7, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v7, v3, :cond_1c

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v7, v12, :cond_1c

    .line 266
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f11030c

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_systemstatusmenu:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1c
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_1d

    iget-object v7, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v7, v3, :cond_1d

    .line 268
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f110357

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_interfase_theme:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v9, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1d
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_1e

    iget-object v7, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v7, v3, :cond_1e

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v3, v7, :cond_1e

    .line 270
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110358

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_interfase_themebutton:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v9, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    new-instance v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$8;

    invoke-direct {v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$8;-><init>()V

    invoke-static {v7, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1e
    invoke-virtual {v0, v6}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 272
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11034d

    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_interface_adapteink:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v12, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_1f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v3, v7, :cond_20

    .line 274
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f110356

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_interface_supportfold:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const/16 v7, 0x1c

    if-lt v3, v7, :cond_21

    .line 275
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f110359

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_interface_usenotch:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_21
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_22

    const/16 v7, 0x15

    if-lt v3, v7, :cond_22

    .line 277
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f11034f

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_interface_hastrouble:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v10, v13, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_22
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1102c3

    invoke-static {v7, v8, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 280
    iget-boolean v7, v0, Lcom/neverland/utils/TCustomDevice;->supportScroll1:Z

    if-eqz v7, :cond_24

    .line 281
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102c4

    invoke-static {v12, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 283
    sget-object v7, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v7}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 284
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102c8

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_animationtype:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v9, v13, v15}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_23
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102c5

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_animationalways:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v9, v13, v15}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102c7

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tInt:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_common_animationtime:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v16, 0x12c

    const/16 v17, 0x5dc

    const/16 v18, 0x4

    invoke-static/range {v12 .. v18}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_24
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_25

    .line 288
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102a0

    invoke-static {v12, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 290
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102cd

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_bookmark_marker:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v9, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102ce

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_bookmark_quickmarker:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v9, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102d1

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_cites_marker:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v9, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102d2

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_cites_quickmarker:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v9, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-boolean v12, Lcom/neverland/mainApp;->f:Z

    if-eqz v12, :cond_25

    .line 295
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102cf

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_bookmark_usetext:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v10, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102cc

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_bookmark_confirmdelete:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v10, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102d3

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_cites_redline:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v9, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102d4

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_cites_yellowline:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v9, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102d0

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_cites_greenline:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v9, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_25
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-eqz v7, :cond_26

    .line 301
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f1102f2

    invoke-static {v12, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 303
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102f3

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_opendialogs_taps:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v9, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102f4

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_usecover:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v10, v14, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_26
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v12, 0x7f110309

    invoke-static {v12, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 307
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102f9

    invoke-static {v13, v8, v4, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 309
    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f1102fa

    invoke-static {v14, v8, v4, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 311
    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v15, 0x7f1102fe

    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tString:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_name:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v2, v11, v13}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x15

    if-lt v3, v11, :cond_27

    .line 312
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110302

    invoke-static {v13, v8, v4, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 314
    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f1102fd

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_webdavaddr:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v14, v2, v15, v11}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110305

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_webdavname:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v14, v2, v15, v11}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v14, 0x7f110306

    sget-object v15, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tStringPass:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_webdavpass:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v14, v15, v5, v11}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110304

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_sync_webdavhttp1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v10, v14, v11}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f1102fc

    invoke-static {v11, v8, v4, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 320
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102fd

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_ftpaddr:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v2, v14, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110305

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_ftpname:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v2, v14, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110306

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_ftppass:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v15, v14, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f110301

    invoke-static {v11, v8, v4, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 325
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f1102fd

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_sftpaddr:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v2, v14, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v13, 0x7f110305

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_sftpname:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v2, v14, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v11, 0x7f110306

    sget-object v13, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->string_sync_sftppass:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v15, v13, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_27
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102c9

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_autosync_mode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v11, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102ca

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_autosync_silent:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v11, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102e6

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_manualsync_mode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v11, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x15

    if-lt v3, v2, :cond_28

    .line 331
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11030a

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_uploadbooksync_mode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v11, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110308

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_bookmarkssync_mode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v11, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_28

    .line 334
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110307

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_backupsync_mode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v11, v12}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_28
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102e7

    invoke-static {v5, v8, v4, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 337
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110323

    sget-object v11, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_top100:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v10, v11, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x15

    if-lt v3, v5, :cond_29

    .line 338
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110320

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_https:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_29
    invoke-virtual {v0, v6}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 340
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1102cb

    invoke-static {v3, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 342
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11040f

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_autobacklight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v6, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102f8

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_common_shadowbacklight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v6, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102db

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_hardwarebacklightmin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102dd

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_keepbacklight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-eqz v3, :cond_2a

    .line 347
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11029d

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_backlight_union:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v6, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_2a
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1102df

    invoke-static {v3, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 350
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102e2

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_library_paths:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11035c

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tPath:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->path_librarycustompath:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    new-instance v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$9;

    invoke-direct {v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$9;-><init>()V

    invoke-static {v5, v7}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-eqz v3, :cond_2b

    .line 353
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102e5

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_library_nomedia:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102e3

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_library_usealiase:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102e4

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_library_firstletter:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102e0

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_library_booklistpages:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102e1

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_library_cyrfirst:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_2b
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110420

    invoke-static {v3, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 360
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-eqz v3, :cond_2c

    .line 361
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1102f1

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_opds_down2favor:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_2c
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1100a6

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->path_opds_downloadpath:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-boolean v2, v0, Lcom/neverland/utils/TCustomDevice;->supportTTS:Z

    if-eqz v2, :cond_31

    .line 364
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11030e

    invoke-static {v3, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 366
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-eqz v3, :cond_2d

    .line 367
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11035d

    invoke-static {v5, v8, v4, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 369
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110366

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsSwipeX:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110364

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsDoubleSwipeX:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11038b

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsSwipeY:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110365

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsDoubleSwipeY:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11038c

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsZoom:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1103f8

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsVolOverride:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v10, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11031d

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttsselecttext:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v10, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_2d
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11031b

    invoke-static {v5, v8, v4, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 378
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11031c

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttstimer:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_2e

    .line 380
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11030f

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsalarm:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v9, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_2e
    iget-boolean v0, v0, Lcom/neverland/utils/TCustomDevice;->supportAccelerometer:Z

    if-eqz v0, :cond_2f

    .line 382
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11031e

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttssensor:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v6, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110312

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tAction:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->action_calibratesensor:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_2f
    sget-boolean v0, Lcom/neverland/mainApp;->f:Z

    if-eqz v0, :cond_30

    .line 385
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110316

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttspinnedtimer:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v6, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110315

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttspauseinsteadstop:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v10, v6, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_30
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1102dd

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttskeepbacklight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v10, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-boolean v0, Lcom/neverland/mainApp;->f:Z

    if-eqz v0, :cond_31

    .line 389
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110314

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttspause:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110319

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsselectedtext:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11031a

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttssimplemenu:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v10, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110317

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsreadnotes:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11031f

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttsvolctrl:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v10, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110313

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttsimage:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v10, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_31
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f110030

    invoke-static {v2, v8, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 397
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1102c8

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_autoscrolltype:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f1102d6

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_dictionaryword:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v9, v3, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f1102d5

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_dictionaryphrase:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v9, v3, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f1102dc

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_common_hyphen:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v9, v3, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v1, 0x7f11035d

    invoke-static {v1, v8, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 403
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f11037c

    invoke-static {v2, v8, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 405
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110380

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110381

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap2:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110382

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap3:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110383

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap4:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110384

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap5:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110385

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap6:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110386

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap7:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110387

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap8:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110388

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shorttap9:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    if-eqz v1, :cond_32

    .line 415
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f11036e

    invoke-static {v2, v8, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 417
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11036d

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_controls_longtapmode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$10;

    invoke-direct {v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$10;-><init>()V

    .line 419
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110380

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110381

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap2:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110382

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap3:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110383

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap4:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110384

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap5:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110385

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap6:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110386

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap7:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110387

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap8:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110388

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longtap9:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v9, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_32
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f11035e

    invoke-static {v2, v8, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 430
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110360

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_doubleswipe1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110361

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_doubleswipe2:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110362

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_doubleswipe3:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110363

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_doubleswipe4:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11037b

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_shortdoubletap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11036b

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_longdoubletap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11037d

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_thirdtap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f110368

    invoke-static {v2, v8, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 439
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11036a

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_keyvolup:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110369

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_keyvoldown:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110367

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_keyback:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_33

    .line 443
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1102f6

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tAction:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->action_calibratebutton:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_33
    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    if-eqz v1, :cond_34

    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-boolean v1, v1, Lcom/neverland/utils/TCustomDevice;->supportTTS:Z

    if-eqz v1, :cond_34

    .line 445
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f11030e

    invoke-static {v2, v8, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 447
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110366

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsSwipeX:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110364

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsDoubleSwipeX:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v9, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11038b

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsSwipeY:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110365

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsDoubleSwipeY:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11038c

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsZoom:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103f8

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_ttsVolOverride:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11031d

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_ttsselecttext:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_34
    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    if-eqz v1, :cond_35

    .line 455
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f110352

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    invoke-static {v2, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 457
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_statustap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f110355

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f110350

    invoke-static {v2, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 460
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_page_headertap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f110355

    invoke-static {v6, v5, v3, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_35
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f110370

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    invoke-static {v2, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 463
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110371

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel1:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110373

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel2:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110374

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel3:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110375

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel4:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110376

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel5:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110377

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel6:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110378

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel7:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110379

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel8:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11037a

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanel9:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f110372

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_quickpanelA:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f11038b

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_controls_verticalswipe:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v6, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/a;->a:Lcom/neverland/viscomp/dialogs/settings/a;

    invoke-static {v2, v5}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f11035f

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_controls_horizontalswipe:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v5, v7, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    if-eqz v1, :cond_36

    .line 476
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f11036f

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_control_pinchfontsize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v5, v7, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f110389

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_control_usedoubletap:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v6, v7, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_36
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-boolean v2, v1, Lcom/neverland/utils/TCustomDevice;->supportBackLight:Z

    if-eqz v2, :cond_38

    .line 479
    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v1, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-boolean v2, Lcom/neverland/utils/OnyxUtils;->backlightNatural:Z

    if-eqz v2, :cond_37

    .line 480
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11037e

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_control_sidebacklightLeft:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v6, v8, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11037f

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_control_sidebacklightRight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v6, v8, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 482
    :cond_37
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11037e

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_control_sidebacklightLeft:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11037f

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_control_sidebacklightRight:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_38
    :goto_5
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11036c

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_control_longtapforlink:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget-boolean v0, Lcom/neverland/mainApp;->f:Z

    if-eqz v0, :cond_4f

    .line 486
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f1103c8

    invoke-static {v2, v3, v4, v4}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 488
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f1103eb

    invoke-static {v7, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 490
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1103a1

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_page_jusify:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v9, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_text:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v9, 0x7f1103de

    invoke-static {v9, v6, v8, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v7, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v1, v7}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 493
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1103d1

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_text_highlightbold:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v9, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1103d4

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_text_highlightitalic:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v9, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1103d2

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_text_highlightbolditalic:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v9, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v8, 0x7f1103d3

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_text_highlightcode:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v9, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_39
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1103ec

    invoke-static {v5, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 499
    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_3a

    .line 500
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v8, 0x7f1103dc

    invoke-static {v8, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_3a
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v8, 0x7f1103e6

    invoke-static {v8, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v9, 0x7f1103e0

    invoke-static {v9, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v10, 0x7f1103e1

    invoke-static {v10, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v11, 0x7f1103d9

    invoke-static {v11, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v12, 0x7f1103df

    invoke-static {v12, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v13, 0x7f1103e3

    invoke-static {v13, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e5

    invoke-static {v14, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v15, 0x7f1103dd

    invoke-static {v15, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v15, 0x7f1103e7

    invoke-static {v15, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v15, 0x7f1103e2

    invoke-static {v15, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v15, 0x7f1103e4

    invoke-static {v15, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v15, 0x7f1103da

    invoke-static {v15, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v15, 0x7f1103de

    invoke-static {v15, v6, v7, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v5, v1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v7, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const v15, 0x7f1103db

    if-ne v5, v7, :cond_3b

    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_3b

    .line 515
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_title:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v6, v14, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_3b
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1103ea

    invoke-static {v5, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 518
    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_3c

    .line 519
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v14, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v4, 0x7f1103dc

    invoke-static {v4, v6, v14, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_3c
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e5

    invoke-static {v14, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103dd

    invoke-static {v14, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e7

    invoke-static {v14, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e2

    invoke-static {v14, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e4

    invoke-static {v14, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103da

    invoke-static {v14, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103de

    invoke-static {v14, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v4, v1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v4, v7, :cond_3d

    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    if-eqz v4, :cond_3d

    .line 534
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v6, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_3d
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f1103c9

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 537
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-eqz v3, :cond_3e

    .line 538
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v5, 0x7f1103dc

    invoke-static {v5, v6, v4, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_3e
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v6, v4, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v6, v4, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v6, v4, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103e5

    invoke-static {v6, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103dd

    invoke-static {v6, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103e7

    invoke-static {v6, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103e2

    invoke-static {v6, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103e4

    invoke-static {v6, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103da

    invoke-static {v6, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103de

    invoke-static {v6, v4, v5, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v1, v1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v1, v7, :cond_3f

    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    if-eqz v1, :cond_3f

    .line 553
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_annotation:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v4, v3, v2}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_3f
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f1103cf

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 556
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_40

    .line 557
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103dc

    invoke-static {v6, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_40
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103e5

    invoke-static {v6, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103dd

    invoke-static {v6, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103e7

    invoke-static {v6, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103e2

    invoke-static {v6, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103e4

    invoke-static {v6, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103da

    invoke-static {v6, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v6, 0x7f1103de

    invoke-static {v6, v4, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v5, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v5, v7, :cond_41

    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_41

    .line 572
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_epigraph:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_41
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1103cc

    const/4 v6, 0x0

    invoke-static {v5, v3, v6, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 575
    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_42

    .line 576
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103dc

    invoke-static {v7, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_42
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e5

    invoke-static {v7, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103dd

    invoke-static {v7, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e7

    invoke-static {v7, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e2

    invoke-static {v7, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e4

    invoke-static {v7, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103da

    invoke-static {v7, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103de

    invoke-static {v7, v4, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v5, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v6, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v5, v6, :cond_43

    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_43

    .line 591
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_cite:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_43
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f1103ca

    const/4 v7, 0x0

    invoke-static {v5, v3, v7, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 594
    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-eqz v5, :cond_44

    .line 595
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103dc

    invoke-static {v14, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_44
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e5

    invoke-static {v14, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103dd

    invoke-static {v14, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e7

    invoke-static {v14, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e2

    invoke-static {v14, v4, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103e4

    invoke-static {v14, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103da

    invoke-static {v14, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v14, 0x7f1103de

    invoke-static {v14, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v4, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v4, v6, :cond_45

    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    if-eqz v4, :cond_45

    .line 610
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_author:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_45
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f1103e9

    const/4 v7, 0x0

    invoke-static {v4, v3, v7, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 613
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-eqz v3, :cond_46

    .line 614
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103dc

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_46
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e5

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103dd

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e7

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e2

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e4

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103da

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103de

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v2, v6, :cond_47

    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_47

    .line 629
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_sequence:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v5, v3, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_47
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f1103cd

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 632
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_48

    .line 633
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103dc

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_48
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e5

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103dd

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e7

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e2

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e4

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103da

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103de

    invoke-static {v7, v5, v4, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v4, v6, :cond_49

    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    if-eqz v4, :cond_49

    .line 648
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_code:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_49
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f1103e8

    const/4 v6, 0x0

    invoke-static {v4, v3, v6, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 651
    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    if-eqz v4, :cond_4a

    .line 652
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103dc

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_4a
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_just_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v9, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_justlast_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v10, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_razr_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v13, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e5

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103dd

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_top_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e7

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e2

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103e4

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bottom_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103da

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v7, 0x7f1103de

    invoke-static {v7, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v4, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v6, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v4, v6, :cond_4b

    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    if-eqz v4, :cond_4b

    .line 667
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_poem:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_4b
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f1103d0

    const/4 v7, 0x0

    invoke-static {v4, v3, v7, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 670
    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    if-eqz v4, :cond_4c

    .line 671
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v9, 0x7f1103dc

    invoke-static {v9, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_4c
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_size_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v8, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_bold_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v11, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_italic_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v12, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_shadow_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v8, 0x7f1103e5

    invoke-static {v8, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v4, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v4, v6, :cond_4d

    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    if-eqz v4, :cond_4d

    .line 677
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_flet:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_4d
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f1103d8

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 680
    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    if-eqz v1, :cond_4e

    .line 681
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_font_notes:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v5, 0x7f1103dc

    invoke-static {v5, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_4e
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110344

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tInt:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v9, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->int_font_notessize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const/16 v11, 0x1e

    const/16 v12, 0x64

    const/4 v13, 0x3

    move-object v10, v0

    invoke-static/range {v7 .. v13}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;III)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_left_notes:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v5, 0x7f1103e2

    invoke-static {v5, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_right_notes:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v5, 0x7f1103e4

    invoke-static {v5, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_hyph_notes:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v5, 0x7f1103dd

    invoke-static {v5, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_indent_notes:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    const v5, 0x7f1103de

    invoke-static {v5, v3, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v1, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v1, v6, :cond_4f

    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    if-eqz v1, :cond_4f

    .line 688
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_style_color_notes:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v15, v3, v2, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_4f
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v1, 0x7f1102a1

    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tDir:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 691
    sget-boolean v1, Lcom/neverland/mainApp;->f:Z

    if-eqz v1, :cond_52

    .line 692
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f1102a4

    invoke-static {v4, v2, v3, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 694
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110330

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_css_enable:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$11;

    invoke-direct {v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$11;-><init>()V

    .line 696
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11032f

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_css_vmargin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110328

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_css_hmargin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110327

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_css_fontsize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f11032c

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_css_indent:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f110329

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_css_justify:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v6, v5, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f11032b

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_table:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110332

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_subtitle:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110331

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_fb2_allseries:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1102a3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 706
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f11032f

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_epub_css_vmargin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110328

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_epub_css_hmargin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110327

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_epub_css_fontsize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f11032c

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_epub_css_indent:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110329

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_epub_css_justify:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f11032b

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_epub_table:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 713
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110325

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_epub_disable_color:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_50
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v6, 0x7f1102a5

    const/4 v7, 0x0

    invoke-static {v6, v2, v7, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 716
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11032f

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_html_css_vmargin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110328

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_html_css_hmargin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110327

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_html_css_fontsize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11032c

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_html_css_indent:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f110329

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_html_css_justify:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v7, 0x7f11032b

    sget-object v8, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_html_table:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v7, v5, v8, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 723
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110325

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_html_disable_color:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_51
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1102a6

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 726
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f11032f

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_office_css_vmargin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110328

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_office_css_hmargin:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110327

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_office_css_fontsize:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f11032c

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_office_css_indent:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f110329

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_office_css_justify:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v4, 0x7f11032b

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_office_table:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v4, v5, v6, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11035a

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_inverse_styles:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v4, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110326

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_books_dialogprepare:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v6, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11032a

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->books_notesup:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v5, v6, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110324

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_books_codepage:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    new-instance v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$12;

    invoke-direct {v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$12;-><init>()V

    invoke-static {v0, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 736
    :cond_52
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f110324

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->list_books_codepage:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    new-instance v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$13;

    invoke-direct {v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$13;-><init>()V

    invoke-static {v0, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addEnabled(Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$isOptionsEnabled;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :goto_6
    sget-boolean v0, Lcom/neverland/mainApp;->f:Z

    if-eqz v0, :cond_53

    .line 738
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v1, 0x7f1103b4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 740
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103b9

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tActionList:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->profiles_save:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103b8

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->profiles_load:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103b6

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->profiles_clear:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103b5

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tBool:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->bool_profile_autosave:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_53
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v1, 0x7f1103f4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 746
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f11029e

    sget-object v4, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tAction:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->action_backup:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103bb

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->action_restore:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1102a7

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->action_cardchange:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103ba

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->action_resetdefault:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103be

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->action_rewriteallfiles:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v4, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v1, 0x7f11034b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 753
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v5, 0x7f11029c

    invoke-static {v5, v2, v3, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 755
    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    sget-object v6, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;->tSimpleText:Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;

    sget-object v7, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->text_about:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v5, v6, v7, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v3, 0x7f1103f7

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    .line 758
    sget-object v2, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    sget-object v5, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->text_third:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v3, v6, v5, v1}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    const v2, 0x7f110068

    sget-object v3, Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;->action_sendlog:Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;

    invoke-static {v2, v4, v3, v0}, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->addValue(ILcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType$OPTIONS_SHORT;Lcom/neverland/viscomp/dialogs/settings/TBaseSettingDialog$OPTIONS_TYPE;Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;)Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 760
    :goto_7
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 761
    sget-object v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->settingsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/neverland/viscomp/dialogs/settings/ListSettingsBaseType;->index:I

    goto :goto_7

    :cond_54
    return-void
.end method
