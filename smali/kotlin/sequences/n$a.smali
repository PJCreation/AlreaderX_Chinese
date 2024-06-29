.class public final Lkotlin/sequences/n$a;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/p/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/n;->g(Lkotlin/sequences/f;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lkotlin/jvm/internal/p/a;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic e:Lkotlin/sequences/f;


# direct methods
.method public constructor <init>(Lkotlin/sequences/f;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/n$a;->e:Lkotlin/sequences/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    iget-object v0, p0, Lkotlin/sequences/n$a;->e:Lkotlin/sequences/f;

    invoke-interface {v0}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
