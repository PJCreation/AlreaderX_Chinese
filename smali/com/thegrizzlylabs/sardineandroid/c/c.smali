.class public final Lcom/thegrizzlylabs/sardineandroid/c/c;
.super Ljava/lang/Object;
.source "SardineUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "EEEEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "EEE MMMM d HH:mm:ss yyyy"

    aput-object v3, v0, v1

    .line 1
    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/c/c;->a:[Ljava/lang/String;

    .line 2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    sput-object v1, Lcom/thegrizzlylabs/sardineandroid/c/c;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    :goto_0
    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/c/c;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/c/c;->c:Ljava/util/List;

    return-void
.end method

.method private static a()Lorg/w3c/dom/Document;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/c/c;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 4

    .line 1
    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/c/c;->a()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 3

    .line 1
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "DAV:"

    const-string v2, "D"

    invoke-direct {v0, v1, p0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static d()Lorg/simpleframework/xml/Serializer;
    .locals 6

    .line 1
    const-class v0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    const-class v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    new-instance v2, Lorg/simpleframework/xml/stream/Format;

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-direct {v2, v3}, Lorg/simpleframework/xml/stream/Format;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v3, Lorg/simpleframework/xml/convert/Registry;

    invoke-direct {v3}, Lorg/simpleframework/xml/convert/Registry;-><init>()V

    .line 3
    new-instance v4, Lorg/simpleframework/xml/convert/RegistryStrategy;

    invoke-direct {v4, v3}, Lorg/simpleframework/xml/convert/RegistryStrategy;-><init>(Lorg/simpleframework/xml/convert/Registry;)V

    .line 4
    new-instance v5, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v5, v4, v2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V

    .line 5
    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/c/b;

    invoke-direct {v2, v5, v1}, Lcom/thegrizzlylabs/sardineandroid/c/b;-><init>(Lorg/simpleframework/xml/Serializer;Ljava/lang/Class;)V

    invoke-virtual {v3, v1, v2}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;

    .line 6
    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/c/b;

    invoke-direct {v1, v5, v0}, Lcom/thegrizzlylabs/sardineandroid/c/b;-><init>(Lorg/simpleframework/xml/Serializer;Ljava/lang/Class;)V

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;

    .line 7
    const-class v0, Lcom/thegrizzlylabs/sardineandroid/model/Property;

    const-class v1, Lcom/thegrizzlylabs/sardineandroid/model/Property$PropertyConverter;

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Registry;

    return-object v5
.end method

.method public static e(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/c/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/thegrizzlylabs/sardineandroid/c/c;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "UTC"

    .line 5
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static f()Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lorg/w3c/dom/Element;)Ljavax/xml/namespace/QName;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljavax/xml/namespace/QName;

    .line 3
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DAV:"

    const-string v2, "D"

    invoke-direct {v0, v1, p0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/c/c;->d()Lorg/simpleframework/xml/Serializer;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static i(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/c/c;->d()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a valid DAV response"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
