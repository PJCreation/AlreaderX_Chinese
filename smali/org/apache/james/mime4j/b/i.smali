.class public Lorg/apache/james/mime4j/b/i;
.super Lorg/apache/james/mime4j/b/a;
.source "ContentLanguageFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/i;


# static fields
.field private static final c:Ljava/util/BitSet;

.field public static final d:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2c

    aput v2, v0, v1

    .line 1
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/s;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/b/i;->c:Ljava/util/BitSet;

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/b/i$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/i$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/i;->d:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/i;->e:Z

    return-void
.end method


# virtual methods
.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/james/mime4j/dom/field/h;->a(Lorg/apache/james/mime4j/dom/field/i;)Z

    move-result v0

    return v0
.end method
