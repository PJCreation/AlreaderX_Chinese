.class public final Lokhttp3/b0$a$a;
.super Lokhttp3/b0;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/b0$a;->a(Ljava/io/File;Lokhttp3/y;)Lokhttp3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic b:Lokhttp3/y;

.field final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Lokhttp3/y;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/b0$a$a;->b:Lokhttp3/y;

    iput-object p2, p0, Lokhttp3/b0$a$a;->c:Ljava/io/File;

    .line 1
    invoke-direct {p0}, Lokhttp3/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/b0$a$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lokhttp3/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/b0$a$a;->b:Lokhttp3/y;

    return-object v0
.end method

.method public h(Lokio/c;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/b0$a$a;->c:Ljava/io/File;

    invoke-static {v0}, Lokio/k;->e(Ljava/io/File;)Lokio/v;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0}, Lokio/c;->g(Lokio/v;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
