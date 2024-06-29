.class Lorg/apache/commons/io/monitor/j;
.super Ljava/lang/Object;
.source "SerializableFileTime.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final e:Lorg/apache/commons/io/monitor/j;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private f:Ljava/nio/file/attribute/FileTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/monitor/j;

    sget-object v1, Lorg/apache/commons/io/file/i/a;->a:Ljava/nio/file/attribute/FileTime;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/monitor/j;-><init>(Ljava/nio/file/attribute/FileTime;)V

    sput-object v0, Lorg/apache/commons/io/monitor/j;->e:Lorg/apache/commons/io/monitor/j;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/attribute/FileTime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/nio/file/attribute/FileTime;

    iput-object p1, p0, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Instant;

    invoke-static {p1}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method b()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/io/monitor/j;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/io/monitor/j;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    iget-object p1, p1, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    invoke-static {v0, p1}, Landroidx/core/graphics/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/j;->f:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
