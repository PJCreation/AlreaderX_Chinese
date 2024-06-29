.class public final Lorg/apache/james/mime4j/stream/r;
.super Ljava/lang/Object;
.source "RawField.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/i;


# instance fields
.field private final a:Lorg/apache/james/mime4j/f/e;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 7
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/james/mime4j/stream/r;-><init>(Lorg/apache/james/mime4j/f/e;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/f/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/r;->a:Lorg/apache/james/mime4j/f/e;

    .line 3
    iput p2, p0, Lorg/apache/james/mime4j/stream/r;->b:I

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/r;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/apache/james/mime4j/stream/r;->d:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/r;->a:Lorg/apache/james/mime4j/f/e;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lorg/apache/james/mime4j/f/e;->length()I

    move-result v0

    .line 4
    iget v1, p0, Lorg/apache/james/mime4j/stream/r;->b:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_1

    .line 5
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/r;->a:Lorg/apache/james/mime4j/f/e;

    invoke-interface {v3, v1}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-static {v3}, Lorg/apache/james/mime4j/f/f;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 6
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/r;->a:Lorg/apache/james/mime4j/f/e;

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Lorg/apache/james/mime4j/f/g;->d(Lorg/apache/james/mime4j/f/e;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/f/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/r;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/r;->c:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/r;->e:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/r;->b:I

    return v0
.end method

.method public n()Lorg/apache/james/mime4j/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/r;->a:Lorg/apache/james/mime4j/f/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/r;->a:Lorg/apache/james/mime4j/f/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lorg/apache/james/mime4j/f/g;->c(Lorg/apache/james/mime4j/f/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/r;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
