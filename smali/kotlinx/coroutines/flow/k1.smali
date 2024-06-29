.class public final Lkotlinx/coroutines/flow/k1;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Throwable;


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/flow/k1;->e:Ljava/lang/Throwable;

    throw p1
.end method
