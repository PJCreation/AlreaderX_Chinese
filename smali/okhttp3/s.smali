.class public interface abstract Lokhttp3/s;
.super Ljava/lang/Object;
.source "Dns.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/s$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/s$a;

.field public static final b:Lokhttp3/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/s$a;->a:Lokhttp3/s$a;

    sput-object v0, Lokhttp3/s;->a:Lokhttp3/s$a;

    .line 1
    new-instance v0, Lokhttp3/s$a$a;

    invoke-direct {v0}, Lokhttp3/s$a$a;-><init>()V

    sput-object v0, Lokhttp3/s;->b:Lokhttp3/s;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
