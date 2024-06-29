.class Lorg/apache/commons/io/file/c$b;
.super Ljava/lang/Object;
.source "Counters.java"

# interfaces
.implements Lorg/apache/commons/io/file/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/io/file/c$c;

.field private final b:Lorg/apache/commons/io/file/c$c;

.field private final c:Lorg/apache/commons/io/file/c$c;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/io/file/c$c;Lorg/apache/commons/io/file/c$c;Lorg/apache/commons/io/file/c$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/io/file/c$b;->a:Lorg/apache/commons/io/file/c$c;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/file/c$b;->b:Lorg/apache/commons/io/file/c$c;

    .line 4
    iput-object p3, p0, Lorg/apache/commons/io/file/c$b;->c:Lorg/apache/commons/io/file/c$c;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/io/file/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/c$b;->b:Lorg/apache/commons/io/file/c$c;

    return-object v0
.end method

.method public b()Lorg/apache/commons/io/file/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/c$b;->c:Lorg/apache/commons/io/file/c$c;

    return-object v0
.end method

.method public c()Lorg/apache/commons/io/file/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/c$b;->a:Lorg/apache/commons/io/file/c$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/io/file/c$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/io/file/c$b;

    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->a:Lorg/apache/commons/io/file/c$c;

    iget-object v3, p1, Lorg/apache/commons/io/file/c$b;->a:Lorg/apache/commons/io/file/c$c;

    invoke-static {v1, v3}, Landroidx/core/graphics/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->b:Lorg/apache/commons/io/file/c$c;

    iget-object v3, p1, Lorg/apache/commons/io/file/c$b;->b:Lorg/apache/commons/io/file/c$c;

    .line 4
    invoke-static {v1, v3}, Landroidx/core/graphics/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->c:Lorg/apache/commons/io/file/c$c;

    iget-object p1, p1, Lorg/apache/commons/io/file/c$b;->c:Lorg/apache/commons/io/file/c$c;

    .line 5
    invoke-static {v1, p1}, Landroidx/core/graphics/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->a:Lorg/apache/commons/io/file/c$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->b:Lorg/apache/commons/io/file/c$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->c:Lorg/apache/commons/io/file/c$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->c:Lorg/apache/commons/io/file/c$c;

    invoke-interface {v1}, Lorg/apache/commons/io/file/c$c;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->b:Lorg/apache/commons/io/file/c$c;

    .line 2
    invoke-interface {v1}, Lorg/apache/commons/io/file/c$c;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/io/file/c$b;->a:Lorg/apache/commons/io/file/c$c;

    invoke-interface {v1}, Lorg/apache/commons/io/file/c$c;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%,d files, %,d directories, %,d bytes"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
