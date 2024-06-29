.class public Lorg/apache/james/mime4j/f/b;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# static fields
.field static final a:Z


# instance fields
.field protected final b:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field protected final c:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "[C>;"
        }
    .end annotation
.end field

.field protected final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "james.mime4j.buffer.recycling.enabled"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/f/a;->e:Lorg/apache/james/mime4j/f/a;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lorg/apache/james/mime4j/f/b;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, v0}, Lorg/apache/james/mime4j/f/b;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p1, [Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/james/mime4j/f/b;->b:[Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    iget-object v2, p0, Lorg/apache/james/mime4j/f/b;->b:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-array p1, p2, [Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/james/mime4j/f/b;->c:[Ljava/util/ArrayList;

    :goto_1
    if-ge v0, p2, :cond_1

    .line 6
    iget-object p1, p0, Lorg/apache/james/mime4j/f/b;->c:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/f/b;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(II)[B
    .locals 2

    const/16 v0, 0xfa0

    if-ge p2, v0, :cond_0

    const/16 p2, 0xfa0

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/f/b;->b:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    array-length p1, v0

    if-ge p1, p2, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/f/b;->c(I)[B

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final b(I)[I
    .locals 3

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    const/16 p1, 0x100

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/f/b;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [I

    :cond_1
    if-eqz v1, :cond_2

    .line 4
    array-length v0, v1

    if-ge v0, p1, :cond_3

    .line 5
    :cond_2
    new-array v1, p1, [I

    :cond_3
    return-object v1
.end method

.method protected c(I)[B
    .locals 0

    .line 1
    new-array p1, p1, [B

    return-object p1
.end method

.method public d(I[B)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/f/b;->b:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e([I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-boolean v0, Lorg/apache/james/mime4j/f/b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/f/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
