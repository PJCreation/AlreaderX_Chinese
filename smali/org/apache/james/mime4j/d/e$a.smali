.class Lorg/apache/james/mime4j/d/e$a;
.super Lorg/apache/james/mime4j/dom/a;
.source "BasicBodyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:Lorg/apache/james/mime4j/f/d$a;


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/f/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/a;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/d/e$a;->b:Lorg/apache/james/mime4j/f/d$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/e$a;->b:Lorg/apache/james/mime4j/f/d$a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/d$a;->a()Lorg/apache/commons/io/output/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/e;->A()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/e$a;->b:Lorg/apache/james/mime4j/f/d$a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/d$a;->a()Lorg/apache/commons/io/output/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/e;->x()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
