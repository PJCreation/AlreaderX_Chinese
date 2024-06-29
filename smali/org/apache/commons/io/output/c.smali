.class public abstract Lorg/apache/commons/io/output/c;
.super Ljava/io/OutputStream;
.source "AbstractByteArrayOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/c$a;
    }
.end annotation


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:[B

.field protected i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/c;->e:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/io/output/c;->j:Z

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/c;->f:I

    iget-object v1, p0, Lorg/apache/commons/io/output/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget p1, p0, Lorg/apache/commons/io/output/c;->g:I

    iget-object v0, p0, Lorg/apache/commons/io/output/c;->h:[B

    array-length v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/io/output/c;->g:I

    .line 3
    iget p1, p0, Lorg/apache/commons/io/output/c;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/io/output/c;->f:I

    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/output/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/io/output/c;->h:[B

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/c;->h:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/apache/commons/io/output/c;->g:I

    goto :goto_0

    .line 7
    :cond_1
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/io/output/c;->g:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    iget v0, p0, Lorg/apache/commons/io/output/c;->g:I

    iget-object v1, p0, Lorg/apache/commons/io/output/c;->h:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/output/c;->g:I

    .line 9
    :goto_0
    iget v0, p0, Lorg/apache/commons/io/output/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/c;->f:I

    .line 10
    invoke-static {p1}, Lorg/apache/commons/io/m;->b(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/c;->h:[B

    .line 11
    iget-object v0, p0, Lorg/apache/commons/io/output/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public abstract e()[B
.end method

.method protected j()[B
    .locals 7

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/c;->i:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/apache/commons/io/m;->b:[B

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/io/m;->b(I)[B

    move-result-object v1

    .line 4
    iget-object v2, p0, Lorg/apache/commons/io/output/c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 5
    array-length v6, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 6
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    sub-int/2addr v0, v6

    if-nez v0, :cond_1

    :cond_2
    return-object v1
.end method

.method protected l(Lorg/apache/commons/io/output/c$a;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/io/InputStream;",
            ">(",
            "Lorg/apache/commons/io/output/c$a<",
            "TT;>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/c;->i:I

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lorg/apache/commons/io/input/a;->e:Lorg/apache/commons/io/input/a;

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/io/output/c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v2, p0, Lorg/apache/commons/io/output/c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 5
    array-length v5, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6
    invoke-interface {p1, v3, v4, v5}, Lorg/apache/commons/io/output/c$a;->a([BII)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v0, v5

    if-nez v0, :cond_1

    .line 7
    :cond_2
    iput-boolean v4, p0, Lorg/apache/commons/io/output/c;->j:Z

    .line 8
    new-instance p1, Ljava/io/SequenceInputStream;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object p1
.end method

.method protected o(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/c;->i:I

    iget v1, p0, Lorg/apache/commons/io/output/c;->g:I

    sub-int v1, v0, v1

    .line 2
    iget-object v2, p0, Lorg/apache/commons/io/output/c;->h:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/c;->a(I)V

    const/4 v1, 0x0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/c;->h:[B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 5
    iget p1, p0, Lorg/apache/commons/io/output/c;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/io/output/c;->i:I

    return-void
.end method

.method protected s([BII)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/c;->i:I

    add-int v1, v0, p3

    .line 2
    iget v2, p0, Lorg/apache/commons/io/output/c;->g:I

    sub-int/2addr v0, v2

    move v2, p3

    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 3
    iget-object v3, p0, Lorg/apache/commons/io/output/c;->h:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p2, p3

    sub-int/2addr v4, v2

    .line 4
    iget-object v5, p0, Lorg/apache/commons/io/output/c;->h:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/c;->a(I)V

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    iput v1, p0, Lorg/apache/commons/io/output/c;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/c;->e()[B

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
