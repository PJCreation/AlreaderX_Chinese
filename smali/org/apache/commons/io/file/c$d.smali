.class final Lorg/apache/commons/io/file/c$d;
.super Ljava/lang/Object;
.source "Counters.java"

# interfaces
.implements Lorg/apache/commons/io/file/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/file/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/io/file/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/c$d;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/file/c$d;->a:J

    return-void
.end method

.method public b()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/c$d;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/c$d;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/file/c$d;->a:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/io/file/c$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/io/file/c$c;

    .line 3
    iget-wide v3, p0, Lorg/apache/commons/io/file/c$d;->a:J

    invoke-interface {p1}, Lorg/apache/commons/io/file/c$c;->get()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/c$d;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lorg/apache/commons/io/file/c$d;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/file/c$d;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
