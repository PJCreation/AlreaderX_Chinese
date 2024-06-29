.class public abstract Lorg/apache/james/mime4j/b/a;
.super Ljava/lang/Object;
.source "AbstractField.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/a0;


# instance fields
.field protected final a:Lorg/apache/james/mime4j/stream/i;

.field protected final b:Lorg/apache/james/mime4j/codec/c;


# direct methods
.method protected constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/b/a;->a:Lorg/apache/james/mime4j/stream/i;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lorg/apache/james/mime4j/codec/c;->b:Lorg/apache/james/mime4j/codec/c;

    :goto_0
    iput-object p2, p0, Lorg/apache/james/mime4j/b/a;->b:Lorg/apache/james/mime4j/codec/c;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/b/a;->a:Lorg/apache/james/mime4j/stream/i;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/i;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/b/a;->a:Lorg/apache/james/mime4j/stream/i;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/i;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/b/a;->a:Lorg/apache/james/mime4j/stream/i;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/i;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/james/mime4j/dom/field/z;->a(Lorg/apache/james/mime4j/dom/field/a0;)Z

    move-result v0

    return v0
.end method

.method protected m()Lorg/apache/james/mime4j/stream/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/b/a;->a:Lorg/apache/james/mime4j/stream/i;

    instance-of v1, v0, Lorg/apache/james/mime4j/stream/r;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/apache/james/mime4j/stream/r;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lorg/apache/james/mime4j/stream/r;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/i;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/james/mime4j/b/a;->a:Lorg/apache/james/mime4j/stream/i;

    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/james/mime4j/stream/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/b/a;->a:Lorg/apache/james/mime4j/stream/i;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
