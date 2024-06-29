.class public Lorg/apache/commons/net/ftp/parser/a;
.super Lorg/apache/commons/net/ftp/f;
.source "CompositeFileEntryParser.java"


# instance fields
.field private final a:[Lorg/apache/commons/net/ftp/e;

.field private b:Lorg/apache/commons/net/ftp/e;


# direct methods
.method public constructor <init>([Lorg/apache/commons/net/ftp/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/a;->b:Lorg/apache/commons/net/ftp/e;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/a;->a:[Lorg/apache/commons/net/ftp/e;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/a;->b:Lorg/apache/commons/net/ftp/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/e;->c(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/a;->a:[Lorg/apache/commons/net/ftp/e;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3, p1}, Lorg/apache/commons/net/ftp/e;->c(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    iput-object v3, p0, Lorg/apache/commons/net/ftp/parser/a;->b:Lorg/apache/commons/net/ftp/e;

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
