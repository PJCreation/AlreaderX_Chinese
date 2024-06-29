.class public final Lokhttp3/j$b;
.super Ljava/lang/Object;
.source "CipherSuite.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

    invoke-direct {p0}, Lokhttp3/j$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lokhttp3/j$b;Ljava/lang/String;I)Lokhttp3/j;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/j$b;->d(Ljava/lang/String;I)Lokhttp3/j;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/lang/String;I)Lokhttp3/j;
    .locals 1

    .line 1
    new-instance p2, Lokhttp3/j;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lokhttp3/j;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/f;)V

    .line 2
    invoke-static {}, Lokhttp3/j;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "TLS_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/l;->C(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const-string v5, "this as java.lang.String).substring(startIndex)"

    const/4 v6, 0x4

    const-string v7, "SSL_"

    if-eqz v4, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, v7, v1, v2, v3}, Lkotlin/text/l;->C(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final declared-synchronized b(Ljava/lang/String;)Lokhttp3/j;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "javaName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lokhttp3/j;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/j;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lokhttp3/j;->a()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1}, Lokhttp3/j$b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/j;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lokhttp3/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lokhttp3/j;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/f;)V

    .line 4
    :cond_0
    invoke-static {}, Lokhttp3/j;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lokhttp3/j;->b()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
