.class public final Lokhttp3/internal/http2/d$d$a;
.super Lokhttp3/f0/g/a;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/d$d;->k(ZLokhttp3/internal/http2/k;)V
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

.field final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/internal/http2/d;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/d$d$a;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/http2/d$d$a;->f:Z

    iput-object p3, p0, Lokhttp3/internal/http2/d$d$a;->g:Lokhttp3/internal/http2/d;

    iput-object p4, p0, Lokhttp3/internal/http2/d$d$a;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/f0/g/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/d$d$a;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->S()Lokhttp3/internal/http2/d$c;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http2/d$d$a;->g:Lokhttp3/internal/http2/d;

    iget-object v2, p0, Lokhttp3/internal/http2/d$d$a;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/k;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/d$c;->a(Lokhttp3/internal/http2/d;Lokhttp3/internal/http2/k;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
