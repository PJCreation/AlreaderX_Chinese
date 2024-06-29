.class public final Lkotlinx/coroutines/g2;
.super Lkotlin/coroutines/a;
.source "Unconfined.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/g2$a;
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/g2$a;


# instance fields
.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/g2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/g2$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lkotlinx/coroutines/g2;->e:Lkotlinx/coroutines/g2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/g2;->e:Lkotlinx/coroutines/g2$a;

    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/f$c;)V

    return-void
.end method
