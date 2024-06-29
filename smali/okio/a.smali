.class public Lokio/a;
.super Lokio/w;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/a$b;,
        Lokio/a$a;
    }
.end annotation


# static fields
.field public static final f:Lokio/a$a;

.field private static final g:J

.field private static final h:J

.field private static i:Lokio/a;


# instance fields
.field private j:Z

.field private k:Lokio/a;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokio/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/a$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokio/a;->f:Lokio/a$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/a;->g:J

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/a;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokio/w;-><init>()V

    return-void
.end method

.method public static final synthetic i()Lokio/a;
    .locals 1

    .line 1
    sget-object v0, Lokio/a;->i:Lokio/a;

    return-object v0
.end method

.method public static final synthetic j()J
    .locals 2

    .line 1
    sget-wide v0, Lokio/a;->g:J

    return-wide v0
.end method

.method public static final synthetic k()J
    .locals 2

    .line 1
    sget-wide v0, Lokio/a;->h:J

    return-wide v0
.end method

.method public static final synthetic l(Lokio/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lokio/a;->j:Z

    return p0
.end method

.method public static final synthetic m(Lokio/a;)Lokio/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/a;->k:Lokio/a;

    return-object p0
.end method

.method public static final synthetic o(Lokio/a;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lokio/a;->w(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic p(Lokio/a;)V
    .locals 0

    .line 1
    sput-object p0, Lokio/a;->i:Lokio/a;

    return-void
.end method

.method public static final synthetic q(Lokio/a;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokio/a;->j:Z

    return-void
.end method

.method public static final synthetic r(Lokio/a;Lokio/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokio/a;->k:Lokio/a;

    return-void
.end method

.method public static final synthetic s(Lokio/a;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokio/a;->l:J

    return-void
.end method

.method private final w(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/a;->l:J

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final n(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/a;->v(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final t()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lokio/w;->h()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lokio/w;->e()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v3, Lokio/a;->f:Lokio/a$a;

    invoke-static {v3, p0, v0, v1, v2}, Lokio/a$a;->b(Lokio/a$a;Lokio/a;JZ)V

    return-void
.end method

.method public final u()Z
    .locals 1

    .line 1
    sget-object v0, Lokio/a;->f:Lokio/a$a;

    invoke-static {v0, p0}, Lokio/a$a;->a(Lokio/a$a;Lokio/a;)Z

    move-result v0

    return v0
.end method

.method protected v(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final x(Lokio/t;)Lokio/t;
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/a$c;

    invoke-direct {v0, p0, p1}, Lokio/a$c;-><init>(Lokio/a;Lokio/t;)V

    return-object v0
.end method

.method public final y(Lokio/v;)Lokio/v;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/a$d;

    invoke-direct {v0, p0, p1}, Lokio/a$d;-><init>(Lokio/a;Lokio/v;)V

    return-object v0
.end method

.method protected z()V
    .locals 0

    return-void
.end method
