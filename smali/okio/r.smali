.class public final Lokio/r;
.super Ljava/lang/Object;
.source "Segment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/r$a;
    }
.end annotation


# static fields
.field public static final a:Lokio/r$a;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Lokio/r;

.field public h:Lokio/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/r$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokio/r;->a:Lokio/r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lokio/r;->b:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lokio/r;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lokio/r;->e:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lokio/r;->b:[B

    .line 7
    iput p2, p0, Lokio/r;->c:I

    .line 8
    iput p3, p0, Lokio/r;->d:I

    .line 9
    iput-boolean p4, p0, Lokio/r;->e:Z

    .line 10
    iput-boolean p5, p0, Lokio/r;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokio/r;->h:Lokio/r;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-boolean v0, v0, Lokio/r;->f:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lokio/r;->d:I

    iget v2, p0, Lokio/r;->c:I

    sub-int/2addr v0, v2

    .line 4
    iget-object v2, p0, Lokio/r;->h:Lokio/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v2, v2, Lokio/r;->d:I

    rsub-int v2, v2, 0x2000

    iget-object v3, p0, Lokio/r;->h:Lokio/r;

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-boolean v3, v3, Lokio/r;->e:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lokio/r;->h:Lokio/r;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget v1, v1, Lokio/r;->c:I

    :goto_1
    add-int/2addr v2, v1

    if-le v0, v2, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v1, p0, Lokio/r;->h:Lokio/r;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lokio/r;->f(Lokio/r;I)V

    .line 6
    invoke-virtual {p0}, Lokio/r;->b()Lokio/r;

    .line 7
    invoke-static {p0}, Lokio/s;->b(Lokio/r;)V

    return-void

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot compact"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lokio/r;
    .locals 4

    .line 1
    iget-object v0, p0, Lokio/r;->g:Lokio/r;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lokio/r;->h:Lokio/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/r;->g:Lokio/r;

    iput-object v3, v2, Lokio/r;->g:Lokio/r;

    .line 3
    iget-object v2, p0, Lokio/r;->g:Lokio/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/r;->h:Lokio/r;

    iput-object v3, v2, Lokio/r;->h:Lokio/r;

    .line 4
    iput-object v1, p0, Lokio/r;->g:Lokio/r;

    .line 5
    iput-object v1, p0, Lokio/r;->h:Lokio/r;

    return-object v0
.end method

.method public final c(Lokio/r;)Lokio/r;
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p0, p1, Lokio/r;->h:Lokio/r;

    .line 2
    iget-object v0, p0, Lokio/r;->g:Lokio/r;

    iput-object v0, p1, Lokio/r;->g:Lokio/r;

    .line 3
    iget-object v0, p0, Lokio/r;->g:Lokio/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lokio/r;->h:Lokio/r;

    .line 4
    iput-object p1, p0, Lokio/r;->g:Lokio/r;

    return-object p1
.end method

.method public final d()Lokio/r;
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lokio/r;->e:Z

    .line 2
    new-instance v0, Lokio/r;

    iget-object v2, p0, Lokio/r;->b:[B

    iget v3, p0, Lokio/r;->c:I

    iget v4, p0, Lokio/r;->d:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/r;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final e(I)Lokio/r;
    .locals 8

    if-lez p1, :cond_0

    .line 1
    iget v0, p0, Lokio/r;->d:I

    iget v1, p0, Lokio/r;->c:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0x400

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lokio/r;->d()Lokio/r;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Lokio/s;->c()Lokio/r;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lokio/r;->b:[B

    iget-object v2, v0, Lokio/r;->b:[B

    const/4 v3, 0x0

    iget v4, p0, Lokio/r;->c:I

    add-int v5, v4, p1

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/h;->e([B[BIIIILjava/lang/Object;)[B

    .line 5
    :goto_1
    iget v1, v0, Lokio/r;->c:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/r;->d:I

    .line 6
    iget v1, p0, Lokio/r;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/r;->c:I

    .line 7
    iget-object p1, p0, Lokio/r;->h:Lokio/r;

    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokio/r;->c(Lokio/r;)Lokio/r;

    return-object v0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount out of range"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lokio/r;I)V
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Lokio/r;->f:Z

    if-eqz v0, :cond_3

    .line 2
    iget v5, p1, Lokio/r;->d:I

    add-int v0, v5, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 3
    iget-boolean v0, p1, Lokio/r;->e:Z

    if-nez v0, :cond_1

    add-int v0, v5, p2

    .line 4
    iget v4, p1, Lokio/r;->c:I

    sub-int/2addr v0, v4

    if-gt v0, v1, :cond_0

    .line 5
    iget-object v2, p1, Lokio/r;->b:[B

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v2

    invoke-static/range {v1 .. v7}, Lkotlin/collections/h;->e([B[BIIIILjava/lang/Object;)[B

    .line 6
    iget v0, p1, Lokio/r;->d:I

    iget v1, p1, Lokio/r;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/r;->d:I

    const/4 v0, 0x0

    .line 7
    iput v0, p1, Lokio/r;->c:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lokio/r;->b:[B

    .line 11
    iget-object v1, p1, Lokio/r;->b:[B

    iget v2, p1, Lokio/r;->d:I

    iget v3, p0, Lokio/r;->c:I

    add-int v4, v3, p2

    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/collections/h;->c([B[BIII)[B

    .line 13
    iget v0, p1, Lokio/r;->d:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/r;->d:I

    .line 14
    iget p1, p0, Lokio/r;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/r;->c:I

    return-void

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
