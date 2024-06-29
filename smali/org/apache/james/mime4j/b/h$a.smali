.class Lorg/apache/james/mime4j/b/h$a;
.super Ljava/lang/Object;
.source "ContentLanguageFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/james/mime4j/dom/d<",
        "Lorg/apache/james/mime4j/dom/field/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)Lorg/apache/james/mime4j/dom/field/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/b/h$a;->b(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)Lorg/apache/james/mime4j/dom/field/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)Lorg/apache/james/mime4j/dom/field/i;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/b/h;

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/b/h;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    return-object v0
.end method
