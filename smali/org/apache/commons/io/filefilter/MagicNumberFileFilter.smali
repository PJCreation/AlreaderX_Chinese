.class public Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;
.super Lorg/apache/commons/io/filefilter/u;
.source "MagicNumberFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x799f06c25c62aacL


# instance fields
.field private final g:[B

.field private final h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    const-string v0, "magicNumber"

    .line 11
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 13
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->g:[B

    .line 14
    iput-wide p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->h:J

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The offset cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The magic number must contain at least one byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/u;-><init>()V

    const-string v0, "magicNumbers"

    .line 3
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    array-length v0, p1

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 5
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->g:[B

    .line 6
    iput-wide p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->h:J

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The offset cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The magic number must contain at least one byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 3

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/nio/file/LinkOption;

    .line 12
    invoke-static {p1, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-array p2, p2, [Ljava/nio/file/OpenOption;

    .line 13
    invoke-static {p1, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->g:[B

    array-length p2, p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 16
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->g:[B

    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 17
    sget-object p2, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    .line 19
    :cond_0
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/io/filefilter/u;->f(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    .line 21
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 22
    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :cond_1
    :try_start_7
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 23
    :catch_0
    :cond_2
    sget-object p1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    sget-object v1, Lorg/apache/commons/io/RandomAccessFileMode;->READ_ONLY:Lorg/apache/commons/io/RandomAccessFileMode;

    invoke-virtual {v1, p1}, Lorg/apache/commons/io/RandomAccessFileMode;->create(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->g:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/apache/commons/io/m;->b(I)[B

    move-result-object v1

    .line 4
    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->h:J

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .line 6
    iget-object v3, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->g:[B

    array-length v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v4, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    .line 8
    :cond_0
    :try_start_3
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v1

    :catchall_0
    move-exception v1

    .line 10
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 11
    :try_start_6
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :cond_1
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_2
    return v0
.end method

.method public bridge synthetic and(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/v;->b(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic negate()Lorg/apache/commons/io/filefilter/w;
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/io/filefilter/v;->c(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic or(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/v;->d(Lorg/apache/commons/io/filefilter/w;Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->g:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-wide v1, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
