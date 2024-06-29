.class public Lorg/apache/james/mime4j/codec/e;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field protected static final e:Ljava/lang/ThreadLocal;
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
.field private final f:[B

.field private final g:Ljava/io/InputStream;

.field private final h:Lorg/apache/james/mime4j/f/l;

.field private final i:Lorg/apache/james/mime4j/f/l;

.field private final j:[B

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private final o:Lorg/apache/james/mime4j/codec/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/e;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lorg/apache/james/mime4j/codec/e;->f:[B

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lorg/apache/james/mime4j/codec/e;->k:I

    .line 5
    iput v1, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    .line 6
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/e;->m:Z

    .line 7
    iput-object p2, p0, Lorg/apache/james/mime4j/codec/e;->g:Ljava/io/InputStream;

    .line 8
    invoke-static {}, Lorg/apache/james/mime4j/codec/e;->j()Lorg/apache/james/mime4j/f/b;

    move-result-object p2

    .line 9
    invoke-virtual {p2, v0, p1}, Lorg/apache/james/mime4j/f/b;->a(II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/e;->j:[B

    .line 10
    new-instance p1, Lorg/apache/james/mime4j/f/l;

    const/16 v0, 0x200

    invoke-direct {p1, p2, v0}, Lorg/apache/james/mime4j/f/l;-><init>(Lorg/apache/james/mime4j/f/b;I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/e;->h:Lorg/apache/james/mime4j/f/l;

    .line 11
    new-instance p1, Lorg/apache/james/mime4j/f/l;

    invoke-direct {p1, p2, v0}, Lorg/apache/james/mime4j/f/l;-><init>(Lorg/apache/james/mime4j/f/b;I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    .line 12
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/e;->n:Z

    .line 13
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/e;->o:Lorg/apache/james/mime4j/codec/c;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/codec/e;-><init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/c;)V

    return-void
.end method

.method private a(I)I
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v1, 0x46

    if-gt p1, v1, :cond_1

    :goto_0
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v1, 0x66

    if-gt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private e()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/codec/e;->k:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/e;->j:[B

    sub-int/2addr v1, v0

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v0, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/e;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    .line 4
    iput v2, p0, Lorg/apache/james/mime4j/codec/e;->k:I

    goto :goto_0

    .line 5
    :cond_0
    iput v2, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    .line 6
    iput v2, p0, Lorg/apache/james/mime4j/codec/e;->k:I

    .line 7
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/e;->j:[B

    array-length v1, v0

    iget v3, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_2

    .line 8
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/e;->g:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    .line 9
    iget v1, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public static j()Lorg/apache/james/mime4j/f/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/e;->e:Ljava/lang/ThreadLocal;

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

.method private l()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/codec/e;->k:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->j:[B

    aget-byte v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lorg/apache/james/mime4j/codec/e;->k:I

    and-int/lit16 v0, v1, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private o(I)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/codec/e;->k:I

    add-int v1, v0, p1

    iget v2, p0, Lorg/apache/james/mime4j/codec/e;->l:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->j:[B

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private s([BII)I
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p2

    add-int v8, v7, p3

    .line 1
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/e;->h:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v0

    const/4 v9, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/e;->h:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v0

    sub-int v1, v8, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->h:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/l;->d()[B

    move-result-object v1

    move-object/from16 v10, p1

    invoke-static {v1, v9, v10, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->h:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1, v9, v0}, Lorg/apache/james/mime4j/f/l;->h(II)V

    add-int/2addr v0, v7

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    move v0, v7

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v0, v8, :cond_1d

    .line 5
    iget v2, v6, Lorg/apache/james/mime4j/codec/e;->l:I

    iget v3, v6, Lorg/apache/james/mime4j/codec/e;->k:I

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v11, 0x1

    if-ge v2, v3, :cond_2

    .line 6
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/codec/e;->e()I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_2
    move v12, v1

    .line 7
    iget v1, v6, Lorg/apache/james/mime4j/codec/e;->l:I

    iget v2, v6, Lorg/apache/james/mime4j/codec/e;->k:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_4

    if-eqz v12, :cond_4

    if-ne v0, v7, :cond_3

    goto :goto_3

    :cond_3
    sub-int v4, v0, v7

    :goto_3
    return v4

    :cond_4
    move v3, v0

    .line 8
    :goto_4
    iget v0, v6, Lorg/apache/james/mime4j/codec/e;->k:I

    iget v1, v6, Lorg/apache/james/mime4j/codec/e;->l:I

    if-ge v0, v1, :cond_1c

    if-ge v3, v8, :cond_1c

    .line 9
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->j:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, v6, Lorg/apache/james/mime4j/codec/e;->k:I

    aget-byte v0, v1, v0

    and-int/lit16 v13, v0, 0xff

    .line 10
    iget-boolean v0, v6, Lorg/apache/james/mime4j/codec/e;->m:Z

    const/16 v14, 0xa

    if-eqz v0, :cond_6

    if-eq v13, v14, :cond_6

    .line 11
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/e;->o:Lorg/apache/james/mime4j/codec/c;

    const-string v1, "Found CR without LF"

    const-string v2, "Leaving it as is"

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v1, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v8

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v0

    move v3, v0

    goto :goto_5

    .line 13
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v0, :cond_8

    if-ne v13, v14, :cond_8

    .line 14
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/e;->o:Lorg/apache/james/mime4j/codec/c;

    const-string v1, "Found LF without CR"

    const-string v2, "Translating to CRLF"

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    .line 15
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    const/16 v15, 0xd

    if-ne v13, v15, :cond_9

    .line 16
    iput-boolean v11, v6, Lorg/apache/james/mime4j/codec/e;->m:Z

    goto :goto_4

    .line 17
    :cond_9
    iput-boolean v9, v6, Lorg/apache/james/mime4j/codec/e;->m:Z

    const/16 v0, 0x3d

    if-ne v13, v14, :cond_c

    .line 18
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v8

    .line 19
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v3

    const/16 v1, 0xa

    .line 20
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v3

    goto :goto_6

    .line 21
    :cond_a
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/f/l;->a(I)B

    move-result v1

    if-eq v1, v0, :cond_b

    const/16 v1, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v8

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v3

    const/16 v1, 0xa

    .line 23
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v3

    .line 24
    :cond_b
    :goto_6
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->e()V

    goto/16 :goto_b

    :cond_c
    if-ne v13, v0, :cond_19

    .line 25
    iget v1, v6, Lorg/apache/james/mime4j/codec/e;->l:I

    iget v2, v6, Lorg/apache/james/mime4j/codec/e;->k:I

    sub-int/2addr v1, v2

    const/4 v4, 0x2

    if-ge v1, v4, :cond_d

    if-nez v12, :cond_d

    add-int/lit8 v2, v2, -0x1

    .line 26
    iput v2, v6, Lorg/apache/james/mime4j/codec/e;->k:I

    move v0, v3

    move v1, v12

    goto/16 :goto_1

    .line 27
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/codec/e;->l()I

    move-result v5

    if-ne v5, v0, :cond_10

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move v4, v8

    move/from16 v16, v5

    move v5, v13

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v0

    .line 29
    invoke-direct {v6, v9}, Lorg/apache/james/mime4j/codec/e;->o(I)I

    move-result v1

    .line 30
    invoke-direct {v6, v11}, Lorg/apache/james/mime4j/codec/e;->o(I)I

    move-result v2

    if-eq v1, v14, :cond_f

    if-ne v1, v15, :cond_e

    if-ne v2, v14, :cond_e

    goto :goto_7

    .line 31
    :cond_e
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->o:Lorg/apache/james/mime4j/codec/c;

    const-string v2, "Unexpected == encountered"

    const-string v3, "=="

    invoke-virtual {v1, v2, v3}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 32
    :cond_f
    :goto_7
    iget-object v3, v6, Lorg/apache/james/mime4j/codec/e;->o:Lorg/apache/james/mime4j/codec/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 0x"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected ==EOL encountered"

    invoke-virtual {v3, v2, v1}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    move/from16 v5, v16

    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto/16 :goto_a

    :cond_10
    int-to-char v0, v5

    .line 34
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 35
    invoke-direct {v6, v9}, Lorg/apache/james/mime4j/codec/e;->o(I)I

    move-result v0

    if-ne v5, v15, :cond_11

    if-eq v0, v14, :cond_12

    .line 36
    :cond_11
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->o:Lorg/apache/james/mime4j/codec/c;

    const-string v2, "Found non-standard soft line break"

    const-string v4, "Translating to soft line break"

    invoke-virtual {v1, v2, v4}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_12
    if-ne v0, v14, :cond_14

    if-ne v5, v15, :cond_13

    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    .line 37
    :goto_8
    iput-boolean v0, v6, Lorg/apache/james/mime4j/codec/e;->m:Z

    :cond_14
    const/4 v1, -0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v8

    move v9, v5

    move v5, v15

    .line 38
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v0

    if-eq v9, v14, :cond_1b

    .line 39
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1, v13}, Lorg/apache/james/mime4j/f/l;->b(I)V

    .line 40
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto/16 :goto_a

    .line 41
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Non-standard soft line break"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move v9, v5

    .line 42
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/codec/e;->l()I

    move-result v13

    .line 43
    invoke-direct {v6, v9}, Lorg/apache/james/mime4j/codec/e;->a(I)I

    move-result v1

    .line 44
    invoke-direct {v6, v13}, Lorg/apache/james/mime4j/codec/e;->a(I)I

    move-result v2

    if-ltz v1, :cond_18

    if-gez v2, :cond_17

    goto :goto_9

    :cond_17
    shl-int/lit8 v0, v1, 0x4

    or-int v1, v0, v2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v8

    .line 45
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v0

    goto :goto_a

    .line 46
    :cond_18
    :goto_9
    iget-object v1, v6, Lorg/apache/james/mime4j/codec/e;->o:Lorg/apache/james/mime4j/codec/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaving ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v0, v13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " as is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Malformed encoded value encountered"

    invoke-virtual {v1, v2, v0}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v1, 0x3d

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v8

    .line 47
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v3

    const/4 v5, 0x0

    move v1, v9

    .line 48
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v3

    move v1, v13

    .line 49
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v0

    goto :goto_a

    .line 50
    :cond_19
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 51
    iget-object v0, v6, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0, v13}, Lorg/apache/james/mime4j/f/l;->b(I)V

    goto :goto_b

    :cond_1a
    and-int/lit16 v1, v13, 0xff

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v8

    .line 52
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/e;->v(I[BIIZ)I

    move-result v0

    :cond_1b
    :goto_a
    move v3, v0

    :goto_b
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_1c
    move v0, v3

    move v1, v12

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_1d
    sub-int/2addr v8, v7

    return v8
.end method

.method private v(I[BIIZ)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 1
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    iget-object p5, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p5}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result p5

    sub-int v1, p4, p3

    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/l;->d()[B

    move-result-object v1

    invoke-static {v1, v0, p2, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p5

    .line 4
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v0

    sub-int/2addr v0, p5

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->h:Lorg/apache/james/mime4j/f/l;

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/f/l;->d()[B

    move-result-object v2

    invoke-virtual {v1, v2, p5, v0}, Lorg/apache/james/mime4j/f/l;->c([BII)V

    .line 6
    :cond_0
    iget-object p5, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p5}, Lorg/apache/james/mime4j/f/l;->e()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v1

    if-lez v1, :cond_4

    if-nez p5, :cond_4

    .line 8
    new-instance p5, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const-string v1, " "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/f/l;->a(I)B

    move-result v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/e;->o:Lorg/apache/james/mime4j/codec/c;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "ignored blanks"

    invoke-virtual {v0, v1, p5}, Lorg/apache/james/mime4j/codec/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 p5, -0x1

    if-eq p1, p5, :cond_6

    if-ge p3, p4, :cond_5

    add-int/lit8 p4, p3, 0x1

    int-to-byte p1, p1

    .line 12
    aput-byte p1, p2, p3

    move p3, p4

    goto :goto_2

    .line 13
    :cond_5
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/e;->h:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/f/l;->b(I)V

    :cond_6
    :goto_2
    return p3
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/e;->n:Z

    .line 2
    invoke-static {}, Lorg/apache/james/mime4j/codec/e;->j()Lorg/apache/james/mime4j/f/b;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/e;->j:[B

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/f/b;->d(I[B)V

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/e;->h:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->g()V

    .line 4
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/e;->i:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->g()V

    return-void
.end method

.method public read()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/e;->n:Z

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/e;->f:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/james/mime4j/codec/e;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/e;->f:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 4
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public read([BII)I
    .locals 1

    .line 5
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/e;->n:Z

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/e;->s([BII)I

    move-result p1

    return p1

    .line 7
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
