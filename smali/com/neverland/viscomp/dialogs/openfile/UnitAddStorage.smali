.class public Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;
.super Lcom/neverland/viscomp/dialogs/TBaseDialog;
.source "UnitAddStorage.java"


# static fields
.field private static final SAVE1_HOST:Ljava/lang/String; = "start_host"

.field private static final SAVE1_HTTP1:Ljava/lang/String; = "start_http1"

.field private static final SAVE1_NAME:Ljava/lang/String; = "start_name"

.field private static final SAVE1_OPDS_ID:Ljava/lang/String; = "start_opds_id"

.field private static final SAVE1_PASSWORD:Ljava/lang/String; = "start_password"

.field private static final SAVE1_TYPE:Ljava/lang/String; = "start_type"

.field private static final SAVE1_USER:Ljava/lang/String; = "start_user"


# instance fields
.field private buttonOk:Landroid/widget/Button;

.field private checkHTTP1:Lcom/neverland/viscomp/dialogs/SwitchPlus;

.field private editHost:Landroid/widget/EditText;

.field private editPassword:Landroid/widget/EditText;

.field private editTitle:Landroid/widget/EditText;

.field private editUser:Landroid/widget/EditText;

.field private groupView:Landroid/view/ViewGroup;

.field private host:Ljava/lang/String;

.field private opdsId:J

.field private pass:Ljava/lang/String;

.field private passLabel:Landroid/widget/TextView;

.field private passLabelCount:I

.field private passLabelTime:J

.field private storageType:I

.field private storageTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

.field private storageTypeSpinner:Landroid/widget/Spinner;

.field private title:Ljava/lang/String;

.field private useHTTP1:Z

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->title:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->pass:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->useHTTP1:Z

    const-wide/16 v2, -0x1

    .line 8
    iput-wide v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->opdsId:J

    .line 9
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeSpinner:Landroid/widget/Spinner;

    .line 10
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->checkHTTP1:Lcom/neverland/viscomp/dialogs/SwitchPlus;

    .line 11
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    .line 12
    iput v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabelCount:I

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabelTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Lcom/neverland/viscomp/dialogs/SwitchPlus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->checkHTTP1:Lcom/neverland/viscomp/dialogs/SwitchPlus;

    return-object p0
.end method

