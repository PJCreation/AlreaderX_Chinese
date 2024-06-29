.class public final Lokhttp3/d0$a$a;
.super Lokhttp3/d0;
.source "ResponseBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/d0$a;->a(Lokio/d;Lokhttp3/y;J)Lokhttp3/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic f:Lokhttp3/y;

.field final synthetic g:J

.field final synthetic h:Lokio/d;


# direct methods
.method constructor <init>(Lokhttp3/y;JLokio/d;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/d0$a$a;->f:Lokhttp3/y;

    iput-wide p2, p0, Lokhttp3/d0$a$a;->g:J

    iput-object p4, p0, Lokhttp3/d0$a$a;->h:Lokio/d;

    .line 1
    invoke-direct {p0}, Lokhttp3/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/d0$a$a;->g:J

    return-wide v0
.end method

.method public j()Lokio/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/d0$a$a;->h:Lokio/d;

    return-object v0
.end method
