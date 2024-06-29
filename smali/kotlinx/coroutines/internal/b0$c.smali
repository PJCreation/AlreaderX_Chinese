.class final Lkotlinx/coroutines/internal/b0$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ThreadContext.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/b0;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/internal/e0;",
        "Lkotlin/coroutines/f$b;",
        "Lkotlinx/coroutines/internal/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/internal/b0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/b0$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/b0$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/b0$c;->e:Lkotlinx/coroutines/internal/b0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/e0;Lkotlin/coroutines/f$b;)Lkotlinx/coroutines/internal/e0;
    .locals 1

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/b2;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lkotlinx/coroutines/b2;

    iget-object v0, p1, Lkotlinx/coroutines/internal/e0;->a:Lkotlin/coroutines/f;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/b2;->E(Lkotlin/coroutines/f;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/e0;->a(Lkotlinx/coroutines/b2;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/e0;

    check-cast p2, Lkotlin/coroutines/f$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/b0$c;->a(Lkotlinx/coroutines/internal/e0;Lkotlin/coroutines/f$b;)Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1
.end method
