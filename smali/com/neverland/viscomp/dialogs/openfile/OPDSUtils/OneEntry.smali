.class public Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;
.super Ljava/lang/Object;
.source "OneEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final authors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public fileDate:J

.field public fileSize:J

.field public format:Ljava/lang/String;

.field public final genres:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public linkType:I

.field public final links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;",
            ">;"
        }
    .end annotation
.end field

.field public numForReadingBook:I

.field public parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

.field public price:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field private final tmp:Ljava/lang/StringBuilder;

.field public updated:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->updated:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->icon:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->content:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->summary:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->price:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->lang:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->format:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->year:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->fileSize:J

    .line 13
    iput-wide v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->fileDate:J

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->genres:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->linkType:I

    .line 18
    iput v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->numForReadingBook:I

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    .line 20
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    return-void
.end method

.method public static availablePacketDownload(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    .line 3
    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->isBookDownloadedBefore()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadLinks()[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    array-length v2, v2

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getDownloadPath()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {v0}, Lcom/neverland/prefs/TPref;->dirForDownloads()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Books"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reloadOPDS(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Lcom/neverland/readbase/TBase;->getOneOPDS(JI)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    sget-object v2, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const-class v3, Lcom/neverland/downloadservice/DownloadService;

    const-string v4, "android.intent.action.SYNC"

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    const-string v2, "liburl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    const-string v2, "libauth"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxy:Ljava/lang/String;

    const-string v2, "libproxy"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxyType1:I

    const-string v2, "libproxytype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    const-string v2, "libtitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-wide v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->id:J

    const-string p0, "libid"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p0, 0x2f

    .line 9
    invoke-virtual {p3, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 10
    invoke-virtual {p3, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p0, p0, 0x1

    .line 11
    invoke-virtual {p3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p3, "downloadurl"

    .line 12
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "downloaddir"

    .line 13
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "downloadname"

    .line 14
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "booksupport"

    .line 15
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "bookauthor"

    .line 16
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "booktitle"

    .line 17
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-static {v0}, Lcom/neverland/utils/APIWrap;->startService(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static reloadStorage(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    sget-object v3, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const-class v4, Lcom/neverland/downloadservice/DownloadService;

    const-string v5, "android.intent.action.SYNC"

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    const-string v3, "storageurl"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    const-string v3, "libauth"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxy:Ljava/lang/String;

    const-string v3, "libproxy"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxyType1:I

    const-string v3, "libproxytype"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    const-string v3, "libtitle"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-wide v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->id:J

    const-string v4, "libid"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    iget p0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->useHTTP1:I

    const-string v2, "libhttp1"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p0, 0x2f

    .line 9
    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    .line 10
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "downloadurl"

    .line 12
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "downloaddir"

    .line 13
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "downloadname"

    .line 14
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "booksupport"

    .line 15
    invoke-virtual {v1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-static {v1}, Lcom/neverland/utils/APIWrap;->startService(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static startPacketDownloadOPDS(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;

    .line 3
    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->isBookDownloadedBefore()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadLinks()[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    array-length v4, v4

    if-lez v4, :cond_0

    .line 6
    invoke-virtual {v3, v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->startDownloadOPDS(I)Z

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static startPacketDownloadStorage(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addLink(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBookDescriptDown()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->genres:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->genres:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    if-lez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->genres:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->summary:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->content:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookDescriptUp()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookLeftInfo()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->price:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->lang:Ljava/lang/String;

    const/16 v1, 0x20

    const/16 v2, 0x2c

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->lang:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 8
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->lang:Ljava/lang/String;

    invoke-static {v3}, Lcom/neverland/d/b/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->lang:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->year:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->year:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->format:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->tmp:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownLoadDirName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownLoadDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownLoadDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2026

    const/16 v2, 0x40

    const/16 v3, 0x5f

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/neverland/d/b/a;->Q(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, v2, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x0

    .line 10
    :goto_2
    iget-object v6, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 11
    iget-object v6, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/neverland/d/b/a;->Q(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    iget-object v6, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, v2, :cond_4

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 16
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 18
    sget-object p1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1102f9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 19
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 20
    sget-object p1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100cf

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_7
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDownLoadFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int p1, p1, 0xa0

    const/16 v0, 0x28

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x50

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-ne v1, p1, :cond_0

    const/16 v3, 0x2026

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-le v1, p1, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/neverland/d/b/a;->Q(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v3, 0x5f

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 13
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p1}, Lcom/neverland/utils/TCustomDevice;->getShtampTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDownLoadFileNameStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int p1, p1, 0xa0

    const/16 v1, 0x28

    .line 3
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x50

    .line 4
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    move v5, v0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_4

    if-ne v2, p1, :cond_1

    const/16 v4, 0x2026

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    if-le v2, p1, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/neverland/d/b/a;->Q(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v4, 0x5f

    .line 11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-eq v0, v4, :cond_5

    .line 12
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {p1}, Lcom/neverland/utils/TCustomDevice;->getShtampTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadLinks()[Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    sget-object v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x40

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 4
    iget v3, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_2
    new-array v1, v2, [Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 7
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 8
    iget v5, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 9
    aput-object v3, v1, v2

    move v2, v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public getExtByNumDownLoadList(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 3
    iget v3, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    if-ne v1, p1, :cond_0

    .line 4
    iget-object p1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->ext:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstAuthor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->authors:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkByMask(II)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 3
    iget v2, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    and-int/2addr v2, p1

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkByNumDownLoadList(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 3
    iget v3, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    if-ne v1, p1, :cond_0

    .line 4
    iget-object p1, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->href:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinksByMask(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 4
    iget v3, v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    and-int/2addr v3, p1

    if-ne v3, p2, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getSearchLinkOpen()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 3
    iget v2, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchLinkSimple()Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 3
    iget v2, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBookDownloadedBefore()I
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownLoadDirName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 2
    :goto_0
    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 3
    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 4
    iget v5, v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    const/16 v6, 0x40

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownLoadFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getExtByNumDownLoadList(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isBookDownloadedBeforeStorage()Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Storage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 2
    invoke-virtual {p0, v1, v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByMask(II)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, v0, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 6
    iget v3, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownLoadFileNameStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isSupportBookByNumDownLoadList(I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    .line 3
    iget v3, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->linkType:I

    and-int/lit8 v4, v3, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    if-ne v2, p1, :cond_1

    const/high16 p1, 0x40000

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public prepareLinks()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->linkType:I

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->links:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;->scanType()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->linkType:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startDownloadOPDS(I)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const-class v2, Lcom/neverland/downloadservice/DownloadService;

    const-string v3, "android.intent.action.SYNC"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    const-string v2, "liburl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    const-string v2, "libauth"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxy:Ljava/lang/String;

    const-string v2, "libproxy"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxyType1:I

    const-string v2, "libproxytype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    const-string v2, "libtitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-wide v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->id:J

    const-string v3, "libid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByNumDownLoadList(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadurl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownLoadDirName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloaddir"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownLoadFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getExtByNumDownLoadList(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadname"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->isSupportBookByNumDownLoadList(I)Z

    move-result p1

    const-string v1, "booksupport"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getFirstAuthor()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bookauthor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "booktitle"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :cond_0
    invoke-static {v0}, Lcom/neverland/utils/APIWrap;->startService(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startDownloadStorage()Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const-class v2, Lcom/neverland/downloadservice/DownloadService;

    const-string v3, "android.intent.action.SYNC"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    const-string v2, "storageurl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    const-string v2, "libauth"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxy:Ljava/lang/String;

    const-string v2, "libproxy"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->proxyType1:I

    const-string v2, "libproxytype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->title:Ljava/lang/String;

    const-string v2, "libtitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->useHTTP1:I

    const-string v2, "libhttp1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->parentFeed:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneFeed;->parentOpds:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-wide v1, v1, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->id:J

    const-string v3, "libid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByNumDownLoadList(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadurl"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x80000

    .line 11
    invoke-virtual {p0, v3, v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->getLinkByMask(II)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneLink;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    :cond_0
    const-string v3, "downloaddir"

    .line 13
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->title:Ljava/lang/String;

    const-string v3, "downloadname"

    .line 15
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OneEntry;->isSupportBookByNumDownLoadList(I)Z

    move-result v1

    const-string v2, "booksupport"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    invoke-static {v0}, Lcom/neverland/utils/APIWrap;->startService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
