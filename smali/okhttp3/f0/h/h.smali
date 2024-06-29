.class public final Lokhttp3/f0/h/h;
.super Lokhttp3/d0;
.source "RealResponseBody.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Lokio/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokio/d;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lokhttp3/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/f0/h/h;->f:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lokhttp3/f0/h/h;->g:J

    .line 4
    iput-object p4, p0, Lokhttp3/f0/h/h;->h:Lokio/d;

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/f0/h/h;->g:J

    return-wide v0
.end method

.method public j()Lokio/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/h/h;->h:Lokio/d;

    return-object v0
.end method
