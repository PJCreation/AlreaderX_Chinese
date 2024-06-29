.class public interface abstract Lkotlinx/coroutines/l1;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlin/coroutines/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/l1$b;,
        Lkotlinx/coroutines/l1$a;
    }
.end annotation


# static fields
.field public static final c:Lkotlinx/coroutines/l1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/l1$b;->e:Lkotlinx/coroutines/l1$b;

    sput-object v0, Lkotlinx/coroutines/l1;->c:Lkotlinx/coroutines/l1$b;

    return-void
.end method


# virtual methods
.method public abstract A(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract I(Lkotlinx/coroutines/u;)Lkotlinx/coroutines/s;
.end method

.method public abstract a()Z
.end method

.method public abstract l(Lkotlin/jvm/b/l;)Lkotlinx/coroutines/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)",
            "Lkotlinx/coroutines/u0;"
        }
    .end annotation
.end method

.method public abstract start()Z
.end method

.method public abstract w(ZZLkotlin/jvm/b/l;)Lkotlinx/coroutines/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/m;",
            ">;)",
            "Lkotlinx/coroutines/u0;"
        }
    .end annotation
.end method

.method public abstract x()Ljava/util/concurrent/CancellationException;
.end method
