.class public Lorg/apache/commons/net/ftp/parser/g;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "MVSFTPEntryParser.java"


# instance fields
.field private e:I

.field private f:Lorg/apache/commons/net/ftp/parser/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/net/ftp/parser/g;->e:I

    const/4 v0, 0x0

    .line 3
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;->d(Lorg/apache/commons/net/ftp/d;)V

    return-void
.end method

.method private k(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    const-string p1, "PS"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_1

    :cond_0
    const-string p1, "PO"

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PO-E"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :goto_1
    return-object v0

    :cond_3
    return-object v1
.end method

.method private l(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OUTPUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private m(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OUTPUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private n(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->g(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/m;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 8
    :try_start_0
    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/b;->j(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    .line 12
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Volume"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ltz v2, :cond_0

    const-string v2, "Dsname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/g;->o(I)V

    const-string v1, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+(?:\\S+\\s+)?(?:F|FB|V|VB|U)\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

    .line 5
    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/m;->h(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v2, "Name"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/g;->o(I)V

    const-string v1, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

    .line 8
    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/m;->h(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v2, "total"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/g;->o(I)V

    .line 11
    new-instance v1, Lorg/apache/commons/net/ftp/parser/n;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/n;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/g;->f:Lorg/apache/commons/net/ftp/parser/n;

    goto :goto_0

    :cond_2
    const-string v2, "Spool Files"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_3

    .line 13
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/g;->o(I)V

    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

    .line 14
    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/m;->h(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v2, "JOBNAME"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "JOBID"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    const/4 v1, 0x4

    .line 17
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/g;->o(I)V

    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

    .line 18
    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/m;->h(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    .line 19
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/g;->o(I)V

    .line 20
    :goto_0
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/g;->e:I

    if-eq v1, v3, :cond_5

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object p1
.end method

.method public c(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/parser/g;->e:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/g;->k(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/g;->n(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/g;->f:Lorg/apache/commons/net/ftp/parser/n;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/parser/n;->c(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/g;->l(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/g;->m(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method protected i()Lorg/apache/commons/net/ftp/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "MVS"

    const-string v2, "yyyy/MM/dd HH:mm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/ftp/parser/g;->e:I

    return-void
.end method
