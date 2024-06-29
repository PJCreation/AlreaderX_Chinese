.class public final Lokhttp3/TlsVersion$a;
.super Ljava/lang/Object;
.source "TlsVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/TlsVersion;
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

    invoke-direct {p0}, Lokhttp3/TlsVersion$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .locals 2

    const-string v0, "javaName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4b88569

    if-eq v0, v1, :cond_1

    const v1, 0x4c38896

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "TLSv1.3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object p1, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    goto :goto_0

    :pswitch_1
    const-string v0, "TLSv1.2"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object p1, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    goto :goto_0

    :pswitch_2
    const-string v0, "TLSv1.1"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    goto :goto_0

    :cond_0
    const-string v0, "TLSv1"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p1, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    goto :goto_0

    :cond_1
    const-string v0, "SSLv3"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object p1, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    :goto_0
    return-object p1

    .line 11
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected TLS version: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x1dfc3f27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
