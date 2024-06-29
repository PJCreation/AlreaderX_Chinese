.class final synthetic Lokio/l;
.super Ljava/lang/Object;
.source "JvmOkio.kt"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "okio.Okio"

    .line 1
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/l;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public static final synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lokio/l;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static final b(Ljava/lang/AssertionError;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "getsockname failed"

    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/l;->H(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final c(Ljava/net/Socket;)Lokio/t;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/u;

    invoke-direct {v0, p0}, Lokio/u;-><init>(Ljava/net/Socket;)V

    .line 2
    new-instance v1, Lokio/o;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lokio/o;-><init>(Ljava/io/OutputStream;Lokio/w;)V

    .line 3
    invoke-virtual {v0, v1}, Lokio/a;->x(Lokio/t;)Lokio/t;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/io/File;)Lokio/v;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/j;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Lokio/w;->b:Lokio/w;

    invoke-direct {v0, v1, p0}, Lokio/j;-><init>(Ljava/io/InputStream;Lokio/w;)V

    return-object v0
.end method

.method public static final e(Ljava/io/InputStream;)Lokio/v;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/j;

    new-instance v1, Lokio/w;

    invoke-direct {v1}, Lokio/w;-><init>()V

    invoke-direct {v0, p0, v1}, Lokio/j;-><init>(Ljava/io/InputStream;Lokio/w;)V

    return-object v0
.end method

.method public static final f(Ljava/net/Socket;)Lokio/v;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/u;

    invoke-direct {v0, p0}, Lokio/u;-><init>(Ljava/net/Socket;)V

    .line 2
    new-instance v1, Lokio/j;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lokio/j;-><init>(Ljava/io/InputStream;Lokio/w;)V

    .line 3
    invoke-virtual {v0, v1}, Lokio/a;->y(Lokio/v;)Lokio/v;

    move-result-object p0

    return-object p0
.end method
