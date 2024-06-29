.class public abstract Lorg/apache/commons/net/ftp/parser/b;
.super Lorg/apache/commons/net/ftp/parser/m;
.source "ConfigurableFTPFileEntryParserImpl.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/a;


# instance fields
.field private final d:Lorg/apache/commons/net/ftp/parser/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lorg/apache/commons/net/ftp/parser/f;

    invoke-direct {p1}, Lorg/apache/commons/net/ftp/parser/f;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/b;->d:Lorg/apache/commons/net/ftp/parser/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/parser/m;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance p1, Lorg/apache/commons/net/ftp/parser/f;

    invoke-direct {p1}, Lorg/apache/commons/net/ftp/parser/f;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/b;->d:Lorg/apache/commons/net/ftp/parser/e;

    return-void
.end method


# virtual methods
.method public d(Lorg/apache/commons/net/ftp/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/b;->d:Lorg/apache/commons/net/ftp/parser/e;

    instance-of v0, v0, Lorg/apache/commons/net/ftp/a;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/b;->i()Lorg/apache/commons/net/ftp/d;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/d;->k(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/d;->l(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/b;->d:Lorg/apache/commons/net/ftp/parser/e;

    check-cast v0, Lorg/apache/commons/net/ftp/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/a;->d(Lorg/apache/commons/net/ftp/d;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/b;->d:Lorg/apache/commons/net/ftp/parser/e;

    check-cast p1, Lorg/apache/commons/net/ftp/a;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/a;->d(Lorg/apache/commons/net/ftp/d;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected abstract i()Lorg/apache/commons/net/ftp/d;
.end method

.method public j(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/b;->d:Lorg/apache/commons/net/ftp/parser/e;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/e;->a(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method
