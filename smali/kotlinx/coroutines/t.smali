.class public final Lkotlinx/coroutines/t;
.super Lkotlinx/coroutines/m1;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/s;


# instance fields
.field public final i:Lkotlinx/coroutines/u;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/m1;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/t;->i:Lkotlinx/coroutines/u;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q1;->x()Lkotlinx/coroutines/r1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/r1;->C(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()Lkotlinx/coroutines/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q1;->x()Lkotlinx/coroutines/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/t;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/t;->i:Lkotlinx/coroutines/u;

    invoke-virtual {p0}, Lkotlinx/coroutines/q1;->x()Lkotlinx/coroutines/r1;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/u;->B(Lkotlinx/coroutines/y1;)V

    return-void
.end method
