.class public Lorg/apache/james/mime4j/codec/d;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/d;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/d;->b(Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)[B

    move-result-object p0

    .line 2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private static b(Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)[B
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/codec/a;

    .line 2
    invoke-static {p0}, Lorg/apache/james/mime4j/io/b;->a(Ljava/lang/CharSequence;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/james/mime4j/codec/a;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V

    .line 3
    new-instance p1, Lorg/apache/james/mime4j/f/l;

    invoke-static {}, Lorg/apache/james/mime4j/codec/d;->g()Lorg/apache/james/mime4j/f/b;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {p1, v1, p0}, Lorg/apache/james/mime4j/f/l;-><init>(Lorg/apache/james/mime4j/f/b;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/a;->read()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/l;->i()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/a;->close()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/l;->g()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/a;->close()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/l;->g()V

    .line 11
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static c(Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/james/mime4j/codec/d;->d(Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;Ljava/nio/charset/Charset;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;Ljava/nio/charset/Charset;Ljava/util/Map;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/codec/c;",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/Charset;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    const-string v3, "=?"

    .line 3
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_1

    if-nez v2, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v4, v3, 0x2

    const/16 v5, 0x3f

    .line 5
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 6
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v8, v5, 0x1

    const-string v9, "?="

    .line 7
    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-ltz v6, :cond_9

    if-ltz v5, :cond_9

    if-gez v9, :cond_2

    goto :goto_3

    :cond_2
    if-ne v5, v9, :cond_3

    add-int/lit8 v9, v9, 0x2

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_1
    move v2, v9

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-static {v10}, Lorg/apache/james/mime4j/f/f;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 11
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_5
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 14
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v9, 0x2

    goto :goto_0

    :cond_6
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    .line 16
    invoke-static/range {v11 .. v16}, Lorg/apache/james/mime4j/codec/d;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;Ljava/nio/charset/Charset;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 17
    invoke-static {v2}, Lorg/apache/james/mime4j/f/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v9, 0x2

    .line 19
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 20
    :cond_9
    :goto_3
    invoke-virtual {v1, v0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v2, v4

    goto/16 :goto_0

    .line 21
    :cond_a
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/d;->f(Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)[B

    move-result-object p0

    .line 3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private static f(Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)[B
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/codec/e;

    .line 2
    invoke-static {p0}, Lorg/apache/james/mime4j/io/b;->a(Ljava/lang/CharSequence;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/james/mime4j/codec/e;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V

    .line 3
    new-instance p1, Lorg/apache/james/mime4j/f/l;

    invoke-static {}, Lorg/apache/james/mime4j/codec/d;->g()Lorg/apache/james/mime4j/f/b;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {p1, v1, p0}, Lorg/apache/james/mime4j/f/l;-><init>(Lorg/apache/james/mime4j/f/b;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/e;->read()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/l;->i()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/e;->close()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/l;->g()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/e;->close()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/l;->g()V

    .line 11
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static g()Lorg/apache/james/mime4j/f/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/d;->a:Ljava/lang/ThreadLocal;

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

.method private static h(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/Map;)Ljava/nio/charset/Charset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/Charset;",
            ">;)",
            "Ljava/nio/charset/Charset;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/james/mime4j/f/f;->c(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method private static varargs i(Lorg/apache/james/mime4j/codec/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1, p2, p3}, Lorg/apache/james/mime4j/codec/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    array-length p3, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p5, v0

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p3, " ("

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p4}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_0

    const-string v2, "=20"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;Ljava/nio/charset/Charset;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/codec/c;",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/Charset;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    .line 1
    invoke-static {v7, v0, v1}, Lorg/apache/james/mime4j/codec/d;->h(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/Map;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_0

    new-array v6, v12, [Ljava/lang/String;

    const-string v0, "Mime charser \'"

    aput-object v0, v6, v15

    aput-object v7, v6, v14

    const-string v0, "\' doesn\'t have a corresponding Java charset"

    aput-object v0, v6, v11

    const-string v5, "leaving word encoded"

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 2
    invoke-static/range {v1 .. v6}, Lorg/apache/james/mime4j/codec/d;->i(Lorg/apache/james/mime4j/codec/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v13

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-array v6, v14, [Ljava/lang/String;

    const-string v0, "Missing encoded text in encoded word"

    aput-object v0, v6, v15

    const-string v5, "leaving word encoded"

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 4
    invoke-static/range {v1 .. v6}, Lorg/apache/james/mime4j/codec/d;->i(Lorg/apache/james/mime4j/codec/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v13

    :cond_1
    :try_start_0
    const-string v1, "Q"

    .line 5
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Lorg/apache/james/mime4j/codec/d;->e(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "B"

    .line 7
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Lorg/apache/james/mime4j/codec/d;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v5, "leaving word encoded"

    new-array v6, v14, [Ljava/lang/String;

    const-string v0, "Warning: Unknown encoding in encoded word"

    aput-object v0, v6, v15

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 9
    invoke-static/range {v1 .. v6}, Lorg/apache/james/mime4j/codec/d;->i(Lorg/apache/james/mime4j/codec/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v13

    :catch_0
    move-exception v0

    new-array v6, v12, [Ljava/lang/String;

    const-string v1, "Could not decode ("

    aput-object v1, v6, v15

    .line 10
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v14

    const-string v0, ") encoded word"

    aput-object v0, v6, v11

    const-string v5, "leaving word encoded"

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 11
    invoke-static/range {v1 .. v6}, Lorg/apache/james/mime4j/codec/d;->i(Lorg/apache/james/mime4j/codec/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v13

    :catch_1
    move-exception v0

    new-array v6, v12, [Ljava/lang/String;

    const-string v1, "Unsupported encoding ("

    aput-object v1, v6, v15

    .line 12
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v14

    const-string v0, ") in encoded word"

    aput-object v0, v6, v11

    const-string v5, "leaving word encoded"

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 13
    invoke-static/range {v1 .. v6}, Lorg/apache/james/mime4j/codec/d;->i(Lorg/apache/james/mime4j/codec/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v13
.end method
