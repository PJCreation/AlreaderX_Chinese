.class Lkotlin/f;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method public static a(Lkotlin/jvm/b/a;)Lkotlin/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "+TT;>;)",
            "Lkotlin/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/j;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lkotlin/j;-><init>(Lkotlin/jvm/b/a;Ljava/lang/Object;ILkotlin/jvm/internal/f;)V

    return-object v0
.end method
