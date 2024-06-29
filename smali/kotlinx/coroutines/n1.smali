.class public Lkotlinx/coroutines/n1;
.super Lkotlinx/coroutines/r1;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/w;


# instance fields
.field private final f:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/l1;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/r1;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/r1;->T(Lkotlinx/coroutines/l1;)V

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/n1;->u0()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/coroutines/n1;->f:Z

    return-void
.end method

.method private final u0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/r1;->P()Lkotlinx/coroutines/s;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/t;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/q1;->x()Lkotlinx/coroutines/r1;

    move-result-object v0

    .line 2
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/r1;->M()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/r1;->P()Lkotlinx/coroutines/s;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/coroutines/t;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlinx/coroutines/t;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/q1;->x()Lkotlinx/coroutines/r1;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/coroutines/n1;->f:Z

    return v0
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
