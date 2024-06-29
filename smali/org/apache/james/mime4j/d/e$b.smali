.class Lorg/apache/james/mime4j/d/e$b;
.super Lorg/apache/james/mime4j/dom/j;
.source "BasicBodyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final b:Lorg/apache/james/mime4j/f/d$a;

.field private final c:Ljava/nio/charset/Charset;


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/f/d$a;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/j;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/d/e$b;->b:Lorg/apache/james/mime4j/f/d$a;

    .line 3
    iput-object p2, p0, Lorg/apache/james/mime4j/d/e$b;->c:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/e$b;->b:Lorg/apache/james/mime4j/f/d$a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/d$a;->a()Lorg/apache/commons/io/output/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/e;->A()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/e$b;->b:Lorg/apache/james/mime4j/f/d$a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/d$a;->a()Lorg/apache/commons/io/output/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/e;->x()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
