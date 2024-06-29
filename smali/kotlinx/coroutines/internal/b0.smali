.class public final Lkotlinx/coroutines/internal/b0;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/x;

.field private static final b:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/f$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Lkotlinx/coroutines/b2<",
            "*>;",
            "Lkotlin/coroutines/f$b;",
            "Lkotlinx/coroutines/b2<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Lkotlinx/coroutines/internal/e0;",
            "Lkotlin/coroutines/f$b;",
            "Lkotlinx/coroutines/internal/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/x;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/x;

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/b0$a;->e:Lkotlinx/coroutines/internal/b0$a;

    sput-object v0, Lkotlinx/coroutines/internal/b0;->b:Lkotlin/jvm/b/p;

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/b0$b;->e:Lkotlinx/coroutines/internal/b0$b;

    sput-object v0, Lkotlinx/coroutines/internal/b0;->c:Lkotlin/jvm/b/p;

    .line 4
    sget-object v0, Lkotlinx/coroutines/internal/b0$c;->e:Lkotlinx/coroutines/internal/b0$c;

    sput-object v0, Lkotlinx/coroutines/internal/b0;->d:Lkotlin/jvm/b/p;

    return-void
.end method

.method public static final a(Lkotlin/coroutines/f;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/x;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/e0;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lkotlinx/coroutines/internal/e0;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/e0;->b(Lkotlin/coroutines/f;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlinx/coroutines/internal/b0;->c:Lkotlin/jvm/b/p;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/f;->fold(Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lkotlinx/coroutines/b2;

    .line 5
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/b2;->o(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lkotlin/coroutines/f;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/b0;->b:Lkotlin/jvm/b/p;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/f;->fold(Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/b0;->b(Lkotlin/coroutines/f;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/x;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/e0;-><init>(Lkotlin/coroutines/f;I)V

    sget-object p1, Lkotlinx/coroutines/internal/b0;->d:Lkotlin/jvm/b/p;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/f;->fold(Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    check-cast p1, Lkotlinx/coroutines/b2;

    .line 6
    invoke-interface {p1, p0}, Lkotlinx/coroutines/b2;->E(Lkotlin/coroutines/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
