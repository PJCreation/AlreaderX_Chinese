.class public Lorg/apache/james/mime4j/stream/s;
.super Ljava/lang/Object;
.source "RawFieldParser.java"


# static fields
.field static final a:Ljava/util/BitSet;

.field static final b:Ljava/util/BitSet;

.field static final c:Ljava/util/BitSet;

.field public static final d:Lorg/apache/james/mime4j/stream/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x3a

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    invoke-static {v1}, Lorg/apache/james/mime4j/stream/s;->a([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/stream/s;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Lorg/apache/james/mime4j/stream/s;->a([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/stream/s;->b:Ljava/util/BitSet;

    new-array v0, v0, [I

    const/16 v1, 0x3b

    aput v1, v0, v3

    .line 3
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/s;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/stream/s;->c:Ljava/util/BitSet;

    .line 4
    new-instance v0, Lorg/apache/james/mime4j/stream/s;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/s;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/stream/s;->d:Lorg/apache/james/mime4j/stream/s;

    return-void

    :array_0
    .array-data 4
        0x3d
        0x3b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([I)Ljava/util/BitSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/BitSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    :cond_0
    invoke-static {v3}, Lorg/apache/james/mime4j/f/f;->a(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/o;->d(I)V

    return-void
.end method

.method public c(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/lang/StringBuilder;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->c()I

    move-result v2

    .line 5
    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v1, v2, :cond_7

    .line 6
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    const/16 v8, 0x5c

    if-eqz v6, :cond_3

    if-eq v7, v4, :cond_2

    if-eq v7, v8, :cond_2

    .line 7
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    if-ne v7, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-ne v7, v8, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/16 v8, 0xd

    if-eq v7, v8, :cond_6

    const/16 v8, 0xa

    if-eq v7, v8, :cond_6

    .line 9
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_7
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/o;->d(I)V

    return-void
.end method

.method public d(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    :cond_0
    invoke-static {v3}, Lorg/apache/james/mime4j/f/f;->a(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x28

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/o;->d(I)V

    return-void
.end method

.method public e(Lorg/apache/james/mime4j/f/e;)Lorg/apache/james/mime4j/stream/r;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lorg/apache/james/mime4j/stream/o;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/james/mime4j/f/e;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/james/mime4j/stream/o;-><init>(II)V

    .line 2
    sget-object v2, Lorg/apache/james/mime4j/stream/s;->a:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/james/mime4j/stream/s;->j(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Lorg/apache/james/mime4j/stream/r;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    invoke-direct {v3, p1, v1, v2, v0}, Lorg/apache/james/mime4j/stream/r;-><init>(Lorg/apache/james/mime4j/f/e;ILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MIME field: no name/value separator found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)Lorg/apache/james/mime4j/stream/n;
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/s;->b:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/stream/s;->j(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lorg/apache/james/mime4j/stream/n;

    invoke-direct {p1, v0, v2}, Lorg/apache/james/mime4j/stream/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v1

    .line 5
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/james/mime4j/stream/o;->d(I)V

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_1

    .line 6
    new-instance p1, Lorg/apache/james/mime4j/stream/n;

    invoke-direct {p1, v0, v2}, Lorg/apache/james/mime4j/stream/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/stream/s;->c:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/james/mime4j/stream/s;->k(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/o;->d(I)V

    .line 10
    :cond_2
    new-instance p2, Lorg/apache/james/mime4j/stream/n;

    invoke-direct {p2, v0, p1}, Lorg/apache/james/mime4j/stream/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public g(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/f/e;",
            "Lorg/apache/james/mime4j/stream/o;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/stream/n;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/s;->m(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)V

    .line 3
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/s;->f(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)Lorg/apache/james/mime4j/stream/n;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public h(Lorg/apache/james/mime4j/stream/r;)Lorg/apache/james/mime4j/stream/p;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/r;->n()Lorg/apache/james/mime4j/f/e;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/r;->m()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/r;->d()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lorg/apache/james/mime4j/stream/p;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Lorg/apache/james/mime4j/stream/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Lorg/apache/james/mime4j/f/g;->e(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/f/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/stream/o;

    invoke-interface {v0}, Lorg/apache/james/mime4j/f/e;->length()I

    move-result v2

    invoke-direct {p1, v1, v2}, Lorg/apache/james/mime4j/stream/o;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/apache/james/mime4j/stream/s;->i(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)Lorg/apache/james/mime4j/stream/p;

    move-result-object p1

    return-object p1
.end method

.method public i(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)Lorg/apache/james/mime4j/stream/p;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/s;->c:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/stream/s;->j(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lorg/apache/james/mime4j/stream/p;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, p2}, Lorg/apache/james/mime4j/stream/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/o;->d(I)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/s;->g(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance p2, Lorg/apache/james/mime4j/stream/p;

    invoke-direct {p2, v0, p1}, Lorg/apache/james/mime4j/stream/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

.method public j(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {v3}, Lorg/apache/james/mime4j/f/f;->a(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/s;->m(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/s;->l(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/stream/s;->b(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 11
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {v3}, Lorg/apache/james/mime4j/f/f;->a(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/s;->m(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/s;->l(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)V

    goto :goto_1

    :cond_2
    const/16 v4, 0x22

    const/16 v5, 0x20

    if-ne v3, v4, :cond_4

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/stream/s;->c(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/stream/s;->d(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 14
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->c()I

    move-result v2

    .line 5
    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v1, v2, :cond_7

    .line 6
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/16 v9, 0x5c

    if-ne v8, v9, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    if-ne v8, v4, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/16 v9, 0x29

    if-ne v8, v9, :cond_5

    add-int/lit8 v7, v7, -0x1

    :cond_5
    :goto_1
    if-gtz v7, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_7
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/o;->d(I)V

    return-void
.end method

.method public m(Lorg/apache/james/mime4j/f/e;Lorg/apache/james/mime4j/stream/o;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->b()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/o;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/f/e;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 5
    invoke-static {v3}, Lorg/apache/james/mime4j/f/f;->a(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/o;->d(I)V

    return-void
.end method
