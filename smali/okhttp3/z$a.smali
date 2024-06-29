.class public final Lokhttp3/z$a;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Lokhttp3/internal/connection/h;

.field private a:Lokhttp3/r;

.field private b:Lokhttp3/l;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lokhttp3/t$c;

.field private f:Z

.field private g:Lokhttp3/c;

.field private h:Z

.field private i:Z

.field private j:Lokhttp3/p;

.field private k:Lokhttp3/d;

.field private l:Lokhttp3/s;

.field private m:Ljava/net/Proxy;

.field private n:Ljava/net/ProxySelector;

.field private o:Lokhttp3/c;

.field private p:Ljavax/net/SocketFactory;

.field private q:Ljavax/net/ssl/SSLSocketFactory;

.field private r:Ljavax/net/ssl/X509TrustManager;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/m;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljavax/net/ssl/HostnameVerifier;

.field private v:Lokhttp3/h;

.field private w:Lokhttp3/f0/l/c;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/r;

    invoke-direct {v0}, Lokhttp3/r;-><init>()V

    iput-object v0, p0, Lokhttp3/z$a;->a:Lokhttp3/r;

    .line 3
    new-instance v0, Lokhttp3/l;

    invoke-direct {v0}, Lokhttp3/l;-><init>()V

    iput-object v0, p0, Lokhttp3/z$a;->b:Lokhttp3/l;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/z$a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/z$a;->d:Ljava/util/List;

    .line 6
    sget-object v0, Lokhttp3/t;->b:Lokhttp3/t;

    invoke-static {v0}, Lokhttp3/f0/d;->e(Lokhttp3/t;)Lokhttp3/t$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->e:Lokhttp3/t$c;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokhttp3/z$a;->f:Z

    .line 8
    sget-object v1, Lokhttp3/c;->b:Lokhttp3/c;

    iput-object v1, p0, Lokhttp3/z$a;->g:Lokhttp3/c;

    .line 9
    iput-boolean v0, p0, Lokhttp3/z$a;->h:Z

    .line 10
    iput-boolean v0, p0, Lokhttp3/z$a;->i:Z

    .line 11
    sget-object v0, Lokhttp3/p;->b:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/z$a;->j:Lokhttp3/p;

    .line 12
    sget-object v0, Lokhttp3/s;->b:Lokhttp3/s;

    iput-object v0, p0, Lokhttp3/z$a;->l:Lokhttp3/s;

    .line 13
    iput-object v1, p0, Lokhttp3/z$a;->o:Lokhttp3/c;

    .line 14
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/z$a;->p:Ljavax/net/SocketFactory;

    .line 15
    sget-object v0, Lokhttp3/z;->e:Lokhttp3/z$b;

    invoke-virtual {v0}, Lokhttp3/z$b;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/z$a;->s:Ljava/util/List;

    .line 16
    invoke-virtual {v0}, Lokhttp3/z$b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->t:Ljava/util/List;

    .line 17
    sget-object v0, Lokhttp3/f0/l/d;->a:Lokhttp3/f0/l/d;

    iput-object v0, p0, Lokhttp3/z$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 18
    sget-object v0, Lokhttp3/h;->b:Lokhttp3/h;

    iput-object v0, p0, Lokhttp3/z$a;->v:Lokhttp3/h;

    const/16 v0, 0x2710

    .line 19
    iput v0, p0, Lokhttp3/z$a;->y:I

    .line 20
    iput v0, p0, Lokhttp3/z$a;->z:I

    .line 21
    iput v0, p0, Lokhttp3/z$a;->A:I

    const-wide/16 v0, 0x400

    .line 22
    iput-wide v0, p0, Lokhttp3/z$a;->C:J

    return-void
.end method

