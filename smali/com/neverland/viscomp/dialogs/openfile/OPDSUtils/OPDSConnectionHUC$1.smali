.class Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;
.super Ljava/lang/Object;
.source "OPDSConnectionHUC.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/net/HttpURLConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;

.field final synthetic val$adr:Ljava/lang/String;

.field final synthetic val$library:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;->val$library:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iput-object p3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;->val$adr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;->call()Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/net/HttpURLConnection;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;->val$library:Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;->val$adr:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0, v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->access$000(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
