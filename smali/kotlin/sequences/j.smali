.class Lkotlin/sequences/j;
.super Ljava/lang/Object;
.source "SequenceBuilder.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method public static final a(Lkotlin/jvm/b/p;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlin/sequences/h<",
            "-TT;>;-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/sequences/g;

    invoke-direct {v0}, Lkotlin/sequences/g;-><init>()V

    .line 2
    invoke-static {p0, v0, v0}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/sequences/g;->m(Lkotlin/coroutines/c;)V

    return-object v0
.end method

.method public static b(Lkotlin/jvm/b/p;)Lkotlin/sequences/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlin/sequences/h<",
            "-TT;>;-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/sequences/j$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/j$a;-><init>(Lkotlin/jvm/b/p;)V

    return-object v0
.end method
