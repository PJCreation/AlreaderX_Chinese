.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/d;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field public d:I

.field protected e:[I

.field protected f:[I

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/io/Reader;

.field protected l:[C

.field protected m:I

.field protected n:I

.field protected o:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->h:I

    .line 5
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->i:Z

    .line 6
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->j:Z

    .line 7
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    .line 8
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->n:I

    const/16 v0, 0x8

    .line 9
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->o:I

    .line 10
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->k:Ljava/io/Reader;

    .line 11
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->h:I

    sub-int/2addr p3, v1

    .line 12
    iput p3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    .line 13
    iput p4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    iput p4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b:I

    .line 14
    new-array p1, p4, [C

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    .line 15
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    .line 16
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    return-void
.end method


# virtual methods
.method public a()C
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    .line 2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l()C

    move-result v0

    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    return v0
.end method

.method protected b(Z)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    .line 2
    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    .line 3
    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    sub-int/2addr v0, v5

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    .line 7
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    .line 10
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    .line 13
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    .line 16
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    .line 18
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    .line 20
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    .line 22
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b:I

    .line 23
    iput v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    return-void

    :catchall_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()V
    .locals 7

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 2
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    const/16 v4, 0x800

    if-ne v1, v0, :cond_2

    .line 3
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    if-le v0, v4, :cond_0

    .line 4
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    .line 5
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b:I

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 6
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    if-le v1, v5, :cond_3

    .line 9
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b:I

    goto :goto_0

    :cond_3
    sub-int v0, v5, v1

    if-ge v0, v4, :cond_4

    .line 10
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b(Z)V

    goto :goto_0

    .line 11
    :cond_4
    iput v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b:I

    :cond_5
    :goto_0
    const/4 v0, -0x1

    .line 12
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->k:Ljava/io/Reader;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->b:I

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 13
    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    return-void

    .line 14
    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->k:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 15
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 16
    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    .line 17
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g(I)V

    .line 18
    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    if-ne v2, v0, :cond_7

    .line 19
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    .line 20
    :cond_7
    throw v1
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)[C
    .locals 6

    .line 1
    new-array v0, p1, [C

    .line 2
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method protected f(C)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    .line 2
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->j:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->j:Z

    .line 4
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->h:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->h:I

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->i:Z

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->i:Z

    if-ne p1, v2, :cond_1

    .line 7
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->j:Z

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->h:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->h:I

    :cond_2
    :goto_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->i:Z

    goto :goto_1

    .line 10
    :cond_4
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->j:Z

    goto :goto_1

    .line 11
    :cond_5
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    .line 12
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->o:I

    rem-int v1, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    .line 13
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->h:I

    aput v1, p1, v0

    .line 14
    iget-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->g:I

    aput v1, p1, v0

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->n:I

    .line 2
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    if-gez v0, :cond_0

    .line 3
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    :cond_0
    return-void
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public j()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    aget v0, v0, v1

    return v0
.end method

.method public k()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->e:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    aget v0, v0, v1

    return v0
.end method

.method public l()C
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->n:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->n:I

    .line 3
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    aget-char v0, v0, v1

    return v0

    .line 6
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->m:I

    if-lt v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->c()V

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->l:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->d:I

    aget-char v0, v0, v1

    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;->f(C)V

    return v0
.end method
