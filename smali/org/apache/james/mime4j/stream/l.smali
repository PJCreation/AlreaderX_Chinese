.class Lorg/apache/james/mime4j/stream/l;
.super Ljava/lang/Object;
.source "MimeEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/f;


# static fields
.field protected static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/apache/james/mime4j/f/b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lorg/apache/james/mime4j/stream/EntityState;

.field private final c:Lorg/apache/james/mime4j/stream/k;

.field private final d:Lorg/apache/james/mime4j/codec/c;

.field private final e:Lorg/apache/james/mime4j/stream/j;

.field private final f:Lorg/apache/james/mime4j/stream/c;

.field private final g:Lorg/apache/james/mime4j/f/c;

.field private final h:Lorg/apache/james/mime4j/io/e;

.field private final i:Lorg/apache/james/mime4j/io/a;

.field private j:Lorg/apache/james/mime4j/stream/EntityState;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Lorg/apache/james/mime4j/stream/i;

.field private o:Lorg/apache/james/mime4j/stream/b;

.field private p:Lorg/apache/james/mime4j/stream/RecursionMode;

.field private q:Lorg/apache/james/mime4j/io/h;

.field private r:Lorg/apache/james/mime4j/io/g;

.field private s:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/stream/l;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/io/e;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/j;Lorg/apache/james/mime4j/stream/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lorg/apache/james/mime4j/stream/l;->c:Lorg/apache/james/mime4j/stream/k;

    .line 3
    iput-object p4, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    .line 4
    iput-object p5, p0, Lorg/apache/james/mime4j/stream/l;->b:Lorg/apache/james/mime4j/stream/EntityState;

    .line 5
    iput-object p6, p0, Lorg/apache/james/mime4j/stream/l;->d:Lorg/apache/james/mime4j/codec/c;

    .line 6
    iput-object p7, p0, Lorg/apache/james/mime4j/stream/l;->e:Lorg/apache/james/mime4j/stream/j;

    .line 7
    iput-object p8, p0, Lorg/apache/james/mime4j/stream/l;->f:Lorg/apache/james/mime4j/stream/c;

    .line 8
    new-instance p4, Lorg/apache/james/mime4j/f/c;

    const/16 p5, 0x40

    invoke-direct {p4, p5}, Lorg/apache/james/mime4j/f/c;-><init>(I)V

    iput-object p4, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    const/4 p4, 0x0

    .line 9
    iput p4, p0, Lorg/apache/james/mime4j/stream/l;->k:I

    .line 10
    iput-boolean p4, p0, Lorg/apache/james/mime4j/stream/l;->l:Z

    .line 11
    iput p4, p0, Lorg/apache/james/mime4j/stream/l;->m:I

    .line 12
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/l;->h:Lorg/apache/james/mime4j/io/e;

    .line 13
    new-instance p1, Lorg/apache/james/mime4j/io/a;

    .line 14
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/k;->f()I

    move-result p4

    const/16 p5, 0x1000

    invoke-direct {p1, p2, p5, p4}, Lorg/apache/james/mime4j/io/a;-><init>(Ljava/io/InputStream;II)V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/l;->i:Lorg/apache/james/mime4j/io/a;

    .line 15
    new-instance p2, Lorg/apache/james/mime4j/io/g;

    .line 16
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/k;->f()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lorg/apache/james/mime4j/io/g;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lorg/apache/james/mime4j/stream/l;->r:Lorg/apache/james/mime4j/io/g;

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->r:Lorg/apache/james/mime4j/io/g;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/g;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->s:[B

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/apache/james/mime4j/stream/l;->k()Lorg/apache/james/mime4j/f/b;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/f/b;->a(II)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->s:[B

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->m()Ljava/io/InputStream;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->s:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/io/g;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->i:Lorg/apache/james/mime4j/io/a;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->c:Lorg/apache/james/mime4j/stream/k;

    .line 3
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/k;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/g;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->r:Lorg/apache/james/mime4j/io/g;

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->o:Lorg/apache/james/mime4j/stream/b;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/io/h;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->i:Lorg/apache/james/mime4j/io/a;

    iget-object v3, p0, Lorg/apache/james/mime4j/stream/l;->c:Lorg/apache/james/mime4j/stream/k;

    .line 3
    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/k;->i()Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/io/h;-><init>(Lorg/apache/james/mime4j/io/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance v0, Lorg/apache/james/mime4j/io/g;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->c:Lorg/apache/james/mime4j/stream/k;

    .line 5
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/k;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/g;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->r:Lorg/apache/james/mime4j/io/g;

    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    const-string v1, "Multipart body does not have a valid boundary"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->o:Lorg/apache/james/mime4j/stream/b;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/apache/james/mime4j/f/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lorg/apache/james/mime4j/codec/a;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->d:Lorg/apache/james/mime4j/codec/c;

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/codec/a;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/f/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lorg/apache/james/mime4j/codec/e;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->d:Lorg/apache/james/mime4j/codec/c;

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/codec/e;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static k()Lorg/apache/james/mime4j/f/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/l;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/f/b;

    :goto_0
    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lorg/apache/james/mime4j/f/b;

    invoke-direct {v1}, Lorg/apache/james/mime4j/f/b;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private l()Lorg/apache/james/mime4j/io/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->r:Lorg/apache/james/mime4j/io/g;

    return-object v0
.end method

.method private m()Ljava/io/InputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->c:Lorg/apache/james/mime4j/stream/k;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/k;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 2
    new-instance v2, Lorg/apache/james/mime4j/io/c;

    iget-object v3, p0, Lorg/apache/james/mime4j/stream/l;->r:Lorg/apache/james/mime4j/io/g;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/james/mime4j/io/c;-><init>(Ljava/io/InputStream;J)V

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->r:Lorg/apache/james/mime4j/io/g;

    return-object v0
.end method

.method private n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->h:Lorg/apache/james/mime4j/io/e;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/io/e;->a()I

    move-result v0

    return v0
.end method

.method private r()Lorg/apache/james/mime4j/stream/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->i:Lorg/apache/james/mime4j/io/a;

    .line 2
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/stream/l;->j(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v2, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/james/mime4j/stream/l;->t(Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Ljava/io/InputStream;)Lorg/apache/james/mime4j/stream/f;

    move-result-object v0

    return-object v0
.end method

.method private s()Lorg/apache/james/mime4j/stream/f;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/james/mime4j/stream/l;->t(Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Ljava/io/InputStream;)Lorg/apache/james/mime4j/stream/f;

    move-result-object v0

    return-object v0
.end method

.method private t(Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Ljava/io/InputStream;)Lorg/apache/james/mime4j/stream/f;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->p:Lorg/apache/james/mime4j/stream/RecursionMode;

    sget-object v1, Lorg/apache/james/mime4j/stream/RecursionMode;->M_RAW:Lorg/apache/james/mime4j/stream/RecursionMode;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p1, Lorg/apache/james/mime4j/stream/q;

    invoke-direct {p1, p3}, Lorg/apache/james/mime4j/stream/q;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 3
    :cond_0
    new-instance v9, Lorg/apache/james/mime4j/stream/l;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->h:Lorg/apache/james/mime4j/io/e;

    iget-object v3, p0, Lorg/apache/james/mime4j/stream/l;->c:Lorg/apache/james/mime4j/stream/k;

    iget-object v6, p0, Lorg/apache/james/mime4j/stream/l;->d:Lorg/apache/james/mime4j/codec/c;

    iget-object v7, p0, Lorg/apache/james/mime4j/stream/l;->e:Lorg/apache/james/mime4j/stream/j;

    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->f:Lorg/apache/james/mime4j/stream/c;

    .line 4
    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/c;->c()Lorg/apache/james/mime4j/stream/c;

    move-result-object v8

    move-object v0, v9

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lorg/apache/james/mime4j/stream/l;-><init>(Lorg/apache/james/mime4j/io/e;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/j;Lorg/apache/james/mime4j/stream/c;)V

    .line 5
    iget-object p1, p0, Lorg/apache/james/mime4j/stream/l;->p:Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-virtual {v9, p1}, Lorg/apache/james/mime4j/stream/l;->d(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    return-object v9
.end method

.method private u()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/l;->l:Z

    if-nez v0, :cond_6

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->l()Lorg/apache/james/mime4j/io/f;

    move-result-object v0

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/c;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->e:Lorg/apache/james/mime4j/stream/j;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/stream/j;->d(Lorg/apache/james/mime4j/f/c;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/c;->e()V

    .line 6
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/io/f;->a(Lorg/apache/james/mime4j/f/c;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 7
    sget-object v0, Lorg/apache/james/mime4j/stream/g;->b:Lorg/apache/james/mime4j/stream/g;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/stream/l;->p(Lorg/apache/james/mime4j/stream/g;)V

    .line 8
    iput-boolean v3, p0, Lorg/apache/james/mime4j/stream/l;->l:Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/c;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/f/c;->a(I)B

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-lez v1, :cond_4

    .line 11
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/f/c;->a(I)B

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    if-nez v1, :cond_5

    .line 12
    iput-boolean v3, p0, Lorg/apache/james/mime4j/stream/l;->l:Z

    goto :goto_0

    .line 13
    :cond_5
    iget v1, p0, Lorg/apache/james/mime4j/stream/l;->k:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/stream/l;->k:I

    if-le v1, v3, :cond_0

    .line 14
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->g:Lorg/apache/james/mime4j/f/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/f/c;->a(I)B

    move-result v1
    :try_end_0
    .catch Lorg/apache/james/mime4j/io/MaxLineLimitException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static v(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/l$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "End bodypart"

    goto :goto_0

    :pswitch_1
    const-string p0, "Raw entity"

    goto :goto_0

    :pswitch_2
    const-string p0, "End message"

    goto :goto_0

    :pswitch_3
    const-string p0, "End of stream"

    goto :goto_0

    :pswitch_4
    const-string p0, "End multipart"

    goto :goto_0

    :pswitch_5
    const-string p0, "Body"

    goto :goto_0

    :pswitch_6
    const-string p0, "Epilogue"

    goto :goto_0

    :pswitch_7
    const-string p0, "Preamble"

    goto :goto_0

    :pswitch_8
    const-string p0, "Start multipart"

    goto :goto_0

    :pswitch_9
    const-string p0, "End header"

    goto :goto_0

    :pswitch_a
    const-string p0, "Field"

    goto :goto_0

    :pswitch_b
    const-string p0, "Start header"

    goto :goto_0

    :pswitch_c
    const-string p0, "Start bodypart"

    goto :goto_0

    :pswitch_d
    const-string p0, "Start message"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lorg/apache/james/mime4j/stream/i;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/l$a;->a:[I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/l;->getState()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->n:Lorg/apache/james/mime4j/stream/i;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v2}, Lorg/apache/james/mime4j/stream/l;->v(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lorg/apache/james/mime4j/stream/f;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/l$a;->a:[I

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->b:Lorg/apache/james/mime4j/stream/EntityState;

    if-ne v0, v1, :cond_9

    .line 3
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    goto/16 :goto_2

    .line 4
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->b:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    goto/16 :goto_2

    .line 5
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->r:Lorg/apache/james/mime4j/io/g;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->g()V

    .line 7
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    goto/16 :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->i()V

    .line 9
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_PREAMBLE:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    .line 10
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/h;->w()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->g()V

    .line 12
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/h;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/h;->A()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lorg/apache/james/mime4j/stream/g;->a:Lorg/apache/james/mime4j/stream/g;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/stream/l;->p(Lorg/apache/james/mime4j/stream/g;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/h;->A()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->h()V

    .line 16
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->i()V

    .line 17
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->s()Lorg/apache/james/mime4j/stream/f;

    move-result-object v0

    return-object v0

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/h;->x()Z

    move-result v0

    .line 19
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->h()V

    .line 20
    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_EPILOGUE:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v1, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    if-nez v0, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    :pswitch_3
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 22
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->f:Lorg/apache/james/mime4j/stream/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/c;->build()Lorg/apache/james/mime4j/stream/b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->o:Lorg/apache/james/mime4j/stream/b;

    .line 23
    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->p:Lorg/apache/james/mime4j/stream/RecursionMode;

    sget-object v2, Lorg/apache/james/mime4j/stream/RecursionMode;->M_FLAT:Lorg/apache/james/mime4j/stream/RecursionMode;

    if-ne v1, v2, :cond_5

    .line 25
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 26
    :cond_5
    invoke-static {v0}, Lorg/apache/james/mime4j/f/k;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 27
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    .line 28
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->h()V

    goto :goto_2

    .line 29
    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->p:Lorg/apache/james/mime4j/stream/RecursionMode;

    sget-object v2, Lorg/apache/james/mime4j/stream/RecursionMode;->M_NO_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

    if-eq v1, v2, :cond_7

    .line 30
    invoke-static {v0}, Lorg/apache/james/mime4j/f/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    .line 32
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->r()Lorg/apache/james/mime4j/stream/f;

    move-result-object v0

    return-object v0

    .line 33
    :cond_7
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 34
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->f:Lorg/apache/james/mime4j/stream/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/c;->b()V

    .line 35
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/l;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_FIELD:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_1

    :cond_8
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    :goto_1
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 36
    :pswitch_7
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 37
    :pswitch_8
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v2}, Lorg/apache/james/mime4j/stream/l;->v(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lorg/apache/james/mime4j/stream/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/l$a;->a:[I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/l;->getState()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v2}, Lorg/apache/james/mime4j/stream/l;->v(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->o:Lorg/apache/james/mime4j/stream/b;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Lorg/apache/james/mime4j/stream/RecursionMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/l;->p:Lorg/apache/james/mime4j/stream/RecursionMode;

    return-void
.end method

.method public e()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/l;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/stream/l;->j(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/l$a;->a:[I

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v2}, Lorg/apache/james/mime4j/stream/l;->v(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->m()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getState()Lorg/apache/james/mime4j/stream/EntityState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0
.end method

.method protected o(Lorg/apache/james/mime4j/stream/g;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "Event is unexpectedly null."

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/g;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->n()I

    move-result v0

    if-gtz v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected p(Lorg/apache/james/mime4j/stream/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->d:Lorg/apache/james/mime4j/codec/c;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/stream/l;->o(Lorg/apache/james/mime4j/stream/g;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->d:Lorg/apache/james/mime4j/codec/c;

    const-string v2, "ignoring"

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeParseEventException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/stream/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/stream/g;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected q()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->c:Lorg/apache/james/mime4j/stream/k;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/k;->d()I

    move-result v0

    .line 2
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/l;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-lez v0, :cond_3

    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/stream/l;->m:I

    if-ge v1, v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v1, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum header limit ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") exceeded"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_3
    :goto_1
    iget v1, p0, Lorg/apache/james/mime4j/stream/l;->m:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/stream/l;->m:I

    .line 6
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->e:Lorg/apache/james/mime4j/stream/j;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/j;->b()V

    .line 7
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->u()V

    .line 8
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->e:Lorg/apache/james/mime4j/stream/j;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/j;->build()Lorg/apache/james/mime4j/stream/r;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/r;->m()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/r;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 10
    sget-object v4, Lorg/apache/james/mime4j/stream/g;->d:Lorg/apache/james/mime4j/stream/g;

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/stream/l;->p(Lorg/apache/james/mime4j/stream/g;)V

    .line 11
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/stream/l;->f:Lorg/apache/james/mime4j/stream/c;

    invoke-interface {v4, v1}, Lorg/apache/james/mime4j/stream/c;->d(Lorg/apache/james/mime4j/stream/r;)Lorg/apache/james/mime4j/stream/i;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object v1, v4

    .line 12
    :cond_6
    iput-object v1, p0, Lorg/apache/james/mime4j/stream/l;->n:Lorg/apache/james/mime4j/stream/i;
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    nop

    .line 13
    sget-object v1, Lorg/apache/james/mime4j/stream/g;->c:Lorg/apache/james/mime4j/stream/g;

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/stream/l;->p(Lorg/apache/james/mime4j/stream/g;)V

    .line 14
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/l;->c:Lorg/apache/james/mime4j/stream/k;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/k;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/l;->l()Lorg/apache/james/mime4j/io/f;

    move-result-object v0

    .line 16
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/l;->e:Lorg/apache/james/mime4j/stream/j;

    invoke-interface {v3}, Lorg/apache/james/mime4j/stream/j;->c()Lorg/apache/james/mime4j/f/l;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 17
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/io/f;->e(Lorg/apache/james/mime4j/f/l;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 18
    :cond_7
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeParseEventException;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/stream/g;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/james/mime4j/stream/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->j:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v1}, Lorg/apache/james/mime4j/stream/l;->v(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/l;->o:Lorg/apache/james/mime4j/stream/b;

    .line 2
    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->o:Lorg/apache/james/mime4j/stream/b;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/l;->x()V

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->i:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/a;->N()V

    .line 3
    invoke-static {}, Lorg/apache/james/mime4j/stream/l;->k()Lorg/apache/james/mime4j/f/b;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/l;->s:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/apache/james/mime4j/f/b;->d(I[B)V

    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->q:Lorg/apache/james/mime4j/io/h;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/h;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/l;->i:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/a;->P()V

    return-void
.end method
