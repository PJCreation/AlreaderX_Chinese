.class public abstract Lkotlinx/coroutines/q1;
.super Lkotlinx/coroutines/a0;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/u0;
.implements Lkotlinx/coroutines/g1;


# instance fields
.field public h:Lkotlinx/coroutines/r1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q1;->x()Lkotlinx/coroutines/r1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/r1;->i0(Lkotlinx/coroutines/q1;)V

    return-void
.end method

.method public f()Lkotlinx/coroutines/v1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/n0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/n0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/q1;->x()Lkotlinx/coroutines/r1;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/n0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lkotlinx/coroutines/r1;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/q1;->h:Lkotlinx/coroutines/r1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lkotlin/jvm/internal/i;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final y(Lkotlinx/coroutines/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/q1;->h:Lkotlinx/coroutines/r1;

    return-void
.end method
