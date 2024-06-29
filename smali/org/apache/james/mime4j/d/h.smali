.class public Lorg/apache/james/mime4j/d/h;
.super Ljava/lang/Object;
.source "DefaultBodyDescriptorBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lorg/apache/james/mime4j/codec/c;

.field private final d:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/d/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/d<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;",
            "Lorg/apache/james/mime4j/codec/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/d/h;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lorg/apache/james/mime4j/b/s;->d()Lorg/apache/james/mime4j/dom/d;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/apache/james/mime4j/d/h;->d:Lorg/apache/james/mime4j/dom/d;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object p3, Lorg/apache/james/mime4j/codec/c;->b:Lorg/apache/james/mime4j/codec/c;

    :goto_1
    iput-object p3, p0, Lorg/apache/james/mime4j/d/h;->c:Lorg/apache/james/mime4j/codec/c;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/d/h;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public build()Lorg/apache/james/mime4j/stream/b;
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/h;->e:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/d/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/s;->a()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/s;->i()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/s;->f()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/s;->c()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/s;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    const-string v6, "multipart"

    .line 7
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :cond_2
    :goto_1
    const-string v6, "text"

    if-nez v2, :cond_4

    .line 8
    iget-object v2, p0, Lorg/apache/james/mime4j/d/h;->b:Ljava/lang/String;

    const-string v3, "multipart/digest"

    invoke-static {v3, v2}, Lorg/apache/james/mime4j/f/k;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "message/rfc822"

    const-string v3, "message"

    const-string v4, "rfc822"

    goto :goto_2

    :cond_3
    const-string v2, "text/plain"

    const-string v4, "plain"

    move-object v8, v2

    move-object v10, v4

    move-object v9, v6

    goto :goto_3

    :cond_4
    :goto_2
    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    :goto_3
    if-nez v5, :cond_5

    .line 9
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v5, "us-ascii"

    :cond_5
    move-object v12, v5

    .line 10
    invoke-static {v8}, Lorg/apache/james/mime4j/f/k;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v11, v1

    goto :goto_4

    :cond_6
    move-object v11, v0

    .line 11
    :goto_4
    new-instance v0, Lorg/apache/james/mime4j/d/l;

    iget-object v13, p0, Lorg/apache/james/mime4j/d/h;->e:Ljava/util/Map;

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lorg/apache/james/mime4j/d/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public c()Lorg/apache/james/mime4j/stream/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/h;->e:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/d/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/s;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/d/h;->b:Ljava/lang/String;

    const-string v1, "multipart/digest"

    invoke-static {v1, v0}, Lorg/apache/james/mime4j/f/k;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "message/rfc822"

    goto :goto_0

    :cond_1
    const-string v0, "text/plain"

    .line 4
    :goto_0
    new-instance v1, Lorg/apache/james/mime4j/d/h;

    iget-object v2, p0, Lorg/apache/james/mime4j/d/h;->d:Lorg/apache/james/mime4j/dom/d;

    iget-object v3, p0, Lorg/apache/james/mime4j/d/h;->c:Lorg/apache/james/mime4j/codec/c;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/james/mime4j/d/h;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;Lorg/apache/james/mime4j/codec/c;)V

    return-object v1
.end method

.method public d(Lorg/apache/james/mime4j/stream/r;)Lorg/apache/james/mime4j/stream/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/h;->d:Lorg/apache/james/mime4j/dom/d;

    iget-object v1, p0, Lorg/apache/james/mime4j/d/h;->c:Lorg/apache/james/mime4j/codec/c;

    invoke-interface {v0, p1, v1}, Lorg/apache/james/mime4j/dom/d;->a(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)Lorg/apache/james/mime4j/dom/field/a0;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/i;->h()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/field/a0;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/d/h;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/apache/james/mime4j/d/h;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method
