.class Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;
.super Ljava/lang/Object;
.source "PopupStorageBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataViewHolder"
.end annotation


# instance fields
.field public btnDownload_1:Lcom/neverland/viscomp/dialogs/MenuButton;

.field public btnRead_1:Landroid/widget/Button;

.field public downloadsArr:[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

.field public image_1:Landroid/widget/ImageView;

.field public labelExt_1:Landroid/widget/TextView;

.field public layoutForButton_1:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public text0_1:Landroid/widget/TextView;

.field public text1_1:Landroid/widget/TextView;

.field public text2_1:Landroid/widget/TextView;

.field public text3_1:Landroid/widget/TextView;

.field public text4_1:Landroid/widget/TextView;

.field public text5_1:Landroid/widget/TextView;

.field public textFavor:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;->downloadsArr:[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    return-void
.end method

.method synthetic constructor <init>(Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/popups/PopupStorageBookInfo$MetadataViewHolder;-><init>()V

    return-void
.end method
