.class public Lorg/apache/james/mime4j/b/k;
.super Lorg/apache/james/mime4j/b/a;
.source "ContentLocationFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/m;


# static fields
.field private static final c:Ljava/util/regex/Pattern;

.field public static final d:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/b/k;->c:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/b/k$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/k$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/k;->d:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/k;->e:Z

    return-void
.end method


# virtual methods
.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/james/mime4j/dom/field/l;->a(Lorg/apache/james/mime4j/dom/field/m;)Z

    move-result v0

    return v0
.end method
