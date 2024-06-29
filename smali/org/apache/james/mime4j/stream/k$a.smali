.class public Lorg/apache/james/mime4j/stream/k$a;
.super Ljava/lang/Object;
.source "MimeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/stream/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/k$a;->a:Z

    .line 3
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/k$a;->f:Z

    .line 4
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/k$a;->h:Z

    const/16 v0, 0x3e8

    .line 5
    iput v0, p0, Lorg/apache/james/mime4j/stream/k$a;->b:I

    .line 6
    iput v0, p0, Lorg/apache/james/mime4j/stream/k$a;->c:I

    const/16 v0, 0x2710

    .line 7
    iput v0, p0, Lorg/apache/james/mime4j/stream/k$a;->d:I

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lorg/apache/james/mime4j/stream/k$a;->e:J

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/k$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/james/mime4j/stream/k;
    .locals 11

    .line 1
    new-instance v10, Lorg/apache/james/mime4j/stream/k;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/k$a;->a:Z

    iget v2, p0, Lorg/apache/james/mime4j/stream/k$a;->b:I

    iget v3, p0, Lorg/apache/james/mime4j/stream/k$a;->c:I

    iget v4, p0, Lorg/apache/james/mime4j/stream/k$a;->d:I

    iget-wide v5, p0, Lorg/apache/james/mime4j/stream/k$a;->e:J

    iget-boolean v7, p0, Lorg/apache/james/mime4j/stream/k$a;->f:Z

    iget-object v8, p0, Lorg/apache/james/mime4j/stream/k$a;->g:Ljava/lang/String;

    iget-boolean v9, p0, Lorg/apache/james/mime4j/stream/k$a;->h:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/james/mime4j/stream/k;-><init>(ZIIIJZLjava/lang/String;Z)V

    return-object v10
.end method

.method public b(Z)Lorg/apache/james/mime4j/stream/k$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/k$a;->h:Z

    return-object p0
.end method

.method public c(J)Lorg/apache/james/mime4j/stream/k$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/james/mime4j/stream/k$a;->e:J

    return-object p0
.end method

.method public d(I)Lorg/apache/james/mime4j/stream/k$a;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/james/mime4j/stream/k$a;->c:I

    return-object p0
.end method

.method public e(I)Lorg/apache/james/mime4j/stream/k$a;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/james/mime4j/stream/k$a;->d:I

    return-object p0
.end method

.method public f(I)Lorg/apache/james/mime4j/stream/k$a;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/james/mime4j/stream/k$a;->b:I

    return-object p0
.end method

.method public g(Z)Lorg/apache/james/mime4j/stream/k$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/k$a;->a:Z

    return-object p0
.end method
