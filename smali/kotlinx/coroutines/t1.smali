.class final Lkotlinx/coroutines/t1;
.super Lkotlinx/coroutines/a2;
.source "Builders.common.kt"


# instance fields
.field private final g:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;Lkotlin/jvm/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/f;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlinx/coroutines/k0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/a2;-><init>(Lkotlin/coroutines/f;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/t1;->g:Lkotlin/coroutines/c;

    return-void
.end method


# virtual methods
.method protected f0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/t1;->g:Lkotlin/coroutines/c;

    invoke-static {v0, p0}, Lkotlinx/coroutines/i2/a;->c(Lkotlin/coroutines/c;Lkotlin/coroutines/c;)V

    return-void
.end method
