.class public final Lokhttp3/f0/i/a;
.super Ljava/lang/Object;
.source "HeadersReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/f0/i/a$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/f0/i/a$a;


# instance fields
.field private final b:Lokio/d;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/f0/i/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/f0/i/a$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/f0/i/a;->a:Lokhttp3/f0/i/a$a;

    return-void
.end method

.method public constructor <init>(Lokio/d;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/f0/i/a;->b:Lokio/d;

    const-wide/32 v0, 0x40000

    .line 2
    iput-wide v0, p0, Lokhttp3/f0/i/a;->c:J

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/v;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/v$a;

    invoke-direct {v0}, Lokhttp3/v$a;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lokhttp3/f0/i/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lokhttp3/v$a;->d()Lokhttp3/v;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->b(Ljava/lang/String;)Lokhttp3/v$a;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/f0/i/a;->b:Lokio/d;

    iget-wide v1, p0, Lokhttp3/f0/i/a;->c:J

    invoke-interface {v0, v1, v2}, Lokio/d;->z(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lokhttp3/f0/i/a;->c:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokhttp3/f0/i/a;->c:J

    return-object v0
.end method
