.class public interface abstract Lokhttp3/p;
.super Ljava/lang/Object;
.source "CookieJar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/p$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/p$a;

.field public static final b:Lokhttp3/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/p$a;->a:Lokhttp3/p$a;

    sput-object v0, Lokhttp3/p;->a:Lokhttp3/p$a;

    .line 1
    new-instance v0, Lokhttp3/p$a$a;

    invoke-direct {v0}, Lokhttp3/p$a$a;-><init>()V

    sput-object v0, Lokhttp3/p;->b:Lokhttp3/p;

    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/w;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/w;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/o;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lokhttp3/w;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/w;",
            "Ljava/util/List<",
            "Lokhttp3/o;",
            ">;)V"
        }
    .end annotation
.end method
