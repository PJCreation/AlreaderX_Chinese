.class public Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;
.super Lcom/neverland/viscomp/dialogs/TBaseDialog;
.source "UnitAddOPDS.java"


# static fields
.field private static final SAVE_HOST:Ljava/lang/String; = "start_host"

.field private static final SAVE_OPDS_ID:Ljava/lang/String; = "start_opds_id"

.field private static final SAVE_PASS:Ljava/lang/String; = "start_pass"

.field private static final SAVE_PROXYADR:Ljava/lang/String; = "start_proxy_address"

.field private static final SAVE_PROXYTYPE:Ljava/lang/String; = "start_proxy_type"

.field private static final SAVE_USER:Ljava/lang/String; = "start_user"


# instance fields
.field private buttonOk:Landroid/widget/Button;

.field private editHost:Landroid/widget/EditText;

.field private editPass:Landroid/widget/EditText;

.field private editProxyPort:Landroid/widget/EditText;

.field private editUser:Landroid/widget/EditText;

.field private groupView:Landroid/view/ViewGroup;

.field private host:Ljava/lang/String;

.field private opdsId:J

.field private pass:Ljava/lang/String;

.field private passLabel:Landroid/widget/TextView;

.field private passLabelCount:I

.field private passLabelTime:J

.field private proxy:Ljava/lang/String;

.field private proxyType:I

.field private proxyTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

.field private proxyTypeSpinner:Landroid/widget/Spinner;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->user:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->pass:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxy:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->opdsId:J

    .line 8
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeSpinner:Landroid/widget/Spinner;

    .line 9
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    .line 10
    iput v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabelCount:I

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabelTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->buttonOk:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editPass:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editHost:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->user:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->user:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->pass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->pass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxy:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    return p0
.end method

.method static synthetic access$602(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    return p1
.end method

.method static synthetic access$700(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->opdsId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabelTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabelTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabelCount:I

    return p0
.end method

.method static synthetic access$902(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabelCount:I

    return p1
.end method

.method static synthetic access$908(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabelCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabelCount:I

    return v0
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

.method public static realAddOPDS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Z
    .locals 7

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neverland/d/b/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    move-object v3, p0

    const-wide/16 v0, -0x1

    cmp-long p0, p4, v0

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/neverland/readbase/TBase;->addNetworkOPDS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    move-wide v1, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/neverland/readbase/TBase;->updateNetworkOPDS(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getTagDialog()Ljava/lang/String;
    .locals 1

    const-string v0, "addopds"

    return-object v0
.end method

.method public getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->addopds:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const v0, 0x7f0d001f

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->initAll(I)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->dialogMayUseKeyboard1:Z

    const/4 v2, 0x0

    if-nez p1, :cond_4

    .line 3
    iget-wide v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->opdsId:J

    const-wide/16 v5, -0x1

    const-string p1, ""

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 4
    sget-object v7, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    const/4 v8, 0x2

    invoke-virtual {v7, v3, v4, v8}, Lcom/neverland/readbase/TBase;->getOneOPDS(JI)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    iput-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    .line 6
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->getUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->user:Ljava/lang/String;

    .line 7
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->getPass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->pass:Ljava/lang/String;

    .line 8
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxy:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, p1

    :goto_1
    iput-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxy:Ljava/lang/String;

    .line 9
    iget v3, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxyType1:I

    iput v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    goto :goto_2

    .line 10
    :cond_2
    iput-wide v5, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->opdsId:J

    .line 11
    :cond_3
    :goto_2
    iget-wide v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->opdsId:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_5

    .line 12
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->user:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->pass:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxy:Ljava/lang/String;

    .line 16
    iput v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    goto :goto_3

    :cond_4
    const-string v3, "start_host"

    .line 17
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    const-string v3, "start_user"

    .line 18
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->user:Ljava/lang/String;

    const-string v3, "start_pass"

    .line 19
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->pass:Ljava/lang/String;

    const-string v3, "start_proxy_address"

    .line 20
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxy:Ljava/lang/String;

    const-string v3, "start_proxy_type"

    .line 21
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    const-string v3, "start_opds_id"

    .line 22
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->opdsId:J

    .line 23
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a0200

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    .line 25
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a007b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 26
    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$1;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$1;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f110408

    .line 27
    invoke-static {p1, v3}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 28
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a00f8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editHost:Landroid/widget/EditText;

    .line 29
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editHost:Landroid/widget/EditText;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$2;

    invoke-direct {v3, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$2;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v3, 0x7f0a008a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->buttonOk:Landroid/widget/Button;

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->buttonOk:Landroid/widget/Button;

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 34
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->buttonOk:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForView(Landroid/view/View;)V

    .line 35
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->buttonOk:Landroid/widget/Button;

    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$3;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->buttonOk:Landroid/widget/Button;

    const v1, 0x7f110433

    invoke-static {p1, v1}, Lcom/neverland/utils/APIWrap;->setTooltipTextForButton(Landroid/view/View;I)V

    .line 37
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a00fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editUser:Landroid/widget/EditText;

    .line 38
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->user:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editUser:Landroid/widget/EditText;

    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$4;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$4;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a00fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editPass:Landroid/widget/EditText;

    .line 41
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->pass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editPass:Landroid/widget/EditText;

    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$5;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$5;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a00fb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editProxyPort:Landroid/widget/EditText;

    .line 44
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxy:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->editProxyPort:Landroid/widget/EditText;

    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$6;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$6;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    new-instance p1, Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    .line 47
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_7

    .line 49
    sget-object v3, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v4, 0x7f030006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 50
    :cond_7
    sget-object v3, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v4, 0x7f030005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    :goto_5
    iget v4, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    const v5, 0x7f0d00c4

    invoke-direct {p1, v1, v5, v3, v4}, Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    .line 51
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0215

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeSpinner:Landroid/widget/Spinner;

    .line 52
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->spinnerTouch1:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_8

    .line 53
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    :cond_8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    invoke-virtual {p1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 55
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeSpinner:Landroid/widget/Spinner;

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v1, v2}, Lcom/neverland/prefs/TPref;->getRadiusDrawable(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/neverland/utils/APIWrap;->setPopupBackgroundDrawableForSpinner(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 57
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 58
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 59
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    if-ltz v1, :cond_9

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeAdapter:Lcom/neverland/viscomp/dialogs/bookmarks/ListArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget v2, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 60
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyTypeSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$7;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$7;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 61
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a014e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->passLabel:Landroid/widget/TextView;

    .line 62
    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$8;

    invoke-direct {v1, p0}, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS$8;-><init>(Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->customView:Landroid/view/View;

    const v1, 0x7f0a0063

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->groupView:Landroid/view/ViewGroup;

    .line 64
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
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->host:Ljava/lang/String;

    const-string v1, "start_host"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->user:Ljava/lang/String;

    const-string v1, "start_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->pass:Ljava/lang/String;

    const-string v1, "start_pass"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxy:Ljava/lang/String;

    const-string v1, "start_proxy_address"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->proxyType:I

    const-string v1, "start_proxy_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->opdsId:J

    const-string v2, "start_opds_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setEditItem(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitAddOPDS;->opdsId:J

    return-void
.end method
