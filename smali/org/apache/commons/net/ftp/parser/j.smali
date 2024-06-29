.class public Lorg/apache/commons/net/ftp/parser/j;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "NetwareFTPEntryParser.java"


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    const-string v0, "(d|-){1}\\s+\\[([-A-Z]+)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)"

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/b;->d(Lorg/apache/commons/net/ftp/d;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 5
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 6
    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 7
    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    .line 8
    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v6

    .line 9
    :try_start_0
    invoke-super {p0, v5}, Lorg/apache/commons/net/ftp/parser/b;->j(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 13
    :goto_1
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    const/16 v1, 0x52

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 17
    invoke-virtual {v0, v5, v5, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    :cond_1
    const/16 v1, 0x57

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 19
    invoke-virtual {v0, v5, p1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected i()Lorg/apache/commons/net/ftp/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "NETWARE"

    const-string v2, "MMM dd yyyy"

    const-string v3, "MMM dd HH:mm"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
