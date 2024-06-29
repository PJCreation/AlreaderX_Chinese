.class public Lorg/apache/james/mime4j/d/o;
.super Lorg/apache/james/mime4j/dom/g;
.source "MessageServiceFactoryImpl.java"


# instance fields
.field private a:Lorg/apache/james/mime4j/d/f;

.field private b:Lorg/apache/james/mime4j/stream/k;

.field private c:Lorg/apache/james/mime4j/stream/c;

.field private d:Lorg/apache/james/mime4j/codec/c;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/james/mime4j/d/o;->a:Lorg/apache/james/mime4j/d/f;

    .line 3
    iput-object v0, p0, Lorg/apache/james/mime4j/d/o;->b:Lorg/apache/james/mime4j/stream/k;

    .line 4
    iput-object v0, p0, Lorg/apache/james/mime4j/d/o;->c:Lorg/apache/james/mime4j/stream/c;

    .line 5
    iput-object v0, p0, Lorg/apache/james/mime4j/d/o;->d:Lorg/apache/james/mime4j/codec/c;

    .line 6
    iput-object v0, p0, Lorg/apache/james/mime4j/d/o;->e:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lorg/apache/james/mime4j/d/o;->f:Ljava/lang/Boolean;

    return-void
.end method
