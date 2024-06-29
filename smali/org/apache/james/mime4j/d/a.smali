.class public abstract Lorg/apache/james/mime4j/d/a;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/c;


# instance fields
.field private a:Lorg/apache/james/mime4j/dom/e;

.field private b:Lorg/apache/james/mime4j/dom/b;

.field private c:Lorg/apache/james/mime4j/dom/c;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/james/mime4j/d/a;->a:Lorg/apache/james/mime4j/dom/e;

    .line 3
    iput-object v0, p0, Lorg/apache/james/mime4j/d/a;->b:Lorg/apache/james/mime4j/dom/b;

    .line 4
    iput-object v0, p0, Lorg/apache/james/mime4j/d/a;->c:Lorg/apache/james/mime4j/dom/c;

    return-void
.end method

.method private l()Lorg/apache/james/mime4j/dom/field/s;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/d/a;->i()Lorg/apache/james/mime4j/dom/e;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/dom/field/u;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/e;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/i;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/s;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/d/a;->l()Lorg/apache/james/mime4j/dom/field/s;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/d/a;->m()Lorg/apache/james/mime4j/dom/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/c;->i()Lorg/apache/james/mime4j/dom/e;

    move-result-object v1

    sget-object v2, Lorg/apache/james/mime4j/dom/field/u;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/dom/e;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/i;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/s;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/d/a;->k(Lorg/apache/james/mime4j/dom/field/s;Lorg/apache/james/mime4j/dom/field/s;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/apache/james/mime4j/dom/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/d/a;->c:Lorg/apache/james/mime4j/dom/c;

    return-void
.end method

.method public d()Lorg/apache/james/mime4j/dom/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/a;->b:Lorg/apache/james/mime4j/dom/b;

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/d/a;->l()Lorg/apache/james/mime4j/dom/field/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/s;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/d/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Disposition"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/d/a;->n(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/a0;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/e;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lorg/apache/james/mime4j/dom/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/a;->b:Lorg/apache/james/mime4j/dom/b;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/d/a;->b:Lorg/apache/james/mime4j/dom/b;

    .line 3
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/dom/b;->b(Lorg/apache/james/mime4j/dom/c;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "body already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Lorg/apache/james/mime4j/dom/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/a;->a:Lorg/apache/james/mime4j/dom/e;

    return-object v0
.end method

.method public j(Lorg/apache/james/mime4j/dom/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/d/a;->a:Lorg/apache/james/mime4j/dom/e;

    return-void
.end method

.method protected abstract k(Lorg/apache/james/mime4j/dom/field/s;Lorg/apache/james/mime4j/dom/field/s;)Ljava/lang/String;
.end method

.method public m()Lorg/apache/james/mime4j/dom/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/a;->c:Lorg/apache/james/mime4j/dom/c;

    return-object v0
.end method

.method n(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/d/a;->i()Lorg/apache/james/mime4j/dom/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/e;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/i;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/field/a0;

    return-object p1
.end method

.method o()Lorg/apache/james/mime4j/dom/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/a;->a:Lorg/apache/james/mime4j/dom/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/d/k;

    invoke-direct {v0}, Lorg/apache/james/mime4j/d/k;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/d/a;->a:Lorg/apache/james/mime4j/dom/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/d/a;->a:Lorg/apache/james/mime4j/dom/e;

    return-object v0
.end method
