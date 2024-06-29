.class public final Lokhttp3/f0/j/i/l;
.super Lokhttp3/f0/j/i/f;
.source "StandardAndroidSocketAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/j/i/l$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final h:Lokhttp3/f0/j/i/l$a;


# instance fields
.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/f0/j/i/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/f0/j/i/l$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/f0/j/i/l;->h:Lokhttp3/f0/j/i/l$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocket;",
            ">;",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "sslSocketClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sslSocketFactoryClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/f0/j/i/f;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Lokhttp3/f0/j/i/l;->i:Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Lokhttp3/f0/j/i/l;->j:Ljava/lang/Class;

    return-void
.end method
