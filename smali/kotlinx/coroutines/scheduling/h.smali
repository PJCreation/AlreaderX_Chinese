.class public abstract Lkotlinx/coroutines/scheduling/h;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:J

.field public f:Lkotlinx/coroutines/scheduling/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    sget-object v0, Lkotlinx/coroutines/scheduling/f;->e:Lkotlinx/coroutines/scheduling/f;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/scheduling/h;-><init>(JLkotlinx/coroutines/scheduling/i;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/scheduling/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/h;->e:J

    .line 3
    iput-object p3, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    return-void
.end method
