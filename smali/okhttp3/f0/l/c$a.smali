.class public final Lokhttp3/f0/l/c$a;
.super Ljava/lang/Object;
.source "CertificateChainCleaner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/l/c;
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

    invoke-direct {p0}, Lokhttp3/f0/l/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/f0/l/c;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/h$a;->g()Lokhttp3/f0/j/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/f0/j/h;->c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/f0/l/c;

    move-result-object p1

    return-object p1
.end method
