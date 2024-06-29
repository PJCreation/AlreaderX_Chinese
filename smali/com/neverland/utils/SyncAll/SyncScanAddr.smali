.class public Lcom/neverland/utils/SyncAll/SyncScanAddr;
.super Ljava/lang/Object;
.source "SyncScanAddr.java"


# instance fields
.field public host:Ljava/lang/String;

.field public port:I

.field public rootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->host:Ljava/lang/String;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->port:I

    .line 4
    iput-object v0, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->rootPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public scan(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    const-string v0, "://"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x3a

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x3

    .line 4
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 5
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v0, v2

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v3, :cond_1

    .line 6
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->host:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eq v1, v3, :cond_2

    .line 7
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->host:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->host:Ljava/lang/String;

    :goto_1
    const/4 v2, 0x1

    if-ne v0, v3, :cond_3

    .line 9
    iput p2, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->port:I

    goto :goto_2

    :cond_3
    if-eq v1, v3, :cond_4

    add-int/2addr v0, v2

    .line 10
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    iput p2, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->port:I

    goto :goto_2

    :cond_4
    add-int/2addr v0, v2

    .line 12
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    :catch_1
    iput p2, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->port:I

    :goto_2
    if-eq v1, v3, :cond_5

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->rootPath:Ljava/lang/String;

    goto :goto_3

    .line 15
    :cond_5
    iput-object p3, p0, Lcom/neverland/utils/SyncAll/SyncScanAddr;->rootPath:Ljava/lang/String;

    :goto_3
    return v2
.end method
