.class final Lkotlinx/coroutines/r1$a;
.super Lkotlinx/coroutines/q1;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final i:Lkotlinx/coroutines/r1;

.field private final j:Lkotlinx/coroutines/r1$b;

.field private final k:Lkotlinx/coroutines/t;

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/r1;Lkotlinx/coroutines/r1$b;Lkotlinx/coroutines/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/q1;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/r1$a;->i:Lkotlinx/coroutines/r1;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/r1$a;->j:Lkotlinx/coroutines/r1$b;

    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/r1$a;->k:Lkotlinx/coroutines/t;

    .line 5
    iput-object p4, p0, Lkotlinx/coroutines/r1$a;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/r1$a;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/r1$a;->i:Lkotlinx/coroutines/r1;

    iget-object v0, p0, Lkotlinx/coroutines/r1$a;->j:Lkotlinx/coroutines/r1$b;

    iget-object v1, p0, Lkotlinx/coroutines/r1$a;->k:Lkotlinx/coroutines/t;

    iget-object v2, p0, Lkotlinx/coroutines/r1$a;->l:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/r1;->n(Lkotlinx/coroutines/r1;Lkotlinx/coroutines/r1$b;Lkotlinx/coroutines/t;Ljava/lang/Object;)V

    return-void
.end method
