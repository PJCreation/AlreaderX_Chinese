.class public final Lkotlinx/coroutines/flow/internal/c;
.super Ljava/lang/Object;
.source "SafeCollector.kt"

# interfaces
.implements Lkotlin/coroutines/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/internal/c$a;
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/flow/internal/c$a;


# instance fields
.field public final f:Ljava/lang/Throwable;

.field private final g:Lkotlin/coroutines/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/flow/internal/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/internal/c$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/c;->e:Lkotlinx/coroutines/flow/internal/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/c;->f:Ljava/lang/Throwable;

    .line 2
    sget-object p1, Lkotlinx/coroutines/flow/internal/c;->e:Lkotlinx/coroutines/flow/internal/c$a;

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/c;->g:Lkotlin/coroutines/f$c;

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
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/c;->g:Lkotlin/coroutines/f$c;

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
