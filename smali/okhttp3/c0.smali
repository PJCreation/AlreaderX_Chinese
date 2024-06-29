.class public final Lokhttp3/c0;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/c0$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final e:Lokhttp3/a0;

.field private final f:Lokhttp3/Protocol;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Lokhttp3/u;

.field private final j:Lokhttp3/v;

.field private final k:Lokhttp3/d0;

.field private final l:Lokhttp3/c0;

.field private final m:Lokhttp3/c0;

.field private final n:Lokhttp3/c0;

.field private final o:J

.field private final p:J

.field private final q:Lokhttp3/internal/connection/c;

.field private r:Lokhttp3/e;


# direct methods
.method public constructor <init>(Lokhttp3/a0;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/u;Lokhttp3/v;Lokhttp3/d0;Lokhttp3/c0;Lokhttp3/c0;Lokhttp3/c0;JJLokhttp3/internal/connection/c;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lokhttp3/c0;->e:Lokhttp3/a0;

    .line 3
    iput-object v2, v0, Lokhttp3/c0;->f:Lokhttp3/Protocol;

    .line 4
    iput-object v3, v0, Lokhttp3/c0;->g:Ljava/lang/String;

    move v1, p4

    .line 5
    iput v1, v0, Lokhttp3/c0;->h:I

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lokhttp3/c0;->i:Lokhttp3/u;

    .line 7
    iput-object v4, v0, Lokhttp3/c0;->j:Lokhttp3/v;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lokhttp3/c0;->k:Lokhttp3/d0;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lokhttp3/c0;->l:Lokhttp3/c0;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lokhttp3/c0;->m:Lokhttp3/c0;

    move-object/from16 v1, p10

    .line 11
    iput-object v1, v0, Lokhttp3/c0;->n:Lokhttp3/c0;

    move-wide/from16 v1, p11

    .line 12
    iput-wide v1, v0, Lokhttp3/c0;->o:J

    move-wide/from16 v1, p13

    .line 13
    iput-wide v1, v0, Lokhttp3/c0;->p:J

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lokhttp3/c0;->q:Lokhttp3/internal/connection/c;

    return-void
.end method

.method public static synthetic x(Lokhttp3/c0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/c0;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lokhttp3/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->j:Lokhttp3/v;

    return-object v0
.end method

.method public final B()Z
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/c0;->h:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-gt v2, v0, :cond_0

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Lokhttp3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->l:Lokhttp3/c0;

    return-object v0
.end method

.method public final I()Lokhttp3/c0$a;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/c0$a;

    invoke-direct {v0, p0}, Lokhttp3/c0$a;-><init>(Lokhttp3/c0;)V

    return-object v0
.end method

.method public final J()Lokhttp3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->n:Lokhttp3/c0;

    return-object v0
.end method

.method public final K()Lokhttp3/Protocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->f:Lokhttp3/Protocol;

    return-object v0
.end method

.method public final L()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/c0;->p:J

    return-wide v0
.end method

.method public final M()Lokhttp3/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->e:Lokhttp3/a0;

    return-object v0
.end method

.method public final N()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/c0;->o:J

    return-wide v0
.end method

.method public final a()Lokhttp3/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->k:Lokhttp3/d0;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->k:Lokhttp3/d0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/d0;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Lokhttp3/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->r:Lokhttp3/e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lokhttp3/e;->a:Lokhttp3/e$b;

    iget-object v1, p0, Lokhttp3/c0;->j:Lokhttp3/v;

    invoke-virtual {v0, v1}, Lokhttp3/e$b;->b(Lokhttp3/v;)Lokhttp3/e;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lokhttp3/c0;->r:Lokhttp3/e;

    :cond_0
    return-object v0
.end method

.method public final j()Lokhttp3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->m:Lokhttp3/c0;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->j:Lokhttp3/v;

    .line 2
    iget v1, p0, Lokhttp3/c0;->h:I

    const/16 v2, 0x191

    if-eq v1, v2, :cond_1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_0

    .line 3
    invoke-static {}, Lkotlin/collections/p;->j()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string v1, "WWW-Authenticate"

    .line 4
    :goto_0
    invoke-static {v0, v1}, Lokhttp3/f0/h/e;->a(Lokhttp3/v;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/c0;->h:I

    return v0
.end method

.method public final s()Lokhttp3/internal/connection/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->q:Lokhttp3/internal/connection/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/c0;->f:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/c0;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/c0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/c0;->e:Lokhttp3/a0;

    invoke-virtual {v1}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lokhttp3/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->i:Lokhttp3/u;

    return-object v0
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/c0;->j:Lokhttp3/v;

    invoke-virtual {v0, p1}, Lokhttp3/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method
