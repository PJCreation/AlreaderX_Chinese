.class public abstract Lokhttp3/b0;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/b0$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/b0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/b0$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/b0;->a:Lokhttp3/b0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(Lokhttp3/y;Ljava/io/File;)Lokhttp3/b0;
    .locals 1

    sget-object v0, Lokhttp3/b0;->a:Lokhttp3/b0$a;

    invoke-virtual {v0, p0, p1}, Lokhttp3/b0$a;->c(Lokhttp3/y;Ljava/io/File;)Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lokhttp3/y;Ljava/lang/String;)Lokhttp3/b0;
    .locals 1

    sget-object v0, Lokhttp3/b0;->a:Lokhttp3/b0$a;

    invoke-virtual {v0, p0, p1}, Lokhttp3/b0$a;->d(Lokhttp3/y;Ljava/lang/String;)Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lokhttp3/y;[B)Lokhttp3/b0;
    .locals 1

    sget-object v0, Lokhttp3/b0;->a:Lokhttp3/b0$a;

    invoke-virtual {v0, p0, p1}, Lokhttp3/b0$a;->e(Lokhttp3/y;[B)Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Lokhttp3/y;
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract h(Lokio/c;)V
.end method
