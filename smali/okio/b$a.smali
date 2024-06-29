.class public final Lokio/b$a;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public e:Lokio/b;

.field private f:Lokio/r;

.field public g:J

.field public h:[B

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lokio/b$a;->g:J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lokio/b$a;->i:I

    .line 4
    iput v0, p0, Lokio/b$a;->j:I

    return-void
.end method


# virtual methods
.method public final a(Lokio/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokio/b$a;->f:Lokio/r;

    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/b$a;->e:Lokio/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lokio/b$a;->e:Lokio/b;

    .line 3
    invoke-virtual {p0, v0}, Lokio/b$a;->a(Lokio/r;)V

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lokio/b$a;->g:J

    .line 5
    iput-object v0, p0, Lokio/b$a;->h:[B

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lokio/b$a;->i:I

    .line 7
    iput v0, p0, Lokio/b$a;->j:I

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
