.class public final Lokhttp3/f0/j/f$a;
.super Ljava/lang/Object;
.source "Jdk9Platform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/f0/j/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/f0/j/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/f0/j/f$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lokhttp3/f0/j/f;

    invoke-direct {v0}, Lokhttp3/f0/j/f;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    invoke-static {}, Lokhttp3/f0/j/f;->p()Z

    move-result v0

    return v0
.end method
