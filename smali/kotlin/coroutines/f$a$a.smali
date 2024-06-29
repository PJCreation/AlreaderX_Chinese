.class final Lkotlin/coroutines/f$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineContext.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/f$a;->a(Lkotlin/coroutines/f;Lkotlin/coroutines/f;)Lkotlin/coroutines/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlin/coroutines/f;",
        "Lkotlin/coroutines/f$b;",
        "Lkotlin/coroutines/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final e:Lkotlin/coroutines/f$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/f$a$a;

    invoke-direct {v0}, Lkotlin/coroutines/f$a$a;-><init>()V

    sput-object v0, Lkotlin/coroutines/f$a$a;->e:Lkotlin/coroutines/f$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/f;Lkotlin/coroutines/f$b;)Lkotlin/coroutines/f;
    .locals 3

    const-string v0, "acc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lkotlin/coroutines/f$b;->getKey()Lkotlin/coroutines/f$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/f;->minusKey(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;

    move-result-object p1

    .line 2
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Lkotlin/coroutines/d;->a:Lkotlin/coroutines/d$b;

    invoke-interface {p1, v1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/d;

    if-nez v2, :cond_1

    .line 4
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v0, p1, p2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/f;Lkotlin/coroutines/f$b;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1, v1}, Lkotlin/coroutines/f;->minusKey(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 6
    new-instance p1, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p1, p2, v2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/f;Lkotlin/coroutines/f$b;)V

    move-object p2, p1

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    new-instance v1, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v1, p1, p2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/f;Lkotlin/coroutines/f$b;)V

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/f;Lkotlin/coroutines/f$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/f;

    check-cast p2, Lkotlin/coroutines/f$b;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/f$a$a;->a(Lkotlin/coroutines/f;Lkotlin/coroutines/f$b;)Lkotlin/coroutines/f;

    move-result-object p1

    return-object p1
.end method
