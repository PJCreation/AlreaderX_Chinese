.class public final Lokio/a$d;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/a;->y(Lokio/v;)Lokio/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokio/a;

.field final synthetic f:Lokio/v;


# direct methods
.method constructor <init>(Lokio/a;Lokio/v;)V
    .locals 0

    iput-object p1, p0, Lokio/a$d;->e:Lokio/a;

    iput-object p2, p0, Lokio/a$d;->f:Lokio/v;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokio/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/a$d;->e:Lokio/a;

    return-object v0
.end method

.method public bridge synthetic c()Lokio/w;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/a$d;->a()Lokio/a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/a$d;->e:Lokio/a;

    iget-object v1, p0, Lokio/a$d;->f:Lokio/v;

    .line 2
    invoke-virtual {v0}, Lokio/a;->t()V

    .line 3
    :try_start_0
    invoke-interface {v1}, Lokio/v;->close()V

    sget-object v1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lokio/a;->u()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lokio/a;->n(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lokio/a;->u()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lokio/a;->n(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    invoke-virtual {v0}, Lokio/a;->u()Z

    move-result v0

    .line 8
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/a$d;->f:Lokio/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(Lokio/b;J)J
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokio/a$d;->e:Lokio/a;

    iget-object v1, p0, Lokio/a$d;->f:Lokio/v;

    .line 2
    invoke-virtual {v0}, Lokio/a;->t()V

    .line 3
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lokio/a;->u()Z

    move-result p3

    if-nez p3, :cond_0

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lokio/a;->n(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lokio/a;->u()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lokio/a;->n(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    invoke-virtual {v0}, Lokio/a;->u()Z

    move-result p2

    .line 8
    throw p1
.end method
