.class public abstract Lokhttp3/d0;
.super Ljava/lang/Object;
.source "ResponseBody.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/d0$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final e:Lokhttp3/d0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/d0$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/d0;->e:Lokhttp3/d0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/d0;->j()Lokio/d;

    move-result-object v0

    invoke-interface {v0}, Lokio/d;->H()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/d0;->j()Lokio/d;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/f0/d;->j(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract e()J
.end method

.method public abstract j()Lokio/d;
.end method
