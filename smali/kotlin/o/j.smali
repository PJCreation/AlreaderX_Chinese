.class public Lkotlin/o/j;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/p/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/o/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/jvm/internal/p/a;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final e:Lkotlin/o/j$a;


# instance fields
.field private final f:J

.field private final g:J

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/o/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/o/j$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lkotlin/o/j;->e:Lkotlin/o/j$a;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p5, v0

    if-eqz v2, :cond_0

    .line 2
    iput-wide p1, p0, Lkotlin/o/j;->f:J

    .line 3
    invoke-static/range {p1 .. p6}, Lkotlin/internal/c;->d(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lkotlin/o/j;->g:J

    .line 4
    iput-wide p5, p0, Lkotlin/o/j;->h:J

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/o/j;->f:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/o/j;->g:J

    return-wide v0
.end method

.method public e()Lkotlin/collections/e0;
    .locals 8

    .line 1
    new-instance v7, Lkotlin/o/k;

    iget-wide v1, p0, Lkotlin/o/j;->f:J

    iget-wide v3, p0, Lkotlin/o/j;->g:J

    iget-wide v5, p0, Lkotlin/o/j;->h:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/o/k;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/o/j;->e()Lkotlin/collections/e0;

    move-result-object v0

    return-object v0
.end method
