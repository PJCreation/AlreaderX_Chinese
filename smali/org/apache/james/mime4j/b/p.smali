.class public Lorg/apache/james/mime4j/b/p;
.super Lorg/apache/james/mime4j/b/a;
.source "ContentTypeFieldLenientImpl.java"

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/b/p$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/p$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/p;->c:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/p;->d:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/apache/james/mime4j/b/p;->e:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/b/p;->f:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lorg/apache/james/mime4j/b/p;->g:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/b/p;->h:Ljava/util/Map;

    return-void
.end method

.method private o()V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/james/mime4j/b/p;->d:Z

    .line 2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/b/a;->m()Lorg/apache/james/mime4j/stream/r;

    move-result-object v1

    .line 3
    sget-object v2, Lorg/apache/james/mime4j/stream/s;->d:Lorg/apache/james/mime4j/stream/s;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/stream/s;->h(Lorg/apache/james/mime4j/stream/r;)Lorg/apache/james/mime4j/stream/p;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/p;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    .line 7
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v4, v0

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    move-object v5, v4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lorg/apache/james/mime4j/b/a;->b:Lorg/apache/james/mime4j/codec/c;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lorg/apache/james/mime4j/b/a;->b:Lorg/apache/james/mime4j/codec/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Content-Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type value ignored"

    invoke-virtual {v0, v2, v4}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    move-object v2, v3

    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v3, v5

    goto :goto_1

    :cond_4
    move-object v4, v3

    .line 13
    :goto_1
    iput-object v2, p0, Lorg/apache/james/mime4j/b/p;->e:Ljava/lang/String;

    .line 14
    iput-object v3, p0, Lorg/apache/james/mime4j/b/p;->f:Ljava/lang/String;

    .line 15
    iput-object v4, p0, Lorg/apache/james/mime4j/b/p;->g:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lorg/apache/james/mime4j/b/p;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/p;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/stream/n;

    .line 18
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/n;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lorg/apache/james/mime4j/b/p;->h:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/p;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/p;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "boundary"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/b/p;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/b/p;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/p;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/p;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/p;->e:Ljava/lang/String;

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
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/p;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/p;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/p;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/p;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/p;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/p;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/p;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/p;->e:Ljava/lang/String;

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

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/p;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/p;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/p;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
