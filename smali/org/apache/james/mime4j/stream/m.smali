.class public Lorg/apache/james/mime4j/stream/m;
.super Ljava/lang/Object;
.source "MimeTokenStream.java"


# instance fields
.field private final a:Lorg/apache/james/mime4j/stream/k;

.field private final b:Lorg/apache/james/mime4j/codec/c;

.field private final c:Lorg/apache/james/mime4j/stream/j;

.field private final d:Lorg/apache/james/mime4j/stream/c;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/james/mime4j/stream/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/apache/james/mime4j/stream/EntityState;

.field private g:Lorg/apache/james/mime4j/stream/f;

.field private h:Lorg/apache/james/mime4j/stream/RecursionMode;

.field private i:Lorg/apache/james/mime4j/stream/l;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/james/mime4j/stream/m;-><init>(Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/j;Lorg/apache/james/mime4j/stream/c;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/j;Lorg/apache/james/mime4j/stream/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/m;->e:Ljava/util/LinkedList;

    .line 4
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/m;->f:Lorg/apache/james/mime4j/stream/EntityState;

    .line 5
    sget-object v0, Lorg/apache/james/mime4j/stream/RecursionMode;->M_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/m;->h:Lorg/apache/james/mime4j/stream/RecursionMode;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lorg/apache/james/mime4j/stream/k;->b:Lorg/apache/james/mime4j/stream/k;

    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/m;->a:Lorg/apache/james/mime4j/stream/k;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p3, Lorg/apache/james/mime4j/stream/e;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/k;->e()I

    move-result v0

    invoke-direct {p3, v0}, Lorg/apache/james/mime4j/stream/e;-><init>(I)V

    :goto_1
    iput-object p3, p0, Lorg/apache/james/mime4j/stream/m;->c:Lorg/apache/james/mime4j/stream/j;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/k;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p2, Lorg/apache/james/mime4j/codec/c;->a:Lorg/apache/james/mime4j/codec/c;

    goto :goto_2

    :cond_3
    sget-object p2, Lorg/apache/james/mime4j/codec/c;->b:Lorg/apache/james/mime4j/codec/c;

    :goto_2
    iput-object p2, p0, Lorg/apache/james/mime4j/stream/m;->b:Lorg/apache/james/mime4j/codec/c;

    if-eqz p4, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    new-instance p4, Lorg/apache/james/mime4j/stream/h;

    invoke-direct {p4}, Lorg/apache/james/mime4j/stream/h;-><init>()V

    :goto_3
    iput-object p4, p0, Lorg/apache/james/mime4j/stream/m;->d:Lorg/apache/james/mime4j/stream/c;

    return-void
.end method

.method private a(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/EntityState;)V
    .locals 14

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/m;->a:Lorg/apache/james/mime4j/stream/k;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/k;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v4, Lorg/apache/james/mime4j/io/d;

    move-object v1, p1

    invoke-direct {v4, p1}, Lorg/apache/james/mime4j/io/d;-><init>(Ljava/io/InputStream;)V

    .line 3
    new-instance v1, Lorg/apache/james/mime4j/stream/l;

    iget-object v5, v0, Lorg/apache/james/mime4j/stream/m;->a:Lorg/apache/james/mime4j/stream/k;

    sget-object v7, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    iget-object v8, v0, Lorg/apache/james/mime4j/stream/m;->b:Lorg/apache/james/mime4j/codec/c;

    iget-object v9, v0, Lorg/apache/james/mime4j/stream/m;->c:Lorg/apache/james/mime4j/stream/j;

    iget-object v10, v0, Lorg/apache/james/mime4j/stream/m;->d:Lorg/apache/james/mime4j/stream/c;

    move-object v2, v1

    move-object v3, v4

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v10}, Lorg/apache/james/mime4j/stream/l;-><init>(Lorg/apache/james/mime4j/io/e;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/j;Lorg/apache/james/mime4j/stream/c;)V

    iput-object v1, v0, Lorg/apache/james/mime4j/stream/m;->i:Lorg/apache/james/mime4j/stream/l;

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 4
    new-instance v2, Lorg/apache/james/mime4j/stream/l;

    const/4 v6, 0x0

    iget-object v8, v0, Lorg/apache/james/mime4j/stream/m;->a:Lorg/apache/james/mime4j/stream/k;

    sget-object v10, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    iget-object v11, v0, Lorg/apache/james/mime4j/stream/m;->b:Lorg/apache/james/mime4j/codec/c;

    iget-object v12, v0, Lorg/apache/james/mime4j/stream/m;->c:Lorg/apache/james/mime4j/stream/j;

    iget-object v13, v0, Lorg/apache/james/mime4j/stream/m;->d:Lorg/apache/james/mime4j/stream/c;

    move-object v5, v2

    move-object v7, p1

    move-object/from16 v9, p2

    invoke-direct/range {v5 .. v13}, Lorg/apache/james/mime4j/stream/l;-><init>(Lorg/apache/james/mime4j/io/e;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/j;Lorg/apache/james/mime4j/stream/c;)V

    iput-object v2, v0, Lorg/apache/james/mime4j/stream/m;->i:Lorg/apache/james/mime4j/stream/l;

    .line 5
    :goto_0
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/m;->i:Lorg/apache/james/mime4j/stream/l;

    iget-object v2, v0, Lorg/apache/james/mime4j/stream/m;->h:Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/stream/l;->d(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    .line 6
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/m;->i:Lorg/apache/james/mime4j/stream/l;

    iput-object v1, v0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    .line 7
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/m;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 8
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/m;->e:Ljava/util/LinkedList;

    iget-object v2, v0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/f;->getState()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/stream/m;->f:Lorg/apache/james/mime4j/stream/EntityState;

    return-void
.end method


# virtual methods
.method public b()Lorg/apache/james/mime4j/stream/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/f;->c()Lorg/apache/james/mime4j/stream/b;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/apache/james/mime4j/stream/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->a:Lorg/apache/james/mime4j/stream/k;

    return-object v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/f;->e()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/apache/james/mime4j/stream/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/f;->a()Lorg/apache/james/mime4j/stream/i;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/f;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/apache/james/mime4j/stream/EntityState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->f:Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0
.end method

.method public h()Lorg/apache/james/mime4j/stream/EntityState;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->f:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    if-eqz v0, :cond_5

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/f;->b()Lorg/apache/james/mime4j/stream/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/m;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/f;->getState()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/m;->f:Lorg/apache/james/mime4j/stream/EntityState;

    .line 7
    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    if-eq v0, v1, :cond_1

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/stream/f;

    .line 9
    instance-of v1, v0, Lorg/apache/james/mime4j/stream/l;

    if-eqz v1, :cond_2

    .line 10
    check-cast v0, Lorg/apache/james/mime4j/stream/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/l;->w()V

    .line 11
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/stream/f;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    .line 14
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/m;->h:Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/stream/f;->d(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    goto :goto_0

    .line 15
    :cond_4
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/m;->f:Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more tokens are available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public i(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/stream/m;->a(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/EntityState;)V

    return-void
.end method

.method public j(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/stream/i;
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/stream/r;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p2}, Lorg/apache/james/mime4j/stream/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lorg/apache/james/mime4j/stream/m;->d:Lorg/apache/james/mime4j/stream/c;

    invoke-interface {p2, v0}, Lorg/apache/james/mime4j/stream/c;->d(Lorg/apache/james/mime4j/stream/r;)Lorg/apache/james/mime4j/stream/i;

    move-result-object p2
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 3
    :goto_0
    sget-object p2, Lorg/apache/james/mime4j/stream/EntityState;->T_END_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/stream/m;->a(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/EntityState;)V

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/m;->h()Lorg/apache/james/mime4j/stream/EntityState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content type may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lorg/apache/james/mime4j/stream/RecursionMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/m;->h:Lorg/apache/james/mime4j/stream/RecursionMode;

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->g:Lorg/apache/james/mime4j/stream/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/stream/f;->d(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->i:Lorg/apache/james/mime4j/stream/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/l;->x()V

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/m;->c:Lorg/apache/james/mime4j/stream/j;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/j;->a()V

    return-void
.end method
