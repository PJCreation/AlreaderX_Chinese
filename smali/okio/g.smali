.class public Lokio/g;
.super Lokio/w;
.source "ForwardingTimeout.kt"


# instance fields
.field private f:Lokio/w;


# direct methods
.method public constructor <init>(Lokio/w;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lokio/w;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/g;->f:Lokio/w;

    return-void
.end method


# virtual methods
.method public a()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/g;->f:Lokio/w;

    invoke-virtual {v0}, Lokio/w;->a()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public b()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/g;->f:Lokio/w;

    invoke-virtual {v0}, Lokio/w;->b()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/g;->f:Lokio/w;

    invoke-virtual {v0}, Lokio/w;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/g;->f:Lokio/w;

    invoke-virtual {v0, p1, p2}, Lokio/w;->d(J)Lokio/w;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/g;->f:Lokio/w;

    invoke-virtual {v0}, Lokio/w;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/g;->f:Lokio/w;

    invoke-virtual {v0}, Lokio/w;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lokio/w;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokio/g;->f:Lokio/w;

    invoke-virtual {v0, p1, p2, p3}, Lokio/w;->g(JLjava/util/concurrent/TimeUnit;)Lokio/w;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/g;->f:Lokio/w;

    return-object v0
.end method

.method public final j(Lokio/w;)Lokio/g;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokio/g;->f:Lokio/w;

    return-object p0
.end method
