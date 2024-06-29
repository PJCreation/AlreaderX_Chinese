.class Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$1;
.super Ljava/lang/Object;
.source "OPDSUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils;->getConnectInputStream(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$adress:Ljava/lang/String;

.field final synthetic val$library:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

.field final synthetic val$opdsConnection:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$1;->val$opdsConnection:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$1;->val$library:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iput-object p3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$1;->val$adress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/InputStream;
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$1;->val$opdsConnection:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$1;->val$library:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$1;->val$adress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSUtils$1;->call()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
