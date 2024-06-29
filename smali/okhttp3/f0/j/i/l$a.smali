.class public final Lokhttp3/f0/j/i/l$a;
.super Ljava/lang/Object;
.source "StandardAndroidSocketAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/j/i/l;
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

    invoke-direct {p0}, Lokhttp3/f0/j/i/l$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lokhttp3/f0/j/i/l$a;Ljava/lang/String;ILjava/lang/Object;)Lokhttp3/f0/j/i/k;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "com.android.org.conscrypt"

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/f0/j/i/l$a;->a(Ljava/lang/String;)Lokhttp3/f0/j/i/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lokhttp3/f0/j/i/k;
    .locals 4

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, ".OpenSSLSocketImpl"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, ".OpenSSLSocketFactoryImpl"

    .line 2
    invoke-static {p1, v1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, ".SSLParametersImpl"

    .line 3
    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 4
    new-instance v2, Lokhttp3/f0/j/i/l;

    const-string v3, "paramsClass"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1, p1}, Lokhttp3/f0/j/i/l;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/h$a;->g()Lokhttp3/f0/j/h;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "unable to load android socket classes"

    invoke-virtual {v0, v2, v1, p1}, Lokhttp3/f0/j/h;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method
