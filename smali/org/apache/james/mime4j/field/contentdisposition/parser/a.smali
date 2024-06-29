.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/a;
.super Ljava/lang/Object;
.source "ContentDispositionParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contentdisposition/parser/b;


# static fields
.field private static b:[I


# instance fields
.field private c:Ljava/lang/String;

.field private final d:Lorg/apache/james/mime4j/f/j;

.field public e:Lorg/apache/james/mime4j/field/contentdisposition/parser/c;

.field f:Lorg/apache/james/mime4j/field/contentdisposition/parser/d;

.field public g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

.field public h:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

.field private i:I

.field private j:I

.field private final k:[I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private m:[I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->e()V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/f/j;

    invoke-direct {v0}, Lorg/apache/james/mime4j/f/j;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d:Lorg/apache/james/mime4j/f/j;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->k:[I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->l:Ljava/util/List;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->n:I

    .line 6
    new-instance v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/d;-><init>(Ljava/io/Reader;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->f:Lorg/apache/james/mime4j/field/contentdisposition/parser/d;

    .line 7
    new-instance p1, Lorg/apache/james/mime4j/field/contentdisposition/parser/c;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->f:Lorg/apache/james/mime4j/field/contentdisposition/parser/d;

    invoke-direct {p1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/c;-><init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/d;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->e:Lorg/apache/james/mime4j/field/contentdisposition/parser/c;

    .line 8
    new-instance p1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 9
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->i:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->j:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 11
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->k:[I

    aput v1, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->e:Lorg/apache/james/mime4j/field/contentdisposition/parser/c;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/c;->e()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    :goto_0
    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->i:I

    .line 4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget v2, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->kind:I

    if-ne v2, p1, :cond_1

    .line 5
    iget p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->j:I

    return-object v1

    .line 6
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 7
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->n:I

    .line 8
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->a()Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    move-result-object p1

    throw p1
.end method

.method private static e()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x8
        0x1c0000
    .end array-data
.end method

.method private f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->h:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->e:Lorg/apache/james/mime4j/field/contentdisposition/parser/c;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/c;->e()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->i:I

    return v0

    .line 3
    :cond_0
    iget v0, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->i:I

    return v0
.end method


# virtual methods
.method public a()Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x17

    new-array v1, v0, [Z

    .line 2
    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->n:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    .line 3
    aput-boolean v3, v1, v2

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->n:I

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    .line 5
    iget-object v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->k:[I

    aget v5, v5, v4

    iget v6, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->j:I

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x20

    if-ge v5, v6, :cond_2

    .line 6
    sget-object v6, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->b:[I

    aget v6, v6, v4

    shl-int v7, v3, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 7
    aput-boolean v3, v1, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_5

    .line 8
    aget-boolean v5, v1, v4

    if-eqz v5, :cond_4

    new-array v5, v3, [I

    .line 9
    iput-object v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->m:[I

    aput v4, v5, v2

    .line 10
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 12
    :goto_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 13
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 14
    :cond_6
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/contentdisposition/parser/b;->a:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d:Lorg/apache/james/mime4j/f/j;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/f/j;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 3

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->j()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d:Lorg/apache/james/mime4j/f/j;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/apache/james/mime4j/f/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 3

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->c:Ljava/lang/String;

    .line 3
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->k:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->j:I

    aput v2, v0, v1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->g()V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->h()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->f()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->k:[I

    const/4 v2, 0x2

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->j:I

    aput v3, v0, v2

    .line 3
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 4
    new-instance v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x14

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x13

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x12

    .line 7
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->d(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    .line 8
    :goto_0
    iget-object v0, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
