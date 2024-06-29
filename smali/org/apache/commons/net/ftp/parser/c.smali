.class public Lorg/apache/commons/net/ftp/parser/c;
.super Ljava/lang/Object;
.source "DefaultFTPFileEntryParserFactory.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/parser/d;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/c;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/parser/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/ftp/e;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    :try_start_2
    new-instance v1, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v2, "Error initializing parser"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    .line 5
    new-instance v2, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement the interface org.apache.commons.net.ftp.FTPFileEntryParser."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_c

    .line 6
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNIX_LTRIM"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 8
    new-instance v1, Lorg/apache/commons/net/ftp/parser/n;

    const/4 p1, 0x1

    invoke-direct {v1, p2, p1}, Lorg/apache/commons/net/ftp/parser/n;-><init>(Lorg/apache/commons/net/ftp/d;Z)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "UNIX"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 10
    new-instance v1, Lorg/apache/commons/net/ftp/parser/n;

    const/4 p1, 0x0

    invoke-direct {v1, p2, p1}, Lorg/apache/commons/net/ftp/parser/n;-><init>(Lorg/apache/commons/net/ftp/d;Z)V

    goto/16 :goto_3

    :cond_2
    const-string v1, "VMS"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 12
    new-instance v1, Lorg/apache/commons/net/ftp/parser/p;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/p;-><init>(Lorg/apache/commons/net/ftp/d;)V

    goto/16 :goto_3

    :cond_3
    const-string v1, "WINDOWS"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 14
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/c;->d(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;

    move-result-object v1

    goto/16 :goto_3

    :cond_4
    const-string v1, "OS/2"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 16
    new-instance v1, Lorg/apache/commons/net/ftp/parser/k;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/k;-><init>(Lorg/apache/commons/net/ftp/d;)V

    goto :goto_3

    :cond_5
    const-string v1, "OS/400"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    const-string v1, "AS/400"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "MVS"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 20
    new-instance v1, Lorg/apache/commons/net/ftp/parser/g;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/g;-><init>()V

    goto :goto_3

    :cond_7
    const-string v1, "NETWARE"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8

    .line 22
    new-instance v1, Lorg/apache/commons/net/ftp/parser/j;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/j;-><init>(Lorg/apache/commons/net/ftp/d;)V

    goto :goto_3

    :cond_8
    const-string v1, "MACOS PETER"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 24
    new-instance v1, Lorg/apache/commons/net/ftp/parser/h;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/h;-><init>(Lorg/apache/commons/net/ftp/d;)V

    goto :goto_3

    :cond_9
    const-string v1, "TYPE: L8"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 26
    new-instance v1, Lorg/apache/commons/net/ftp/parser/n;

    invoke-direct {v1, p2}, Lorg/apache/commons/net/ftp/parser/n;-><init>(Lorg/apache/commons/net/ftp/d;)V

    goto :goto_3

    .line 27
    :cond_a
    new-instance p2, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parser type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_b
    :goto_2
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/c;->e(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;

    move-result-object v1

    .line 29
    :cond_c
    :goto_3
    instance-of p1, v1, Lorg/apache/commons/net/ftp/a;

    if-eqz p1, :cond_d

    .line 30
    move-object p1, v1

    check-cast p1, Lorg/apache/commons/net/ftp/a;

    invoke-interface {p1, p2}, Lorg/apache/commons/net/ftp/a;->d(Lorg/apache/commons/net/ftp/d;)V

    :cond_d
    return-object v1
.end method

.method private d(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WINDOWS"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/commons/net/ftp/parser/i;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/i;-><init>(Lorg/apache/commons/net/ftp/d;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/d;-><init>(Lorg/apache/commons/net/ftp/d;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Lorg/apache/commons/net/ftp/parser/a;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/e;

    new-instance v3, Lorg/apache/commons/net/ftp/parser/i;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/i;-><init>(Lorg/apache/commons/net/ftp/d;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/n;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/d;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UNIX_LTRIM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-direct {v3, v0, p1}, Lorg/apache/commons/net/ftp/parser/n;-><init>(Lorg/apache/commons/net/ftp/d;Z)V

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/apache/commons/net/ftp/parser/a;-><init>([Lorg/apache/commons/net/ftp/e;)V

    return-object v1
.end method

.method private e(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OS/400"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/net/ftp/parser/l;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/l;-><init>(Lorg/apache/commons/net/ftp/d;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/d;-><init>(Lorg/apache/commons/net/ftp/d;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Lorg/apache/commons/net/ftp/parser/a;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/e;

    new-instance v3, Lorg/apache/commons/net/ftp/parser/l;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/l;-><init>(Lorg/apache/commons/net/ftp/d;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/n;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/d;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UNIX_LTRIM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-direct {v3, v0, p1}, Lorg/apache/commons/net/ftp/parser/n;-><init>(Lorg/apache/commons/net/ftp/d;Z)V

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/apache/commons/net/ftp/parser/a;-><init>([Lorg/apache/commons/net/ftp/e;)V

    return-object v1
.end method


# virtual methods
.method public a(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/c;->c(Ljava/lang/String;Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lorg/apache/commons/net/ftp/e;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/c;->c(Ljava/lang/String;Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v0, "Parser key cannot be null"

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
