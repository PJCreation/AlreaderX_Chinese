.class public final Lokhttp3/f0/h/g;
.super Ljava/lang/Object;
.source "RealInterceptorChain.kt"

# interfaces
.implements Lokhttp3/x$a;


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/connection/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Lokhttp3/internal/connection/c;

.field private final e:Lokhttp3/a0;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/e;Ljava/util/List;ILokhttp3/internal/connection/c;Lokhttp3/a0;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/connection/e;",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/x;",
            ">;I",
            "Lokhttp3/internal/connection/c;",
            "Lokhttp3/a0;",
            "III)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/f0/h/g;->a:Lokhttp3/internal/connection/e;

    .line 3
    iput-object p2, p0, Lokhttp3/f0/h/g;->b:Ljava/util/List;

    .line 4
    iput p3, p0, Lokhttp3/f0/h/g;->c:I

    .line 5
    iput-object p4, p0, Lokhttp3/f0/h/g;->d:Lokhttp3/internal/connection/c;

    .line 6
    iput-object p5, p0, Lokhttp3/f0/h/g;->e:Lokhttp3/a0;

    .line 7
    iput p6, p0, Lokhttp3/f0/h/g;->f:I

    .line 8
    iput p7, p0, Lokhttp3/f0/h/g;->g:I

    .line 9
    iput p8, p0, Lokhttp3/f0/h/g;->h:I

    return-void
.end method

.method public static synthetic d(Lokhttp3/f0/h/g;ILokhttp3/internal/connection/c;Lokhttp3/a0;IIIILjava/lang/Object;)Lokhttp3/f0/h/g;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 1
    iget p1, p0, Lokhttp3/f0/h/g;->c:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lokhttp3/f0/h/g;->d:Lokhttp3/internal/connection/c;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lokhttp3/f0/h/g;->e:Lokhttp3/a0;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lokhttp3/f0/h/g;->f:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lokhttp3/f0/h/g;->g:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lokhttp3/f0/h/g;->h:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lokhttp3/f0/h/g;->c(ILokhttp3/internal/connection/c;Lokhttp3/a0;III)Lokhttp3/f0/h/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lokhttp3/a0;)Lokhttp3/c0;
    .locals 14

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lokhttp3/f0/h/g;->c:I

    iget-object v1, p0, Lokhttp3/f0/h/g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    .line 2
    iget v0, p0, Lokhttp3/f0/h/g;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Lokhttp3/f0/h/g;->i:I

    .line 3
    iget-object v0, p0, Lokhttp3/f0/h/g;->d:Lokhttp3/internal/connection/c;

    const-string v1, " must call proceed() exactly once"

    const-string v4, "network interceptor "

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->j()Lokhttp3/internal/connection/d;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object v5

    invoke-virtual {v0, v5}, Lokhttp3/internal/connection/d;->g(Lokhttp3/w;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget v0, p0, Lokhttp3/f0/h/g;->i:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/f0/h/g;->b:Ljava/util/List;

    iget v2, p0, Lokhttp3/f0/h/g;->c:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/f0/h/g;->b:Ljava/util/List;

    iget v1, p0, Lokhttp3/f0/h/g;->c:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_4
    :goto_2
    iget v0, p0, Lokhttp3/f0/h/g;->c:I

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3a

    const/4 v13, 0x0

    move-object v5, p0

    move-object v8, p1

    invoke-static/range {v5 .. v13}, Lokhttp3/f0/h/g;->d(Lokhttp3/f0/h/g;ILokhttp3/internal/connection/c;Lokhttp3/a0;IIIILjava/lang/Object;)Lokhttp3/f0/h/g;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lokhttp3/f0/h/g;->b:Ljava/util/List;

    iget v5, p0, Lokhttp3/f0/h/g;->c:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/x;

    .line 12
    invoke-interface {v0, p1}, Lokhttp3/x;->a(Lokhttp3/x$a;)Lokhttp3/c0;

    move-result-object v5

    const-string v6, "interceptor "

    if-eqz v5, :cond_b

    .line 13
    iget-object v7, p0, Lokhttp3/f0/h/g;->d:Lokhttp3/internal/connection/c;

    if-eqz v7, :cond_8

    .line 14
    iget v7, p0, Lokhttp3/f0/h/g;->c:I

    add-int/2addr v7, v3

    iget-object v8, p0, Lokhttp3/f0/h/g;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    iget p1, p1, Lokhttp3/f0/h/g;->i:I

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_8
    :goto_5
    invoke-virtual {v5}, Lokhttp3/c0;->a()Lokhttp3/d0;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_a

    return-object v5

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned a response with no body"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lokhttp3/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/h/g;->e:Lokhttp3/a0;

    return-object v0
.end method

.method public final c(ILokhttp3/internal/connection/c;Lokhttp3/a0;III)Lokhttp3/f0/h/g;
    .locals 11

    move-object v0, p0

    const-string v1, "request"

    move-object v7, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lokhttp3/f0/h/g;

    iget-object v3, v0, Lokhttp3/f0/h/g;->a:Lokhttp3/internal/connection/e;

    iget-object v4, v0, Lokhttp3/f0/h/g;->b:Ljava/util/List;

    move-object v2, v1

    move v5, p1

    move-object v6, p2

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lokhttp3/f0/h/g;-><init>(Lokhttp3/internal/connection/e;Ljava/util/List;ILokhttp3/internal/connection/c;Lokhttp3/a0;III)V

    return-object v1
.end method

.method public call()Lokhttp3/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/h/g;->a:Lokhttp3/internal/connection/e;

    return-object v0
.end method

.method public final e()Lokhttp3/internal/connection/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/h/g;->a:Lokhttp3/internal/connection/e;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/f0/h/g;->f:I

    return v0
.end method

.method public final g()Lokhttp3/internal/connection/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/h/g;->d:Lokhttp3/internal/connection/c;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/f0/h/g;->g:I

    return v0
.end method

.method public final i()Lokhttp3/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/h/g;->e:Lokhttp3/a0;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/f0/h/g;->h:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/f0/h/g;->g:I

    return v0
.end method
