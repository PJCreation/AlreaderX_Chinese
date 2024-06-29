.class public final Lokhttp3/internal/connection/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.kt"

# interfaces
.implements Lokhttp3/x;


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final b:Lokhttp3/internal/connection/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/connection/a;

    invoke-direct {v0}, Lokhttp3/internal/connection/a;-><init>()V

    sput-object v0, Lokhttp3/internal/connection/a;->b:Lokhttp3/internal/connection/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/x$a;)Lokhttp3/c0;
    .locals 10

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lokhttp3/f0/h/g;

    .line 2
    invoke-virtual {p1}, Lokhttp3/f0/h/g;->e()Lokhttp3/internal/connection/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/e;->p(Lokhttp3/f0/h/g;)Lokhttp3/internal/connection/c;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v9, 0x0

    move-object v1, p1

    .line 3
    invoke-static/range {v1 .. v9}, Lokhttp3/f0/h/g;->d(Lokhttp3/f0/h/g;ILokhttp3/internal/connection/c;Lokhttp3/a0;IIIILjava/lang/Object;)Lokhttp3/f0/h/g;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lokhttp3/f0/h/g;->i()Lokhttp3/a0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/f0/h/g;->a(Lokhttp3/a0;)Lokhttp3/c0;

    move-result-object p1

    return-object p1
.end method
