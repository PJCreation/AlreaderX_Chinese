.class final Lkotlinx/coroutines/internal/s$a;
.super Lkotlin/jvm/internal/Lambda;
.source "OnUndeliveredElement.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)Lkotlin/jvm/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Throwable;",
        "Lkotlin/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TE;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic g:Lkotlin/coroutines/f;


# direct methods
.method constructor <init>(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/m;",
            ">;TE;",
            "Lkotlin/coroutines/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/internal/s$a;->e:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/s$a;->f:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/s$a;->g:Lkotlin/coroutines/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/s$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/m;->a:Lkotlin/m;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/internal/s$a;->e:Lkotlin/jvm/b/l;

    iget-object v0, p0, Lkotlinx/coroutines/internal/s$a;->f:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/internal/s$a;->g:Lkotlin/coroutines/f;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/internal/s;->b(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)V

    return-void
.end method
