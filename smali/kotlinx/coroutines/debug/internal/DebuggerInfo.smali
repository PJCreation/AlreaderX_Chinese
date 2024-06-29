.class public final Lkotlinx/coroutines/debug/internal/DebuggerInfo;
.super Ljava/lang/Object;
.source "DebuggerInfo.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final e:Ljava/lang/Long;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final l:J


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/a;Lkotlin/coroutines/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lkotlinx/coroutines/h0;->e:Lkotlinx/coroutines/h0$a;

    invoke-interface {p2, p1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/h0;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/h0;->J()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->e:Ljava/lang/Long;

    .line 3
    sget-object p1, Lkotlin/coroutines/d;->a:Lkotlin/coroutines/d$b;

    invoke-interface {p2, p1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/d;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->f:Ljava/lang/String;

    .line 4
    sget-object p1, Lkotlinx/coroutines/j0;->e:Lkotlinx/coroutines/j0$a;

    invoke-interface {p2, p1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/j0;

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/j0;->J()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->g:Ljava/lang/String;

    .line 5
    throw v0
.end method


# virtual methods
.method public final getCoroutineId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDispatcher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastObservedStackTrace()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->k:Ljava/util/List;

    return-object v0
.end method

.method public final getLastObservedThreadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastObservedThreadState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getSequenceNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->l:J

    return-wide v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/DebuggerInfo;->h:Ljava/lang/String;

    return-object v0
.end method
