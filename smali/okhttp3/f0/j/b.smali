.class public final Lokhttp3/f0/j/b;
.super Lokhttp3/f0/j/h;
.source "AndroidPlatform.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/j/b$b;,
        Lokhttp3/f0/j/b$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final d:Lokhttp3/f0/j/b$a;

.field private static final e:Z


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/f0/j/i/k;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lokhttp3/f0/j/i/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/f0/j/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/f0/j/b$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/f0/j/b;->d:Lokhttp3/f0/j/b$a;

    .line 1
    sget-object v0, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/h$a;->h()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 3
    :goto_1
    sput-boolean v1, Lokhttp3/f0/j/b;->e:Z

    return-void

    .line 4
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Expected Android API level 21+ but was "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lokhttp3/f0/j/h;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lokhttp3/f0/j/i/k;

    .line 2
    sget-object v1, Lokhttp3/f0/j/i/l;->h:Lokhttp3/f0/j/i/l$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lokhttp3/f0/j/i/l$a;->b(Lokhttp3/f0/j/i/l$a;Ljava/lang/String;ILjava/lang/Object;)Lokhttp3/f0/j/i/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lokhttp3/f0/j/i/j;

    sget-object v2, Lokhttp3/f0/j/i/f;->a:Lokhttp3/f0/j/i/f$a;

    invoke-virtual {v2}, Lokhttp3/f0/j/i/f$a;->d()Lokhttp3/f0/j/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/f0/j/i/j;-><init>(Lokhttp3/f0/j/i/j$a;)V

    aput-object v1, v0, v3

    .line 4
    new-instance v1, Lokhttp3/f0/j/i/j;

    sget-object v2, Lokhttp3/f0/j/i/i;->a:Lokhttp3/f0/j/i/i$b;

    invoke-virtual {v2}, Lokhttp3/f0/j/i/i$b;->a()Lokhttp3/f0/j/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/f0/j/i/j;-><init>(Lokhttp3/f0/j/i/j$a;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Lokhttp3/f0/j/i/j;

    sget-object v2, Lokhttp3/f0/j/i/g;->a:Lokhttp3/f0/j/i/g$b;

    invoke-virtual {v2}, Lokhttp3/f0/j/i/g$b;->a()Lokhttp3/f0/j/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/f0/j/i/j;-><init>(Lokhttp3/f0/j/i/j$a;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/collections/p;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lokhttp3/f0/j/i/k;

    .line 9
    invoke-interface {v3}, Lokhttp3/f0/j/i/k;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lokhttp3/f0/j/b;->f:Ljava/util/List;

    .line 10
    sget-object v0, Lokhttp3/f0/j/i/h;->a:Lokhttp3/f0/j/i/h$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/i/h$a;->a()Lokhttp3/f0/j/i/h;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/f0/j/b;->g:Lokhttp3/f0/j/i/h;

    return-void
.end method

.method public static final synthetic p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lokhttp3/f0/j/b;->e:Z

    return v0
.end method


# virtual methods
.method public c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/f0/l/c;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/f0/j/i/b;->b:Lokhttp3/f0/j/i/b$a;

    invoke-virtual {v0, p1}, Lokhttp3/f0/j/i/b$a;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/f0/j/i/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lokhttp3/f0/j/h;->c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/f0/l/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/f0/l/e;
    .locals 6

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 2
    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    .line 3
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    new-instance v1, Lokhttp3/f0/j/b$b;

    const-string v2, "method"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lokhttp3/f0/j/b$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-super {p0, p1}, Lokhttp3/f0/j/h;->d(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/f0/l/e;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/f0/j/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lokhttp3/f0/j/i/k;

    invoke-interface {v2, p1}, Lokhttp3/f0/j/i/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lokhttp3/f0/j/i/k;

    if-nez v1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    invoke-interface {v1, p1, p2, p3}, Lokhttp3/f0/j/i/k;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_0

    .line 3
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in connect"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :cond_0
    throw p1
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/f0/j/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lokhttp3/f0/j/i/k;

    invoke-interface {v3, p1}, Lokhttp3/f0/j/i/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lokhttp3/f0/j/i/k;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1, p1}, Lokhttp3/f0/j/i/k;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "closer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/f0/j/b;->g:Lokhttp3/f0/j/i/h;

    invoke-virtual {v0, p1}, Lokhttp3/f0/j/i/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x17

    if-lt v0, p1, :cond_1

    .line 2
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/f0/j/b;->g:Lokhttp3/f0/j/i/h;

    invoke-virtual {v0, p2}, Lokhttp3/f0/j/i/h;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lokhttp3/f0/j/h;->k(Lokhttp3/f0/j/h;Ljava/lang/String;ILjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
