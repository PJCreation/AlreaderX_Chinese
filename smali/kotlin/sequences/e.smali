.class final Lkotlin/sequences/e;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/sequences/f<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const-string v0, "getInitialValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/e;->a:Lkotlin/jvm/b/a;

    iput-object p2, p0, Lkotlin/sequences/e;->b:Lkotlin/jvm/b/l;

    return-void
.end method

.method public static final synthetic b(Lkotlin/sequences/e;)Lkotlin/jvm/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/sequences/e;->a:Lkotlin/jvm/b/a;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/sequences/e;)Lkotlin/jvm/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/sequences/e;->b:Lkotlin/jvm/b/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/sequences/e$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/e$a;-><init>(Lkotlin/sequences/e;)V

    return-object v0
.end method
