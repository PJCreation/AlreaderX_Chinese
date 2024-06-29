.class public Lorg/apache/james/mime4j/b/a0;
.super Lorg/apache/james/mime4j/b/a;
.source "MimeVersionFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/y;


# static fields
.field private static final c:Ljava/util/BitSet;

.field public static final d:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e

    aput v2, v0, v1

    .line 1
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/s;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/b/a0;->c:Ljava/util/BitSet;

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/b/a0$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/a0$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/a0;->d:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/a0;->e:Z

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lorg/apache/james/mime4j/b/a0;->f:I

    .line 4
    iput p1, p0, Lorg/apache/james/mime4j/b/a0;->g:I

    return-void
.end method


# virtual methods
.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/james/mime4j/dom/field/x;->a(Lorg/apache/james/mime4j/dom/field/y;)Z

    move-result v0

    return v0
.end method
