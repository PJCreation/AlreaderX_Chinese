.class public Lorg/apache/james/mime4j/field/contenttype/parser/c;
.super Ljava/lang/Object;
.source "ContentTypeParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/b;


# static fields
.field static b:I

.field static final c:[J

.field static final d:[I

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[I

.field static final h:[J

.field static final i:[J

.field static final j:[J

.field static final k:[J


# instance fields
.field public l:Ljava/io/PrintStream;

.field protected m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

.field private final n:[I

.field private final o:[I

.field private final p:Ljava/lang/StringBuilder;

.field private q:Ljava/lang/StringBuilder;

.field private r:I

.field private s:I

.field protected t:C

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [J

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c:[J

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 2
    sput-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/c;->d:[I

    const/16 v2, 0x18

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    const-string v4, "\r"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "\n"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "/"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, ";"

    aput-object v4, v3, v0

    const/4 v4, 0x5

    const-string v8, "="

    aput-object v8, v3, v4

    const/4 v4, 0x6

    const/4 v8, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x7

    aput-object v8, v3, v4

    const/16 v4, 0x8

    aput-object v8, v3, v4

    const/16 v4, 0x9

    aput-object v8, v3, v4

    const/16 v4, 0xa

    aput-object v8, v3, v4

    const/16 v4, 0xb

    aput-object v8, v3, v4

    const/16 v4, 0xc

    aput-object v8, v3, v4

    const/16 v4, 0xd

    aput-object v8, v3, v4

    const/16 v4, 0xe

    aput-object v8, v3, v4

    const/16 v4, 0xf

    aput-object v8, v3, v4

    const/16 v4, 0x10

    aput-object v8, v3, v4

    const/16 v4, 0x11

    aput-object v8, v3, v4

    const/16 v4, 0x12

    aput-object v8, v3, v4

    const/16 v4, 0x13

    aput-object v8, v3, v4

    const/16 v4, 0x14

    aput-object v8, v3, v4

    const/16 v4, 0x15

    aput-object v8, v3, v4

    const/16 v4, 0x16

    aput-object v8, v3, v4

    const/16 v4, 0x17

    aput-object v8, v3, v4

    .line 3
    sput-object v3, Lorg/apache/james/mime4j/field/contenttype/parser/c;->e:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "DEFAULT"

    aput-object v3, v0, v1

    const-string v3, "INCOMMENT"

    aput-object v3, v0, v5

    const-string v3, "NESTED_COMMENT"

    aput-object v3, v0, v6

    const-string v3, "INQUOTEDSTRING"

    aput-object v3, v0, v7

    .line 4
    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f:[Ljava/lang/String;

    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->g:[I

    new-array v0, v5, [J

    const-wide/32 v2, 0x38003f

    aput-wide v2, v0, v1

    .line 6
    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->h:[J

    new-array v0, v5, [J

    const-wide/16 v2, 0x140

    aput-wide v2, v0, v1

    .line 7
    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->i:[J

    new-array v0, v5, [J

    const-wide/16 v2, 0x40

    aput-wide v2, v0, v1

    .line 8
    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->j:[J

    new-array v0, v5, [J

    const-wide/32 v2, 0x7fe80

    aput-wide v2, v0, v1

    .line 9
    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->k:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->l:Ljava/io/PrintStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->n:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->p:Ljava/lang/StringBuilder;

    .line 6
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->u:I

    .line 8
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->v:I

    .line 9
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    return-void
.end method

.method private b()V
    .locals 3

    const v0, -0x7fffffff

    .line 1
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->n:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->n:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    if-eq v1, v2, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    aput p1, v1, v3

    .line 3
    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private h(II)I
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 1
    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    .line 2
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v5, p2

    const/4 v6, 0x1

    const v7, 0x7fffffff

    const/4 v8, 0x0

    .line 3
    :goto_0
    iget v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    add-int/2addr v9, v4

    iput v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    if-ne v9, v2, :cond_0

    .line 4
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b()V

    .line 5
    :cond_0
    iget-char v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v10, 0x40

    const-wide/16 v11, 0x1

    const/4 v13, 0x6

    const/16 v14, 0x15

    const/4 v15, 0x2

    const-wide/16 v16, 0x0

    if-ge v9, v10, :cond_11

    shl-long v18, v11, v9

    .line 6
    :cond_1
    iget-object v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    const-wide v10, 0x100000200L

    if-eqz v9, :cond_e

    const-wide/high16 v20, 0x3ff000000000000L

    const/16 v12, 0x14

    if-eq v9, v4, :cond_b

    const-wide v22, 0x3ff6cfafffffdffL

    if-eq v9, v15, :cond_8

    if-eq v9, v1, :cond_2

    goto :goto_3

    :cond_2
    and-long v22, v18, v22

    cmp-long v9, v22, v16

    if-eqz v9, :cond_4

    if-le v7, v14, :cond_3

    const/16 v7, 0x15

    .line 7
    :cond_3
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    goto :goto_1

    :cond_4
    and-long v10, v18, v10

    cmp-long v9, v10, v16

    if-eqz v9, :cond_6

    if-le v7, v13, :cond_5

    const/4 v7, 0x6

    .line 8
    :cond_5
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    :cond_6
    :goto_1
    and-long v9, v18, v20

    cmp-long v11, v9, v16

    if-eqz v11, :cond_10

    if-le v7, v12, :cond_7

    goto :goto_2

    :cond_7
    move v12, v7

    .line 9
    :goto_2
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    move v7, v12

    goto :goto_3

    :cond_8
    and-long v9, v18, v22

    cmp-long v11, v9, v16

    if-nez v11, :cond_9

    goto :goto_3

    :cond_9
    if-le v7, v14, :cond_a

    const/16 v7, 0x15

    .line 10
    :cond_a
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    goto :goto_3

    :cond_b
    and-long v9, v18, v20

    cmp-long v11, v9, v16

    if-nez v11, :cond_c

    goto :goto_3

    :cond_c
    if-le v7, v12, :cond_d

    const/16 v7, 0x14

    .line 11
    :cond_d
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    goto :goto_3

    :cond_e
    and-long v10, v18, v10

    cmp-long v9, v10, v16

    if-nez v9, :cond_f

    goto :goto_3

    .line 12
    :cond_f
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    const/4 v7, 0x6

    :cond_10
    :goto_3
    if-ne v6, v8, :cond_1

    goto :goto_6

    :cond_11
    const/16 v10, 0x80

    if-ge v9, v10, :cond_15

    and-int/lit8 v9, v9, 0x3f

    shl-long v18, v11, v9

    .line 13
    :cond_12
    iget-object v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    if-eq v9, v15, :cond_13

    if-eq v9, v1, :cond_13

    goto :goto_4

    :cond_13
    const-wide/32 v9, -0x38000002

    and-long v9, v18, v9

    cmp-long v11, v9, v16

    if-nez v11, :cond_14

    goto :goto_4

    .line 14
    :cond_14
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    const/16 v7, 0x15

    :goto_4
    if-ne v6, v8, :cond_12

    goto :goto_6

    :cond_15
    and-int/lit16 v10, v9, 0xff

    shr-int/2addr v10, v13

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v11, v9

    .line 15
    :cond_16
    iget-object v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    if-eq v9, v15, :cond_17

    if-eq v9, v1, :cond_17

    goto :goto_5

    .line 16
    :cond_17
    sget-object v9, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c:[J

    aget-wide v18, v9, v10

    and-long v18, v18, v11

    cmp-long v9, v18, v16

    if-nez v9, :cond_18

    goto :goto_5

    :cond_18
    if-le v7, v14, :cond_19

    const/16 v7, 0x15

    .line 17
    :cond_19
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    :goto_5
    if-ne v6, v8, :cond_16

    :goto_6
    if-eq v7, v2, :cond_1a

    .line 18
    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 19
    iput v5, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    const v7, 0x7fffffff

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    .line 20
    iget v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    iput v8, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v6, v8, :cond_1b

    return v5

    .line 21
    :cond_1b
    :try_start_0
    iget-object v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->l()C

    move-result v9

    iput-char v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v5
.end method

.method private i(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 1
    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    .line 2
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7fffffff

    .line 3
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    if-ne v7, v1, :cond_0

    .line 4
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b()V

    .line 5
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v8, 0x40

    const/16 v9, 0x9

    const/16 v10, 0xb

    if-ge v7, v8, :cond_5

    .line 6
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_2

    goto :goto_1

    :cond_2
    if-le v6, v9, :cond_4

    const/16 v6, 0x9

    goto :goto_1

    :cond_3
    if-le v6, v10, :cond_4

    const/16 v6, 0xb

    :cond_4
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_5
    const/16 v8, 0x80

    if-ge v7, v8, :cond_c

    .line 7
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    if-eqz v8, :cond_9

    if-eq v8, v3, :cond_8

    const/4 v7, 0x2

    if-eq v8, v7, :cond_7

    goto :goto_2

    :cond_7
    if-le v6, v10, :cond_b

    const/16 v6, 0xb

    goto :goto_2

    :cond_8
    if-le v6, v9, :cond_b

    const/16 v6, 0x9

    goto :goto_2

    :cond_9
    if-le v6, v10, :cond_a

    const/16 v6, 0xb

    .line 8
    :cond_a
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v11, 0x5c

    if-ne v8, v11, :cond_b

    .line 9
    iget v8, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    aput v3, v7, v8

    :cond_b
    :goto_2
    if-ne v5, v4, :cond_6

    goto :goto_4

    :cond_c
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    const-wide/16 v11, 0x1

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v11, v7

    .line 10
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_3

    .line 11
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    const/16 v6, 0x9

    goto :goto_3

    .line 12
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v10, :cond_10

    const/16 v6, 0xb

    :cond_10
    :goto_3
    if-ne v5, v4, :cond_d

    :goto_4
    if-eq v6, v1, :cond_11

    .line 13
    iput v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 14
    iput v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    const v6, 0x7fffffff

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 15
    iget v5, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    iput v4, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 16
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->l()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private j(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 1
    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    .line 2
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7fffffff

    .line 3
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    if-ne v7, v1, :cond_0

    .line 4
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b()V

    .line 5
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v8, 0x40

    const/16 v9, 0xc

    const/16 v10, 0xf

    if-ge v7, v8, :cond_5

    .line 6
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_2

    goto :goto_1

    :cond_2
    if-le v6, v9, :cond_4

    const/16 v6, 0xc

    goto :goto_1

    :cond_3
    if-le v6, v10, :cond_4

    const/16 v6, 0xf

    :cond_4
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_5
    const/16 v8, 0x80

    if-ge v7, v8, :cond_c

    .line 7
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    if-eqz v8, :cond_9

    if-eq v8, v3, :cond_8

    const/4 v7, 0x2

    if-eq v8, v7, :cond_7

    goto :goto_2

    :cond_7
    if-le v6, v10, :cond_b

    const/16 v6, 0xf

    goto :goto_2

    :cond_8
    if-le v6, v9, :cond_b

    const/16 v6, 0xc

    goto :goto_2

    :cond_9
    if-le v6, v10, :cond_a

    const/16 v6, 0xf

    .line 8
    :cond_a
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v11, 0x5c

    if-ne v8, v11, :cond_b

    .line 9
    iget v8, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    aput v3, v7, v8

    :cond_b
    :goto_2
    if-ne v5, v4, :cond_6

    goto :goto_4

    :cond_c
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    const-wide/16 v11, 0x1

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v11, v7

    .line 10
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_3

    .line 11
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    const/16 v6, 0xc

    goto :goto_3

    .line 12
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v10, :cond_10

    const/16 v6, 0xf

    :cond_10
    :goto_3
    if-ne v5, v4, :cond_d

    :goto_4
    if-eq v6, v1, :cond_11

    .line 13
    iput v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 14
    iput v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    const v6, 0x7fffffff

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 15
    iget v5, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    iput v4, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 16
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->l()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private k(II)I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 1
    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    .line 2
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7fffffff

    .line 3
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->x:I

    if-ne v7, v1, :cond_0

    .line 4
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b()V

    .line 5
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v8, 0x40

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const/16 v13, 0x11

    const/4 v14, 0x2

    const/16 v15, 0x12

    if-ge v7, v8, :cond_7

    shl-long v16, v9, v7

    .line 6
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_2

    if-eq v7, v14, :cond_3

    goto :goto_1

    :cond_2
    if-le v6, v13, :cond_6

    const/16 v6, 0x11

    goto :goto_1

    :cond_3
    const-wide v7, -0x400000001L

    and-long v7, v16, v7

    cmp-long v9, v7, v11

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    if-le v6, v15, :cond_5

    const/16 v6, 0x12

    .line 7
    :cond_5
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    :cond_6
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_7
    const/16 v8, 0x80

    if-ge v7, v8, :cond_11

    and-int/lit8 v7, v7, 0x3f

    shl-long v16, v9, v7

    .line 8
    :cond_8
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    const-wide/32 v9, -0x10000001

    if-eqz v8, :cond_d

    if-eq v8, v3, :cond_c

    if-eq v8, v14, :cond_9

    goto :goto_2

    :cond_9
    and-long v7, v16, v9

    cmp-long v9, v7, v11

    if-nez v9, :cond_a

    goto :goto_2

    :cond_a
    if-le v6, v15, :cond_b

    const/16 v6, 0x12

    .line 9
    :cond_b
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    goto :goto_2

    :cond_c
    if-le v6, v13, :cond_10

    const/16 v6, 0x11

    goto :goto_2

    :cond_d
    and-long v9, v16, v9

    cmp-long v8, v9, v11

    if-eqz v8, :cond_f

    if-le v6, v15, :cond_e

    const/16 v6, 0x12

    .line 10
    :cond_e
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    goto :goto_2

    .line 11
    :cond_f
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_10

    .line 12
    iget v8, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    aput v3, v7, v8

    :cond_10
    :goto_2
    if-ne v5, v4, :cond_8

    goto :goto_4

    :cond_11
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v9, v7

    .line 13
    :cond_12
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_14

    if-eq v7, v3, :cond_13

    if-eq v7, v14, :cond_14

    goto :goto_3

    .line 14
    :cond_13
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-eqz v7, :cond_17

    if-le v6, v13, :cond_17

    const/16 v6, 0x11

    goto :goto_3

    .line 15
    :cond_14
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-nez v7, :cond_15

    goto :goto_3

    :cond_15
    if-le v6, v15, :cond_16

    const/16 v6, 0x12

    .line 16
    :cond_16
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->f(I)V

    :cond_17
    :goto_3
    if-ne v5, v4, :cond_12

    :goto_4
    if-eq v6, v1, :cond_18

    .line 17
    iput v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 18
    iput v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    const v6, 0x7fffffff

    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 19
    iget v5, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    iput v4, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->w:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_19

    return v2

    .line 20
    :cond_19
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->l()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private l()I
    .locals 4

    .line 1
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->h(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0

    .line 5
    :cond_2
    invoke-direct {p0, v3, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x7

    .line 6
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0

    :cond_4
    const/16 v0, 0x10

    .line 7
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0

    :cond_5
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v3, v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->p(III)I

    move-result v0

    return v0

    .line 9
    :cond_6
    invoke-direct {p0, v3, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->p(III)I

    move-result v0

    return v0
.end method

.method private m()I
    .locals 3

    .line 1
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->i(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xa

    .line 4
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0
.end method

.method private n()I
    .locals 3

    .line 1
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->j(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xe

    .line 3
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xd

    .line 4
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0
.end method

.method private o()I
    .locals 3

    .line 1
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    .line 2
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->k(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x13

    .line 3
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q(II)I

    move-result v0

    return v0
.end method

.method private p(III)I
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 2
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    .line 3
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->l()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->h(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private q(II)I
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 2
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method a()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 2
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->e(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 4
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 6
    :pswitch_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->e(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 7
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :pswitch_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->e(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 10
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 11
    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b:I

    sub-int/2addr v0, v2

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->c(I)V

    goto :goto_0

    .line 12
    :pswitch_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->e(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 13
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 14
    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b:I

    add-int/2addr v0, v2

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b:I

    goto :goto_0

    .line 15
    :pswitch_5
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->e(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 16
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 17
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :pswitch_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->e(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 19
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 20
    sput v2, Lorg/apache/james/mime4j/field/contenttype/parser/c;->b:I

    goto :goto_0

    .line 21
    :pswitch_7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->e(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 22
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 23
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->u:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State unchanged."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method d(Lorg/apache/james/mime4j/field/contenttype/parser/Token;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->s:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->e(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public e()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->a()C

    move-result v6

    iput-char v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    iget-object v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->p:Ljava/lang/StringBuilder;

    iput-object v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->q:Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    iput v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->r:I

    .line 5
    :goto_1
    iget v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->u:I

    const v7, 0x7fffffff

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 7
    iput v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    .line 8
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->o()I

    move-result v5

    goto :goto_2

    .line 9
    :cond_2
    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 10
    iput v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    .line 11
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->n()I

    move-result v5

    goto :goto_2

    .line 12
    :cond_3
    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 13
    iput v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    .line 14
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m()I

    move-result v5

    goto :goto_2

    .line 15
    :cond_4
    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 16
    iput v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    .line 17
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->l()I

    move-result v5

    .line 18
    :goto_2
    iget v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    if-eq v6, v7, :cond_c

    .line 19
    iget v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->y:I

    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_5

    .line 20
    iget-object v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    sub-int v6, v5, v6

    sub-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->g(I)V

    .line 21
    :cond_5
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/c;->h:[J

    iget v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    shr-int/lit8 v10, v9, 0x6

    aget-wide v10, v6, v10

    and-int/lit8 v6, v9, 0x3f

    const-wide/16 v12, 0x1

    shl-long v14, v12, v6

    and-long/2addr v10, v14

    const/4 v6, -0x1

    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-eqz v16, :cond_7

    .line 22
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->g()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    .line 23
    iput-object v4, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 24
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->d(Lorg/apache/james/mime4j/field/contenttype/parser/Token;)V

    .line 25
    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/c;->g:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    aget v4, v2, v3

    if-eq v4, v6, :cond_6

    .line 26
    aget v2, v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->u:I

    :cond_6
    return-object v1

    .line 27
    :cond_7
    sget-object v10, Lorg/apache/james/mime4j/field/contenttype/parser/c;->i:[J

    shr-int/lit8 v11, v9, 0x6

    aget-wide v16, v10, v11

    and-int/lit8 v10, v9, 0x3f

    shl-long v10, v12, v10

    and-long v10, v16, v10

    cmp-long v16, v10, v14

    if-eqz v16, :cond_a

    .line 28
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/c;->j:[J

    shr-int/lit8 v8, v9, 0x6

    aget-wide v10, v7, v8

    and-int/lit8 v7, v9, 0x3f

    shl-long v7, v12, v7

    and-long/2addr v7, v10

    cmp-long v9, v7, v14

    if-eqz v9, :cond_9

    .line 29
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->g()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v7

    if-nez v4, :cond_8

    goto :goto_3

    .line 30
    :cond_8
    iput-object v4, v7, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 31
    iput-object v7, v4, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    :goto_3
    move-object v4, v7

    .line 32
    :cond_9
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/c;->g:[I

    iget v8, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    aget v9, v7, v8

    if-eq v9, v6, :cond_0

    .line 33
    aget v6, v7, v8

    iput v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->u:I

    goto/16 :goto_0

    .line 34
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->a()V

    .line 35
    sget-object v5, Lorg/apache/james/mime4j/field/contenttype/parser/c;->g:[I

    iget v9, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    aget v10, v5, v9

    if-eq v10, v6, :cond_b

    .line 36
    aget v5, v5, v9

    iput v5, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->u:I

    .line 37
    :cond_b
    iput v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 38
    :try_start_1
    iget-object v5, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->l()C

    move-result v5

    iput-char v5, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_0
    const/4 v5, 0x0

    .line 39
    :cond_c
    iget-object v4, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->k()I

    move-result v4

    .line 40
    iget-object v6, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->j()I

    move-result v6

    .line 41
    :try_start_2
    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->l()C

    iget-object v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->g(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v12, v4

    move v13, v6

    const/4 v10, 0x0

    goto :goto_6

    :catch_1
    nop

    if-gt v5, v8, :cond_d

    move-object v2, v1

    goto :goto_4

    .line 42
    :cond_d
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->d()Ljava/lang/String;

    move-result-object v2

    .line 43
    :goto_4
    iget-char v7, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v9, 0xa

    if-eq v7, v9, :cond_f

    const/16 v9, 0xd

    if-ne v7, v9, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v3, v6, 0x1

    move v13, v3

    move v12, v4

    const/4 v10, 0x1

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v12, v4

    const/4 v10, 0x1

    const/4 v13, 0x0

    :goto_6
    if-nez v10, :cond_11

    .line 44
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->g(I)V

    if-gt v5, v8, :cond_10

    goto :goto_7

    .line 45
    :cond_10
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->d()Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object v14, v1

    goto :goto_8

    :cond_11
    move-object v14, v2

    .line 46
    :goto_8
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    iget v11, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->u:I

    iget-char v15, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->t:C

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 47
    :catch_2
    iput v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    .line 48
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->g()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    .line 49
    iput-object v4, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    return-object v1
.end method

.method protected g()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->e:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->i()I

    move-result v1

    .line 4
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->h()I

    move-result v2

    .line 5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->k()I

    move-result v3

    .line 6
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->m:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->j()I

    move-result v4

    .line 7
    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->z:I

    invoke-static {v5, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 8
    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->beginLine:I

    .line 9
    iput v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->endLine:I

    .line 10
    iput v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->beginColumn:I

    .line 11
    iput v4, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->endColumn:I

    return-object v0
.end method
