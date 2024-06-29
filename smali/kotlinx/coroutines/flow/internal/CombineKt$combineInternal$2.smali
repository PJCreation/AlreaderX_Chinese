.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->a(Lkotlinx/coroutines/flow/d;[Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/a;Lkotlin/jvm/b/q;Lkotlin/coroutines/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:I

.field h:I

.field i:I

.field private synthetic j:Ljava/lang/Object;

.field final synthetic k:[Lkotlinx/coroutines/flow/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic l:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic m:Lkotlin/jvm/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/q<",
            "Lkotlinx/coroutines/flow/d<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic n:Lkotlinx/coroutines/flow/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/d<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/a;Lkotlin/jvm/b/q;Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/c<",
            "+TT;>;",
            "Lkotlin/jvm/b/a<",
            "[TT;>;",
            "Lkotlin/jvm/b/q<",
            "-",
            "Lkotlinx/coroutines/flow/d<",
            "-TR;>;-[TT;-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/d<",
            "-TR;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->k:[Lkotlinx/coroutines/flow/c;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->l:Lkotlin/jvm/b/a;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->m:Lkotlin/jvm/b/q;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->n:Lkotlinx/coroutines/flow/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->k:[Lkotlinx/coroutines/flow/c;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->l:Lkotlin/jvm/b/a;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->m:Lkotlin/jvm/b/q;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->n:Lkotlinx/coroutines/flow/d;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/a;Lkotlin/jvm/b/q;Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)V

    iput-object p1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object p2, Lkotlin/m;->a:Lkotlin/m;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/e;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/e;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_2

    :cond_2
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/e;

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlinx/coroutines/channels/h;

    invoke-virtual {v10}, Lkotlinx/coroutines/channels/h;->h()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v9

    move-object v9, v0

    move-object/from16 v22, v7

    move v7, v2

    move-object/from16 v2, v22

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/i;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/k0;

    .line 4
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->k:[Lkotlinx/coroutines/flow/c;

    array-length v13, v7

    if-nez v13, :cond_4

    .line 5
    sget-object v1, Lkotlin/m;->a:Lkotlin/m;

    return-object v1

    .line 6
    :cond_4
    new-array v14, v13, [Ljava/lang/Object;

    .line 7
    sget-object v8, Lkotlinx/coroutines/flow/internal/g;->b:Lkotlinx/coroutines/internal/x;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v14

    invoke-static/range {v7 .. v12}, Lkotlin/collections/h;->m([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 8
    invoke-static {v13, v8, v8, v7, v8}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/b/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/e;

    move-result-object v21

    .line 9
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    if-lez v13, :cond_6

    const/16 v17, 0x0

    :goto_0
    add-int/lit8 v11, v17, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 10
    new-instance v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->k:[Lkotlinx/coroutines/flow/c;

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v16, v7

    move-object/from16 v18, v12

    move-object/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/c;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/e;Lkotlin/coroutines/c;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v7, v2

    move v3, v11

    move v11, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/f;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/l1;

    if-lt v3, v13, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v17, v3

    move-object v12, v15

    goto :goto_0

    .line 11
    :cond_6
    :goto_1
    new-array v2, v13, [B

    move-object v8, v0

    move-object/from16 v7, v21

    const/4 v3, 0x0

    :goto_2
    add-int/2addr v3, v6

    int-to-byte v3, v3

    .line 12
    iput-object v14, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:Ljava/lang/Object;

    iput-object v2, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    iput v13, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    iput v3, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    iput v6, v8, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:I

    invoke-interface {v7, v8}, Lkotlinx/coroutines/channels/m;->e(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_7

    return-object v1

    :cond_7
    move-object v9, v8

    move-object v15, v14

    move-object v8, v7

    move v7, v3

    move v3, v13

    :goto_3
    invoke-static {v10}, Lkotlinx/coroutines/channels/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/c0;

    if-nez v10, :cond_8

    .line 13
    sget-object v1, Lkotlin/m;->a:Lkotlin/m;

    return-object v1

    .line 14
    :cond_8
    invoke-virtual {v10}, Lkotlin/collections/c0;->a()I

    move-result v11

    .line 15
    aget-object v12, v15, v11

    .line 16
    invoke-virtual {v10}, Lkotlin/collections/c0;->b()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v15, v11

    .line 17
    sget-object v10, Lkotlinx/coroutines/flow/internal/g;->b:Lkotlinx/coroutines/internal/x;

    if-ne v12, v10, :cond_9

    add-int/lit8 v3, v3, -0x1

    .line 18
    :cond_9
    aget-byte v10, v2, v11

    if-ne v10, v7, :cond_a

    goto :goto_4

    :cond_a
    int-to-byte v10, v7

    .line 19
    aput-byte v10, v2, v11

    .line 20
    invoke-interface {v8}, Lkotlinx/coroutines/channels/m;->b()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/channels/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/collections/c0;

    if-nez v10, :cond_8

    :goto_4
    if-nez v3, :cond_d

    .line 21
    iget-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->l:Lkotlin/jvm/b/a;

    invoke-interface {v10}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    if-nez v10, :cond_c

    .line 22
    iget-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->m:Lkotlin/jvm/b/q;

    iget-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->n:Lkotlinx/coroutines/flow/d;

    iput-object v15, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    iput v7, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    iput v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:I

    invoke-interface {v10, v11, v15, v9}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_b

    return-object v1

    :cond_b
    move v13, v3

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    move-object v14, v15

    goto :goto_2

    :cond_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-object v11, v15

    move-object v12, v10

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    .line 23
    invoke-static/range {v11 .. v17}, Lkotlin/collections/h;->f([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 24
    iget-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->m:Lkotlin/jvm/b/q;

    iget-object v12, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->n:Lkotlinx/coroutines/flow/d;

    iput-object v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->e:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:Ljava/lang/Object;

    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    iput v7, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    iput v4, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:I

    invoke-interface {v11, v12, v10, v9}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_e

    return-object v1

    :goto_5
    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_d
    move-object v5, v15

    :cond_e
    move v13, v3

    move-object v14, v5

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_5
.end method
