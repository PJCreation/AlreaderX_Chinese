.class final Lkotlinx/coroutines/f2;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"

# interfaces
.implements Lkotlin/coroutines/f$b;
.implements Lkotlin/coroutines/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/f$b;",
        "Lkotlin/coroutines/f$c<",
        "Lkotlinx/coroutines/f2;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/f2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/f2;

    invoke-direct {v0}, Lkotlinx/coroutines/f2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/f2;->e:Lkotlinx/coroutines/f2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/b/p<",
            "-TR;-",
            "Lkotlin/coroutines/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/coroutines/f$b$a;->a(Lkotlin/coroutines/f$b;Ljava/lang/Object;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    invoke-static {p0, p1}, Lkotlin/coroutines/f$b$a;->b(Lkotlin/coroutines/f$b;Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lkotlin/coroutines/f$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/f$c<",
            "*>;"
        }
    .end annotation

    return-object p0
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
    invoke-static {p0, p1}, Lkotlin/coroutines/f$b$a;->c(Lkotlin/coroutines/f$b;Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/f$b$a;->d(Lkotlin/coroutines/f$b;Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p1

    return-object p1
.end method
