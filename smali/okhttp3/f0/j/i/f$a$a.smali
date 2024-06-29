.class public final Lokhttp3/f0/j/i/f$a$a;
.super Ljava/lang/Object;
.source "AndroidSocketAdapter.kt"

# interfaces
.implements Lokhttp3/f0/j/i/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/f0/j/i/f$a;->c(Ljava/lang/String;)Lokhttp3/f0/j/i/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/f0/j/i/f$a$a;->a:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sslSocket.javaClass.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/f0/j/i/f$a$a;->a:Ljava/lang/String;

    const-string v1, "."

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/l;->C(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Lokhttp3/f0/j/i/k;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/f0/j/i/f;->a:Lokhttp3/f0/j/i/f$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/f0/j/i/f$a;->a(Lokhttp3/f0/j/i/f$a;Ljava/lang/Class;)Lokhttp3/f0/j/i/f;

    move-result-object p1

    return-object p1
.end method
