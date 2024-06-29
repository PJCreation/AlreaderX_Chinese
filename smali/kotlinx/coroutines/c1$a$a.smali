.class final Lkotlinx/coroutines/c1$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "Executors.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/c1$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/coroutines/f$b;",
        "Lkotlinx/coroutines/c1;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/c1$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/c1$a$a;

    invoke-direct {v0}, Lkotlinx/coroutines/c1$a$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/c1$a$a;->e:Lkotlinx/coroutines/c1$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/f$b;)Lkotlinx/coroutines/c1;
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/c1;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/c1;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/f$b;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/c1$a$a;->a(Lkotlin/coroutines/f$b;)Lkotlinx/coroutines/c1;

    move-result-object p1

    return-object p1
.end method