.method public constructor <init>(Lokhttp3/z;)V
    .locals 2

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lokhttp3/z$a;-><init>()V

    .line 24
    invoke-virtual {p1}, Lokhttp3/z;->m()Lokhttp3/r;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->a:Lokhttp3/r;

    .line 25
    invoke-virtual {p1}, Lokhttp3/z;->j()Lokhttp3/l;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->b:Lokhttp3/l;

    .line 26
    iget-object v0, p0, Lokhttp3/z$a;->c:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/z;->t()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/p;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 27
    iget-object v0, p0, Lokhttp3/z$a;->d:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/z;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/p;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 28
    invoke-virtual {p1}, Lokhttp3/z;->o()Lokhttp3/t$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->e:Lokhttp3/t$c;

    .line 29
    invoke-virtual {p1}, Lokhttp3/z;->E()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/z$a;->f:Z

    .line 30
    invoke-virtual {p1}, Lokhttp3/z;->d()Lokhttp3/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->g:Lokhttp3/c;

    .line 31
    invoke-virtual {p1}, Lokhttp3/z;->p()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/z$a;->h:Z

    .line 32
    invoke-virtual {p1}, Lokhttp3/z;->q()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/z$a;->i:Z

    .line 33
    invoke-virtual {p1}, Lokhttp3/z;->l()Lokhttp3/p;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->j:Lokhttp3/p;

    .line 34
    invoke-virtual {p1}, Lokhttp3/z;->e()Lokhttp3/d;

    .line 35
    invoke-virtual {p1}, Lokhttp3/z;->n()Lokhttp3/s;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->l:Lokhttp3/s;

    .line 36
    invoke-virtual {p1}, Lokhttp3/z;->A()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->m:Ljava/net/Proxy;

    .line 37
    invoke-virtual {p1}, Lokhttp3/z;->C()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->n:Ljava/net/ProxySelector;

    .line 38
    invoke-virtual {p1}, Lokhttp3/z;->B()Lokhttp3/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->o:Lokhttp3/c;

    .line 39
    invoke-virtual {p1}, Lokhttp3/z;->F()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->p:Ljavax/net/SocketFactory;

    .line 40
    invoke-static {p1}, Lokhttp3/z;->c(Lokhttp3/z;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 41
    invoke-virtual {p1}, Lokhttp3/z;->J()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->r:Ljavax/net/ssl/X509TrustManager;

    .line 42
    invoke-virtual {p1}, Lokhttp3/z;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->s:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Lokhttp3/z;->z()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->t:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Lokhttp3/z;->s()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    invoke-virtual {p1}, Lokhttp3/z;->h()Lokhttp3/h;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->v:Lokhttp3/h;

    .line 46
    invoke-virtual {p1}, Lokhttp3/z;->g()Lokhttp3/f0/l/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->w:Lokhttp3/f0/l/c;

    .line 47
    invoke-virtual {p1}, Lokhttp3/z;->f()I

    move-result v0

    iput v0, p0, Lokhttp3/z$a;->x:I

    .line 48
    invoke-virtual {p1}, Lokhttp3/z;->i()I

    move-result v0

    iput v0, p0, Lokhttp3/z$a;->y:I

    .line 49
    invoke-virtual {p1}, Lokhttp3/z;->D()I

    move-result v0

    iput v0, p0, Lokhttp3/z$a;->z:I

    .line 50
    invoke-virtual {p1}, Lokhttp3/z;->I()I

    move-result v0

    iput v0, p0, Lokhttp3/z$a;->A:I

    .line 51
    invoke-virtual {p1}, Lokhttp3/z;->y()I

    move-result v0

    iput v0, p0, Lokhttp3/z$a;->B:I

    .line 52
    invoke-virtual {p1}, Lokhttp3/z;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/z$a;->C:J

    .line 53
    invoke-virtual {p1}, Lokhttp3/z;->r()Lokhttp3/internal/connection/h;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z$a;->D:Lokhttp3/internal/connection/h;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z$a;->z:I

    return v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/z$a;->f:Z

    return v0
.end method

.method public final C()Lokhttp3/internal/connection/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->D:Lokhttp3/internal/connection/h;

    return-object v0
.end method

.method public final D()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->p:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final E()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final F()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z$a;->A:I

    return v0
.end method

.method public final G()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->r:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final H(Ljava/util/List;)Lokhttp3/z$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/z$a;"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/collections/p;->R(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_8

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_7

    .line 4
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 6
    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lokhttp3/z$a;->w()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-virtual {p0, v0}, Lokhttp3/z$a;->K(Lokhttp3/internal/connection/h;)V

    .line 9
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "unmodifiableList(protocolsCopy)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/z$a;->J(Ljava/util/List;)V

    return-object p0

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v0, "protocols must not contain http/1.0: "

    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "protocols containing h2_prior_knowledge cannot use other protocols: "

    .line 13
    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "protocols must contain h2_prior_knowledge or http/1.1: "

    .line 15
    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I(Lokhttp3/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/z$a;->g:Lokhttp3/c;

    return-void
.end method

.method public final J(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/z$a;->t:Ljava/util/List;

    return-void
.end method

.method public final K(Lokhttp3/internal/connection/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/z$a;->D:Lokhttp3/internal/connection/h;

    return-void
.end method

.method public final a(Lokhttp3/x;)Lokhttp3/z$a;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/z$a;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Lokhttp3/c;)Lokhttp3/z$a;
    .locals 1

    const-string v0, "authenticator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/z$a;->I(Lokhttp3/c;)V

    return-object p0
.end method

.method public final c()Lokhttp3/z;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/z;

    invoke-direct {v0, p0}, Lokhttp3/z;-><init>(Lokhttp3/z$a;)V

    return-object v0
.end method

.method public final d()Lokhttp3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->g:Lokhttp3/c;

    return-object v0
.end method

.method public final e()Lokhttp3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->k:Lokhttp3/d;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z$a;->x:I

    return v0
.end method

.method public final g()Lokhttp3/f0/l/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->w:Lokhttp3/f0/l/c;

    return-object v0
.end method

.method public final h()Lokhttp3/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->v:Lokhttp3/h;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z$a;->y:I

    return v0
.end method

.method public final j()Lokhttp3/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->b:Lokhttp3/l;

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
    iget-object v0, p0, Lokhttp3/z$a;->s:Ljava/util/List;

    return-object v0
.end method

.method public final l()Lokhttp3/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->j:Lokhttp3/p;

    return-object v0
.end method

.method public final m()Lokhttp3/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->a:Lokhttp3/r;

    return-object v0
.end method

.method public final n()Lokhttp3/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->l:Lokhttp3/s;

    return-object v0
.end method

.method public final o()Lokhttp3/t$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->e:Lokhttp3/t$c;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/z$a;->h:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/z$a;->i:Z

    return v0
.end method

.method public final r()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->u:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final s()Ljava/util/List;
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
    iget-object v0, p0, Lokhttp3/z$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/z$a;->C:J

    return-wide v0
.end method

.method public final u()Ljava/util/List;
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
    iget-object v0, p0, Lokhttp3/z$a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final v()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/z$a;->B:I

    return v0
.end method

.method public final w()Ljava/util/List;
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
    iget-object v0, p0, Lokhttp3/z$a;->t:Ljava/util/List;

    return-object v0
.end method

.method public final x()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->m:Ljava/net/Proxy;

    return-object v0
.end method

.method public final y()Lokhttp3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->o:Lokhttp3/c;

    return-object v0
.end method

.method public final z()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/z$a;->n:Ljava/net/ProxySelector;

    return-object v0
.end method
