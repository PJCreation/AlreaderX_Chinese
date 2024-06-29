.class public Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;
.super Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;
.source "AdapterStorage.java"

# interfaces
.implements Lcom/neverland/viscomp/dialogs/IDropReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;
    }
.end annotation


# static fields
.field private static final SHOW_SIMPLE:Z = true


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/neverland/viscomp/dialogs/BaseGridView;Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;-><init>(Landroid/content/Context;Lcom/neverland/viscomp/dialogs/BaseGridView;Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getFromNet()V

    return-void
.end method

.method private getFromNet()V
    .locals 14

    const-string v0, "getFromNet"

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->favorMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    invoke-virtual {v0}, Lcom/neverland/readbase/TBase;->getFavorMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->favorMap:Ljava/util/HashMap;

    .line 5
    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v3

    iget-boolean v3, v3, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    if-eqz v3, :cond_1

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    :cond_1
    const/16 v3, 0xa

    .line 7
    invoke-virtual {v0, v2, v1, v3}, Lcom/neverland/readbase/TBase;->getNetworkDownloadList(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    .line 9
    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->favorMap:Ljava/util/HashMap;

    .line 10
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    const/4 v1, 0x5

    .line 11
    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    .line 12
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v1

    const v2, 0x7f1100e1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, -0x1

    :goto_0
    const-wide/16 v4, -0x4

    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getCatalog(J)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 17
    new-instance v4, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v4}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 18
    iput v3, v4, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    .line 19
    iget-object v5, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    iput-object v5, v4, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 20
    iget-object v5, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    iput-object v5, v4, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 22
    iget-wide v5, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->id:J

    neg-long v7, v5

    iput-wide v7, v4, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 23
    iput-wide v5, v4, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    .line 24
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    goto :goto_0

    .line 25
    :cond_4
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/neverland/readbase/TBase;->getAllNetworkResource(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 27
    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v2}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 28
    iput v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getPass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptUp:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptDown:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxyType1:I

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-wide v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->id:J

    iput-wide v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    .line 36
    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :cond_5
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    const/4 v1, 0x4

    .line 38
    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    .line 39
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v1

    const v2, 0x7f110112

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 43
    :cond_6
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    .line 44
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v2

    .line 45
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->bookForRead:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_8

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Storage"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 47
    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->bookForRead:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    invoke-virtual {v1, v10}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownLoadFileNameStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 49
    iget-object v11, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    if-nez v1, :cond_7

    .line 51
    new-instance v1, Ljava/io/File;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v4, v1, v5

    if-lez v4, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 53
    :goto_2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iput-boolean v7, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    .line 54
    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->bookForRead:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadLinks()[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v2

    if-nez v1, :cond_11

    .line 55
    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->activeOPDS:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    aget-object v1, v2, v3

    iget-object v9, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    move-object v12, v1

    check-cast v12, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils;->downloadBookStorageFromApp2(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/downloadservice/a;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    goto/16 :goto_6

    .line 56
    :cond_8
    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v4

    iget-boolean v4, v4, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    const-string v8, "{searchTerms}"

    if-eqz v4, :cond_b

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x22

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v11, v10, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v11, v11, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    .line 59
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchLinkOpen:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    if-eqz v4, :cond_b

    iget-object v9, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchLinkSipmle:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    if-nez v9, :cond_b

    .line 60
    iget-object v9, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchPattern:Ljava/lang/String;

    if-nez v9, :cond_9

    .line 61
    iget-object v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils;->readStorage(Lcom/neverland/viscomp/dialogs/openfile/OPDSState;)Z

    .line 63
    :cond_9
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchPattern:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 64
    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 65
    iget-object v9, v10, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v9, v9, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    .line 66
    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    const-string v9, "{startPage?}"

    const-string v10, "0"

    .line 68
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v4

    iput-boolean v3, v4, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    .line 70
    :cond_a
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v4

    iget-boolean v4, v4, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    if-eqz v4, :cond_b

    .line 71
    iput-object v1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 72
    :cond_b
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    if-nez v4, :cond_c

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v4

    iget-boolean v4, v4, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    if-eqz v4, :cond_c

    .line 73
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchLinkSipmle:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    if-eqz v4, :cond_c

    .line 74
    iget-object v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 75
    sget-object v9, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v9, v9, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v9, v9, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    .line 76
    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 77
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iput-boolean v3, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    .line 79
    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    .line 80
    :cond_c
    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 81
    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 82
    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils;->readStorage(Lcom/neverland/viscomp/dialogs/openfile/OPDSState;)Z

    .line 83
    :cond_d
    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    if-nez v2, :cond_10

    const/4 v2, 0x0

    .line 84
    :goto_3
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 85
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v4, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    .line 86
    invoke-virtual {v4, v7, v7}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByMask(II)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v8

    const/16 v9, 0x40

    .line 87
    invoke-virtual {v4, v9, v9}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByMask(II)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v9

    if-eqz v8, :cond_e

    if-nez v9, :cond_e

    .line 88
    new-instance v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v9}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 89
    iput v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    .line 90
    iget-object v8, v8, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    iput-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 91
    iget-object v8, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    iput-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 92
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 93
    iget-wide v10, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->fileDate:J

    invoke-direct {p0, v10, v11}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextDate(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    .line 94
    iput-boolean v7, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    .line 95
    iput-object v1, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    int-to-long v10, v2

    .line 96
    iput-wide v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    .line 97
    iput-wide v5, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    .line 98
    iget-wide v10, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->fileDate:J

    iput-wide v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    .line 99
    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 100
    :cond_e
    new-instance v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v8}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    const/4 v10, 0x2

    .line 101
    iput v10, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-eqz v9, :cond_f

    .line 102
    iget-object v9, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    goto :goto_4

    :cond_f
    move-object v9, v1

    :goto_4
    iput-object v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 103
    iget-object v9, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    iput-object v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 104
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 105
    iget-object v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    .line 106
    iget-wide v9, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->fileSize:J

    invoke-virtual {p0, v9, v10}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextSize(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptDown:Ljava/lang/String;

    .line 107
    iget-object v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    iput-object v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptUp:Ljava/lang/String;

    .line 108
    iput-boolean v3, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    int-to-long v9, v2

    .line 109
    iput-wide v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    .line 110
    iget-wide v9, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->fileSize:J

    iput-wide v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    .line 111
    iget-wide v9, v4, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->fileDate:J

    iput-wide v9, v8, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    .line 112
    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 113
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->lastError:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;Z)V

    :cond_11
    :goto_6
    return-void
.end method

.method private getLeftInfoDownload(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftFormat:I

    if-eq p3, p2, :cond_4

    .line 2
    :cond_0
    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    invoke-virtual {p2, v2, v3}, Landroid/text/format/Time;->set(J)V

    const-string p2, "%s"

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    .line 4
    iget-object v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v3, :cond_3

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    .line 6
    iget-object v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    const-string v0, "%s %04d-%02d-%02d"

    .line 8
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    .line 9
    iget-object v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    .line 10
    :goto_0
    iput-boolean v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    .line 11
    iput p3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftFormat:I

    .line 12
    :cond_4
    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    return-object p1
.end method

.method private getLeftInfoStorage(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftFormat:I

    if-eq p3, p2, :cond_5

    .line 2
    :cond_0
    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    invoke-virtual {p2, v2, v3}, Landroid/text/format/Time;->set(J)V

    if-eqz p3, :cond_2

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "%s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p2, p2, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget p2, p2, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    const/4 v2, 0x3

    const-string v3, ", "

    if-ne p2, v2, :cond_3

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    invoke-virtual {p0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    invoke-direct {p0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    invoke-direct {p0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    invoke-virtual {p0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    invoke-direct {p0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    .line 9
    :goto_0
    iput-boolean v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    .line 10
    iput p3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftFormat:I

    .line 11
    :cond_5
    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    return-object p1
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

.method private getRightInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    iget-boolean p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightActual:Z

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightFormat:I

    if-eq p3, p2, :cond_8

    .line 2
    :cond_0
    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neverland/readbase/FileLastReadItem;

    if-nez p2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    iget-object v4, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neverland/readbase/FileLastReadItem;

    :cond_3
    const/4 v2, 0x0

    if-eqz p2, :cond_7

    .line 7
    iget-wide v2, p2, Lcom/neverland/readbase/FileLastReadItem;->date:J

    iput-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadTime:J

    .line 8
    iget p2, p2, Lcom/neverland/readbase/FileLastReadItem;->percent:F

    iput p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadPercent:F

    .line 9
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    invoke-virtual {p2, v2, v3}, Landroid/text/format/Time;->set(J)V

    const/4 p2, 0x0

    if-eqz p3, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    iget v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadPercent:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p2

    const-string p2, "%d%%"

    .line 12
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget v4, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadPercent:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%04d-%02d-%02d %5.02f%%"

    .line 15
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->strToday:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, " %02d:%02d"

    if-eqz v3, :cond_5

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v6, 0x7f1100a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->hour:I

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, p2

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget p2, p2, Landroid/text/format/Time;->minute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->strToday:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 20
    :cond_5
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->strYesterday:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v6, 0x7f1100a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->hour:I

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, p2

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget p2, p2, Landroid/text/format/Time;->minute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->strYesterday:Ljava/lang/String;

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 24
    :cond_6
    :goto_1
    iput-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_7
    iput-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    .line 26
    :goto_2
    iput-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    .line 27
    :goto_3
    iput-boolean v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightActual:Z

    .line 28
    iput p3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightFormat:I

    .line 29
    :cond_8
    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    return-object p1
.end method

.method private getTextDate(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget p2, p2, Landroid/text/format/Time;->year:I

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget p2, p2, Landroid/text/format/Time;->month:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->myTime:Landroid/text/format/Time;

    iget p2, p2, Landroid/text/format/Time;->monthDay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    const-string p2, "%04d-%02d-%02d"

    .line 4
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

.method private getViewStart(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 2
    iget v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-eqz v3, :cond_0

    const v3, 0x7f0d004a

    goto :goto_0

    :cond_0
    const v3, 0x7f0d004e

    :goto_0
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    .line 4
    iget-object v6, v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_1

    iget-boolean v5, v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->useBookshelf:Z

    sget-object v6, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v7, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v6

    if-eq v5, v6, :cond_2

    :cond_1
    move-object v5, v4

    goto :goto_1

    :cond_2
    move-object/from16 v5, p2

    :goto_1
    const/4 v6, 0x1

    if-nez v5, :cond_3

    .line 6
    iget-object v5, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 7
    new-instance v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    invoke-direct {v7}, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;-><init>()V

    const v8, 0x7f0a0152

    .line 8
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    const v8, 0x7f0a006c

    .line 9
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    const v8, 0x7f0a0137

    .line 10
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    iput-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const v8, 0x7f0a0253

    .line 11
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    const v8, 0x7f0a024d

    .line 12
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    .line 15
    :goto_2
    sget-object v8, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/NetCoverManager;->INSTANCE:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/NetCoverManager;

    invoke-virtual {v8, v7, v4}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/NetCoverManager;->setUniqueTagForView(Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Ljava/lang/String;)V

    .line 16
    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 17
    iput-boolean v3, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->useBookshelf:Z

    .line 18
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_4

    .line 19
    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getBookShelf(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 20
    :cond_4
    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getBookShelf(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :goto_3
    iget v8, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-ne v8, v12, :cond_5

    .line 22
    iget-object v13, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const/4 v14, 0x0

    const v15, 0x7f11018f

    const/16 v16, 0x0

    sget-object v8, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 23
    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v17

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 24
    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v18

    .line 25
    invoke-virtual/range {v13 .. v18}, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;->setCoverOrText(Landroid/graphics/Bitmap;IZZZ)V

    goto :goto_5

    :cond_5
    if-ne v8, v11, :cond_6

    .line 26
    iget-object v3, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const/16 v20, 0x0

    const v21, 0x7f110168

    const/16 v22, 0x0

    sget-object v8, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v13, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 27
    invoke-virtual {v13}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v23

    iget-object v13, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 28
    invoke-virtual {v13}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v24

    move-object/from16 v19, v3

    .line 29
    invoke-virtual/range {v19 .. v24}, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;->setCoverOrText(Landroid/graphics/Bitmap;IZZZ)V

    goto :goto_5

    .line 30
    :cond_6
    iget-object v13, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const/4 v14, 0x0

    .line 31
    iget-wide v11, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    cmp-long v8, v11, v9

    if-gez v8, :cond_7

    const v8, 0x7f110158

    const v15, 0x7f110158

    goto :goto_4

    :cond_7
    const v8, 0x7f110156

    const v15, 0x7f110156

    :goto_4
    const/16 v16, 0x0

    sget-object v8, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v11, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 32
    invoke-virtual {v11}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v17

    iget-object v11, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 33
    invoke-virtual {v11}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v18

    .line 34
    invoke-virtual/range {v13 .. v18}, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;->setCoverOrText(Landroid/graphics/Bitmap;IZZZ)V

    .line 35
    :goto_5
    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    if-eqz v8, :cond_8

    .line 36
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_8
    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    .line 38
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_9
    iget-object v4, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v8, v8, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuAccentColor:I

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    .line 41
    sget-object v11, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v11

    if-eqz v11, :cond_a

    sget-object v11, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->medium:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    goto :goto_6

    :cond_a
    sget-object v11, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->big:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    .line 42
    :goto_6
    invoke-virtual {v4, v8, v11}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 43
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    sget-object v11, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->small:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {v4, v8, v11}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 44
    iget-object v4, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v8, v8, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v4, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v4, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v8, v8, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v3, 0x4

    if-ne v4, v3, :cond_b

    .line 48
    iget-object v3, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    const v4, 0x7f1100d5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :cond_b
    const/4 v3, 0x5

    if-ne v4, v3, :cond_c

    .line 49
    iget-object v3, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    const v4, 0x7f1100e2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 50
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    iget-wide v11, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    long-to-int v4, v11

    if-eq v4, v6, :cond_f

    const/4 v6, 0x2

    if-eq v4, v6, :cond_e

    const/4 v6, 0x3

    if-eq v4, v6, :cond_d

    const-string v4, "err"

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 53
    :cond_d
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v6, 0x7f110301

    invoke-virtual {v4, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 54
    :cond_e
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v6, 0x7f1102fc

    invoke-virtual {v4, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 55
    :cond_f
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v6, 0x7f110302

    invoke-virtual {v4, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string v4, ", "

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v4, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_8
    iget-object v3, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 59
    iget v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-nez v4, :cond_10

    iget-wide v11, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    cmp-long v2, v11, v9

    if-ltz v2, :cond_10

    .line 60
    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v4, 0x7f110187

    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v2, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v3, v3, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v2, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$1;

    invoke-direct {v3, v0, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$1;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;ILcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$2;

    invoke-direct {v3, v0, v5, v1, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$2;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;Landroid/view/View;ILcom/neverland/viscomp/dialogs/IDropReceiver;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_9

    :cond_10
    const/16 v1, 0x8

    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    :goto_9
    return-object v5
.end method


# virtual methods
.method public clickItem(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    .line 2
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 3
    iget v2, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getCount()I

    move-result v0

    sub-int/2addr v0, v5

    if-ne p1, v0, :cond_9

    .line 5
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->close()V

    .line 6
    sget-object p1, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v0, Lcom/neverland/utils/finit$ECOMMANDS;->command_edit_storage:Lcom/neverland/utils/finit$ECOMMANDS;

    invoke-virtual {p1, v0, v3}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;I)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    return v4

    :cond_0
    const/4 v6, 0x5

    if-ne v2, v6, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->setLevelDownLoads()V

    .line 8
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iput-boolean v4, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    .line 9
    invoke-virtual {p0, v5}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return v5

    :cond_1
    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v2

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v3, p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->getSpecialFirstVisiblePosition(I)I

    move-result p1

    iput p1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    .line 11
    invoke-virtual {v0, v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->incLevel(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    iget-object v2, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    iput-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    iget-object v0, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    iput-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v5}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return v5

    :cond_2
    if-nez v2, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 16
    iget-wide v1, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    invoke-virtual {p0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getCatalog(J)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    move-result-object p1

    iput-object p1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->activeOPDS:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    const/4 p1, 0x0

    .line 17
    iput-object p1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchLinkOpen:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    iput-object p1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchLinkSipmle:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 18
    iput-object p1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->searchPattern:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->incLevel(Z)V

    .line 20
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    const-string v1, ""

    iput-object v1, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->activeOPDS:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    iput-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v2

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v3, p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->getSpecialFirstVisiblePosition(I)I

    move-result p1

    iput p1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    .line 23
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->incLevel(Z)V

    .line 25
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    iget-object v0, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    iput-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    .line 27
    :goto_1
    invoke-virtual {p0, v5}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return v5

    :cond_5
    const/4 p1, 0x2

    if-ne v2, p1, :cond_9

    .line 28
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result p1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_8

    .line 29
    iget-boolean p1, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz p1, :cond_7

    .line 30
    iget-wide v2, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    const-wide/16 v5, 0x2

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v2, v5

    if-nez p1, :cond_6

    .line 31
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {p1, v1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->unsupportedFile(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    goto :goto_2

    .line 32
    :cond_6
    iget-object p1, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->openFileVariant(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {p1, v1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->needReload(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    goto :goto_2

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->endLoadingData()V

    .line 35
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    iget-wide v5, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    iget-wide v5, v1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    invoke-virtual {p0, v5, v6}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getTextSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->openStorageBookProperties(Lcom/neverland/viscomp/dialogs/openfile/OPDSState;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return v4
.end method

.method public clickRelatedLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v1

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/neverland/viscomp/dialogs/BaseGridView;->getSpecialFirstVisiblePosition(I)I

    move-result v2

    iput v2, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->incLevel(Z)V

    .line 4
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v2

    iput-object p1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return-void
.end method

.method public dragDropIsMayBeDst(II)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public dragDropResult(II)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    iget-wide v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    const-wide/16 v0, -0x1

    const/4 v4, 0x1

    if-le p1, p2, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    iget-wide v5, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    if-ne p2, v4, :cond_0

    move-wide v6, v5

    move-wide v4, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v4

    .line 3
    invoke-virtual {p0, p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    iget-wide p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    move-wide v6, v5

    move-wide v4, p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    iget-wide v5, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    if-ge p2, p1, :cond_2

    add-int/2addr p2, v4

    .line 6
    invoke-virtual {p0, p2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    iget-wide p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    move-wide v4, v5

    move-wide v6, p1

    goto :goto_0

    :cond_2
    move-wide v4, v5

    move-wide v6, v0

    .line 7
    :goto_0
    sget-object v1, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    const/16 v8, 0xc

    invoke-virtual/range {v1 .. v8}, Lcom/neverland/readbase/TBase;->changeOPDSStorageSort(JJJI)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->reload()Z

    goto :goto_1

    .line 9
    :cond_3
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object p2, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v0, 0x7f110235

    invoke-virtual {p1, p2, v0}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method

.method protected endRealLoad()V
    .locals 2

    const-string v0, "ui end start"

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v1

    iget v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    if-eq v1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v1

    iget v0, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget v0, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastVisible1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->grid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v1, p0}, Lcom/neverland/viscomp/dialogs/BaseGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->grid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->workThread1:Ljava/lang/Thread;

    .line 11
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->endLoadingData()V

    const-string v0, "ui end end"

    .line 12
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected enterSearchMode1(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput-object p1, v0, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->getSpecialFirstVisiblePosition(I)I

    move-result v0

    iput v0, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {p1, v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->incLevel(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return-void
.end method

.method protected getCatalog(J)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    .line 1
    sget-object v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->WebDav:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->toInt(Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    const/16 v2, 0x29

    const v3, 0x7f1102f9

    const-string v4, " ("

    const/4 v5, 0x0

    cmp-long v6, p1, v0

    if-nez v6, :cond_0

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVAddr1:Ljava/lang/String;

    .line 3
    iget-object v6, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVName:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 6
    new-instance v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    invoke-direct {v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;-><init>()V

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v9, 0x7f110302

    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->FTP:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->toInt(Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    cmp-long v6, p1, v0

    if-nez v6, :cond_1

    .line 9
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPAddr:Ljava/lang/String;

    .line 10
    iget-object v6, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPName:Ljava/lang/String;

    .line 11
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPPass:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 13
    new-instance v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    invoke-direct {v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;-><init>()V

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v9, 0x7f1102fc

    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->SFTP:Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;->toInt(Lcom/neverland/utils/SyncAll/ConnectionBase$NETWORK_TYPE;)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    cmp-long v6, p1, v0

    if-nez v6, :cond_2

    .line 16
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPAddr:Ljava/lang/String;

    .line 17
    iget-object v6, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPName:Ljava/lang/String;

    .line 18
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPPass:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 20
    new-instance v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    invoke-direct {v5}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;-><init>()V

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v9, 0x7f110301

    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v5

    move-object v1, v0

    move-object v6, v1

    :cond_3
    :goto_0
    if-eqz v5, :cond_5

    .line 22
    iput-object v1, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    .line 23
    iput-wide p1, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->dateadd:J

    .line 24
    iput-object v0, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    .line 25
    iput-object v6, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxy:Ljava/lang/String;

    .line 26
    iput-wide p1, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->id:J

    neg-long p1, p1

    long-to-int p2, p1

    .line 27
    iput p2, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxyType1:I

    goto :goto_1

    .line 28
    :cond_4
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    const/16 v1, 0xc

    invoke-virtual {v0, p1, p2, v1}, Lcom/neverland/readbase/TBase;->getOneOPDS(JI)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 29
    iget-object p1, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxy:Ljava/lang/String;

    .line 30
    iget-object p1, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getPass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    :cond_5
    :goto_1
    return-object v5
.end method

.method protected getTextSize(J)Ljava/lang/String;
    .locals 5

    const/16 v0, 0xa

    const-wide/16 v1, 0x800

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    shr-long/2addr p1, v0

    const/16 v3, 0x4b

    goto :goto_0

    :cond_0
    const/16 v3, 0x20

    :goto_0
    cmp-long v4, p1, v1

    if-lez v4, :cond_1

    shr-long/2addr p1, v0

    const/16 v3, 0x4d

    :cond_1
    cmp-long v4, p1, v1

    if-lez v4, :cond_2

    shr-long/2addr p1, v0

    const/16 v3, 0x47

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "%d%c"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2
    invoke-direct/range {p0 .. p3}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getViewStart(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p3}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getViewDownload(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 6
    iget v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v5, 0x2

    const v4, 0x7f0d004f

    const/4 v6, 0x0

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    .line 8
    iget-object v8, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_2

    iget-boolean v7, v7, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->useBookshelf:Z

    sget-object v8, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v9, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v9}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v8

    if-eq v7, v8, :cond_3

    :cond_2
    move-object v7, v6

    goto :goto_0

    :cond_3
    move-object/from16 v7, p2

    :goto_0
    const/4 v8, 0x1

    if-nez v7, :cond_4

    .line 10
    iget-object v7, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v7, v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 11
    new-instance v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    invoke-direct {v9}, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;-><init>()V

    const v10, 0x7f0a0152

    .line 12
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    const v10, 0x7f0a006c

    .line 13
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    const v10, 0x7f0a0137

    .line 14
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    iput-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const v10, 0x7f0a0253

    .line 15
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    const v10, 0x7f0a0247

    .line 16
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    const v10, 0x7f0a0246

    .line 17
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    const v10, 0x7f0a024d

    .line 18
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    const v10, 0x7f0a024e

    .line 19
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    .line 22
    :goto_1
    sget-object v10, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/NetCoverManager;->INSTANCE:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/NetCoverManager;

    invoke-virtual {v10, v9, v6}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/NetCoverManager;->setUniqueTagForView(Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Ljava/lang/String;)V

    .line 23
    iget-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 24
    iput-boolean v4, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->useBookshelf:Z

    .line 25
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_5

    .line 26
    iget-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getBookShelf(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 27
    :cond_5
    iget-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getBookShelf(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :goto_2
    iget-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v10, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v10, v10, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget v8, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-nez v8, :cond_6

    .line 31
    iget-object v10, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const/4 v11, 0x0

    const v12, 0x7f110168

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;->setCoverOrText(Landroid/graphics/Bitmap;IZZZ)V

    goto :goto_3

    :cond_6
    if-ne v8, v5, :cond_7

    .line 32
    iget-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const/16 v17, 0x0

    const v18, 0x7f110174

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v21}, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;->setCoverOrText(Landroid/graphics/Bitmap;IZZZ)V

    .line 33
    :cond_7
    :goto_3
    iget-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    const/4 v10, 0x0

    if-eqz v8, :cond_a

    .line 34
    iget v8, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-ne v8, v5, :cond_9

    sget-object v8, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v11, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v11}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 35
    iget-object v8, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    sget-object v11, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v12, v11, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v13, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v12, v13, :cond_8

    goto :goto_4

    :cond_8
    const v3, -0x35000001    # -8388607.5f

    :goto_4
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    const/4 v8, 0x7

    invoke-virtual {v11, v8}, Lcom/neverland/utils/TCustomDevice;->getAvailableShadowRadius(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, -0x1000000

    invoke-virtual {v3, v8, v10, v10, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_5

    .line 37
    :cond_9
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v8, v8, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    invoke-virtual {v3, v10, v10, v10, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 39
    :goto_5
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptUp:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_a
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    .line 41
    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v8, v8, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    invoke-virtual {v3, v10, v10, v10, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 43
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptDown:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_b
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    .line 45
    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v8, v8, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    invoke-direct {v0, v2, v1, v4}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getLeftInfoStorage(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_c
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    .line 48
    iget v8, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-eq v8, v5, :cond_d

    .line 49
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 51
    :cond_d
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->verifyDownloaded(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    .line 55
    iget-boolean v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v3, :cond_e

    .line 56
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    const-string v6, "+"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_e
    :goto_6
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuAccentColor:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    .line 59
    sget-object v8, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v10

    if-eqz v10, :cond_f

    sget-object v10, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->medium:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    goto :goto_7

    :cond_f
    sget-object v10, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->big:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    .line 60
    :goto_7
    invoke-virtual {v3, v6, v10}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 61
    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    sget-object v10, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->medium:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {v3, v6, v10}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 62
    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v10}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 63
    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    sget-object v10, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->small:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {v3, v6, v10}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 64
    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v10}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 65
    iget-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    .line 66
    iget v2, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-eq v2, v5, :cond_11

    iget-object v5, v8, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v5, v5, Lcom/neverland/prefs/TInternalOptions;->storageReadAllFiles:Z

    if-eqz v5, :cond_10

    if-nez v2, :cond_10

    goto :goto_8

    :cond_10
    const/16 v1, 0x8

    .line 67
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 68
    :cond_11
    :goto_8
    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v5, 0x7f110187

    invoke-virtual {v2, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v2, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v3, v3, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v2, v9, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$3;

    invoke-direct {v3, v0, v1, v9}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$3;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;ILcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    :goto_9
    return-object v7
.end method

.method public getViewDownload(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d0050

    .line 2
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v3, 0x7f0d0052

    goto :goto_0

    :cond_0
    const v3, 0x7f0d004f

    :cond_1
    :goto_0
    const/4 v4, 0x0

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    .line 4
    iget-object v6, v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_2

    iget-boolean v5, v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->useBookshelf:Z

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v6}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    move-object v5, v4

    goto :goto_1

    :cond_3
    move-object/from16 v5, p2

    :goto_1
    if-nez v5, :cond_4

    .line 6
    iget-object v5, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 7
    new-instance v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    invoke-direct {v6}, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;-><init>()V

    const v7, 0x7f0a0152

    .line 8
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    const v7, 0x7f0a006c

    .line 9
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    const v7, 0x7f0a0137

    .line 10
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const v7, 0x7f0a0253

    .line 11
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    const v7, 0x7f0a0247

    .line 12
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    const v7, 0x7f0a0246

    .line 13
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    const v7, 0x7f0a024d

    .line 14
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    const v7, 0x7f0a024e

    .line 15
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    :goto_2
    move-object v13, v6

    .line 18
    sget-object v6, Lcom/neverland/viscomp/dialogs/openfile/CoverManager;->INSTANCE:Lcom/neverland/viscomp/dialogs/openfile/CoverManager;

    invoke-virtual {v6, v13, v4}, Lcom/neverland/viscomp/dialogs/openfile/CoverManager;->setUniqueTagForView(Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Ljava/lang/String;)V

    .line 19
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v3

    iput-boolean v3, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->useBookshelf:Z

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    const/4 v14, 0x0

    if-lt v3, v4, :cond_5

    .line 22
    iget-object v3, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getBookShelf(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 23
    :cond_5
    iget-object v3, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getBookShelf(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 25
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    and-int/lit8 v4, v4, -0x9

    .line 26
    iget-object v7, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastOpenFile:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v9, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    or-int/lit8 v4, v4, 0x8

    :cond_6
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 27
    invoke-virtual {v0, v3}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->verifyFileExists(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    .line 28
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    .line 29
    :cond_7
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    const/16 v7, 0x1000

    if-eqz v4, :cond_8

    .line 30
    invoke-direct {v0, v3, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getLeftInfoDownload(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 31
    :cond_8
    invoke-direct {v0, v3, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getLeftInfoDownload(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    .line 32
    :goto_4
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 33
    invoke-direct {v0, v3, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getRightInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 34
    :cond_9
    invoke-direct {v0, v3, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getRightInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    goto :goto_6

    .line 35
    :cond_a
    :goto_5
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    invoke-direct {v0, v3, v1, v14}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getLeftInfoDownload(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    invoke-direct {v0, v3, v1, v14}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->getRightInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_6
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-wide v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    const-wide/16 v9, 0x2

    and-long/2addr v7, v9

    const v4, 0x7f110153

    const-wide/16 v11, 0x0

    cmp-long v15, v7, v11

    if-eqz v15, :cond_c

    .line 39
    iget-object v7, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const/16 v17, 0x0

    iget-boolean v8, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v8, :cond_b

    const v4, 0x7f110174

    const v18, 0x7f110174

    goto :goto_7

    :cond_b
    const v18, 0x7f110153

    :goto_7
    const/16 v19, 0x1

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 40
    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v20

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 41
    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v21

    move-object/from16 v16, v7

    .line 42
    invoke-virtual/range {v16 .. v21}, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;->setCoverOrText(Landroid/graphics/Bitmap;IZZZ)V

    goto :goto_9

    .line 43
    :cond_c
    iget-object v7, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const/16 v23, 0x0

    iget-boolean v8, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v8, :cond_d

    const v4, 0x7f110146

    const v24, 0x7f110146

    goto :goto_8

    :cond_d
    const v24, 0x7f110153

    :goto_8
    const/16 v25, 0x1

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 44
    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v26

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 45
    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v27

    move-object/from16 v22, v7

    .line 46
    invoke-virtual/range {v22 .. v27}, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;->setCoverOrText(Landroid/graphics/Bitmap;IZZZ)V

    .line 47
    :goto_9
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 48
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptUp:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptDown:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-boolean v4, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v4, :cond_e

    iget-wide v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    and-long/2addr v7, v9

    cmp-long v4, v7, v11

    if-eqz v4, :cond_e

    .line 51
    iget-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v6, v13, v4}, Lcom/neverland/viscomp/dialogs/openfile/CoverManager;->setUniqueTagForView(Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Ljava/lang/String;)V

    .line 52
    iget-object v7, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    iget-wide v8, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    sget-object v11, Lcom/neverland/viscomp/dialogs/openfile/CoverManager$UPDATE_DESCRIPTION;->onlycover:Lcom/neverland/viscomp/dialogs/openfile/CoverManager$UPDATE_DESCRIPTION;

    const/4 v12, 0x0

    move-object v10, v13

    invoke-virtual/range {v6 .. v12}, Lcom/neverland/viscomp/dialogs/openfile/CoverManager;->loadBitmap(Ljava/lang/String;JLcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Lcom/neverland/viscomp/dialogs/openfile/CoverManager$UPDATE_DESCRIPTION;Z)V

    .line 53
    :cond_e
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuAccentColor:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v7, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->medium:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    goto :goto_a

    :cond_f
    sget-object v7, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->big:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    .line 56
    :goto_a
    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 57
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    sget-object v7, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->medium:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 58
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 59
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    sget-object v7, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->small:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 60
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 61
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    const/4 v7, 0x7

    const/4 v8, 0x2

    const v10, -0x35000001    # -8388607.5f

    const/4 v11, 0x0

    if-eqz v4, :cond_12

    .line 63
    iget v4, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-ne v4, v8, :cond_11

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 64
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    sget-object v12, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v15, v12, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v9, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v15, v9, :cond_10

    const/4 v9, -0x1

    goto :goto_b

    :cond_10
    const v9, -0x35000001    # -8388607.5f

    :goto_b
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Lcom/neverland/utils/TCustomDevice;->getAvailableShadowRadius(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9, v11, v11, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_c

    .line 66
    :cond_11
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v9, v9, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v11, v11, v14}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 68
    :cond_12
    :goto_c
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    if-eqz v4, :cond_15

    .line 69
    iget v4, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-ne v4, v8, :cond_14

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 70
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    sget-object v9, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v12, v9, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v14, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v12, v14, :cond_13

    const/4 v12, -0x1

    goto :goto_d

    :cond_13
    const v12, -0x35000001    # -8388607.5f

    :goto_d
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Lcom/neverland/utils/TCustomDevice;->getAvailableShadowRadius(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7, v11, v11, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_e

    .line 72
    :cond_14
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v11, v11, v14}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 74
    :goto_e
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptDown:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_15
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_18

    .line 76
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 77
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    sget-object v6, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v6, v6, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v7, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v6, v7, :cond_16

    const/4 v6, -0x1

    goto :goto_f

    :cond_16
    const v6, -0x35000001    # -8388607.5f

    :goto_f
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10

    .line 78
    :cond_17
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_18
    :goto_10
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_1b

    .line 80
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 81
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v4, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v6, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v4, v6, :cond_19

    const/4 v9, -0x1

    goto :goto_11

    :cond_19
    const v9, -0x35000001    # -8388607.5f

    :goto_11
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12

    .line 82
    :cond_1a
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v4, v4, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    :cond_1b
    :goto_12
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    if-eqz v2, :cond_1d

    .line 84
    iget v2, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const v4, 0x7f110187

    if-ne v2, v8, :cond_1c

    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->favorMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1c

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 85
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v7, 0x7f110182

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v6, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 86
    :cond_1c
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_13
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v3, v3, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$4;

    invoke-direct {v3, v0, v1, v13}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$4;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;ILcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d
    return-object v5
.end method

.method public init(Z)V
    .locals 2

    const-string v0, "init start"

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    invoke-virtual {v0}, Lcom/neverland/readbase/TBase;->getLastReadMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->startLoadingData()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntDir:I

    iput v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntFile:I

    .line 6
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->grid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;

    invoke-direct {v1, p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->workThread1:Ljava/lang/Thread;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string p1, "init end"

    .line 13
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method public levelRoot()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v1, v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iput-boolean v3, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    .line 4
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->setLevelOPDSList()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->setLevelOPDSList()V

    .line 7
    :goto_0
    invoke-virtual {p0, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return v3
.end method

.method public levelUp()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v1, v4, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iput-boolean v3, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->setLevelOPDSList()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v1

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v5, v5, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v5, v4}, Lcom/neverland/viscomp/dialogs/BaseGridView;->getSpecialFirstVisiblePosition(I)I

    move-result v4

    iput v4, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    .line 8
    invoke-virtual {v0, v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->decLevel(Z)V

    .line 9
    :goto_0
    invoke-virtual {p0, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return v3
.end method

.method public readThisBook(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v1

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/TBaseDialog;->mGrid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/neverland/viscomp/dialogs/BaseGridView;->getSpecialFirstVisiblePosition(I)I

    move-result v2

    iput v2, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->incLevel(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    .line 5
    iput-object p1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->bookForRead:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    .line 6
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->address:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object p1

    iput-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->titles:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return-void
.end method

.method public reload()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getHistory()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;

    move-result-object v0

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->grid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v2, v1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->getSpecialFirstVisiblePosition(I)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneHistory;->startPosition1:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->grid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v2, v1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->getSpecialFirstVisiblePosition(I)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastVisible1:I

    :goto_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->init(Z)V

    return v0
.end method

.method protected verifyDownloaded(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileActual:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->feed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->entries:Ljava/util/ArrayList;

    iget-wide v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileId:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->isBookDownloadedBeforeStorage()Z

    move-result v0

    iput-boolean v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileActual:Z

    :cond_0
    return-void
.end method

.method protected verifyFileExists(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileActual:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3
    new-instance v2, Ljava/io/File;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    .line 8
    :cond_1
    iput-boolean v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileActual:Z

    :cond_2
    return-void
.end method
