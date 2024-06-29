.class Lkotlin/sequences/l;
.super Lkotlin/sequences/k;
.source "Sequences.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method public static c(Ljava/util/Iterator;)Lkotlin/sequences/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/sequences/l$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/l$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lkotlin/sequences/l;->d(Lkotlin/sequences/f;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/sequences/f;)Lkotlin/sequences/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlin/sequences/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/sequences/a;

    invoke-direct {v0, p0}, Lkotlin/sequences/a;-><init>(Lkotlin/sequences/f;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lkotlin/sequences/d;->a:Lkotlin/sequences/d;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/sequences/e;

    new-instance v1, Lkotlin/sequences/l$b;

    invoke-direct {v1, p0}, Lkotlin/sequences/l$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lkotlin/sequences/e;-><init>(Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static f(Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "seedFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/sequences/e;

    invoke-direct {v0, p0, p1}, Lkotlin/sequences/e;-><init>(Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    return-object v0
.end method
