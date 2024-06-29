.class public final Lokhttp3/f0/f/b;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/f/b$b;,
        Lokhttp3/f0/f/b$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/f0/f/b$a;


# instance fields
.field private final b:Lokhttp3/a0;

.field private final c:Lokhttp3/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/f0/f/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/f0/f/b$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/f0/f/b;->a:Lokhttp3/f0/f/b$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/a0;Lokhttp3/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/f0/f/b;->b:Lokhttp3/a0;

    .line 3
    iput-object p2, p0, Lokhttp3/f0/f/b;->c:Lokhttp3/c0;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/f/b;->c:Lokhttp3/c0;

    return-object v0
.end method

.method public final b()Lokhttp3/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/f/b;->b:Lokhttp3/a0;

    return-object v0
.end method