.method static synthetic access$102(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabelTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabelTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabelCount:I

    return p0
.end method

.method static synthetic access$1202(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabelCount:I

    return p1
.end method

.method static synthetic access$1208(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabelCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabelCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->getStorageReady()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->buttonOk:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editHost:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->pass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->pass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    return p0
.end method

.method static synthetic access$702(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    return p1
.end method

.method static synthetic access$800(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->useHTTP1:Z

    return p0
.end method

.method static synthetic access$802(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->useHTTP1:Z

    return p1
.end method

.method static synthetic access$900(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->opdsId:J

    return-wide v0
.end method

.method private getPass(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3a

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return-object v0

    :cond_1
    add-int/2addr v1, v2

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getStorageReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public static realAddStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)Z
    .locals 8

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, p1

    :goto_1
    const-wide/16 v1, -0x1

    cmp-long v4, p5, v1

    if-nez v4, :cond_2

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    add-int/lit8 v4, p3, 0x1

    move-object v0, v1

    move-object v1, v3

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/neverland/readbase/TBase;->addNetworkStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_2

    .line 3
    :cond_2
    sget-object v1, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    add-int/lit8 v6, p3, 0x1

    move-object v0, v1

    move-wide v1, p5

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/neverland/readbase/TBase;->updateNetworkStorage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method


# virtual methods
.method public getTagDialog()Ljava/lang/String;
    .locals 1

    const-string v0, "addstorage"

    return-object v0
.end method

.method public getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->addstorage:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const v0, 0x7f0d0020

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->initAll(I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->dialogMayUseKeyboard1:Z

    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 3
    iget-wide v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->opdsId:J

    const-wide/16 v5, -0x1

    const-string p1, ""

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    .line 4
    sget-object v7, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    const/16 v8, 0xc

    invoke-virtual {v7, v3, v4, v8}, Lcom/neverland/readbase/TBase;->getOneOPDS(JI)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    iput-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->title:Ljava/lang/String;

    .line 6
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, p1

    :goto_1
    iput-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    .line 7
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->getUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    .line 8
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->getPass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->pass:Ljava/lang/String;

    .line 9
    iget v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxyType1:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    .line 10
    iget v3, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->useHTTP1:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->useHTTP1:Z

    goto :goto_3

    .line 11
    :cond_3
    iput-wide v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->opdsId:J

    .line 12
    :cond_4
    :goto_3
    iget-wide v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->opdsId:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    .line 13
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->title:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->pass:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    .line 18
    iput-boolean v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->useHTTP1:Z

    goto :goto_4

    :cond_5
    const-string v3, "start_name"

    .line 19
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->title:Ljava/lang/String;

    const-string v3, "start_host"

    .line 20
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    const-string v3, "start_user"

    .line 21
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    const-string v3, "start_password"

    .line 22
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->pass:Ljava/lang/String;

    const-string v3, "start_type"

    .line 23
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    const-string v3, "start_http1"

    .line 24
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->useHTTP1:Z

    const-string v3, "start_opds_id"

    .line 25
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->opdsId:J

    .line 26
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a0200

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    .line 28
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a007b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 29
    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$1;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$1;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f110408

    .line 30
    invoke-static {p1, v3}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 31
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a00f9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editTitle:Landroid/widget/EditText;

    .line 32
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->title:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editTitle:Landroid/widget/EditText;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$2;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$2;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 34
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a00f8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editHost:Landroid/widget/EditText;

    .line 35
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editHost:Landroid/widget/EditText;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$3;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$3;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a008a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->buttonOk:Landroid/widget/Button;

    const/4 v3, 0x0

    .line 38
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->buttonOk:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->getStorageReady()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 40
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->buttonOk:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    .line 41
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->buttonOk:Landroid/widget/Button;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$4;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->buttonOk:Landroid/widget/Button;

    const v3, 0x7f110433

    invoke-static {p1, v3}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 43
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a00fe

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editUser:Landroid/widget/EditText;

    .line 44
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editUser:Landroid/widget/EditText;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$5;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a00fa

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editPassword:Landroid/widget/EditText;

    .line 47
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->pass:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->editPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$6;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$6;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a022e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/SwitchPlus;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->checkHTTP1:Lcom/neverland/viscomp/dialogs/SwitchPlus;

    .line 50
    iget-boolean v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->useHTTP1:Z

    invoke-virtual {p1, v3}, Lcom/neverland/viscomp/dialogs/SwitchPlus;->setChecked(Z)V

    .line 51
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->checkHTTP1:Lcom/neverland/viscomp/dialogs/SwitchPlus;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$7;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$7;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 52
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->checkHTTP1:Lcom/neverland/viscomp/dialogs/SwitchPlus;

    iget v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const v3, 0x7f110302

    .line 53
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    const v3, 0x7f1102fc

    .line 54
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    const/4 v1, 0x2

    const v3, 0x7f110301

    .line 55
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    .line 56
    new-instance v1, Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    .line 57
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    const v5, 0x7f0d00c4

    invoke-direct {v1, v3, v5, p1, v4}, Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    .line 58
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0215

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeSpinner:Landroid/widget/Spinner;

    .line 59
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->spinnerTouch1:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_8

    .line 60
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    :cond_8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    invoke-virtual {p1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 62
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeSpinner:Landroid/widget/Spinner;

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1, v2}, Lcom/neverland/prefs/TPref;->getRadiusDrawable(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/neverland/utils/APIWrap;->setPopupBackgroundDrawableForSpinner(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 64
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 65
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    if-ltz v1, :cond_9

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 67
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageTypeSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$8;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$8;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 68
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a014e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->passLabel:Landroid/widget/TextView;

    .line 69
    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$9;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage$9;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0063

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->groupView:Landroid/view/ViewGroup;

    .line 71
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->title:Ljava/lang/String;

    const-string v1, "start_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->host:Ljava/lang/String;

    const-string v1, "start_host"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->user:Ljava/lang/String;

    const-string v1, "start_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->pass:Ljava/lang/String;

    const-string v1, "start_password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->storageType:I

    const-string v1, "start_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-boolean v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->useHTTP1:Z

    const-string v1, "start_http1"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    iget-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->opdsId:J

    const-string v2, "start_opds_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setEditItem(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddStorage;->opdsId:J

    return-void
.end method
