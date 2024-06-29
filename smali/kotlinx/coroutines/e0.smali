.class public abstract Lkotlinx/coroutines/e0;
.super Lkotlin/coroutines/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lkotlin/coroutines/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/e0$a;
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/e0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/e0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/e0$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lkotlinx/coroutines/e0;->e:Lkotlinx/coroutines/e0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/d;->a:Lkotlin/coroutines/d$b;

    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/f$c;)V

    return-void
.end method


# virtual methods
.method public abstract J(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V
.end method

.method public K(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/e0;->J(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public L(Lkotlin/coroutines/f;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final e(Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/f;

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/f;->t()V

    return-void
.end method

.method public get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/f$b;",
            ">(",
            "Lkotlin/coroutines/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/d$a;->a(Lkotlin/coroutines/d;Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/c<",
            "-TT;>;)",
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/f;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/f;-><init>(Lkotlinx/coroutines/e0;Lkotlin/coroutines/c;)V

    return-object v0
.end method

.method public minusKey(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/f$c<",
            "*>;)",
            "Lkotlin/coroutines/f;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/d$a;->b(Lkotlin/coroutines/d;Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/n0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/n0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
