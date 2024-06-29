.class public final Lokhttp3/internal/http2/d;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/d$a;,
        Lokhttp3/internal/http2/d$d;,
        Lokhttp3/internal/http2/d$c;,
        Lokhttp3/internal/http2/d$b;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final e:Lokhttp3/internal/http2/d$b;

.field private static final f:Lokhttp3/internal/http2/k;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private final E:Ljava/net/Socket;

.field private final F:Lokhttp3/internal/http2/h;

.field private final G:Lokhttp3/internal/http2/d$d;

.field private final H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final h:Lokhttp3/internal/http2/d$c;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/g;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Z

.field private final n:Lokhttp3/f0/g/e;

.field private final o:Lokhttp3/f0/g/d;

.field private final p:Lokhttp3/f0/g/d;

.field private final q:Lokhttp3/f0/g/d;

.field private final r:Lokhttp3/internal/http2/j;

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private final y:Lokhttp3/internal/http2/k;

.field private z:Lokhttp3/internal/http2/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/internal/http2/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/d$b;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/internal/http2/d;->e:Lokhttp3/internal/http2/d$b;

    .line 1
    new-instance v0, Lokhttp3/internal/http2/k;

    invoke-direct {v0}, Lokhttp3/internal/http2/k;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    .line 2
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/k;->h(II)Lokhttp3/internal/http2/k;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    .line 3
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/k;->h(II)Lokhttp3/internal/http2/k;

    .line 4
    sput-object v0, Lokhttp3/internal/http2/d;->f:Lokhttp3/internal/http2/k;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http2/d$a;)V
    .locals 6

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/http2/d;->g:Z

    .line 3
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->d()Lokhttp3/internal/http2/d$c;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http2/d;->h:Lokhttp3/internal/http2/d$c;

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/http2/d;->i:Ljava/util/Map;

    .line 5
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lokhttp3/internal/http2/d;->l:I

    .line 7
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->j()Lokhttp3/f0/g/e;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/f0/g/e;

    .line 8
    invoke-virtual {v2}, Lokhttp3/f0/g/e;->i()Lokhttp3/f0/g/d;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/http2/d;->o:Lokhttp3/f0/g/d;

    .line 9
    invoke-virtual {v2}, Lokhttp3/f0/g/e;->i()Lokhttp3/f0/g/d;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/http2/d;->p:Lokhttp3/f0/g/d;

    .line 10
    invoke-virtual {v2}, Lokhttp3/f0/g/e;->i()Lokhttp3/f0/g/d;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http2/d;->q:Lokhttp3/f0/g/d;

    .line 11
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->f()Lokhttp3/internal/http2/j;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http2/d;->r:Lokhttp3/internal/http2/j;

    .line 12
    new-instance v2, Lokhttp3/internal/http2/k;

    invoke-direct {v2}, Lokhttp3/internal/http2/k;-><init>()V

    .line 13
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    const/high16 v5, 0x1000000

    .line 14
    invoke-virtual {v2, v4, v5}, Lokhttp3/internal/http2/k;->h(II)Lokhttp3/internal/http2/k;

    .line 15
    :cond_1
    iput-object v2, p0, Lokhttp3/internal/http2/d;->y:Lokhttp3/internal/http2/k;

    .line 16
    sget-object v2, Lokhttp3/internal/http2/d;->f:Lokhttp3/internal/http2/k;

    iput-object v2, p0, Lokhttp3/internal/http2/d;->z:Lokhttp3/internal/http2/k;

    .line 17
    invoke-virtual {v2}, Lokhttp3/internal/http2/k;->c()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, p0, Lokhttp3/internal/http2/d;->D:J

    .line 18
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->h()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http2/d;->E:Ljava/net/Socket;

    .line 19
    new-instance v2, Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->g()Lokio/c;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lokhttp3/internal/http2/h;-><init>(Lokio/c;Z)V

    iput-object v2, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    .line 20
    new-instance v2, Lokhttp3/internal/http2/d$d;

    new-instance v4, Lokhttp3/internal/http2/f;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->i()Lokio/d;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lokhttp3/internal/http2/f;-><init>(Lokio/d;Z)V

    invoke-direct {v2, p0, v4}, Lokhttp3/internal/http2/d$d;-><init>(Lokhttp3/internal/http2/d;Lokhttp3/internal/http2/f;)V

    iput-object v2, p0, Lokhttp3/internal/http2/d;->G:Lokhttp3/internal/http2/d$d;

    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/d;->H:Ljava/util/Set;

    .line 22
    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->e()I

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d$a;->e()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const-string p1, " ping"

    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v0, Lokhttp3/internal/http2/d$j;

    invoke-direct {v0, p1, p0, v4, v5}, Lokhttp3/internal/http2/d$j;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/d;J)V

    invoke-virtual {v3, v0, v4, v5}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    :cond_2
    return-void
