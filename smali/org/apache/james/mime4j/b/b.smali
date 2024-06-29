.class public Lorg/apache/james/mime4j/b/b;
.super Lorg/apache/james/mime4j/b/a;
.source "AddressListFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/a;


# static fields
.field public static final c:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/a;",
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
    new-instance v0, Lorg/apache/james/mime4j/b/b$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/b$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/b;->c:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/b;->d:Z

    return-void
.end method
