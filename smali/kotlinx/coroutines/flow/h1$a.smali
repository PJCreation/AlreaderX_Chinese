.class final Lkotlinx/coroutines/flow/h1$a;
.super Lkotlin/jvm/internal/Lambda;
.source "Zip.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/h1;->b()Lkotlin/jvm/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/flow/h1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/h1$a;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/h1$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/h1$a;->e:Lkotlinx/coroutines/flow/h1$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/h1$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
