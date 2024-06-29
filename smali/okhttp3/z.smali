.class public Lokhttp3/z;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/z$a;,
        Lokhttp3/z$b;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final e:Lokhttp3/z$b;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Ljavax/net/ssl/HostnameVerifier;

.field private final C:Lokhttp3/h;

.field private final D:Lokhttp3/f0/l/c;

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private final J:J

.field private final K:Lokhttp3/internal/connection/h;

.field private final h:Lokhttp3/r;

.field private final i:Lokhttp3/l;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lokhttp3/t$c;

.field private final m:Z

.field private final n:Lokhttp3/c;

.field private final o:Z

.field private final p:Z

.field private final q:Lokhttp3/p;

.field private final r:Lokhttp3/d;

.field private final s:Lokhttp3/s;

.field private final t:Ljava/net/Proxy;

.field private final u:Ljava/net/ProxySelector;

.field private final v:Lokhttp3/c;

.field private final w:Ljavax/net/SocketFactory;

.field private final x:Ljavax/net/ssl/SSLSocketFactory;

.field private final y:Ljavax/net/ssl/X509TrustManager;

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lokhttp3/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/z$b;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/z;->e:Lokhttp3/z$b;

    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    .line 1
    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lokhttp3/f0/d;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lokhttp3/z;->f:Ljava/util/List;

    new-array v0, v0, [Lokhttp3/m;

    .line 2
    sget-object v1, Lokhttp3/m;->e:Lokhttp3/m;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/m;->g:Lokhttp3/m;

    aput-object v1, v0, v4

    .line 3
    invoke-static {v0}, Lokhttp3/f0/d;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/z;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0}, Lokhttp3/z$a;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/z;-><init>(Lokhttp3/z$a;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/z$a;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/z$a;->m()Lokhttp3/r;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->h:Lokhttp3/r;

    .line 3
    invoke-virtual {p1}, Lokhttp3/z$a;->j()Lokhttp3/l;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->i:Lokhttp3/l;

    .line 4
    invoke-virtual {p1}, Lokhttp3/z$a;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/f0/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->j:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lokhttp3/z$a;->u()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/f0/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->k:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lokhttp3/z$a;->o()Lokhttp3/t$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->l:Lokhttp3/t$c;

    .line 7
    invoke-virtual {p1}, Lokhttp3/z$a;->B()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/z;->m:Z

    .line 8
    invoke-virtual {p1}, Lokhttp3/z$a;->d()Lokhttp3/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->n:Lokhttp3/c;

    .line 9
    invoke-virtual {p1}, Lokhttp3/z$a;->p()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/z;->o:Z

    .line 10
    invoke-virtual {p1}, Lokhttp3/z$a;->q()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/z;->p:Z

    .line 11
    invoke-virtual {p1}, Lokhttp3/z$a;->l()Lokhttp3/p;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->q:Lokhttp3/p;

    .line 12
    invoke-virtual {p1}, Lokhttp3/z$a;->e()Lokhttp3/d;

    .line 13
    invoke-virtual {p1}, Lokhttp3/z$a;->n()Lokhttp3/s;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->s:Lokhttp3/s;

    .line 14
    invoke-virtual {p1}, Lokhttp3/z$a;->x()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->t:Ljava/net/Proxy;

    .line 15
    invoke-virtual {p1}, Lokhttp3/z$a;->x()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/f0/k/a;->a:Lokhttp3/f0/k/a;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lokhttp3/z$a;->z()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lokhttp3/f0/k/a;->a:Lokhttp3/f0/k/a;

    .line 17
    :cond_2
    :goto_0
    iput-object v0, p0, Lokhttp3/z;->u:Ljava/net/ProxySelector;

    .line 18
    invoke-virtual {p1}, Lokhttp3/z$a;->y()Lokhttp3/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->v:Lokhttp3/c;

    .line 19
    invoke-virtual {p1}, Lokhttp3/z$a;->D()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->w:Ljavax/net/SocketFactory;

    .line 20
    invoke-virtual {p1}, Lokhttp3/z$a;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->z:Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Lokhttp3/z$a;->w()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/z;->A:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Lokhttp3/z$a;->r()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/z;->B:Ljavax/net/ssl/HostnameVerifier;

    .line 23
    invoke-virtual {p1}, Lokhttp3/z$a;->f()I

    move-result v1

    iput v1, p0, Lokhttp3/z;->E:I

    .line 24
    invoke-virtual {p1}, Lokhttp3/z$a;->i()I

    move-result v1

    iput v1, p0, Lokhttp3/z;->F:I

    .line 25
    invoke-virtual {p1}, Lokhttp3/z$a;->A()I

    move-result v1

    iput v1, p0, Lokhttp3/z;->G:I

    .line 26
    invoke-virtual {p1}, Lokhttp3/z$a;->F()I

    move-result v1

    iput v1, p0, Lokhttp3/z;->H:I

    .line 27
    invoke-virtual {p1}, Lokhttp3/z$a;->v()I

    move-result v1

    iput v1, p0, Lokhttp3/z;->I:I

    .line 28
    invoke-virtual {p1}, Lokhttp3/z$a;->t()J

    move-result-wide v1

    iput-wide v1, p0, Lokhttp3/z;->J:J

    .line 29
    invoke-virtual {p1}, Lokhttp3/z$a;->C()Lokhttp3/internal/connection/h;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lokhttp3/internal/connection/h;

    invoke-direct {v1}, Lokhttp3/internal/connection/h;-><init>()V

    :cond_3
    iput-object v1, p0, Lokhttp3/z;->K:Lokhttp3/internal/connection/h;

    .line 30
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 31
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/m;

    .line 32
    invoke-virtual {v1}, Lokhttp3/m;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lokhttp3/z;->x:Ljavax/net/ssl/SSLSocketFactory;

    .line 34
    iput-object p1, p0, Lokhttp3/z;->D:Lokhttp3/f0/l/c;

    .line 35
    iput-object p1, p0, Lokhttp3/z;->y:Ljavax/net/ssl/X509TrustManager;

    .line 36
    sget-object p1, Lokhttp3/h;->b:Lokhttp3/h;

    iput-object p1, p0, Lokhttp3/z;->C:Lokhttp3/h;

    goto :goto_2

    .line 37
    :cond_7
    invoke-virtual {p1}, Lokhttp3/z$a;->E()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {p1}, Lokhttp3/z$a;->E()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->x:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    invoke-virtual {p1}, Lokhttp3/z$a;->g()Lokhttp3/f0/l/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iput-object v0, p0, Lokhttp3/z;->D:Lokhttp3/f0/l/c;

    .line 40
    invoke-virtual {p1}, Lokhttp3/z$a;->G()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iput-object v1, p0, Lokhttp3/z;->y:Ljavax/net/ssl/X509TrustManager;

    .line 41
    invoke-virtual {p1}, Lokhttp3/z$a;->h()Lokhttp3/h;

    move-result-object p1

    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokhttp3/h;->e(Lokhttp3/f0/l/c;)Lokhttp3/h;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lokhttp3/z;->C:Lokhttp3/h;

    goto :goto_2

    .line 44
    :cond_8
    sget-object v0, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/h$a;->g()Lokhttp3/f0/j/h;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/f0/j/h;->o()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/z;->y:Ljavax/net/ssl/X509TrustManager;

    .line 45
    invoke-virtual {v0}, Lokhttp3/f0/j/h$a;->g()Lokhttp3/f0/j/h;

    move-result-object v0

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/f0/j/h;->n(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->x:Ljavax/net/ssl/SSLSocketFactory;

    .line 46
    sget-object v0, Lokhttp3/f0/l/c;->a:Lokhttp3/f0/l/c$a;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/f0/l/c$a;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/f0/l/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z;->D:Lokhttp3/f0/l/c;

    .line 47
    invoke-virtual {p1}, Lokhttp3/z$a;->h()Lokhttp3/h;

    move-result-object p1

    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokhttp3/h;->e(Lokhttp3/f0/l/c;)Lokhttp3/h;

    move-result-object p1

    .line 49
    iput-object p1, p0, Lokhttp3/z;->C:Lokhttp3/h;

    .line 50
    :goto_2
    invoke-direct {p0}, Lokhttp3/z;->H()V

    return-void
.end method

.method private final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/z;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lokhttp3/z;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_e

    .line 3
    iget-object v0, p0, Lokhttp3/z;->z:Ljava/util/List;

    .line 4
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/m;

    .line 6
    invoke-virtual {v1}, Lokhttp3/m;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 7
    iget-object v0, p0, Lokhttp3/z;->x:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Check failed."

    if-eqz v0, :cond_9

    .line 8
    iget-object v0, p0, Lokhttp3/z;->D:Lokhttp3/f0/l/c;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    .line 9
    iget-object v0, p0, Lokhttp3/z;->y:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    .line 10
    iget-object v0, p0, Lokhttp3/z;->C:Lokhttp3/h;

    sget-object v2, Lokhttp3/h;->b:Lokhttp3/h;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_a
    iget-object v0, p0, Lokhttp3/z;->x:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_d

    .line 15
    iget-object v0, p0, Lokhttp3/z;->D:Lokhttp3/f0/l/c;

    if-eqz v0, :cond_c

    .line 16
    iget-object v0, p0, Lokhttp3/z;->y:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_b

    :goto_4
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "x509TrustManager == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificateChainCleaner == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sslSocketFactory == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_e
    invoke-virtual {p0}, Lokhttp3/z;->v()Ljava/util/List;

    move-result-object v0

    const-string v1, "Null network interceptor: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_f
    invoke-virtual {p0}, Lokhttp3/z;->t()Ljava/util/List;

    move-result-object v0

    const-string v1, "Null interceptor: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/z;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/z;->f:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic c(Lokhttp3/z;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/z;->x:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->t:Ljava/net/Proxy;

    return-object v0
.end method

.method public final B()Lokhttp3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->v:Lokhttp3/c;

    return-object v0
.end method

.method public final C()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->u:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z;->G:I

    return v0
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/z;->m:Z

    return v0
.end method

.method public final F()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->w:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final G()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/z;->x:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z;->H:I

    return v0
.end method

.method public final J()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->y:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lokhttp3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->n:Lokhttp3/c;

    return-object v0
.end method

.method public final e()Lokhttp3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->r:Lokhttp3/d;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z;->E:I

    return v0
.end method

.method public final g()Lokhttp3/f0/l/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->D:Lokhttp3/f0/l/c;

    return-object v0
.end method

.method public final h()Lokhttp3/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->C:Lokhttp3/h;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z;->F:I

    return v0
.end method

.method public final j()Lokhttp3/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->i:Lokhttp3/l;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/z;->z:Ljava/util/List;

    return-object v0
.end method

.method public final l()Lokhttp3/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->q:Lokhttp3/p;

    return-object v0
.end method

.method public final m()Lokhttp3/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->h:Lokhttp3/r;

    return-object v0
.end method

.method public final n()Lokhttp3/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->s:Lokhttp3/s;

    return-object v0
.end method

.method public final o()Lokhttp3/t$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->l:Lokhttp3/t$c;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/z;->o:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/z;->p:Z

    return v0
.end method

.method public final r()Lokhttp3/internal/connection/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->K:Lokhttp3/internal/connection/h;

    return-object v0
.end method

.method public final s()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z;->B:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/z;->j:Ljava/util/List;

    return-object v0
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/z;->J:J

    return-wide v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/z;->k:Ljava/util/List;

    return-object v0
.end method

.method public w()Lokhttp3/z$a;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0, p0}, Lokhttp3/z$a;-><init>(Lokhttp3/z;)V

    return-object v0
.end method

.method public x(Lokhttp3/a0;)Lokhttp3/f;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/internal/connection/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/internal/connection/e;-><init>(Lokhttp3/z;Lokhttp3/a0;Z)V

    return-object v0
.end method

.method public final y()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z;->I:I

    return v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/z;->A:Ljava/util/List;

    return-object v0
.end method
