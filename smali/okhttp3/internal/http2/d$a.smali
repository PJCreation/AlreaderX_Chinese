.class public final Lokhttp3/internal/http2/d$a;
.super Ljava/lang/Object;
.source "Http2Connection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private a:Z

.field private final b:Lokhttp3/f0/g/e;

.field public c:Ljava/net/Socket;

.field public d:Ljava/lang/String;

.field public e:Lokio/d;

.field public f:Lokio/c;

.field private g:Lokhttp3/internal/http2/d$c;

.field private h:Lokhttp3/internal/http2/j;

.field private i:I


# direct methods
.method public constructor <init>(ZLokhttp3/f0/g/e;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lokhttp3/internal/http2/d$a;->a:Z

    .line 3
    iput-object p2, p0, Lokhttp3/internal/http2/d$a;->b:Lokhttp3/f0/g/e;

    .line 4
    sget-object p1, Lokhttp3/internal/http2/d$c;->b:Lokhttp3/internal/http2/d$c;

    iput-object p1, p0, Lokhttp3/internal/http2/d$a;->g:Lokhttp3/internal/http2/d$c;

    .line 5
    sget-object p1, Lokhttp3/internal/http2/j;->b:Lokhttp3/internal/http2/j;

    iput-object p1, p0, Lokhttp3/internal/http2/d$a;->h:Lokhttp3/internal/http2/j;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/internal/http2/d;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/d;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/d;-><init>(Lokhttp3/internal/http2/d$a;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/d$a;->a:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "connectionName"

    invoke-static {v0}, Lkotlin/jvm/internal/i;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lokhttp3/internal/http2/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$a;->g:Lokhttp3/internal/http2/d$c;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/d$a;->i:I

    return v0
.end method

.method public final f()Lokhttp3/internal/http2/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$a;->h:Lokhttp3/internal/http2/j;

    return-object v0
.end method

.method public final g()Lokio/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$a;->f:Lokio/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sink"

    invoke-static {v0}, Lkotlin/jvm/internal/i;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$a;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "socket"

    invoke-static {v0}, Lkotlin/jvm/internal/i;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lokio/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$a;->e:Lokio/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "source"

    invoke-static {v0}, Lkotlin/jvm/internal/i;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lokhttp3/f0/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$a;->b:Lokhttp3/f0/g/e;

    return-object v0
.end method

.method public final k(Lokhttp3/internal/http2/d$c;)Lokhttp3/internal/http2/d$a;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/d$a;->n(Lokhttp3/internal/http2/d$c;)V

    return-object p0
.end method

.method public final l(I)Lokhttp3/internal/http2/d$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/d$a;->o(I)V

    return-object p0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/d$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final n(Lokhttp3/internal/http2/d$c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/d$a;->g:Lokhttp3/internal/http2/d$c;

    return-void
.end method

.method public final o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/d$a;->i:I

    return-void
.end method

.method public final p(Lokio/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/d$a;->f:Lokio/c;

    return-void
.end method

.method public final q(Ljava/net/Socket;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/d$a;->c:Ljava/net/Socket;

    return-void
.end method

.method public final r(Lokio/d;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/d$a;->e:Lokio/d;

    return-void
.end method

.method public final s(Ljava/net/Socket;Ljava/lang/String;Lokio/d;Lokio/c;)Lokhttp3/internal/http2/d$a;
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/d$a;->q(Ljava/net/Socket;)V

    .line 2
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lokhttp3/f0/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "MockWebServer "

    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/d$a;->m(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3}, Lokhttp3/internal/http2/d$a;->r(Lokio/d;)V

    .line 6
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/d$a;->p(Lokio/c;)V

    return-object p0
.end method
