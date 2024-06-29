.class public Lorg/apache/commons/net/ftp/d;
.super Ljava/lang/Object;
.source "FTPClientConfig.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/d;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "en"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v2, "de"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    const-string v2, "it"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/util/Locale;

    const-string v2, "da"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sv"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Ljava/util/Locale;

    const-string v2, "no"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/util/Locale;

    const-string v2, "nl"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ro"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sq"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sh"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sk"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sl"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr"

    const-string v2, "jan|f\u00e9v|mar|avr|mai|jun|jui|ao\u00fb|sep|oct|nov|d\u00e9c"

    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->e:Z

    .line 3
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lorg/apache/commons/net/ftp/d;->c:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/apache/commons/net/ftp/d;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->e:Z

    .line 9
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->b:Ljava/lang/String;

    .line 10
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->c:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->c:Ljava/lang/String;

    .line 11
    iget-boolean p1, p2, Lorg/apache/commons/net/ftp/d;->e:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/d;->e:Z

    .line 12
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->d:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->d:Ljava/lang/String;

    .line 13
    iget-boolean p1, p2, Lorg/apache/commons/net/ftp/d;->i:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/d;->i:Z

    .line 14
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->f:Ljava/lang/String;

    .line 15
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->h:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->h:Ljava/lang/String;

    .line 16
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->g:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->e:Z

    .line 19
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->b:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->c:Ljava/lang/String;

    .line 21
    iget-boolean v0, p1, Lorg/apache/commons/net/ftp/d;->e:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->e:Z

    .line 22
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->d:Ljava/lang/String;

    .line 23
    iget-boolean v0, p1, Lorg/apache/commons/net/ftp/d;->i:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->i:Z

    .line 24
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->f:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->h:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->h:Ljava/lang/String;

    .line 26
    iget-object p1, p1, Lorg/apache/commons/net/ftp/d;->g:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/d;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    instance-of v0, p0, Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/text/DateFormatSymbols;

    check-cast p0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/net/ftp/d;->a(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/text/DateFormatSymbols;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object p0
.end method

.method private static m(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    const/16 v1, 0xc

    if-ne v1, p0, :cond_1

    const/16 p0, 0xd

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    aput-object v0, p0, v1

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "expecting a pipe-delimited string containing 12 tokens"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->e:Z

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->c:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->d:Ljava/lang/String;

    return-void
.end method
