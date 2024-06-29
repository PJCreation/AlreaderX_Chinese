.class public final Lokhttp3/f0/j/i/f$a;
.super Ljava/lang/Object;
.source "AndroidSocketAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/j/i/f;
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

    invoke-direct {p0}, Lokhttp3/f0/j/i/f$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lokhttp3/f0/j/i/f$a;Ljava/lang/Class;)Lokhttp3/f0/j/i/f;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/f0/j/i/f$a;->b(Ljava/lang/Class;)Lokhttp3/f0/j/i/f;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/Class;)Lokhttp3/f0/j/i/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocket;",
            ">;)",
            "Lokhttp3/f0/j/i/f;"
        }
    .end annotation

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenSSLSocketImpl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No OpenSSLSocketImpl superclass of socket of type "

    .line 4
    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 6
    :cond_1
    new-instance p1, Lokhttp3/f0/j/i/f;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lokhttp3/f0/j/i/f;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lokhttp3/f0/j/i/j$a;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/f0/j/i/f$a$a;

    invoke-direct {v0, p1}, Lokhttp3/f0/j/i/f$a$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lokhttp3/f0/j/i/j$a;
    .locals 1

    .line 1
    invoke-static {}, Lokhttp3/f0/j/i/f;->e()Lokhttp3/f0/j/i/j$a;

    move-result-object v0

    return-object v0
.end method
