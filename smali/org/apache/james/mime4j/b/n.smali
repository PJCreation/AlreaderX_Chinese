.class public Lorg/apache/james/mime4j/b/n;
.super Lorg/apache/james/mime4j/b/a;
.source "ContentTransferEncodingFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/q;


# static fields
.field public static final c:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/b/n$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/n$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/n;->c:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/n;->d:Z

    return-void
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/james/mime4j/b/n;->d:Z

    .line 2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/b/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/b/n;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/james/mime4j/b/n;->e:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/n;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/n;->n()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/james/mime4j/dom/field/p;->a(Lorg/apache/james/mime4j/dom/field/q;)Z

    move-result v0

    return v0
.end method
