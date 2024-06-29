.class final Lkotlinx/coroutines/channels/a$c;
.super Lkotlinx/coroutines/channels/a$b;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/a$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final j:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TE;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/m;ILkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/m<",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/a$b;-><init>(Lkotlinx/coroutines/m;I)V

    .line 2
    iput-object p3, p0, Lkotlinx/coroutines/channels/a$c;->j:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public x(Ljava/lang/Object;)Lkotlin/jvm/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/a$c;->j:Lkotlin/jvm/b/l;

    iget-object v1, p0, Lkotlinx/coroutines/channels/a$b;->h:Lkotlinx/coroutines/m;

    invoke-interface {v1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;Lkotlin/coroutines/f;)Lkotlin/jvm/b/l;

    move-result-object p1

    return-object p1
.end method
