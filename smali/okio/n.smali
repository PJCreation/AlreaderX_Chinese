.class public final Lokio/n;
.super Lkotlin/collections/b;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/b<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final f:Lokio/n$a;


# instance fields
.field private final g:[Lokio/ByteString;

.field private final h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/n$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokio/n;->f:Lokio/n$a;

    return-void
.end method

.method private constructor <init>([Lokio/ByteString;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/b;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/n;->g:[Lokio/ByteString;

    .line 3
    iput-object p2, p0, Lokio/n;->h:[I

    return-void
.end method

.method public synthetic constructor <init>([Lokio/ByteString;[ILkotlin/jvm/internal/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lokio/n;-><init>([Lokio/ByteString;[I)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/n;->g:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/n;->d(Lokio/ByteString;)Z

    move-result p1

    return p1
.end method

.method public bridge d(Lokio/ByteString;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/collections/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e(I)Lokio/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/n;->g:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge f(Lokio/ByteString;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/collections/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge g(Lokio/ByteString;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/collections/b;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/n;->e(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/n;->f(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/n;->g(Lokio/ByteString;)I

    move-result p1

    return p1
.end method
