.class public final Lokhttp3/f0/j/i/g;
.super Ljava/lang/Object;
.source "BouncyCastleSocketAdapter.kt"

# interfaces
.implements Lokhttp3/f0/j/i/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/j/i/g$b;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/f0/j/i/g$b;

.field private static final b:Lokhttp3/f0/j/i/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/f0/j/i/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/f0/j/i/g$b;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/f0/j/i/g;->a:Lokhttp3/f0/j/i/g$b;

    .line 1
    new-instance v0, Lokhttp3/f0/j/i/g$a;

    invoke-direct {v0}, Lokhttp3/f0/j/i/g$a;-><init>()V

    sput-object v0, Lokhttp3/f0/j/i/g;->b:Lokhttp3/f0/j/i/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic e()Lokhttp3/f0/j/i/j$a;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/f0/j/i/g;->b:Lokhttp3/f0/j/i/j$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    return p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    .line 2
    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCSSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/f0/j/c;->d:Lokhttp3/f0/j/c$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/c$a;->b()Z

    move-result v0

    return v0
.end method

.method public d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    const-string p2, "sslSocket"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "protocols"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/f0/j/i/g;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    check-cast p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    .line 3
    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCSSLSocket;->getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object p2

    .line 4
    sget-object v0, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v0, p3}, Lokhttp3/f0/j/h$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    check-cast p3, [Ljava/lang/String;

    .line 6
    invoke-virtual {p2, p3}, Lorg/bouncycastle/jsse/BCSSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, p2}, Lorg/bouncycastle/jsse/BCSSLSocket;->setParameters(Lorg/bouncycastle/jsse/BCSSLParameters;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
