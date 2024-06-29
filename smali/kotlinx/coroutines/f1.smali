.class public final Lkotlinx/coroutines/f1;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/g1;


# instance fields
.field private final e:Lkotlinx/coroutines/v1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/f1;->e:Lkotlinx/coroutines/v1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lkotlinx/coroutines/v1;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/f1;->e:Lkotlinx/coroutines/v1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/m0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->f()Lkotlinx/coroutines/v1;

    move-result-object v0

    const-string v1, "New"

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/v1;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
