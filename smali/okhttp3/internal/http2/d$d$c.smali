.class public final Lokhttp3/internal/http2/d$d$c;
.super Lokhttp3/f0/g/a;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/d$d;->d(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lokhttp3/internal/http2/d;

.field final synthetic h:I

.field final synthetic i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;II)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/d$d$c;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/http2/d$d$c;->f:Z

    iput-object p3, p0, Lokhttp3/internal/http2/d$d$c;->g:Lokhttp3/internal/http2/d;

    iput p4, p0, Lokhttp3/internal/http2/d$d$c;->h:I

    iput p5, p0, Lokhttp3/internal/http2/d$d$c;->i:I

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/f0/g/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$d$c;->g:Lokhttp3/internal/http2/d;

    iget v1, p0, Lokhttp3/internal/http2/d$d$c;->h:I

    iget v2, p0, Lokhttp3/internal/http2/d$d$c;->i:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lokhttp3/internal/http2/d;->v0(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
