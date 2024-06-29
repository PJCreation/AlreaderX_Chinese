.class public Lorg/apache/james/mime4j/b/j;
.super Lorg/apache/james/mime4j/b/a;
.source "ContentLengthFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/k;


# static fields
.field public static final c:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/b/j$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/j$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/j;->c:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/j;->d:Z

    return-void
.end method


# virtual methods
.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/james/mime4j/dom/field/j;->a(Lorg/apache/james/mime4j/dom/field/k;)Z

    move-result v0

    return v0
.end method
