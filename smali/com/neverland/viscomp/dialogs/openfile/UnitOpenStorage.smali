.class public Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;
.super Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;
.source "UnitOpenStorage.java"

# interfaces
.implements Lcom/neverland/viscomp/dialogs/popups/IPopupContextMenu;
.implements Lcom/neverland/viscomp/dialogs/popups/IPopupOptionsMenu;
.implements Lcom/neverland/viscomp/dialogs/popups/IPopupRelatedLink;
.implements Lcom/neverland/downloadservice/a;
.implements Lcom/neverland/viscomp/dialogs/popups/IPopupFavorChange;


# static fields
.field private static final CONTEXT_MENU_BMK_DELETE:I = 0x4

.field private static final CONTEXT_MENU_BOOK_COPYLINK1:I = 0x5

.field private static final CONTEXT_MENU_BOOK_DOWNLOAD:I = 0x2

.field private static final CONTEXT_MENU_BOOK_PROPERTIES:I = 0x1

.field private static final CONTEXT_MENU_BOOK_READ:I = 0x0

.field private static final CONTEXT_MENU_DOWNLOAD_COPYLINK:I = 0x6

.field private static final CONTEXT_MENU_DOWNLOAD_DELETE:I = 0x4

.field private static final CONTEXT_MENU_DOWNLOAD_FAVORITES:I = 0x5

.field private static final CONTEXT_MENU_DOWNLOAD_PROPERTIES:I = 0x1

.field private static final CONTEXT_MENU_DOWNLOAD_READ:I = 0x0

.field private static final CONTEXT_MENU_DOWNLOAD_RELOAD:I = 0x2

.field private static final CONTEXT_MENU_DOWNLOAD_UNSUPPORTED:I = 0x3

.field private static final CONTEXT_MENU_START_DELETE:I = 0x1

.field private static final CONTEXT_MENU_START_EDIT:I = 0x0

.field private static final OPTIONS1_MENU_REMOVE_DELETED:I = 0x0

.field private static final OPTIONS1_MENU_VIEW_BOOKSHELF:I = 0x4

.field private static final OPTIONS1_MENU_VIEW_METADATA:I = 0x2

.field private static final OPTIONS1_MENU_VIEW_TILE:I = 0x3

.field private static final OPTIONS2_MENU_SORT_DATE:I = 0x2

.field private static final OPTIONS2_MENU_SORT_EXT:I = 0x3

.field private static final OPTIONS2_MENU_SORT_NAME:I = 0x0

.field private static final OPTIONS2_MENU_SORT_REVERSE:I = 0x4

.field private static final OPTIONS2_MENU_SORT_SIZE:I = 0x1

.field private static final OPTIONS2_MENU_VIEW_BOOKSHELF:I = 0x7

.field private static final OPTIONS2_MENU_VIEW_METADATA:I = 0x5

.field private static final OPTIONS2_MENU_VIEW_TILE:I = 0x6

.field private static final uiHandler:Landroid/os/Handler;


# instance fields
.field protected actionBackPrevLevel:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

.field protected actionDeleteDirFromStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

.field protected actionDeleteFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

.field protected actionDeleteFileFromStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

.field protected actionDeleteStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

.field protected actionReloadFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

.field protected actionRemoveDeleted:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

.field protected actionShareFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

.field private countTapInfo:I

.field private lastUpdateTime:J

