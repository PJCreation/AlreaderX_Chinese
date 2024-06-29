.class public Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;
.super Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;
.source "OPDSConnectionHUC.java"


# static fields
.field static final COOKIES_HEADER_GET:Ljava/lang/String; = "Set-Cookie"

.field static final COOKIES_HEADER_PUT:Ljava/lang/String; = "Cookie"

.field private static cm:Ljava/net/CookieManager;


# instance fields
.field private connGZipIS:Ljava/io/InputStream;

.field private connMain:Ljava/net/HttpURLConnection;

.field private connMainIS:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    .line 3
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMainIS:Ljava/io/InputStream;

    .line 4
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connGZipIS:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method private addAuth(ILjava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p6, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;

    const-string p4, "GET"

    invoke-virtual {p1, p4, p7}, Lcom/albroco/barebonesdigest/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    const/4 p1, 0x0

    .line 3
    :try_start_1
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Basic "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x3a

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    const/16 p5, 0x10

    invoke-static {p4, p5}, Lcom/neverland/utils/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p4

    .line 4
    invoke-virtual {p4}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p2, p3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    const/4 v14, 0x0

    .line 19
    iput-object v14, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v15, 0x1

    const/4 v8, 0x0

    if-eqz v12, :cond_1

    .line 20
    iget-object v1, v12, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move/from16 v16, v1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v13, :cond_3

    .line 21
    iget-object v1, v13, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    move/from16 v17, v0

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    .line 22
    :goto_2
    invoke-virtual {v9, v11}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_4

    .line 23
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f110279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    return-object v14

    :cond_4
    const-string v7, "OPDSs"

    .line 24
    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v1, v10, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    .line 26
    iget-object v2, v10, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v3, v10, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->password:Ljava/lang/String;

    add-int/2addr v1, v15

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v4, v2

    goto :goto_3

    :cond_5
    move-object v4, v14

    move-object v5, v4

    .line 28
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->initProxy(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;)Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;

    move-result-object v3

    const v1, 0x7f110271

    if-eqz v3, :cond_8

    .line 29
    :try_start_0
    iget v2, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->internalType:I

    if-nez v2, :cond_6

    goto :goto_4

    .line 30
    :cond_6
    iget-object v2, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_7

    .line 31
    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    const-string v2, "use proxy "

    .line 32
    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    move-object v0, v14

    goto :goto_5

    .line 33
    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    .line 34
    :goto_5
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_9

    return-object v14

    .line 35
    :cond_9
    move-object v6, v0

    check-cast v6, Ljava/net/HttpURLConnection;

    if-eqz v17, :cond_a

    if-eqz v3, :cond_a

    .line 36
    iget-object v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_a

    iget v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->internalType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 37
    iget-object v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->user:Ljava/lang/String;

    iget-object v2, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->password:Ljava/lang/String;

    iget-object v1, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->host:Ljava/lang/String;

    const-string v19, "Proxy-Authorization"

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move/from16 v2, v17

    move-object v15, v3

    move-object v3, v6

    move-object v14, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v21, v6

    const/4 v13, -0x1

    move-object/from16 v6, v18

    move-object/from16 v22, v7

    move-object/from16 v7, p4

    const/4 v13, 0x0

    move-object/from16 v8, v20

    invoke-direct/range {v1 .. v8}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->addAuth(ILjava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    move-object v15, v3

    move-object v14, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    const/4 v13, 0x0

    :goto_6
    if-eqz v16, :cond_b

    if-eqz v14, :cond_b

    .line 38
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v4, "Authorization"

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v21

    move-object v5, v14

    move-object/from16 v6, v19

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->addAuth(ILjava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Ljava/lang/String;)V

    .line 39
    :cond_b
    sget-object v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->cm:Ljava/net/CookieManager;

    if-nez v0, :cond_c

    .line 40
    :try_start_1
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->cm:Ljava/net/CookieManager;

    .line 41
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :cond_c
    :goto_7
    :try_start_2
    sget-object v0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->cm:Ljava/net/CookieManager;

    if-eqz v0, :cond_d

    .line 44
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    iget-object v1, v10, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    const-string v1, "Cookie"

    const-string v2, ";"

    .line 46
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v2, v21

    :try_start_3
    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_d
    move-object/from16 v2, v21

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v2, v21

    .line 47
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    :try_start_4
    const-string v0, "Accept-Language"

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, identity"

    .line 49
    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    .line 50
    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v1, "AlReaderX"

    .line 51
    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 53
    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/16 v0, 0x2710

    .line 54
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x2ee0

    .line 55
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 56
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, -0x1

    .line 57
    iput v1, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->respCode:I

    const v1, 0x7f110276

    .line 58
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->respCode:I

    .line 59
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getResponseMessage"

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->respCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 62
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,Value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v22

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v5

    goto :goto_a

    .line 64
    :cond_e
    sget-object v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->cm:Ljava/net/CookieManager;

    if-eqz v3, :cond_f

    const-string v3, "Set-Cookie"

    .line 65
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_f

    .line 66
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    sget-object v5, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->cm:Ljava/net/CookieManager;

    invoke-virtual {v5}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v5

    invoke-static {v4}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/HttpCookie;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f

    const/4 v6, 0x0

    :try_start_6
    invoke-interface {v5, v6, v4}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v3, v6

    goto/16 :goto_14

    :catch_5
    move-object v3, v6

    goto/16 :goto_15

    :catch_6
    move-object v3, v6

    goto/16 :goto_16

    .line 68
    :cond_f
    :try_start_7
    iget v3, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->respCode:I
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f

    const/16 v4, 0x1f7

    const-string v5, "\""

    const-string v6, " \""

    if-ne v3, v4, :cond_14

    .line 69
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v0, :cond_12

    const-string v3, "Retry-After"

    .line 70
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_10

    const-string v3, "retry-after"

    .line 71
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    :cond_10
    if-eqz v3, :cond_12

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v8, 0x0

    .line 74
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_11

    .line 75
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 77
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_12
    const/4 v0, 0x0

    .line 78
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->respCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Retry-After: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    :cond_13
    const/4 v1, 0x0

    return-object v1

    :cond_14
    const/16 v0, 0x197

    const v4, 0x7f110273

    if-ne v3, v0, :cond_1b

    if-nez v17, :cond_1b

    .line 81
    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;

    invoke-direct {v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;-><init>()V

    const-string v0, "Proxy-Authenticate"

    .line 82
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "proxy-authenticate"

    .line 83
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    const v5, 0x7f110275

    if-eqz v0, :cond_1a

    if-eqz v15, :cond_1a

    .line 84
    iget-object v6, v15, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->user:Ljava/lang/String;

    if-eqz v6, :cond_1a

    iget-object v6, v15, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->proxy:Ljava/net/Proxy;

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_1a

    const-string v6, "Basic "

    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_17

    .line 86
    invoke-direct {v9, v10, v11, v12, v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_16

    .line 87
    sget-object v3, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 88
    :cond_16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_17
    const-string v4, "Digest "

    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    if-nez v0, :cond_1a

    const/4 v4, 0x0

    .line 90
    :try_start_9
    iput-object v4, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f

    .line 91
    :try_start_a
    invoke-static {v2}, Lcom/albroco/barebonesdigest/a;->d(Ljava/net/HttpURLConnection;)Lcom/albroco/barebonesdigest/a;

    move-result-object v0

    iput-object v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    .line 92
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :goto_e
    iget-object v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;

    if-eqz v0, :cond_18

    iget-object v4, v15, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->user:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 94
    invoke-virtual {v0, v4}, Lcom/albroco/barebonesdigest/a;->k(Ljava/lang/String;)Lcom/albroco/barebonesdigest/a;

    move-result-object v0

    iget-object v4, v15, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/ProxyParameters;->password:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/albroco/barebonesdigest/a;->j(Ljava/lang/String;)Lcom/albroco/barebonesdigest/a;

    .line 95
    iget-object v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;

    invoke-virtual {v0}, Lcom/albroco/barebonesdigest/a;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 96
    invoke-direct {v9, v10, v11, v12, v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_19

    .line 97
    sget-object v3, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 98
    :cond_19
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catch_8
    move-exception v0

    move-object v3, v4

    goto/16 :goto_14

    :catch_9
    move-object v3, v4

    goto/16 :goto_15

    :catch_a
    move-object v3, v4

    goto/16 :goto_16

    .line 99
    :cond_1a
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    const/4 v1, 0x0

    return-object v1

    :cond_1b
    const/16 v7, 0x191

    if-ne v3, v7, :cond_22

    if-nez v16, :cond_22

    .line 100
    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;

    invoke-direct {v3}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;-><init>()V

    const-string v0, "WWW-Authenticate"

    .line 101
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string v0, "www-authenticate"

    .line 102
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    if-eqz v0, :cond_21

    if-eqz v14, :cond_21

    const-string v5, "Basic"

    .line 103
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1e

    move-object/from16 v8, p4

    .line 104
    invoke-direct {v9, v10, v11, v3, v8}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 105
    sget-object v3, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 106
    :cond_1d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_1e
    move-object/from16 v8, p4

    const-string v5, "Digest"

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    if-nez v0, :cond_21

    const/4 v5, 0x0

    .line 108
    :try_start_c
    iput-object v5, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    .line 109
    :try_start_d
    invoke-static {v2}, Lcom/albroco/barebonesdigest/a;->d(Ljava/net/HttpURLConnection;)Lcom/albroco/barebonesdigest/a;

    move-result-object v0

    iput-object v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    .line 110
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :goto_10
    iget-object v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;

    if-eqz v0, :cond_1f

    .line 112
    invoke-virtual {v0, v14}, Lcom/albroco/barebonesdigest/a;->k(Ljava/lang/String;)Lcom/albroco/barebonesdigest/a;

    move-result-object v0

    move-object/from16 v14, v19

    invoke-virtual {v0, v14}, Lcom/albroco/barebonesdigest/a;->j(Ljava/lang/String;)Lcom/albroco/barebonesdigest/a;

    .line 113
    iget-object v0, v3, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;->authObj:Lcom/albroco/barebonesdigest/a;

    invoke-virtual {v0}, Lcom/albroco/barebonesdigest/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 114
    invoke-direct {v9, v10, v11, v3, v8}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_11

    :cond_1f
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_20

    .line 115
    sget-object v3, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 116
    :cond_20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catch_c
    move-exception v0

    move-object v3, v5

    goto/16 :goto_14

    :catch_d
    move-object v3, v5

    goto/16 :goto_15

    :catch_e
    move-object v3, v5

    goto/16 :goto_16

    .line 117
    :cond_21
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 118
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v1, 0x0

    return-object v1

    :cond_22
    move-object/from16 v8, p4

    const/16 v11, 0x12e

    if-eq v3, v11, :cond_23

    const/16 v11, 0x12d

    if-eq v3, v11, :cond_23

    const/16 v11, 0x133

    if-eq v3, v11, :cond_23

    const/16 v11, 0x12f

    if-ne v3, v11, :cond_24

    :cond_23
    const-string v3, "Location"

    .line 119
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    const-string v0, "redirect new url"

    .line 120
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    invoke-direct {v9, v10, v3, v12, v8}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/Second/AuthFieldNew;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    return-object v0

    .line 123
    :cond_24
    iget v3, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->respCode:I

    const/16 v8, 0xc8

    if-eq v3, v8, :cond_28

    .line 124
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    iget v2, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->respCode:I

    if-ne v2, v0, :cond_25

    .line 126
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f110274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    :goto_12
    const/4 v1, 0x0

    goto :goto_13

    :cond_25
    if-ne v2, v7, :cond_26

    .line 127
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    goto :goto_12

    :cond_26
    const/16 v0, 0x192

    if-ne v2, v0, :cond_27

    .line 128
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f110277

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    goto :goto_12

    .line 129
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->respCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    goto :goto_12

    :goto_13
    return-object v1

    :cond_28
    return-object v2

    :catch_f
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    const/4 v3, 0x0

    return-object v3

    :catch_10
    move-exception v0

    const/4 v3, 0x0

    .line 133
    :goto_14
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    return-object v3

    :catch_11
    const/4 v3, 0x0

    .line 136
    :goto_15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 137
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f110278

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    return-object v3

    :catch_12
    const/4 v3, 0x0

    .line 138
    :goto_16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 139
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f110274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    return-object v3

    :catch_13
    move-exception v0

    move-object v3, v14

    .line 140
    sget-object v2, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3

    :catch_14
    move-exception v0

    move-object v3, v14

    .line 142
    sget-object v2, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v3

    :catch_15
    move-object v3, v14

    const v1, 0x7f110278

    .line 144
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    return-object v3

    :catch_16
    move-object v3, v14

    .line 145
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f110274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connGZipIS:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connGZipIS:Ljava/io/InputStream;

    .line 5
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMainIS:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMainIS:Ljava/io/InputStream;

    .line 9
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 11
    :cond_2
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    return-void
.end method

.method connect(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 1
    invoke-static {}, Lcom/neverland/utils/TCustomDevice;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const p2, 0x7f110272

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC$1;-><init>(Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSCatalogData;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-wide/16 v2, 0x7530

    .line 4
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    const/4 p2, 0x1

    .line 5
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    if-nez p1, :cond_1

    return-object v1

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMainIS:Ljava/io/InputStream;

    const p2, 0x7f110270

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMainIS:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 9
    :try_start_2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "gzip"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMainIS:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connGZipIS:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    sget-object p1, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 15
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connGZipIS:Ljava/io/InputStream;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMainIS:Ljava/io/InputStream;

    :goto_2
    return-object p1

    :catch_2
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    sget-object p1, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionBase;->lastError:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1
.end method

.method getDataLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/OPDSUtils/OPDSConnectionHUC;->connMain:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
