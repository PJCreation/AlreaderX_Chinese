.class public Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo;
.super Ljava/lang/Object;
.source "PopupBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$getMetadata;,
        Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;
    }
.end annotation


# static fields
.field private static final uiHandlerEnd:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo;->uiHandlerEnd:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo;->uiHandlerEnd:Landroid/os/Handler;

    return-object v0
.end method

.method public static show(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Landroid/view/View;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0025

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2
    new-instance v5, Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v5, v1, v7, v7, v8}, Lcom/neverland/viscomp/dialogs/MyPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 3
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    new-instance v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$1;

    invoke-direct {v9}, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$1;-><init>()V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0a01ef

    .line 8
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 9
    invoke-static {v9}, Lcom/neverland/viscomp/OverScrollDisabler;->doItForMe(Landroid/view/View;)V

    .line 10
    invoke-virtual {v0, v9}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    .line 11
    new-instance v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;

    invoke-direct {v9, v6}, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;-><init>(Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$1;)V

    const v6, 0x7f0a025b

    .line 12
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->textFavor:Landroid/widget/TextView;

    const v6, 0x7f0a0138

    .line 13
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->image:Landroid/widget/ImageView;

    const v6, 0x7f0a0255

    .line 14
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text0:Landroid/widget/TextView;

    const v6, 0x7f0a0256

    .line 15
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text1:Landroid/widget/TextView;

    const v6, 0x7f0a0257

    .line 16
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text2:Landroid/widget/TextView;

    const v6, 0x7f0a0258

    .line 17
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text3:Landroid/widget/TextView;

    const v6, 0x7f0a0259

    .line 18
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text4:Landroid/widget/TextView;

    const v6, 0x7f0a0085

    .line 19
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnDescription:Landroid/widget/Button;

    const v6, 0x7f0a025a

    .line 20
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text5:Landroid/widget/TextView;

    .line 21
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text4:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text4:Landroid/widget/TextView;

    const v11, 0x7f110244

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 23
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnDescription:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 24
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->text5:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const v6, 0x7f0a0148

    .line 25
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/neverland/viscomp/dialogs/MenuButton;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnFavor:Lcom/neverland/viscomp/dialogs/MenuButton;

    .line 26
    new-instance v11, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$2;

    invoke-direct {v11, v0, v3}, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$2;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnFavor:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v11, 0x7f110419

    invoke-static {v6, v11}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    const v6, 0x7f0a007b

    .line 28
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/neverland/viscomp/dialogs/MenuButton;

    iput-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnRead:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v11, 0x7f110174

    .line 29
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(I)V

    .line 30
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnRead:Lcom/neverland/viscomp/dialogs/MenuButton;

    iget-boolean v11, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 31
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnRead:Lcom/neverland/viscomp/dialogs/MenuButton;

    new-instance v11, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$3;

    invoke-direct {v11, v0, v2}, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$3;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnRead:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v11, 0x7f110421

    invoke-static {v6, v11}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    const v6, 0x7f0a0200

    .line 33
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {v0, v6}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    .line 35
    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;->btnRead:Lcom/neverland/viscomp/dialogs/MenuButton;

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    const v6, 0x7f0a008a

    .line 36
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/neverland/viscomp/dialogs/MenuButton;

    .line 37
    new-instance v6, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$4;

    invoke-direct {v6, v0}, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$4;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f110409

    .line 38
    invoke-static {v4, v0}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 39
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxOld:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxMono:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxColor:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v0, v4, :cond_2

    .line 40
    :cond_0
    :try_start_0
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v12, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 41
    sget v4, Lcom/neverland/mainApp;->g:F

    mul-float v4, v4, v0

    float-to-int v0, v4

    .line 42
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    sget-object v6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v6, v6, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v6, v6, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    :goto_0
    mul-int v14, v0, v6

    move-object v11, v4

    move v13, v0

    move v15, v0

    move/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 43
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const/16 v0, 0x11

    .line 45
    invoke-virtual {v5, v1, v0, v10, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 46
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 47
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$getMetadata;

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/neverland/viscomp/dialogs/popups/PopupBookInfo$getMetadata;-><init>(Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;ZLcom/neverland/viscomp/dialogs/popups/PopupBookInfo$MetadataViewHolder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v5
.end method
