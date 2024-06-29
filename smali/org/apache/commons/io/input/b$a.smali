.class public Lorg/apache/commons/io/input/b$a;
.super Lorg/apache/commons/io/n/c;
.source "UnsynchronizedByteArrayInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/n/c<",
        "Lorg/apache/commons/io/input/b;",
        "Lorg/apache/commons/io/input/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/n/c;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Lorg/apache/commons/io/input/b;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/b;

    invoke-virtual {p0}, Lorg/apache/commons/io/n/b;->b()Lorg/apache/commons/io/n/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/io/n/a;->b()[B

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/io/input/b$a;->f:I

    iget v3, p0, Lorg/apache/commons/io/input/b$a;->g:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/b;-><init>([BII)V

    return-object v0
.end method

.method public g([B)Lorg/apache/commons/io/input/b$a;
    .locals 1

    const-string v0, "origin"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/io/input/b$a;->g:I

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/io/n/b;->d([B)Lorg/apache/commons/io/n/b;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/b$a;

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/b$a;->f()Lorg/apache/commons/io/input/b;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lorg/apache/commons/io/input/b$a;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lorg/apache/commons/io/input/b$a;->g:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(I)Lorg/apache/commons/io/input/b$a;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lorg/apache/commons/io/input/b$a;->f:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
