.class public Lorg/apache/james/mime4j/io/h;
.super Lorg/apache/james/mime4j/io/f;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private final e:[B

.field private final f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Z

.field private final m:Lorg/apache/james/mime4j/io/a;

.field private n:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/a;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/f;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1000

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/io/a;->v(I)V

    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/h;->g:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lorg/apache/james/mime4j/io/h;->h:I

    .line 7
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/h;->i:Z

    .line 8
    iput p1, p0, Lorg/apache/james/mime4j/io/h;->j:I

    .line 9
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/h;->k:Z

    .line 10
    iput v0, p0, Lorg/apache/james/mime4j/io/h;->n:I

    .line 11
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/h;->l:Z

    .line 12
    iput-boolean p3, p0, Lorg/apache/james/mime4j/io/h;->f:Z

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    iput-object p3, p0, Lorg/apache/james/mime4j/io/h;->e:[B

    const/16 v0, 0x2d

    .line 14
    aput-byte v0, p3, p1

    const/4 v1, 0x1

    .line 15
    aput-byte v0, p3, v1

    .line 16
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    int-to-byte p3, p3

    .line 18
    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->e:[B

    add-int/lit8 v1, p1, 0x2

    aput-byte p3, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->s()I

    return-void
.end method

.method private E()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->l:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->l:Z

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    iget v2, p0, Lorg/apache/james/mime4j/io/h;->j:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/a;->O(I)I

    const/4 v1, 0x1

    .line 4
    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/a;->J()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 5
    iget-object v2, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/io/a;->o(I)I

    move-result v2

    .line 6
    iget-object v3, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/io/a;->o(I)I

    move-result v3

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_0

    if-ne v3, v5, :cond_0

    .line 7
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->k:Z

    .line 8
    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v1, v4}, Lorg/apache/james/mime4j/io/a;->O(I)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0xd

    const/16 v6, 0xa

    if-ne v2, v5, :cond_1

    if-ne v3, v6, :cond_1

    .line 9
    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/io/a;->O(I)I

    goto :goto_1

    :cond_1
    if-ne v2, v6, :cond_2

    .line 10
    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/io/a;->O(I)I

    goto :goto_1

    .line 11
    :cond_2
    iget-object v2, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/io/a;->O(I)I

    goto :goto_0

    .line 12
    :cond_3
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/h;->g:Z

    if-eqz v2, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->s()I

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private F()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/MimeIOException;

    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    const-string v2, "Unexpected end of stream"

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->e:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/james/mime4j/io/h;->j:I

    .line 2
    iget v0, p0, Lorg/apache/james/mime4j/io/h;->h:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/io/h;->n:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput v0, p0, Lorg/apache/james/mime4j/io/h;->n:I

    :cond_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 4
    iget-object v2, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    iget v3, p0, Lorg/apache/james/mime4j/io/h;->h:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/io/a;->o(I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 5
    iget v2, p0, Lorg/apache/james/mime4j/io/h;->j:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/james/mime4j/io/h;->j:I

    .line 6
    iget v2, p0, Lorg/apache/james/mime4j/io/h;->h:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/james/mime4j/io/h;->h:I

    :cond_1
    if-le v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    iget v2, p0, Lorg/apache/james/mime4j/io/h;->h:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/io/a;->o(I)I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 8
    iget v0, p0, Lorg/apache/james/mime4j/io/h;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/io/h;->j:I

    .line 9
    iget v0, p0, Lorg/apache/james/mime4j/io/h;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/io/h;->h:I

    :cond_2
    return-void
.end method

.method private l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private s()I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->v()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/a;->x()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 4
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/h;->g:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v3

    .line 6
    :goto_1
    iget-object v4, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    iget-object v5, p0, Lorg/apache/james/mime4j/io/h;->e:[B

    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/a;->K()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Lorg/apache/james/mime4j/io/a;->I([BII)I

    move-result v3

    if-ne v3, v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget-object v4, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v4

    if-eq v3, v4, :cond_4

    iget-object v4, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/io/a;->o(I)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    .line 8
    :cond_4
    iget-object v4, p0, Lorg/apache/james/mime4j/io/h;->e:[B

    array-length v4, v4

    add-int/2addr v4, v3

    .line 9
    iget-object v5, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/io/a;->K()I

    move-result v5

    sub-int/2addr v5, v4

    if-gtz v5, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    iget-object v6, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v6, v4}, Lorg/apache/james/mime4j/io/a;->o(I)I

    move-result v6

    int-to-char v6, v6

    .line 11
    invoke-static {v6}, Lorg/apache/james/mime4j/f/f;->a(C)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_9

    if-le v5, v2, :cond_9

    .line 12
    iget-object v5, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Lorg/apache/james/mime4j/io/a;->o(I)I

    move-result v4

    int-to-char v4, v4

    if-ne v4, v7, :cond_9

    :goto_2
    if-eq v3, v1, :cond_7

    .line 13
    iput v3, p0, Lorg/apache/james/mime4j/io/h;->h:I

    .line 14
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/h;->i:Z

    .line 15
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->j()V

    goto :goto_3

    .line 16
    :cond_7
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/h;->g:Z

    if-eqz v1, :cond_8

    .line 17
    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/a;->K()I

    move-result v1

    iput v1, p0, Lorg/apache/james/mime4j/io/h;->h:I

    goto :goto_3

    .line 18
    :cond_8
    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/a;->K()I

    move-result v1

    iget-object v2, p0, Lorg/apache/james/mime4j/io/h;->e:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/io/h;->h:I

    :goto_3
    return v0

    .line 19
    :cond_9
    iget-object v4, p0, Lorg/apache/james/mime4j/io/h;->e:[B

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_1
.end method

.method private v()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/h;->h:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/io/h;->h:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/a;->K()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->k:Z

    return v0
.end method

.method public B()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->E()V

    .line 4
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->F()V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lorg/apache/james/mime4j/f/c;)I
    .locals 8

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/h;->B()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->v()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->s()I

    move-result v3

    .line 4
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->v()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->E()V

    .line 6
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->F()V

    const/4 v3, -0x1

    goto :goto_1

    .line 7
    :cond_2
    iget v4, p0, Lorg/apache/james/mime4j/io/h;->h:I

    iget-object v5, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v5

    sub-int/2addr v4, v5

    .line 8
    iget-object v5, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    const/16 v6, 0xa

    invoke-virtual {v5}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v7

    invoke-virtual {v5, v6, v7, v4}, Lorg/apache/james/mime4j/io/a;->F(BII)I

    move-result v5

    if-eq v5, v1, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 9
    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v0

    sub-int v4, v5, v0

    const/4 v0, 0x1

    :cond_3
    if-lez v4, :cond_1

    .line 10
    iget-object v5, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/io/a;->j()[B

    move-result-object v5

    iget-object v6, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v6

    invoke-virtual {p1, v5, v6, v4}, Lorg/apache/james/mime4j/f/c;->c([BII)V

    .line 11
    iget-object v5, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v5, v4}, Lorg/apache/james/mime4j/io/a;->O(I)I

    add-int/2addr v2, v4

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    if-ne v3, v1, :cond_5

    return v1

    :cond_5
    return v2

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destination buffer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public e(Lorg/apache/james/mime4j/f/l;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/h;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/a;->read()I

    move-result v0

    return v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->s()I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/h;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 6
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget v0, p0, Lorg/apache/james/mime4j/io/h;->h:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/a;->L()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8
    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/io/a;->read([BII)I

    move-result p1

    return p1

    .line 9
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/h;->s()I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MimeBoundaryInputStream, boundary "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/io/h;->e:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    int-to-char v4, v4

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/h;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/h;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/io/h;->m:Lorg/apache/james/mime4j/io/a;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
