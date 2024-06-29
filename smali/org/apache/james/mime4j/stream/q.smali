.class public Lorg/apache/james/mime4j/stream/q;
.super Ljava/lang/Object;
.source "RawEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/f;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:Lorg/apache/james/mime4j/stream/EntityState;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/q;->a:Ljava/io/InputStream;

    .line 3
    sget-object p1, Lorg/apache/james/mime4j/stream/EntityState;->T_RAW_ENTITY:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/q;->b:Lorg/apache/james/mime4j/stream/EntityState;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lorg/apache/james/mime4j/stream/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/q;->g()Lorg/apache/james/mime4j/stream/r;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/apache/james/mime4j/stream/f;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/q;->b:Lorg/apache/james/mime4j/stream/EntityState;

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lorg/apache/james/mime4j/stream/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lorg/apache/james/mime4j/stream/RecursionMode;)V
    .locals 0

    return-void
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Raw entity does not support stream decoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/q;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public g()Lorg/apache/james/mime4j/stream/r;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lorg/apache/james/mime4j/stream/EntityState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/q;->b:Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0
.end method
