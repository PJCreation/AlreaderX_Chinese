.class public final Lorg/apache/james/mime4j/stream/k;
.super Ljava/lang/Object;
.source "MimeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/stream/k$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/james/mime4j/stream/k;

.field public static final b:Lorg/apache/james/mime4j/stream/k;

.field public static final c:Lorg/apache/james/mime4j/stream/k;


# instance fields
.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:J

.field private final i:Z

.field private final j:Ljava/lang/String;

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/apache/james/mime4j/stream/k;->a()Lorg/apache/james/mime4j/stream/k$a;

    move-result-object v0

    const-wide/32 v1, 0x6400000

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/stream/k$a;->c(J)Lorg/apache/james/mime4j/stream/k$a;

    move-result-object v0

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/k$a;->d(I)Lorg/apache/james/mime4j/stream/k$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/k$a;->e(I)Lorg/apache/james/mime4j/stream/k$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/k$a;->f(I)Lorg/apache/james/mime4j/stream/k$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/k$a;->a()Lorg/apache/james/mime4j/stream/k;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/stream/k;->a:Lorg/apache/james/mime4j/stream/k;

    .line 7
    new-instance v0, Lorg/apache/james/mime4j/stream/k$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/k$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/k$a;->a()Lorg/apache/james/mime4j/stream/k;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/stream/k;->b:Lorg/apache/james/mime4j/stream/k;

    .line 8
    new-instance v0, Lorg/apache/james/mime4j/stream/k$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/k$a;-><init>()V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/k$a;->g(Z)Lorg/apache/james/mime4j/stream/k$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/k$a;->b(Z)Lorg/apache/james/mime4j/stream/k$a;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/k$a;->a()Lorg/apache/james/mime4j/stream/k;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/stream/k;->c:Lorg/apache/james/mime4j/stream/k;

    return-void
.end method

.method constructor <init>(ZIIIJZLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/k;->d:Z

    .line 3
    iput-boolean p7, p0, Lorg/apache/james/mime4j/stream/k;->i:Z

    .line 4
    iput-boolean p9, p0, Lorg/apache/james/mime4j/stream/k;->k:Z

    .line 5
    iput p2, p0, Lorg/apache/james/mime4j/stream/k;->e:I

    .line 6
    iput p3, p0, Lorg/apache/james/mime4j/stream/k;->f:I

    .line 7
    iput p4, p0, Lorg/apache/james/mime4j/stream/k;->g:I

    .line 8
    iput-wide p5, p0, Lorg/apache/james/mime4j/stream/k;->h:J

    .line 9
    iput-object p8, p0, Lorg/apache/james/mime4j/stream/k;->j:Ljava/lang/String;

    return-void
.end method

.method public static a()Lorg/apache/james/mime4j/stream/k$a;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/stream/k$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/k$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/james/mime4j/stream/k;->h:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/k;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/k;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/k;->e:I

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/k;->i:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/k;->k:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/k;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[strictParsing="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/k;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxLineLen="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/k;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeaderCount="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/k;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeaderLen="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/k;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxContentLen="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/james/mime4j/stream/k;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", countLineNumbers="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/k;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", headlessParsing="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/k;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", malformedHeaderStartsBody="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/k;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
