.class public interface abstract Lokhttp3/internal/http2/j;
.super Ljava/lang/Object;
.source "PushObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/j$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/http2/j$a;

.field public static final b:Lokhttp3/internal/http2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/internal/http2/j$a;->a:Lokhttp3/internal/http2/j$a;

    sput-object v0, Lokhttp3/internal/http2/j;->a:Lokhttp3/internal/http2/j$a;

    .line 1
    new-instance v0, Lokhttp3/internal/http2/j$a$a;

    invoke-direct {v0}, Lokhttp3/internal/http2/j$a$a;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/j;->b:Lokhttp3/internal/http2/j;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILokhttp3/internal/http2/ErrorCode;)V
.end method

.method public abstract d(ILokio/d;IZ)Z
.end method
