.class public Lorg/apache/commons/net/ftp/i;
.super Ljava/lang/Object;
.source "FTPListParseEngine.java"


# static fields
.field private static final a:[Lorg/apache/commons/net/ftp/FTPFile;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/apache/commons/net/ftp/e;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/net/ftp/FTPFile;

    .line 1
    sput-object v0, Lorg/apache/commons/net/ftp/i;->a:[Lorg/apache/commons/net/ftp/FTPFile;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/net/ftp/e;Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/i;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/i;->c:Ljava/util/ListIterator;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/ftp/i;->d:Lorg/apache/commons/net/ftp/e;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/d;->h()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/i;->e:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/i;->e:Z

    :goto_0
    return-void
.end method

.method private c(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 2
    invoke-static {p2}, Lorg/apache/commons/net/util/a;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lorg/apache/commons/net/ftp/i;->d:Lorg/apache/commons/net/ftp/e;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/e;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lorg/apache/commons/net/ftp/i;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/ftp/i;->d:Lorg/apache/commons/net/ftp/e;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/e;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/h;->b:Lorg/apache/commons/net/ftp/g;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/i;->b(Lorg/apache/commons/net/ftp/g;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/apache/commons/net/ftp/g;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/commons/net/ftp/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lorg/apache/commons/net/ftp/i;->d:Lorg/apache/commons/net/ftp/e;

    invoke-interface {v3, v2}, Lorg/apache/commons/net/ftp/e;->c(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    iget-boolean v4, p0, Lorg/apache/commons/net/ftp/i;->e:Z

    if-eqz v4, :cond_1

    .line 7
    new-instance v3, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v3, v2}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-interface {p1, v3}, Lorg/apache/commons/net/ftp/g;->a(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lorg/apache/commons/net/ftp/i;->a:[Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object p1
.end method

.method public d(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/i;->b:Ljava/util/List;

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/i;->c(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lorg/apache/commons/net/ftp/i;->d:Lorg/apache/commons/net/ftp/e;

    iget-object p2, p0, Lorg/apache/commons/net/ftp/i;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lorg/apache/commons/net/ftp/e;->b(Ljava/util/List;)Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/i;->e()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/i;->c:Ljava/util/ListIterator;

    return-void
.end method
