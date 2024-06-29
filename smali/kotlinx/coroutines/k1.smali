.class final Lkotlinx/coroutines/k1;
.super Lkotlinx/coroutines/q1;
.source "JobSupport.kt"


# instance fields
.field private final i:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/q1;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/k1;->i:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/k1;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/k1;->i:Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
