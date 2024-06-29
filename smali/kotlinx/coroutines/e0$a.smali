.class public final Lkotlinx/coroutines/e0$a;
.super Lkotlin/coroutines/b;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/b<",
        "Lkotlin/coroutines/d;",
        "Lkotlinx/coroutines/e0;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/coroutines/d;->a:Lkotlin/coroutines/d$b;

    .line 2
    sget-object v1, Lkotlinx/coroutines/e0$a$a;->e:Lkotlinx/coroutines/e0$a$a;

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/b;-><init>(Lkotlin/coroutines/f$c;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/e0$a;-><init>()V

    return-void
.end method
