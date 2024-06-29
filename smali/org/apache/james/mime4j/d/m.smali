.class public Lorg/apache/james/mime4j/d/m;
.super Lorg/apache/james/mime4j/d/c;
.source "MessageImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/d/c;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/d/a;->o()Lorg/apache/james/mime4j/dom/e;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/james/mime4j/stream/r;

    const-string v2, "MIME-Version"

    const-string v3, "1.0"

    invoke-direct {v1, v2, v3}, Lorg/apache/james/mime4j/stream/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lorg/apache/james/mime4j/b/a0;->d:Lorg/apache/james/mime4j/dom/d;

    sget-object v3, Lorg/apache/james/mime4j/codec/c;->b:Lorg/apache/james/mime4j/codec/c;

    invoke-interface {v2, v1, v3}, Lorg/apache/james/mime4j/dom/d;->a(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)Lorg/apache/james/mime4j/dom/field/a0;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/e;->b(Lorg/apache/james/mime4j/stream/i;)V

    return-void
.end method


# virtual methods
.method protected k(Lorg/apache/james/mime4j/dom/field/s;Lorg/apache/james/mime4j/dom/field/s;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/b/o;->n(Lorg/apache/james/mime4j/dom/field/s;Lorg/apache/james/mime4j/dom/field/s;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
