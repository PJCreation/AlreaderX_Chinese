.class public Lcom/neverland/utils/NEWOnyxStat;
.super Ljava/lang/Object;
.source "NEWOnyxStat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ONYXSTATOLD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/utils/NEWOnyxStat;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ONYXSTATOLD"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public inform(Lcom/neverland/book/TBook$BOOKTIME_EVENT;J)V
    .locals 9

    .line 1
    :try_start_0
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v1, v0, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    .line 2
    sget-object v2, Lcom/neverland/utils/NEWOnyxStat$1;->$SwitchMap$com$neverland$book$TBook$BOOKTIME_EVENT:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ONYX OnyxStatisticsModelUtils.onDocumentClose"

    .line 3
    invoke-direct {p0, p1, v2}, Lcom/neverland/utils/NEWOnyxStat;->log(Ljava/lang/String;Z)V

    .line 4
    sget-object v3, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    iget-object p1, v0, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object v4, p1, Lcom/neverland/book/TBook$TBookInfo;->fileReal:Ljava/lang/String;

    iget v7, v1, Lcom/neverland/book/TBook$TBookInfo;->pages:I

    iget v8, v1, Lcom/neverland/book/TBook$TBookInfo;->page:I

    move-wide v5, p2

    invoke-static/range {v3 .. v8}, Lcom/onyx/brightnesssample/utils/OnyxStatisticsModelUtils1;->onDocumentClose(Landroid/content/Context;Ljava/lang/String;JII)V

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-lez p1, :cond_3

    .line 5
    sget-object p1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    iget-object v0, v0, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object v0, v0, Lcom/neverland/book/TBook$TBookInfo;->fileReal:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/onyx/brightnesssample/utils/OnyxStatisticsModelUtils1;->onDocumentPageChanged(Landroid/content/Context;Ljava/lang/String;J)V

    const-string p1, "ONYX OnyxStatisticsModelUtils.onDocumentPageChanged"

    .line 6
    invoke-direct {p0, p1, v2}, Lcom/neverland/utils/NEWOnyxStat;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "ONYX OnyxStatisticsModelUtils.onDocumentOpened"

    .line 7
    invoke-direct {p0, p1, v2}, Lcom/neverland/utils/NEWOnyxStat;->log(Ljava/lang/String;Z)V

    .line 8
    sget-object p1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    iget-object p2, v0, Lcom/neverland/book/TBook;->bookInfo:Lcom/neverland/book/TBook$TBookInfo;

    iget-object p2, p2, Lcom/neverland/book/TBook$TBookInfo;->fileReal:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/onyx/brightnesssample/utils/OnyxStatisticsModelUtils1;->onDocumentOpened(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
