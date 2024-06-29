.class public final Lorg/apache/commons/io/o/d;
.super Ljava/lang/Object;
.source "Uncheck.java"


# direct methods
.method public static a(Lorg/apache/commons/io/o/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/o/b<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/o/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/io/o/d;->c(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method public static b(Lorg/apache/commons/io/o/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/o/c<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/io/o/c;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/io/o/d;->c(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    move-result-object p0

    throw p0
.end method

.method private static c(Ljava/io/IOException;)Ljava/io/UncheckedIOException;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method
