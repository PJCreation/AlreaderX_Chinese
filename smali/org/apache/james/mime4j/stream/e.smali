.class public Lorg/apache/james/mime4j/stream/e;
.super Ljava/lang/Object;
.source "DefaultFieldBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/j;


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

.field private static final b:Ljava/util/BitSet;


# instance fields
.field private final c:Lorg/apache/james/mime4j/f/l;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/stream/e;->a:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/stream/e;->b:Ljava/util/BitSet;

    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 3
    sget-object v1, Lorg/apache/james/mime4j/stream/e;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 4
    sget-object v1, Lorg/apache/james/mime4j/stream/e;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/f/l;

    invoke-static {}, Lorg/apache/james/mime4j/stream/e;->e()Lorg/apache/james/mime4j/f/b;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/f/l;-><init>(Lorg/apache/james/mime4j/f/b;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    .line 3
    iput p1, p0, Lorg/apache/james/mime4j/stream/e;->d:I

    return-void
.end method

.method public static e()Lorg/apache/james/mime4j/f/b;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/e;->a:Ljava/lang/ThreadLocal;

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


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->g()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->e()V

    return-void
.end method

.method public build()Lorg/apache/james/mime4j/stream/r;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/f/l;->a(I)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/f/l;->a(I)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 4
    :cond_1
    new-instance v1, Lorg/apache/james/mime4j/f/c;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/f/l;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/f/c;-><init>([BIZ)V

    .line 5
    sget-object v0, Lorg/apache/james/mime4j/stream/s;->d:Lorg/apache/james/mime4j/stream/s;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/s;->e(Lorg/apache/james/mime4j/f/e;)Lorg/apache/james/mime4j/stream/r;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/r;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 9
    sget-object v4, Lorg/apache/james/mime4j/stream/e;->b:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIME field name contains illegal characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/r;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object v0
.end method

.method public c()Lorg/apache/james/mime4j/f/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    return-object v0
.end method

.method public d(Lorg/apache/james/mime4j/f/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/c;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lorg/apache/james/mime4j/stream/e;->d:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/l;->length()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lorg/apache/james/mime4j/stream/e;->d:I

    if-ge v1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/io/MaxHeaderLengthLimitException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum header length limit ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/james/mime4j/io/MaxHeaderLengthLimitException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/e;->c:Lorg/apache/james/mime4j/f/l;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/c;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/f/c;->length()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/james/mime4j/f/l;->c([BII)V

    return-void
.end method
