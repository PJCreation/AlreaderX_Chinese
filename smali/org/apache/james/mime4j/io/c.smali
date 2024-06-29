.class public Lorg/apache/james/mime4j/io/c;
.super Lorg/apache/james/mime4j/io/i;
.source "LimitedInputStream.java"


# instance fields
.field private final g:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/i;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    .line 2
    iput-wide p2, p0, Lorg/apache/james/mime4j/io/c;->g:J

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Limit may not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/apache/james/mime4j/io/i;->e:J

    iget-wide v2, p0, Lorg/apache/james/mime4j/io/c;->g:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream limit exceeded. Limit was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/james/mime4j/io/c;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/james/mime4j/io/i;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/james/mime4j/io/c;->g:J

    iget-wide v2, p0, Lorg/apache/james/mime4j/io/i;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public read()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/c;->a()V

    .line 2
    invoke-super {p0}, Lorg/apache/james/mime4j/io/i;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/c;->a()V

    .line 4
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/c;->e()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    invoke-super {p0, p1, p2, p3}, Lorg/apache/james/mime4j/io/i;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/c;->a()V

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/c;->e()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 3
    invoke-super {p0, p1, p2}, Lorg/apache/james/mime4j/io/i;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
