.class public final Lorg/apache/james/mime4j/io/b;
.super Ljava/lang/Object;
.source "InputStreams.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;)Ljava/io/InputStream;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/io/j;

    sget-object v1, Lorg/apache/james/mime4j/a;->a:Ljava/nio/charset/Charset;

    const/16 v2, 0x400

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/james/mime4j/io/j;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CharSequence may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
