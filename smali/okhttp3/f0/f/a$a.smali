.class public final Lokhttp3/f0/f/a$a;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/f0/f/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lokhttp3/f0/f/a$a;Lokhttp3/v;Lokhttp3/v;)Lokhttp3/v;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/f0/f/a$a;->c(Lokhttp3/v;Lokhttp3/v;)Lokhttp3/v;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lokhttp3/f0/f/a$a;Lokhttp3/c0;)Lokhttp3/c0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/f0/f/a$a;->f(Lokhttp3/c0;)Lokhttp3/c0;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lokhttp3/v;Lokhttp3/v;)Lokhttp3/v;
    .locals 9

    .line 1
    new-instance v0, Lokhttp3/v$a;

    invoke-direct {v0}, Lokhttp3/v$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/v;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 3
    invoke-virtual {p1, v3}, Lokhttp3/v;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {p1, v3}, Lokhttp3/v;->g(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Warning"

    const/4 v7, 0x1

    .line 5
    invoke-static {v6, v5, v7}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-static {v3, v8, v2, v6, v7}, Lkotlin/text/l;->C(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0, v5}, Lokhttp3/f0/f/a$a;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-direct {p0, v5}, Lokhttp3/f0/f/a$a;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {p2, v5}, Lokhttp3/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0, v5, v3}, Lokhttp3/v$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    :cond_2
    :goto_1
    move v3, v4

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p2}, Lokhttp3/v;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_5

    add-int/lit8 v1, v2, 0x1

    .line 11
    invoke-virtual {p2, v2}, Lokhttp3/v;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-direct {p0, v3}, Lokhttp3/f0/f/a$a;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v3}, Lokhttp3/f0/f/a$a;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {p2, v2}, Lokhttp3/v;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lokhttp3/v$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    :cond_4
    move v2, v1

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v0}, Lokhttp3/v$a;->d()Lokhttp3/v;

    move-result-object p1

    return-object p1
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Content-Length"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 2
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 3
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final e(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Connection"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-static {v0, p1, v1}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final f(Lokhttp3/c0;)Lokhttp3/c0;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lokhttp3/c0;->a()Lokhttp3/d0;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lokhttp3/c0;->I()Lokhttp3/c0$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/c0$a;->b(Lokhttp3/d0;)Lokhttp3/c0$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/c0$a;->c()Lokhttp3/c0;

    move-result-object p1

    :cond_1
    return-object p1
.end method
