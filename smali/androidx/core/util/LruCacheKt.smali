.class public final Landroidx/core/util/LruCacheKt;
.super Ljava/lang/Object;
.source "LruCache.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method public static final lruCache(ILkotlin/jvm/b/p;Lkotlin/jvm/b/l;Lkotlin/jvm/b/r;)Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/b/p<",
            "-TK;-TV;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-TK;+TV;>;",
            "Lkotlin/jvm/b/r<",
            "-",
            "Ljava/lang/Boolean;",
            "-TK;-TV;-TV;",
            "Lkotlin/m;",
            ">;)",
            "Landroid/util/LruCache<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "sizeOf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "create"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEntryRemoved"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/core/util/LruCacheKt$lruCache$4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/util/LruCacheKt$lruCache$4;-><init>(ILkotlin/jvm/b/p;Lkotlin/jvm/b/l;Lkotlin/jvm/b/r;)V

    return-object v0
.end method

.method public static synthetic lruCache$default(ILkotlin/jvm/b/p;Lkotlin/jvm/b/l;Lkotlin/jvm/b/r;ILjava/lang/Object;)Landroid/util/LruCache;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Landroidx/core/util/LruCacheKt$lruCache$1;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$1;

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    .line 2
    sget-object p2, Landroidx/core/util/LruCacheKt$lruCache$2;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$2;

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    .line 3
    sget-object p3, Landroidx/core/util/LruCacheKt$lruCache$3;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$3;

    :cond_2
    const-string p4, "sizeOf"

    .line 4
    invoke-static {p1, p4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "create"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "onEntryRemoved"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p4, Landroidx/core/util/LruCacheKt$lruCache$4;

    invoke-direct {p4, p0, p1, p2, p3}, Landroidx/core/util/LruCacheKt$lruCache$4;-><init>(ILkotlin/jvm/b/p;Lkotlin/jvm/b/l;Lkotlin/jvm/b/r;)V

    return-object p4
.end method
