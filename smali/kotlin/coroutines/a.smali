.class public abstract Lkotlin/coroutines/a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/coroutines/f$b;


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final key:Lkotlin/coroutines/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/f$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/coroutines/a;->key:Lkotlin/coroutines/f$c;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/f$c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/a;->key:Lkotlin/coroutines/f$c;

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
