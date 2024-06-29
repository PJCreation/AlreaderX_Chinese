.class public final Lkotlin/coroutines/f$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method public static a(Lkotlin/coroutines/f;Lkotlin/coroutines/f;)Lkotlin/coroutines/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lkotlin/coroutines/f$a$a;->e:Lkotlin/coroutines/f$a$a;

    invoke-interface {p1, p0, v0}, Lkotlin/coroutines/f;->fold(Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/f;

    :goto_0
    return-object p0
.end method
