.class public final Lkotlin/sequences/o;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/sequences/f<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final a:Lkotlin/sequences/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/sequences/o;->a:Lkotlin/sequences/f;

    iput-object p2, p0, Lkotlin/sequences/o;->b:Lkotlin/jvm/b/l;

    return-void
.end method

.method public static final synthetic b(Lkotlin/sequences/o;)Lkotlin/sequences/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/sequences/o;->a:Lkotlin/sequences/f;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/sequences/o;)Lkotlin/jvm/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/sequences/o;->b:Lkotlin/jvm/b/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/sequences/o$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/o$a;-><init>(Lkotlin/sequences/o;)V

    return-object v0
.end method
