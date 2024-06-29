.class public Lorg/apache/james/mime4j/b/t;
.super Ljava/lang/Object;
.source "DelegatingFieldParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/james/mime4j/dom/d<",
        "Lorg/apache/james/mime4j/dom/field/a0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/d<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/dom/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/d<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/b/t;->a:Lorg/apache/james/mime4j/dom/d;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/b/t;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Lorg/apache/james/mime4j/stream/i;)Lorg/apache/james/mime4j/dom/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/stream/i;",
            ")",
            "Lorg/apache/james/mime4j/dom/d<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/b/t;->b:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/i;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/d;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/apache/james/mime4j/b/t;->a:Lorg/apache/james/mime4j/dom/d;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)Lorg/apache/james/mime4j/dom/field/a0;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/b/t;->b(Lorg/apache/james/mime4j/stream/i;)Lorg/apache/james/mime4j/dom/d;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Lorg/apache/james/mime4j/dom/d;->a(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)Lorg/apache/james/mime4j/dom/field/a0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/d<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/b/t;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
