.class public Lorg/apache/james/mime4j/b/o;
.super Lorg/apache/james/mime4j/b/a;
.source "ContentTypeFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/s;


# static fields
.field public static final c:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/b/o$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/o$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/o;->c:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/o;->d:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/apache/james/mime4j/b/o;->e:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/b/o;->f:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lorg/apache/james/mime4j/b/o;->g:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/b/o;->h:Ljava/util/Map;

    return-void
.end method

.method public static n(Lorg/apache/james/mime4j/dom/field/s;Lorg/apache/james/mime4j/dom/field/s;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/s;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/s;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/s;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string p0, "multipart/digest"

    .line 4
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/dom/field/s;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "message/rfc822"

    return-object p0

    :cond_2
    const-string p0, "text/plain"

    return-object p0
.end method

.method private p()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/b/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/a;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/a;-><init>(Ljava/io/Reader;)V

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->k()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/b/o;->i:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    iput-object v0, p0, Lorg/apache/james/mime4j/b/o;->i:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    .line 6
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/b/o;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/b/o;->g:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lorg/apache/james/mime4j/b/o;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/james/mime4j/b/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/b/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/b/o;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->b()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 15
    iget-object v6, p0, Lorg/apache/james/mime4j/b/o;->h:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/apache/james/mime4j/b/o;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/o;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/o;->p()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "boundary"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/b/o;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/b/o;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/o;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/o;->p()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/o;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/o;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/o;->p()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/o;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/o;->p()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/o;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/o;->p()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/o;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/james/mime4j/dom/field/r;->a(Lorg/apache/james/mime4j/dom/field/s;)Z

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/o;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/o;->p()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/o;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
