.class public abstract Lkotlin/collections/c;
.super Ljava/util/AbstractCollection;
.source "AbstractMutableCollection.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/p/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c()I
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/c;->c()I

    move-result v0

    return v0
.end method
