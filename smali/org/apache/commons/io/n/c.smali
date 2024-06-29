.class public abstract Lorg/apache/commons/io/n/c;
.super Lorg/apache/commons/io/n/b;
.source "AbstractStreamBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/n/c<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/n/b<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/nio/charset/Charset;

.field private e:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/n/b;-><init>()V

    const/16 v0, 0x2000

    .line 2
    iput v0, p0, Lorg/apache/commons/io/n/c;->b:I

    .line 3
    iput v0, p0, Lorg/apache/commons/io/n/c;->c:I

    .line 4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/n/c;->d:Ljava/nio/charset/Charset;

    .line 5
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/n/c;->e:Ljava/nio/charset/Charset;

    return-void
.end method
