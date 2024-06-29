.class Lcom/jcraft/jsch/Channel$1;
.super Ljava/io/OutputStream;
.source "Channel.java"


# instance fields
.field b:[B

.field private buffer:Lcom/jcraft/jsch/Buffer;

.field private closed:Z

.field private dataLen:I

.field private packet:Lcom/jcraft/jsch/Packet;

.field private final synthetic this$0:Lcom/jcraft/jsch/Channel;

.field private final synthetic val$channel:Lcom/jcraft/jsch/Channel;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    .line 4
    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    .line 5
    iput-boolean p1, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    return-void
.end method

.method private declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    .line 2
    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 4
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0xe

    add-int/lit8 v0, v0, -0x80

    if-lez v0, :cond_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    .line 8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize the channel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    .line 3
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    if-lez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->eof()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    return-void
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 6
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 7
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 8
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    .line 10
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    iget-boolean v2, v2, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 13
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    .line 15
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->init()V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 7
    array-length v1, v0

    :goto_0
    if-lez p3, :cond_3

    .line 8
    iget v2, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/lit8 v3, v2, 0xe

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, -0x80

    if-le p3, v3, :cond_1

    add-int/lit8 v3, v2, 0xe

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, -0x80

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    if-gtz v3, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0xe

    .line 10
    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v2, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_0

    :cond_3
    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
