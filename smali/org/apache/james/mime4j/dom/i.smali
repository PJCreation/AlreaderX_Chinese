.class public abstract Lorg/apache/james/mime4j/dom/i;
.super Ljava/lang/Object;
.source "SingleBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/b;


# instance fields
.field private a:Lorg/apache/james/mime4j/dom/c;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/james/mime4j/dom/i;->a:Lorg/apache/james/mime4j/dom/c;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/io/InputStream;
.end method

.method public b(Lorg/apache/james/mime4j/dom/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/i;->a:Lorg/apache/james/mime4j/dom/c;

    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/i;->a()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/output/d;->f:Lorg/apache/commons/io/output/d;

    invoke-static {v0, v1}, Lorg/apache/commons/io/m;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
