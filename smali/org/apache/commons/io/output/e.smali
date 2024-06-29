.class public final Lorg/apache/commons/io/output/e;
.super Lorg/apache/commons/io/output/c;
.source "UnsynchronizedByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/io/output/c;-><init>()V

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/c;->a(I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic v([BII)Lorg/apache/commons/io/input/b;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/input/b;->a()Lorg/apache/commons/io/input/b$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/b$a;->g([B)Lorg/apache/commons/io/input/b$a;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/b$a;->i(I)Lorg/apache/commons/io/input/b$a;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/input/b$a;->h(I)Lorg/apache/commons/io/input/b$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/input/b$a;->f()Lorg/apache/commons/io/input/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w([BII)Lorg/apache/commons/io/input/b;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/a;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/output/a;-><init>([BII)V

    invoke-static {v0}, Lorg/apache/commons/io/o/d;->b(Lorg/apache/commons/io/o/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/b;

    return-object p0
.end method


# virtual methods
.method public A()Ljava/io/InputStream;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/output/b;->a:Lorg/apache/commons/io/output/b;

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/c;->l(Lorg/apache/commons/io/output/c$a;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/c;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/c;->o(I)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    if-ltz p2, :cond_1

    .line 1
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/c;->s([BII)V

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "offset=%,d, length=%,d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/c;->i:I

    return v0
.end method