.field private timeTapInfo:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->timeTapInfo:J

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->countTapInfo:I

    .line 4
    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$2;

    invoke-direct {v2, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$2;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    iput-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionRemoveDeleted:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    .line 5
    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$3;

    invoke-direct {v2, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$3;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    iput-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionBackPrevLevel:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    .line 6
    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$4;

    invoke-direct {v2, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$4;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    iput-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionDeleteStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    .line 7
    iput-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->lastUpdateTime:J

    .line 8
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$5;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$5;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionReloadFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    .line 9
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$6;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$6;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionDeleteFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    .line 10
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$7;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$7;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionDeleteFileFromStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    .line 11
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$8;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$8;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionDeleteDirFromStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    .line 12
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$9;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$9;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionShareFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->timeTapInfo:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->timeTapInfo:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->countTapInfo:I

    return p0
.end method

.method static synthetic access$102(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->countTapInfo:I

    return p1
.end method

.method static synthetic access$108(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->countTapInfo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->countTapInfo:I

    return v0
.end method

.method private synthetic lambda$downloadedOk1$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->updateFavorMap()V

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->reload()V

    return-void
.end method

.method private synthetic lambda$updateStatus$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->lambda$downloadedOk1$1()V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->lambda$updateStatus$0(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/neverland/downloadservice/DownloadService;->d(Lcom/neverland/downloadservice/a;)V

    .line 2
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    return-void
.end method

.method protected closeFileBaseDialog()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->close()V

    return-void
.end method

.method protected copyLinkToClip(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadLinks()[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->activeOPDS:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 5
    sget-object p2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p2, p1}, Lcom/neverland/utils/TCustomDevice;->copyTextToClipboard(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public doFavorChangeAction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->updateFavorMap()V

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->refresh()V

    return-void
.end method

.method public downloadedOk1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lcom/neverland/viscomp/dialogs/openfile/p;

    invoke-direct {p1, p0}, Lcom/neverland/viscomp/dialogs/openfile/p;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    .line 3
    sget-object v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->uiHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected enableAllControls()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnNext:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerText:Lcom/neverland/viscomp/MyEllipsizingTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerText:Lcom/neverland/viscomp/MyEllipsizingTextView;

    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    .line 5
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerIcon:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerIcon:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 8
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOptions:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOk:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v3, 0x7f110153

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 10
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v1

    const v3, 0x7f110147

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x2

    if-ne v1, v6, :cond_1

    .line 11
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOptions:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerText:Lcom/neverland/viscomp/MyEllipsizingTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v6, v6, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v6, v6, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x22

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/MyEllipsizingTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerText:Lcom/neverland/viscomp/MyEllipsizingTextView;

    const v1, 0x7f1100e1

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/MyEllipsizingTextView;->setText(I)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerIcon:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 16
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnSearch:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 17
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->label:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v1

    iget v1, v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntFile:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 19
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOptions:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 20
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnSearch:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 21
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerText:Lcom/neverland/viscomp/MyEllipsizingTextView;

    const v3, 0x7f110425

    invoke-virtual {v1, v3}, Lcom/neverland/viscomp/MyEllipsizingTextView;->setText(I)V

    .line 22
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerIcon:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v3, 0x7f110156

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 23
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 25
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    iget v1, v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntDir:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOptions:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 28
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnSearch:Lcom/neverland/viscomp/dialogs/MenuButton;

    .line 29
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchLinkSipmle:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    if-nez v1, :cond_4

    .line 30
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchLinkOpen:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 31
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 32
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerText:Lcom/neverland/viscomp/MyEllipsizingTextView;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v1, v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHeaderTitle(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/MyEllipsizingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerIcon:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 34
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->storageReadAllFiles:Z

    if-eqz v3, :cond_5

    const-string v3, " * "

    goto :goto_3

    :cond_5
    const-string v3, " / "

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnSearch:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOptions:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOk:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOk:Lcom/neverland/viscomp/dialogs/MenuButton;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->updateNextPrevButtonState2()V

    .line 40
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    if-ltz v0, :cond_9

    .line 41
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 42
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionBackPrevLevel:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    const/4 v12, 0x0

    .line 44
    invoke-static/range {v6 .. v12}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZLjava/lang/String;Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    goto :goto_5

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->bookForRead:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    if-eqz v0, :cond_9

    .line 46
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->close()V

    .line 48
    sget-object v1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v3, v1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-boolean v3, v3, Lcom/neverland/book/TBook$TBookInfo;->opened:Z

    if-eqz v3, :cond_8

    .line 49
    iget-object v3, v1, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object v3, v3, Lcom/neverland/book/TBook$TBookInfo;->filePath:Ljava/lang/String;

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_7

    .line 51
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 52
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-void

    .line 53
    :cond_8
    invoke-virtual {v1, v0}, Lcom/neverland/book/TBook;->openBook(Ljava/lang/String;)Z

    .line 54
    :cond_9
    :goto_5
    invoke-static {p0}, Lcom/neverland/downloadservice/DownloadService;->d(Lcom/neverland/downloadservice/a;)V

    return-void
.end method

.method protected endLoadingData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->endLoadingData()V

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->updateColumnWidth()V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOptions:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v1, 0x7f110187

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOptions:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v1, 0x7f110405

    invoke-static {v0, v1}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    return-void
.end method

.method public getTagDialog()Ljava/lang/String;
    .locals 1

    const-string v0, "storageopen"

    return-object v0
.end method

.method public getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->storageopen:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    return-object v0
.end method

.method public isContextMenuEnabledItem(Ljava/lang/Object;I)Z
    .locals 13

    .line 1
    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 3
    iget v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-nez v0, :cond_17

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-wide p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v5, -0x2

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-ne v0, v5, :cond_d

    const/4 v0, 0x6

    if-ne p2, v0, :cond_3

    return v4

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    invoke-virtual {v0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->verifyFileExists(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    .line 7
    iget-boolean v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v0, :cond_b

    .line 8
    iget-wide v9, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    const-wide/16 v11, 0x2

    and-long/2addr v9, v11

    cmp-long v0, v9, v1

    if-nez v0, :cond_5

    if-eq p2, v6, :cond_4

    if-eq p2, v8, :cond_4

    goto/16 :goto_0

    :cond_4
    return v4

    :cond_5
    if-eqz p2, :cond_9

    if-eq p2, v4, :cond_7

    if-eq p2, v8, :cond_6

    const/4 p1, 0x5

    if-eq p2, p1, :cond_6

    goto/16 :goto_0

    :cond_6
    return v4

    .line 9
    :cond_7
    iget p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-ne p1, v7, :cond_8

    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->openDialogsTap:I

    if-nez p1, :cond_8

    const/4 v3, 0x1

    :cond_8
    return v3

    .line 10
    :cond_9
    iget p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-ne p1, v7, :cond_a

    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget p1, p1, Lcom/neverland/prefs/TOptions;->openDialogsTap:I

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    :cond_a
    return v3

    :cond_b
    if-eq p2, v4, :cond_c

    if-eq p2, v7, :cond_c

    if-eq p2, v8, :cond_c

    goto :goto_0

    :cond_c
    return v4

    .line 11
    :cond_d
    iget v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-nez v0, :cond_f

    if-eq p2, v8, :cond_e

    goto :goto_0

    .line 12
    :cond_e
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean p1, p1, Lcom/neverland/prefs/TInternalOptions;->storageReadAllFiles:Z

    return p1

    :cond_f
    if-ne v0, v6, :cond_11

    if-eq p2, v8, :cond_10

    goto :goto_0

    :cond_10
    return v4

    :cond_11
    if-ne v0, v7, :cond_17

    if-eqz p2, :cond_16

    if-eq p2, v4, :cond_15

    if-eq p2, v7, :cond_13

    if-eq p2, v8, :cond_12

    goto :goto_0

    :cond_12
    return v4

    .line 13
    :cond_13
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    iget-wide v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    long-to-int p1, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadLinks()[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    :cond_14
    return v3

    :cond_15
    return v4

    .line 14
    :cond_16
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    iget-wide v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    long-to-int p1, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    const/high16 p2, 0x40000

    .line 15
    invoke-virtual {p1, p2, p2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByMask(II)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object p1

    if-eqz p1, :cond_17

    const/4 v3, 0x1

    :cond_17
    :goto_0
    return v3
.end method

.method public isOptionsHideDisabledItem(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isOptionsMenuCheckedItem(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 2
    :pswitch_0
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p1, p1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v0, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq p1, v0, :cond_0

    return v5

    .line 3
    :cond_0
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result p1

    return p1

    .line 4
    :pswitch_1
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result p1

    return p1

    .line 6
    :pswitch_2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result p1

    return p1

    .line 7
    :pswitch_3
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean p1, p1, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    return p1

    .line 8
    :pswitch_4
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget p1, p1, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 9
    :pswitch_5
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget p1, p1, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 10
    :pswitch_6
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget p1, p1, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    return v4

    .line 11
    :pswitch_7
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget p1, p1, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    return v4

    :cond_6
    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_7

    :goto_4
    return v4

    .line 12
    :cond_7
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p1, p1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v0, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq p1, v0, :cond_8

    return v5

    .line 13
    :cond_8
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result p1

    return p1

    .line 14
    :cond_9
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result p1

    return p1

    .line 15
    :cond_a
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public isOptionsMenuEnabledItem(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    return v1

    .line 2
    :cond_2
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p1, p1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v0, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 3
    :cond_4
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public needReload(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionReloadFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f1100dc

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZILcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    return-void
.end method

.method public onClickReadThisBook(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->disableAllControls()V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    check-cast v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    invoke-virtual {v0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->readThisBook(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onContextMenuItemSelected(Ljava/lang/Object;I)V
    .locals 7

    .line 1
    move-object v6, p1

    check-cast v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object p1, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->seriesNum:Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    .line 4
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p2, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->seriesNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/neverland/utils/TCustomDevice;->copyTextToClipboard(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v6, v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->openFavor(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Z)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f11009c

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionDeleteFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    invoke-static/range {v0 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZILcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    goto/16 :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->unsupportedFile(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    goto/16 :goto_0

    .line 8
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->needReload(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    goto/16 :goto_0

    .line 9
    :pswitch_5
    iget-object p1, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {p0, v6, p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->openProperties(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    iget-object p2, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->openFileReal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f110113

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionDeleteStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    invoke-static/range {v0 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZILcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->close()V

    .line 14
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object p2, Lcom/neverland/utils/finit$ECOMMANDS;->command_edit_storage:Lcom/neverland/utils/finit$ECOMMANDS;

    iget-wide v0, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;J)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto/16 :goto_0

    .line 15
    :cond_3
    iget p1, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x4

    if-nez p1, :cond_6

    if-eq p2, v1, :cond_5

    goto/16 :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f11009b

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionDeleteDirFromStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    invoke-static/range {v0 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZILcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x2

    if-ne p1, v2, :cond_d

    const/4 p1, 0x0

    if-eqz p2, :cond_c

    if-eq p2, v0, :cond_b

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    const/4 v0, 0x5

    if-eq p2, v0, :cond_7

    goto/16 :goto_0

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    iget-wide v0, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    invoke-virtual {p0, p2, p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->copyLinkToClip(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;I)V

    goto/16 :goto_0

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f11009c

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionDeleteFileFromStorage:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    invoke-static/range {v0 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZILcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    goto/16 :goto_0

    .line 19
    :cond_9
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    iget-wide v0, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    invoke-virtual {p2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->startDownloadStorage()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 20
    sget-object p2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11022c

    invoke-virtual {p2, v0, v1, p1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 21
    :cond_a
    sget-object p2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11022a

    invoke-virtual {p2, v0, v1, p1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 22
    :cond_b
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    .line 23
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    iget-wide v0, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    .line 24
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    iget-wide v1, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    invoke-virtual {v0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextSize(J)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0, p1, v6, p2, v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->openStorageBookProperties(Lcom/neverland/viscomp/dialogs/openfile/OPDSState;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_c
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object p2, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    iget-wide v0, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    .line 27
    iput p1, p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->numForReadingBook:I

    .line 28
    invoke-virtual {p0, p2}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->onClickReadThisBook(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;)V

    :cond_d
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialogCustomize(Landroid/app/Dialog;Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTagDialog()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreateDialogCustomize: "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->label:Landroid/widget/TextView;

    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    new-instance p1, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    sget-object v2, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->lastOpenFile:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;-><init>(Landroid/content/Context;Lcom/neverland/viscomp/dialogs/BaseGridView;Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;)V

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    .line 4
    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    new-instance p2, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-direct {p2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;-><init>()V

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerIcon:Lcom/neverland/viscomp/dialogs/MenuButton;

    const p2, 0x7f11017e

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 7
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->headerText:Lcom/neverland/viscomp/MyEllipsizingTextView;

    const p2, 0x7f11004d

    invoke-virtual {p1, p2}, Lcom/neverland/viscomp/MyEllipsizingTextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->init(Z)V

    return-void
.end method

.method public onOptionsMenuItemSelected(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v6

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v7

    iget-object v7, v7, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v7}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ltz v7, :cond_1

    .line 5
    iget-object v7, v3, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v12, v7, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    .line 6
    iget-boolean v13, v7, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/neverland/prefs/TPref;->setOpenDialogBookshelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/neverland/prefs/TPref;->setOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/neverland/prefs/TPref;->setOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V

    goto :goto_0

    .line 10
    :pswitch_3
    iput-boolean v2, v7, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    goto :goto_0

    .line 11
    :pswitch_4
    iput v8, v7, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    goto :goto_0

    .line 12
    :pswitch_5
    iput v10, v7, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    goto :goto_0

    .line 13
    :pswitch_6
    iput v9, v7, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    goto :goto_0

    .line 14
    :pswitch_7
    iput v11, v7, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    .line 15
    :goto_0
    iget-object v1, v3, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v1, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    if-ne v12, v2, :cond_0

    iget-boolean v1, v1, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    if-eq v13, v1, :cond_a

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v1, v11}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->init(Z)V

    goto/16 :goto_3

    :cond_1
    if-eqz v1, :cond_5

    if-eq v1, v10, :cond_4

    if-eq v1, v9, :cond_3

    if-eq v1, v8, :cond_2

    goto/16 :goto_3

    .line 17
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/neverland/prefs/TPref;->setOpenDialogBookshelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V

    goto/16 :goto_3

    .line 18
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/neverland/prefs/TPref;->setOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V

    goto/16 :goto_3

    .line 19
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/neverland/prefs/TPref;->setOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V

    goto :goto_3

    .line 20
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 21
    :goto_1
    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 22
    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v3, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    invoke-virtual {v7, v3}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->verifyFileExists(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    .line 24
    iget-wide v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    const-wide/16 v9, 0x1

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v12, v7, v9

    if-nez v12, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    iget-boolean v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v7, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    iget-wide v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_9

    .line 28
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11010f

    invoke-virtual {v1, v2, v3}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto :goto_3

    .line 29
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v12

    iget-object v13, v0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const v16, 0x7f110105

    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionRemoveDeleted:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    invoke-static/range {v12 .. v18}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZILcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    .line 30
    :cond_a
    :goto_3
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v2

    if-ne v4, v2, :cond_b

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v2

    if-ne v5, v2, :cond_b

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v1

    if-eq v6, v1, :cond_c

    .line 33
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->updateColumnWidth()V

    .line 34
    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v1, v11}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->init(Z)V

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->onPause()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    invoke-super {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->onStop()V

    return-void
.end method

.method public openFavor(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    iget-object v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v2, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->favoritesEdit(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;Lcom/neverland/viscomp/dialogs/popups/IPopupFavorChange;Ljava/lang/String;ZZ)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->secondPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    :goto_0
    return-void
.end method

.method protected showContextMenu(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    iget v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->contextGridMenuItem:I

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const v4, 0x7f0d00a0

    move-object v3, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->contextMenuForGrid(Lcom/neverland/viscomp/dialogs/TBaseDialog;Lcom/neverland/viscomp/dialogs/BaseGridView;Landroid/view/View;ILcom/neverland/viscomp/dialogs/popups/IPopupContextMenu;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    goto :goto_1

    .line 4
    :cond_0
    iget v0, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    .line 6
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    if-ltz v0, :cond_1

    const v0, 0x7f0d009f

    const v4, 0x7f0d009f

    goto :goto_0

    :cond_1
    const v0, 0x7f0d00a1

    const v4, 0x7f0d00a1

    :goto_0
    move-object v3, p1

    move-object v5, p0

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->contextMenuForGrid(Lcom/neverland/viscomp/dialogs/TBaseDialog;Lcom/neverland/viscomp/dialogs/BaseGridView;Landroid/view/View;ILcom/neverland/viscomp/dialogs/popups/IPopupContextMenu;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const v4, 0x7f0d009f

    move-object v3, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->contextMenuForGrid(Lcom/neverland/viscomp/dialogs/TBaseDialog;Lcom/neverland/viscomp/dialogs/BaseGridView;Landroid/view/View;ILcom/neverland/viscomp/dialogs/popups/IPopupContextMenu;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    :cond_4
    :goto_1
    return-void
.end method

.method protected showOptionsDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->btnOptions:Lcom/neverland/viscomp/dialogs/MenuButton;

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v2

    if-ltz v2, :cond_0

    const v2, 0x7f0d00a7

    goto :goto_0

    :cond_0
    const v2, 0x7f0d00a2

    .line 3
    :goto_0
    invoke-static {v0, v1, v2, p0}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->optionsMenu(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ILcom/neverland/viscomp/dialogs/popups/IPopupOptionsMenu;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    return-void
.end method

.method public unsupportedFile(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->actionShareFile:Lcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f1100dd

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection;->dialogYesNo(Lcom/neverland/viscomp/dialogs/TBaseDialog;Landroid/view/View;ZZILcom/neverland/viscomp/dialogs/popups/IPopupDialogAction;Ljava/lang/Object;)Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->firstPopup:Lcom/neverland/viscomp/dialogs/MyPopupWindow;

    return-void
.end method

.method protected updateColumnWidth()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->adapter:Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 4
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->setGridDevider()V

    return-void

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->updateColumnWidth()V

    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->lastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 3
    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/o;

    invoke-direct {v2, p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/o;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iput-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->lastUpdateTime:J

    :cond_0
    return-void
.end method
