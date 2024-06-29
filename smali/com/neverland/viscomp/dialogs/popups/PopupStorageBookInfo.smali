.class public Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo;
.super Ljava/lang/Object;
.source "PopupStorageBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Landroid/view/View;Lcom/neverland/viscomp/dialogs/openfile/OPDSState;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;Lcom/neverland/viscomp/dialogs/popups/IPopupRelatedLink;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 1
    sget-object v3, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0027

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct {v4, v1, v6, v6, v7}, Lcom/neverland/viscomp/dialogs/MyPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 3
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    new-instance v6, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$1;

    invoke-direct {v6}, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$1;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a01ef

    .line 8
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 9
    new-instance v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;

    invoke-direct {v9, v5}, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;-><init>(Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$1;)V

    const v5, 0x7f0a025b

    .line 10
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->textFavor:Landroid/widget/TextView;

    const v5, 0x7f0a0138

    .line 11
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->image_1:Landroid/widget/ImageView;

    const v5, 0x7f0a0255

    .line 12
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text0_1:Landroid/widget/TextView;

    const v5, 0x7f0a0256

    .line 13
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text1_1:Landroid/widget/TextView;

    const v5, 0x7f0a0257

    .line 14
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text2_1:Landroid/widget/TextView;

    const v5, 0x7f0a0258

    .line 15
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text3_1:Landroid/widget/TextView;

    const v5, 0x7f0a0259

    .line 16
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text4_1:Landroid/widget/TextView;

    const v5, 0x7f0a0085

    .line 17
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnRead_1:Landroid/widget/Button;

    const v5, 0x7f0a015d

    .line 18
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->layoutForButton_1:Landroidx/appcompat/widget/LinearLayoutCompat;

    const v5, 0x7f0a025a

    .line 19
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text5_1:Landroid/widget/TextView;

    .line 20
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->image_1:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text0_1:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 22
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text1_1:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text0_1:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text0_1:Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text1_1:Landroid/widget/TextView;

    .line 25
    :cond_0
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->image_1:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->layoutForButton_1:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 27
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text5_1:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text4_1:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f0a0148

    .line 29
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->labelExt_1:Landroid/widget/TextView;

    const/4 v11, 0x4

    .line 30
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v12, "<big>"

    .line 33
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v12, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 35
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 36
    :cond_1
    sget-object v12, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v13, 0x7f11007f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v12, "</big><br/><br/>"

    .line 37
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v12, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text1_1:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text2_1:Landroid/widget/TextView;

    move-object/from16 v12, p4

    iget-object v12, v12, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text3_1:Landroid/widget/TextView;

    move-object/from16 v12, p3

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a007b

    .line 41
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/MenuButton;

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnDownload_1:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v12, 0x7f110157

    .line 42
    invoke-virtual {v5, v12}, Landroid/widget/Button;->setText(I)V

    .line 43
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnRead_1:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 44
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnDownload_1:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v12, 0x7f1100e0

    invoke-static {v5, v12}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 45
    invoke-virtual/range {p5 .. p5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadLinks()[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v5

    iput-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->downloadsArr:[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    if-eqz v5, :cond_5

    .line 46
    invoke-virtual/range {p5 .. p5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->isBookDownloadedBeforeStorage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->textFavor:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f1100d7

    .line 48
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 49
    iget-object v10, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->textFavor:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 50
    :cond_2
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->textFavor:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :goto_1
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->labelExt_1:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnDownload_1:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnDownload_1:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 54
    iget-object v5, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnDownload_1:Lcom/neverland/viscomp/dialogs/MenuButton;

    new-instance v10, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;

    invoke-direct {v10, v2, p0}, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$2;-><init>(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v5, 0x40000

    .line 55
    invoke-virtual {v2, v5, v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByMask(II)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 56
    iget-object v10, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnRead_1:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    iget-object v10, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnRead_1:Landroid/widget/Button;

    new-instance v11, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$3;

    move-object/from16 v12, p6

    invoke-direct {v11, p0, v12, v2}, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$3;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Lcom/neverland/viscomp/dialogs/popups/IPopupRelatedLink;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-nez v5, :cond_4

    const/16 v5, 0x40

    .line 58
    invoke-virtual {v2, v5, v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByMask(II)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v5

    .line 59
    :cond_4
    iget-object v2, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->text5_1:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, p2

    iget-object v11, v11, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->activeOPDS:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v11, v11, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 60
    :cond_5
    iget-object v2, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnDownload_1:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    :goto_2
    invoke-virtual {p0, v6}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    .line 62
    iget-object v2, v9, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->btnRead_1:Landroid/widget/Button;

    iget v5, v0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuAccentColor:I

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0a0200

    .line 63
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {p0, v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    const v2, 0x7f0a008a

    .line 65
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/MenuButton;

    .line 66
    new-instance v3, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$4;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$4;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f110409

    .line 67
    invoke-static {v2, v0}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 68
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxOld:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxMono:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxColor:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v0, v2, :cond_8

    .line 69
    :cond_6
    :try_start_0
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 70
    sget v2, Lcom/neverland/mainApp;->g:F

    mul-float v2, v2, v0

    float-to-int v14, v2

    .line 71
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v2, v2, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    if-eqz v2, :cond_7

    const/4 v7, 0x3

    :cond_7
    mul-int v12, v14, v7

    move-object v9, v0

    move v11, v14

    move v13, v14

    invoke-direct/range {v9 .. v14}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 72
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    const/16 v0, 0x11

    .line 74
    invoke-virtual {v4, v1, v0, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v4
.end method
