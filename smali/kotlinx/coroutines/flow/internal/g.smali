.class public final Lkotlinx/coroutines/flow/internal/g;
.super Ljava/lang/Object;
.source "NullSurrogate.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/x;

.field public static final b:Lkotlinx/coroutines/internal/x;

.field public static final c:Lkotlinx/coroutines/internal/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/x;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/g;->a:Lkotlinx/coroutines/internal/x;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/x;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/g;->b:Lkotlinx/coroutines/internal/x;

    .line 3
    new-instance v0, Lkotlinx/coroutines/internal/x;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/g;->c:Lkotlinx/coroutines/internal/x;

    return-void
.end method
