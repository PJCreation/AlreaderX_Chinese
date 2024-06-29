.class public Lcom/jcraft/jsch/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field private static random:Lcom/jcraft/jsch/Random;


# instance fields
.field ba4:[B

.field buffer:Lcom/jcraft/jsch/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    .line 3
    iput-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    return-void
.end method

.method static setRandom(Lcom/jcraft/jsch/Random;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    return-void
.end method


# virtual methods
.method getBuffer()Lcom/jcraft/jsch/Buffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method padding(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    neg-int v2, v1

    add-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    if-ge v2, p1, :cond_0

    add-int/2addr v2, p1

    :cond_0
    add-int/2addr v1, v2

    const/4 p1, 0x4

    sub-int/2addr v1, p1

    .line 2
    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    ushr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    const/4 v6, 0x1

    .line 3
    aput-byte v4, v3, v6

    const/4 v4, 0x2

    ushr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    .line 4
    aput-byte v6, v3, v4

    const/4 v4, 0x3

    int-to-byte v1, v1

    .line 5
    aput-byte v1, v3, v4

    .line 6
    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v3, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    int-to-byte v1, v2

    aput-byte v1, v0, p1

    .line 8
    sget-object p1, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    monitor-enter p1

    .line 9
    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    return-void
.end method

.method shift(III)I
    .locals 4

    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x9

    neg-int v1, v0

    add-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    if-ge v1, p2, :cond_0

    add-int/2addr v1, p2

    :cond_0
    add-int/2addr v1, v0

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x20

    .line 1
    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, p3

    iget p2, p2, Lcom/jcraft/jsch/Buffer;->index:I

    add-int v3, v1, p2

    add-int/lit8 v3, v3, -0x5

    add-int/lit8 v3, v3, -0x9

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_1

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x5

    add-int/lit8 p2, p2, -0x9

    sub-int/2addr p2, p1

    .line 2
    new-array p2, p2, [B

    .line 3
    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iput-object p2, p3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget p2, p2, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 p2, p2, -0x5

    add-int/lit8 p2, p2, -0x9

    sub-int/2addr p2, p1

    invoke-static {p3, v0, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 p3, 0xa

    iput p3, p2, Lcom/jcraft/jsch/Buffer;->index:I

    .line 7
    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 8
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->index:I

    return v1
.end method

.method unshift(BIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v1, 0xe

    invoke-static {v0, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    const/4 p1, 0x6

    .line 3
    iput p1, p3, Lcom/jcraft/jsch/Buffer;->index:I

    .line 4
    invoke-virtual {p3, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 5
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 6
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x9

    iput p4, p1, Lcom/jcraft/jsch/Buffer;->index:I

    return-void
.end method
