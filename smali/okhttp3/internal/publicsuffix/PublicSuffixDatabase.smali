.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

.field private static final b:[B

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    .line 1
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:[B

    const-string v0, "*"

    .line 2
    invoke-static {v0}, Lkotlin/collections/p;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:Ljava/util/List;

    .line 3
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static final synthetic a()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private final b(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e()V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 5
    :goto_0
    iget-object v1, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_13

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [[B

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    move-object/from16 v6, p1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "UTF_8"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v8, "this as java.lang.String).getBytes(charset)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_3
    const-string v6, "publicSuffixListBytes"

    const/4 v7, 0x0

    if-ge v5, v1, :cond_5

    add-int/lit8 v8, v5, 0x1

    .line 7
    sget-object v9, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    iget-object v10, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[B

    if-nez v10, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/i;->q(Ljava/lang/String;)V

    move-object v10, v7

    :cond_3
    invoke-static {v9, v10, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;[B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v9, v5

    goto :goto_4

    :cond_4
    move v5, v8

    goto :goto_3

    :cond_5
    move-object v9, v7

    :goto_4
    if-le v1, v3, :cond_8

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    .line 9
    array-length v8, v5

    sub-int/2addr v8, v3

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v8, :cond_8

    add-int/lit8 v11, v10, 0x1

    .line 10
    sget-object v12, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:[B

    aput-object v12, v5, v10

    .line 11
    sget-object v12, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    iget-object v13, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[B

    if-nez v13, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/i;->q(Ljava/lang/String;)V

    move-object v13, v7

    :cond_6
    invoke-static {v12, v13, v5, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;[B[[BI)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    move-object v5, v10

    goto :goto_6

    :cond_7
    move v10, v11

    goto :goto_5

    :cond_8
    move-object v5, v7

    :goto_6
    if-eqz v5, :cond_b

    sub-int/2addr v1, v3

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v1, :cond_b

    add-int/lit8 v8, v6, 0x1

    .line 12
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    iget-object v11, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:[B

    if-nez v11, :cond_9

    const-string v11, "publicSuffixExceptionListBytes"

    invoke-static {v11}, Lkotlin/jvm/internal/i;->q(Ljava/lang/String;)V

    move-object v11, v7

    :cond_9
    invoke-static {v10, v11, v4, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;[B[[BI)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    goto :goto_8

    :cond_a
    move v6, v8

    goto :goto_7

    :cond_b
    move-object v6, v7

    :goto_8
    const/16 v1, 0x2e

    if-eqz v6, :cond_c

    const-string v4, "!"

    .line 13
    invoke-static {v4, v6}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [C

    aput-char v1, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 14
    invoke-static/range {v7 .. v12}, Lkotlin/text/l;->l0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_c
    if-nez v9, :cond_d

    if-nez v5, :cond_d

    .line 15
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:Ljava/util/List;

    return-object v1

    :cond_d
    if-nez v9, :cond_e

    move-object v4, v7

    goto :goto_9

    :cond_e
    new-array v10, v3, [C

    aput-char v1, v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    .line 16
    invoke-static/range {v9 .. v14}, Lkotlin/text/l;->l0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_9
    if-nez v4, :cond_f

    invoke-static {}, Lkotlin/collections/p;->j()Ljava/util/List;

    move-result-object v4

    :cond_f
    if-nez v5, :cond_10

    goto :goto_a

    :cond_10
    new-array v13, v3, [C

    aput-char v1, v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v12, v5

    .line 17
    invoke-static/range {v12 .. v17}, Lkotlin/text/l;->l0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_a
    if-nez v7, :cond_11

    invoke-static {}, Lkotlin/collections/p;->j()Ljava/util/List;

    move-result-object v7

    .line 18
    :cond_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_12

    goto :goto_b

    :cond_12
    move-object v4, v7

    :goto_b
    return-object v4

    .line 19
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v1

    :goto_d
    goto :goto_c
.end method

.method private final d()V
    .locals 5

    .line 1
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lokio/h;

    invoke-static {v0}, Lokio/k;->f(Ljava/io/InputStream;)Lokio/v;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/h;-><init>(Lokio/v;)V

    invoke-static {v1}, Lokio/k;->b(Lokio/v;)Lokio/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-interface {v0}, Lokio/d;->readInt()I

    move-result v2

    int-to-long v2, v2

    .line 5
    invoke-interface {v0, v2, v3}, Lokio/d;->r(J)[B

    move-result-object v2

    .line 6
    invoke-interface {v0}, Lokio/d;->readInt()I

    move-result v3

    int-to-long v3, v3

    .line 7
    invoke-interface {v0, v3, v4}, Lokio/d;->r(J)[B

    move-result-object v3

    .line 8
    sget-object v4, Lkotlin/m;->a:Lkotlin/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    invoke-static {v0, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 10
    monitor-enter p0

    .line 11
    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[B

    .line 12
    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iput-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v1

    .line 16
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final e()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3
    :try_start_1
    sget-object v2, Lokhttp3/f0/j/h;->a:Lokhttp3/f0/j/h$a;

    invoke-virtual {v2}, Lokhttp3/f0/j/h$a;->g()Lokhttp3/f0/j/h;

    move-result-object v2

    const-string v3, "Failed to read public suffix list"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/f0/j/h;->j(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    .line 5
    :catch_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private final f(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v1, 0x0

    const/16 v3, 0x2e

    aput-char v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    .line 1
    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->l0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lkotlin/collections/p;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1, v0}, Lkotlin/collections/p;->A(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unicodeDomain"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    sub-int/2addr v0, v1

    .line 8
    invoke-direct {p0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p;->z(Ljava/lang/Iterable;)Lkotlin/sequences/f;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/sequences/i;->h(Lkotlin/sequences/f;I)Lkotlin/sequences/f;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const-string v2, "."

    invoke-static/range {v1 .. v9}, Lkotlin/sequences/i;->k(Lkotlin/sequences/f;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method