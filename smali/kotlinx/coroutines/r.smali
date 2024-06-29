.class public final Lkotlinx/coroutines/r;
.super Lkotlinx/coroutines/m1;
.source "JobSupport.kt"


# instance fields
.field public final i:Lkotlinx/coroutines/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/n<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/m1;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/r;->i:Lkotlinx/coroutines/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/r;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/r;->i:Lkotlinx/coroutines/n;

    invoke-virtual {p0}, Lkotlinx/coroutines/q1;->x()Lkotlinx/coroutines/r1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/n;->v(Lkotlinx/coroutines/l1;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/n;->G(Ljava/lang/Throwable;)V

    return-void
.end method
