.class public final Lokhttp3/internal/http2/f$b;
.super Ljava/lang/Object;
.source "Http2Reader.kt"

# interfaces
.implements Lokio/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final e:Lokio/d;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lokio/d;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/f$b;->e:Lokio/d;

    return-void
.end method

.method private final e()V
    .locals 9

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/f$b;->h:I

    .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/f$b;->e:Lokio/d;

    invoke-static {v1}, Lokhttp3/f0/d;->H(Lokio/d;)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/http2/f$b;->i:I

    .line 3
    iput v1, p0, Lokhttp3/internal/http2/f$b;->f:I

    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/f$b;->e:Lokio/d;

    invoke-interface {v1}, Lokio/d;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/f0/d;->b(BI)I

    move-result v1

    .line 5
    iget-object v3, p0, Lokhttp3/internal/http2/f$b;->e:Lokio/d;

    invoke-interface {v3}, Lokio/d;->readByte()B

    move-result v3

    invoke-static {v3, v2}, Lokhttp3/f0/d;->b(BI)I

    move-result v2

    iput v2, p0, Lokhttp3/internal/http2/f$b;->g:I

    .line 6
    sget-object v2, Lokhttp3/internal/http2/f;->e:Lokhttp3/internal/http2/f$a;

    invoke-virtual {v2}, Lokhttp3/internal/http2/f$a;->a()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lokhttp3/internal/http2/f$a;->a()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/http2/c;->a:Lokhttp3/internal/http2/c;

    const/4 v4, 0x1

    iget v5, p0, Lokhttp3/internal/http2/f$b;->h:I

    iget v6, p0, Lokhttp3/internal/http2/f$b;->f:I

    iget v8, p0, Lokhttp3/internal/http2/f$b;->g:I

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/http2/c;->c(ZIIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/http2/f$b;->e:Lokio/d;

    invoke-interface {v2}, Lokio/d;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/http2/f$b;->h:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    if-ne v2, v0, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != TYPE_CONTINUATION"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/f$b;->i:I

    return v0
.end method

.method public c()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f$b;->e:Lokio/d;

    invoke-interface {v0}, Lokio/v;->c()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/f$b;->g:I

    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/f$b;->i:I

    return-void
.end method

.method public final o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/f$b;->f:I

    return-void
.end method

.method public final s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/f$b;->j:I

    return-void
.end method

.method public final v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/f$b;->h:I

    return-void
.end method

.method public y(Lokio/b;J)J
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    iget v0, p0, Lokhttp3/internal/http2/f$b;->i:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/f$b;->e:Lokio/d;

    iget v3, p0, Lokhttp3/internal/http2/f$b;->j:I

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/d;->skip(J)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lokhttp3/internal/http2/f$b;->j:I

    .line 4
    iget v0, p0, Lokhttp3/internal/http2/f$b;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 5
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/http2/f$b;->e()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/http2/f$b;->e:Lokio/d;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lokio/v;->y(Lokio/b;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    .line 7
    :cond_2
    iget p3, p0, Lokhttp3/internal/http2/f$b;->i:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lokhttp3/internal/http2/f$b;->i:I

    return-wide p1
.end method
