.class public final Lkotlinx/coroutines/internal/s;
.super Ljava/lang/Object;
.source "OnUndeliveredElement.kt"


# direct methods
.method public static final a(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/m;",
            ">;TE;",
            "Lkotlin/coroutines/f;",
            ")",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/s$a;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/internal/s$a;-><init>(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)V

    return-object v0
.end method

.method public static final b(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/m;",
            ">;TE;",
            "Lkotlin/coroutines/f;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/s;->c(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2, p0}, Lkotlinx/coroutines/g0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/m;",
            ">;TE;",
            "Lkotlinx/coroutines/internal/UndeliveredElementException;",
            ")",
            "Lkotlinx/coroutines/internal/UndeliveredElementException;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3
    invoke-static {p2, p0}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    .line 4
    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/UndeliveredElementException;

    const-string v0, "Exception in undelivered element handler for "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lkotlinx/coroutines/internal/UndeliveredElementException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static synthetic d(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/s;->c(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p0

    return-object p0
.end method
