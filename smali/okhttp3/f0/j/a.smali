.class public final Lokhttp3/f0/j/a;
.super Lokhttp3/f0/j/h;
.source "Android10Platform.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/j/a$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final d:Lokhttp3/f0/j/a$a;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/f0/j/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/f0/j/a$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/f0/j/a;->d:Lokhttp3/f0/j/a$a;

    .line 1
    sget-object v0, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/h$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lokhttp3/f0/j/a;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lokhttp3/f0/j/h;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lokhttp3/f0/j/i/k;

    .line 2
    sget-object v1, Lokhttp3/f0/j/i/a;->a:Lokhttp3/f0/j/i/a$a;

    invoke-virtual {v1}, Lokhttp3/f0/j/i/a$a;->a()Lokhttp3/f0/j/i/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lokhttp3/f0/j/i/j;

    sget-object v2, Lokhttp3/f0/j/i/f;->a:Lokhttp3/f0/j/i/f$a;

    invoke-virtual {v2}, Lokhttp3/f0/j/i/f$a;->d()Lokhttp3/f0/j/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/f0/j/i/j;-><init>(Lokhttp3/f0/j/i/j$a;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

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
    iput-object v1, p0, Lokhttp3/f0/j/a;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lokhttp3/f0/j/a;->e:Z

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

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/f0/j/a;->f:Ljava/util/List;

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

.method public g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/f0/j/a;->f:Ljava/util/List;

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

.method public i(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
