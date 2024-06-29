.class public final Lkotlinx/coroutines/channels/c$b;
.super Lkotlinx/coroutines/internal/m$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/c;->i(Lkotlinx/coroutines/channels/p;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lkotlinx/coroutines/internal/m;

.field final synthetic e:Lkotlinx/coroutines/channels/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/m;Lkotlinx/coroutines/channels/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/c$b;->d:Lkotlinx/coroutines/internal/m;

    iput-object p2, p0, Lkotlinx/coroutines/channels/c$b;->e:Lkotlinx/coroutines/channels/c;

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/m$a;-><init>(Lkotlinx/coroutines/internal/m;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/m;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c$b;->i(Lkotlinx/coroutines/internal/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lkotlinx/coroutines/internal/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/channels/c$b;->e:Lkotlinx/coroutines/channels/c;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/c;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/l;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