.end method

.method public static final synthetic A(Lokhttp3/internal/http2/d;)Lokhttp3/f0/g/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/f0/g/e;

    return-object p0
.end method

.method public static final synthetic B(Lokhttp3/internal/http2/d;)Lokhttp3/f0/g/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/d;->o:Lokhttp3/f0/g/d;

    return-object p0
.end method

.method public static final synthetic E(Lokhttp3/internal/http2/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lokhttp3/internal/http2/d;->m:Z

    return p0
.end method

.method public static final synthetic F(Lokhttp3/internal/http2/d;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/d;->w:J

    return-void
.end method

.method public static final synthetic I(Lokhttp3/internal/http2/d;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/d;->v:J

    return-void
.end method

.method public static final synthetic J(Lokhttp3/internal/http2/d;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/d;->s:J

    return-void
.end method

.method public static final synthetic K(Lokhttp3/internal/http2/d;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/d;->t:J

    return-void
.end method

.method public static final synthetic L(Lokhttp3/internal/http2/d;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/http2/d;->m:Z

    return-void
.end method

.method public static final synthetic M(Lokhttp3/internal/http2/d;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/d;->D:J

    return-void
.end method

.method private final O(Ljava/io/IOException;)V
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v0, p1}, Lokhttp3/internal/http2/d;->N(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic a(Lokhttp3/internal/http2/d;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/d;->O(Ljava/io/IOException;)V

    return-void
.end method

.method private final d0(ILjava/util/List;Z)Lokhttp3/internal/http2/g;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;Z)",
            "Lokhttp3/internal/http2/g;"
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 1
    iget-object v7, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    monitor-enter v7

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->T()I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    .line 4
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/d;->p0(Lokhttp3/internal/http2/ErrorCode;)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/d;->m:Z

    if-nez v0, :cond_7

    .line 6
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->T()I

    move-result v8

    .line 7
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->T()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/d;->n0(I)V

    .line 8
    new-instance v9, Lokhttp3/internal/http2/g;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/g;-><init>(ILokhttp3/internal/http2/d;ZZLokhttp3/v;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->a0()J

    move-result-wide v1

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->Z()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-gez p3, :cond_2

    .line 10
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->r()J

    move-result-wide v1

    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->q()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 11
    :goto_1
    invoke-virtual {v9}, Lokhttp3/internal/http2/g;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    sget-object v1, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    monitor-exit p0

    if-nez p1, :cond_4

    .line 15
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->b0()Lokhttp3/internal/http2/h;

    move-result-object p1

    invoke-virtual {p1, v6, v8, p2}, Lokhttp3/internal/http2/h;->v(ZILjava/util/List;)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->P()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->b0()Lokhttp3/internal/http2/h;

    move-result-object v0

    invoke-virtual {v0, p1, v8, p2}, Lokhttp3/internal/http2/h;->A(IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :goto_2
    monitor-exit v7

    if-eqz p3, :cond_5

    .line 19
    iget-object p1, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->flush()V

    :cond_5
    return-object v9

    :cond_6
    :try_start_3
    const-string p1, "client streams shouldn\'t have associated stream IDs"

    .line 20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :cond_7
    :try_start_4
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 23
    monitor-exit v7

    throw p1
.end method

.method public static final synthetic e(Lokhttp3/internal/http2/d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/d;->w:J

    return-wide v0
.end method

.method public static final synthetic j(Lokhttp3/internal/http2/d;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/d;->H:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic l()Lokhttp3/internal/http2/k;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/d;->f:Lokhttp3/internal/http2/k;

    return-object v0
.end method

.method public static final synthetic o(Lokhttp3/internal/http2/d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/d;->v:J

    return-wide v0
.end method

.method public static synthetic r0(Lokhttp3/internal/http2/d;ZLokhttp3/f0/g/e;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1
    sget-object p2, Lokhttp3/f0/g/e;->b:Lokhttp3/f0/g/e;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/d;->q0(ZLokhttp3/f0/g/e;)V

    return-void
.end method

.method public static final synthetic s(Lokhttp3/internal/http2/d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/d;->s:J

    return-wide v0
.end method

.method public static final synthetic v(Lokhttp3/internal/http2/d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/d;->t:J

    return-wide v0
.end method

.method public static final synthetic w(Lokhttp3/internal/http2/d;)Lokhttp3/internal/http2/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/d;->r:Lokhttp3/internal/http2/j;

    return-object p0
.end method

.method public static final synthetic x(Lokhttp3/internal/http2/d;)Lokhttp3/f0/g/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/d;->q:Lokhttp3/f0/g/d;

    return-object p0
.end method


# virtual methods
.method public final N(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lokhttp3/f0/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/d;->p0(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Lokhttp3/internal/http2/g;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    check-cast p1, [Lokhttp3/internal/http2/g;

    if-nez p1, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 14
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lokhttp3/internal/http2/g;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_5
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->b0()Lokhttp3/internal/http2/h;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 16
    :catch_2
    :try_start_4
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->W()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 17
    :catch_3
    iget-object p1, p0, Lokhttp3/internal/http2/d;->o:Lokhttp3/f0/g/d;

    invoke-virtual {p1}, Lokhttp3/f0/g/d;->o()V

    .line 18
    iget-object p1, p0, Lokhttp3/internal/http2/d;->p:Lokhttp3/f0/g/d;

    invoke-virtual {p1}, Lokhttp3/f0/g/d;->o()V

    .line 19
    iget-object p1, p0, Lokhttp3/internal/http2/d;->q:Lokhttp3/f0/g/d;

    invoke-virtual {p1}, Lokhttp3/f0/g/d;->o()V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/d;->g:Z

    return v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final R()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/d;->k:I

    return v0
.end method

.method public final S()Lokhttp3/internal/http2/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->h:Lokhttp3/internal/http2/d$c;

    return-object v0
.end method

.method public final T()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/d;->l:I

    return v0
.end method

.method public final U()Lokhttp3/internal/http2/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->y:Lokhttp3/internal/http2/k;

    return-object v0
.end method

.method public final V()Lokhttp3/internal/http2/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->z:Lokhttp3/internal/http2/k;

    return-object v0
.end method

.method public final W()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->E:Ljava/net/Socket;

    return-object v0
.end method

.method public final declared-synchronized X(I)Lokhttp3/internal/http2/g;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/d;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/http2/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Y()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final Z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/d;->D:J

    return-wide v0
.end method

.method public final a0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/d;->C:J

    return-wide v0
.end method

.method public final b0()Lokhttp3/internal/http2/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    return-object v0
.end method

.method public final declared-synchronized c0(J)Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/d;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lokhttp3/internal/http2/d;->v:J

    iget-wide v4, p0, Lokhttp3/internal/http2/d;->u:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lokhttp3/internal/http2/d;->x:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/d;->N(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public final e0(Ljava/util/List;Z)Lokhttp3/internal/http2/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;Z)",
            "Lokhttp3/internal/http2/g;"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lokhttp3/internal/http2/d;->d0(ILjava/util/List;Z)Lokhttp3/internal/http2/g;

    move-result-object p1

    return-object p1
.end method

.method public final f0(ILokio/d;IZ)V
    .locals 9

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v6, Lokio/b;

    invoke-direct {v6}, Lokio/b;-><init>()V

    int-to-long v0, p3

    .line 2
    invoke-interface {p2, v0, v1}, Lokio/d;->C(J)V

    .line 3
    invoke-interface {p2, v6, v0, v1}, Lokio/v;->y(Lokio/b;J)J

    .line 4
    iget-object p2, p0, Lokhttp3/internal/http2/d;->p:Lokhttp3/f0/g/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v0, Lokhttp3/internal/http2/d$e;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v4, p0

    move v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/http2/d$e;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;ILokio/b;IZ)V

    const-wide/16 p3, 0x0

    invoke-virtual {p2, v0, p3, p4}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->flush()V

    return-void
.end method

.method public final g0(ILjava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->p:Lokhttp3/f0/g/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onHeaders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v1, Lokhttp3/internal/http2/d$f;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lokhttp3/internal/http2/d$f;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;ILjava/util/List;Z)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void
.end method

.method public final h0(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/d;->H:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/d;->x0(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->H:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/d;->p:Lokhttp3/f0/g/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    .line 8
    new-instance v9, Lokhttp3/internal/http2/d$g;

    move-object v3, v9

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/d$g;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;ILjava/util/List;)V

    invoke-virtual {v0, v9, v1, v2}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method

.method public final i0(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 9

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->p:Lokhttp3/f0/g/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v1, Lokhttp3/internal/http2/d$h;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/d$h;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;ILokhttp3/internal/http2/ErrorCode;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void
.end method

.method public final j0(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized k0(I)Lokhttp3/internal/http2/g;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/d;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/http2/g;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l0()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/http2/d;->v:J

    iget-wide v2, p0, Lokhttp3/internal/http2/d;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 3
    :try_start_1
    iput-wide v2, p0, Lokhttp3/internal/http2/d;->u:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http2/d;->x:J

    .line 5
    sget-object v0, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/d;->o:Lokhttp3/f0/g/d;

    iget-object v1, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    const-string v2, " ping"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 8
    new-instance v5, Lokhttp3/internal/http2/d$i;

    invoke-direct {v5, v1, v4, p0}, Lokhttp3/internal/http2/d$i;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;)V

    invoke-virtual {v0, v5, v2, v3}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    throw v0
.end method

.method public final m0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/d;->k:I

    return-void
.end method

.method public final n0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/d;->l:I

    return-void
.end method

.method public final o0(Lokhttp3/internal/http2/k;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/d;->z:Lokhttp3/internal/http2/k;

    return-void
.end method

.method public final p0(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 4

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 3
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-boolean v2, p0, Lokhttp3/internal/http2/d;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 6
    :try_start_3
    iput-boolean v2, p0, Lokhttp3/internal/http2/d;->m:Z

    .line 7
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->R()I

    move-result v2

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8
    sget-object v2, Lkotlin/m;->a:Lkotlin/m;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    monitor-exit p0

    .line 10
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->b0()Lokhttp3/internal/http2/h;

    move-result-object v2

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v3, Lokhttp3/f0/d;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lokhttp3/internal/http2/h;->s(ILokhttp3/internal/http2/ErrorCode;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 13
    monitor-exit v0

    throw p1
.end method

.method public final q0(ZLokhttp3/f0/g/e;)V
    .locals 5

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->e()V

    .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    iget-object v0, p0, Lokhttp3/internal/http2/d;->y:Lokhttp3/internal/http2/k;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/h;->E(Lokhttp3/internal/http2/k;)V

    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/d;->y:Lokhttp3/internal/http2/k;

    invoke-virtual {p1}, Lokhttp3/internal/http2/k;->c()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/internal/http2/h;->F(IJ)V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lokhttp3/f0/g/e;->i()Lokhttp3/f0/g/d;

    move-result-object p1

    iget-object p2, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/internal/http2/d;->G:Lokhttp3/internal/http2/d$d;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    .line 6
    new-instance v4, Lokhttp3/f0/g/c;

    invoke-direct {v4, p2, v3, v0}, Lokhttp3/f0/g/c;-><init>(Ljava/lang/String;ZLkotlin/jvm/b/a;)V

    invoke-virtual {p1, v4, v1, v2}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void
.end method

.method public final declared-synchronized s0(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/http2/d;->A:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/d;->A:J

    .line 2
    iget-wide p1, p0, Lokhttp3/internal/http2/d;->B:J

    sub-long/2addr v0, p1

    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/d;->y:Lokhttp3/internal/http2/k;

    invoke-virtual {p1}, Lokhttp3/internal/http2/k;->c()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/http2/d;->y0(IJ)V

    .line 5
    iget-wide p1, p0, Lokhttp3/internal/http2/d;->B:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokhttp3/internal/http2/d;->B:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t0(IZLokio/b;J)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 1
    iget-object p4, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    invoke-virtual {p4, p2, p1, p3, v0}, Lokhttp3/internal/http2/h;->j(ZILokio/b;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->a0()J

    move-result-wide v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->Z()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 4
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->Y()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->Z()J

    move-result-wide v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->a0()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 8
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->b0()Lokhttp3/internal/http2/h;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/http2/h;->w()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->a0()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/http2/d;->C:J

    .line 10
    sget-object v4, Lkotlin/m;->a:Lkotlin/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    sub-long/2addr p4, v6

    .line 12
    iget-object v4, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lokhttp3/internal/http2/h;->j(ZILokio/b;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 13
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 14
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final u0(IZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "alternating"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    invoke-virtual {v0, p2, p1, p3}, Lokhttp3/internal/http2/h;->v(ZILjava/util/List;)V

    return-void
.end method

.method public final v0(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/internal/http2/h;->x(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/d;->O(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final w0(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->F:Lokhttp3/internal/http2/h;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/h;->B(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public final x0(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 9

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->o:Lokhttp3/f0/g/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] writeSynReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v1, Lokhttp3/internal/http2/d$k;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/d$k;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;ILokhttp3/internal/http2/ErrorCode;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void
.end method

.method public final y0(IJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->o:Lokhttp3/f0/g/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] windowUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v1, Lokhttp3/internal/http2/d$l;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-wide v8, p2

    invoke-direct/range {v3 .. v9}, Lokhttp3/internal/http2/d$l;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/f0/g/d;->i(Lokhttp3/f0/g/a;J)V

    return-void
.end method
