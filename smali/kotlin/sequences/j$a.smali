.class public final Lkotlin/sequences/j$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/j;->b(Lkotlin/jvm/b/p;)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/f<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/b/p;


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/p;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/j$a;->a:Lkotlin/jvm/b/p;

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
    iget-object v0, p0, Lkotlin/sequences/j$a;->a:Lkotlin/jvm/b/p;

    invoke-static {v0}, Lkotlin/sequences/j;->a(Lkotlin/jvm/b/p;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
