.class public Lcom/thegrizzlylabs/sardineandroid/impl/b;
.super Ljava/lang/Object;
.source "OkHttpSardine.java"

# interfaces
.implements Lcom/thegrizzlylabs/sardineandroid/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thegrizzlylabs/sardineandroid/impl/b$a;
    }
.end annotation


# instance fields
.field private a:Lokhttp3/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0}, Lokhttp3/z$a;-><init>()V

    invoke-virtual {v0}, Lokhttp3/z$a;->c()Lokhttp3/z;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/b;->a:Lokhttp3/z;

    return-void
.end method

.method public constructor <init>(Lokhttp3/z;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/impl/b;->a:Lokhttp3/z;

    return-void
.end method

.method private h(Lcom/thegrizzlylabs/sardineandroid/model/Prop;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thegrizzlylabs/sardineandroid/model/Prop;",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    .line 3
    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/c/c;->b(Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i(Lokhttp3/v$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> (<"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "If"

    invoke-virtual {p1, p3, p2}, Lokhttp3/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    return-void
.end method

.method private j(Lokhttp3/a0;Lcom/thegrizzlylabs/sardineandroid/impl/c/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/a0;",
            "Lcom/thegrizzlylabs/sardineandroid/impl/c/e<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/b;->a:Lokhttp3/z;

    invoke-virtual {v0, p1}, Lokhttp3/z;->x(Lokhttp3/a0;)Lokhttp3/f;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/f;->execute()Lokhttp3/c0;

    move-result-object p1

    .line 2
    invoke-interface {p2, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/e;->a(Lokhttp3/c0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private k(Lokhttp3/a0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/c/g;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/c/g;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->j(Lokhttp3/a0;Lcom/thegrizzlylabs/sardineandroid/impl/c/e;)Ljava/lang/Object;

    return-void
.end method

.method private r(Ljava/lang/String;Lokhttp3/b0;)V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/v$a;

    invoke-direct {v0}, Lokhttp3/v$a;-><init>()V

    invoke-virtual {v0}, Lokhttp3/v$a;->d()Lokhttp3/v;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->s(Ljava/lang/String;Lokhttp3/b0;Lokhttp3/v;)V

    return-void
.end method

.method private s(Ljava/lang/String;Lokhttp3/b0;Lokhttp3/v;)V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/a0$a;

    invoke-direct {v0}, Lokhttp3/a0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/a0$a;->q(Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lokhttp3/a0$a;->k(Lokhttp3/b0;)Lokhttp3/a0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p3}, Lokhttp3/a0$a;->i(Lokhttp3/v;)Lokhttp3/a0$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokhttp3/a0$a;->b()Lokhttp3/a0;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->k(Lokhttp3/a0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->t(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/a0$a;

    invoke-direct {v0}, Lokhttp3/a0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/a0$a;->q(Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object p1

    const-string v0, "MKCOL"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lokhttp3/a0$a;->j(Ljava/lang/String;Lokhttp3/b0;)Lokhttp3/a0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lokhttp3/a0$a;->b()Lokhttp3/a0;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->k(Lokhttp3/a0;)V

    return-void
.end method

.method public c(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/a;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {p3}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    .line 2
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Allprop;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Allprop;-><init>()V

    invoke-virtual {p3, v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setAllprop(Lcom/thegrizzlylabs/sardineandroid/model/Allprop;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->p(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->o(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/a0$a;

    invoke-direct {v0}, Lokhttp3/a0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/a0$a;->q(Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object p1

    const-string v0, "Depth"

    const-string v1, "0"

    .line 3
    invoke-virtual {p1, v0, v1}, Lokhttp3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object p1

    const-string v0, "PROPFIND"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lokhttp3/a0$a;->j(Ljava/lang/String;Lokhttp3/b0;)Lokhttp3/a0$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokhttp3/a0$a;->b()Lokhttp3/a0;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/c/a;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/c/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->j(Lokhttp3/a0;Lcom/thegrizzlylabs/sardineandroid/impl/c/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/a0$a;

    invoke-direct {v0}, Lokhttp3/a0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/a0$a;->q(Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lokhttp3/a0$a;->c()Lokhttp3/a0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lokhttp3/a0$a;->b()Lokhttp3/a0;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->k(Lokhttp3/a0;)V

    return-void
.end method

.method public e(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p3}, Lokhttp3/y;->f(Ljava/lang/String;)Lokhttp3/y;

    move-result-object p3

    .line 2
    :goto_0
    invoke-static {p3, p2}, Lokhttp3/b0;->e(Lokhttp3/y;[B)Lokhttp3/b0;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->r(Ljava/lang/String;Lokhttp3/b0;)V

    return-void
.end method

.method public f(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->n(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->q(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lokhttp3/v;->f(Ljava/util/Map;)Lokhttp3/v;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->m(Ljava/lang/String;Lokhttp3/v;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Lokhttp3/v;)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/a0$a;

    invoke-direct {v0}, Lokhttp3/a0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/a0$a;->q(Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lokhttp3/a0$a;->f()Lokhttp3/a0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lokhttp3/a0$a;->i(Lokhttp3/v;)Lokhttp3/a0$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokhttp3/a0$a;->b()Lokhttp3/a0;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/c/b;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/c/b;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->j(Lokhttp3/a0;Lcom/thegrizzlylabs/sardineandroid/impl/c/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

.method public n(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->c(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    .line 2
    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    .line 3
    invoke-direct {p0, v1, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->h(Lcom/thegrizzlylabs/sardineandroid/model/Prop;Ljava/util/Set;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->p(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected p(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/thegrizzlylabs/sardineandroid/model/Propfind;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/a;",
            ">;"
        }
    .end annotation

    const-string v0, "text/xml"

    .line 1
    invoke-static {v0}, Lokhttp3/y;->f(Ljava/lang/String;)Lokhttp3/y;

    move-result-object v0

    invoke-static {p3}, Lcom/thegrizzlylabs/sardineandroid/c/c;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lokhttp3/b0;->d(Lokhttp3/y;Ljava/lang/String;)Lokhttp3/b0;

    move-result-object p3

    .line 2
    new-instance v0, Lokhttp3/a0$a;

    invoke-direct {v0}, Lokhttp3/a0$a;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lokhttp3/a0$a;->q(Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object p1

    if-gez p2, :cond_0

    const-string p2, "infinity"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "Depth"

    invoke-virtual {p1, v0, p2}, Lokhttp3/a0$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/a0$a;

    move-result-object p1

    const-string p2, "PROPFIND"

    .line 5
    invoke-virtual {p1, p2, p3}, Lokhttp3/a0$a;->j(Ljava/lang/String;Lokhttp3/b0;)Lokhttp3/a0$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lokhttp3/a0$a;->b()Lokhttp3/a0;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/c/d;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/c/d;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->j(Lokhttp3/a0;Lcom/thegrizzlylabs/sardineandroid/impl/c/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public q(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p3}, Lokhttp3/y;->f(Ljava/lang/String;)Lokhttp3/y;

    move-result-object p3

    .line 2
    :goto_0
    invoke-static {p3, p2}, Lokhttp3/b0;->c(Lokhttp3/y;Ljava/io/File;)Lokhttp3/b0;

    move-result-object p2

    .line 3
    new-instance p3, Lokhttp3/v$a;

    invoke-direct {p3}, Lokhttp3/v$a;-><init>()V

    if-eqz p4, :cond_1

    const-string p4, "Expect"

    const-string v0, "100-Continue"

    .line 4
    invoke-virtual {p3, p4, v0}, Lokhttp3/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    .line 5
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 6
    invoke-direct {p0, p3, p1, p5}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->i(Lokhttp3/v$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p3}, Lokhttp3/v$a;->d()Lokhttp3/v;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/b;->s(Ljava/lang/String;Lokhttp3/b0;Lokhttp3/v;)V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/b;->a:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->w()Lokhttp3/z$a;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 2
    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/impl/b$a;

    invoke-direct {p3, p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/b$a;-><init>(Lcom/thegrizzlylabs/sardineandroid/impl/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lokhttp3/z$a;->a(Lokhttp3/x;)Lokhttp3/z$a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/impl/a;

    invoke-direct {p3, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lokhttp3/z$a;->b(Lokhttp3/c;)Lokhttp3/z$a;

    .line 4
    :goto_0
    invoke-virtual {v0}, Lokhttp3/z$a;->c()Lokhttp3/z;

    move-result-object p1

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/impl/b;->a:Lokhttp3/z;

    return-void
.end method
