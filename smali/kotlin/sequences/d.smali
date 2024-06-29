.class final Lkotlin/sequences/d;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/f;
.implements Lkotlin/sequences/c;


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lkotlin/sequences/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/sequences/d;

    invoke-direct {v0}, Lkotlin/sequences/d;-><init>()V

    sput-object v0, Lkotlin/sequences/d;->a:Lkotlin/sequences/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lkotlin/sequences/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/sequences/d;->b(I)Lkotlin/sequences/d;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lkotlin/sequences/d;
    .locals 0

    .line 1
    sget-object p1, Lkotlin/sequences/d;->a:Lkotlin/sequences/d;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/collections/a0;->e:Lkotlin/collections/a0;

    return-object v0
.end method
