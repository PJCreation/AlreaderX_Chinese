.class public Lorg/apache/james/mime4j/d/e;
.super Ljava/lang/Object;
.source "BasicBodyFactory.java"

# interfaces
.implements Lorg/apache/james/mime4j/d/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/d/e$a;,
        Lorg/apache/james/mime4j/d/e$b;
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/james/mime4j/d/e;


# instance fields
.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/d/e;

    invoke-direct {v0}, Lorg/apache/james/mime4j/d/e;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/d/e;->a:Lorg/apache/james/mime4j/d/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/d/e;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/james/mime4j/d/e;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/d/e;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/a;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/d/e$a;

    invoke-static {p1}, Lorg/apache/james/mime4j/f/g;->a(Ljava/io/InputStream;)Lorg/apache/james/mime4j/f/d$a;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/d/e$a;-><init>(Lorg/apache/james/mime4j/f/d$a;)V

    return-object v0
.end method

.method public b(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/j;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/d/e$b;

    invoke-static {p1}, Lorg/apache/james/mime4j/f/g;->a(Ljava/io/InputStream;)Lorg/apache/james/mime4j/f/d$a;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/d/e;->c(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/d/e$b;-><init>(Lorg/apache/james/mime4j/f/d$a;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/d/e;->b:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :catch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/e;->b:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/apache/james/mime4j/d/e;->b:Ljava/nio/charset/Charset;

    return-object p1
.end method
