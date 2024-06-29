.class Lcom/jcraft/jsch/ChannelSftp$1;
.super Ljava/io/OutputStream;
.source "ChannelSftp.java"


# instance fields
.field private _ackid:I

.field _data:[B

.field private ackcount:I

.field private ackid:[I

.field private header:Lcom/jcraft/jsch/ChannelSftp$Header;

.field private init:Z

.field private isClosed:Z

.field private startid:I

.field private final synthetic this$0:Lcom/jcraft/jsch/ChannelSftp;

.field private final synthetic val$_offset:[J

.field private final synthetic val$handle:[B

.field private final synthetic val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

.field private writecount:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    new-array p4, p2, [I

    .line 4
    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    .line 5
    iput p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    .line 6
    iput p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    .line 7
    iput p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    .line 8
    iput p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    .line 9
    new-instance p3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p3, p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    new-array p1, p2, [B

    .line 10
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_data:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->access$400(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 7
    throw v0
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    if-nez v0, :cond_1

    .line 3
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->access$300(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    return-void

    .line 7
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public write(I)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_data:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 9

    .line 2
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$000(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$000(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    .line 5
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-nez v0, :cond_7

    move v0, p3

    :cond_1
    if-lez v0, :cond_4

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    aget-wide v5, v4, v1

    move-wide v4, v5

    move-object v6, p1

    move v7, p2

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelSftp;->access$100(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I

    move-result v2

    .line 8
    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    .line 9
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    aget-wide v4, v3, v1

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/2addr p2, v2

    sub-int/2addr v0, v2

    .line 10
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$000(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    const/16 v3, 0x400

    if-lt v2, v3, :cond_1

    .line 11
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v2, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->access$300(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    .line 14
    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    if-gt v3, v2, :cond_3

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->access$000(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_3

    .line 15
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    goto :goto_0

    .line 16
    :cond_3
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 p2, 0x4

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz p1, :cond_6

    int-to-long p2, p3

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    .line 19
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21
    throw p1

    .line 22
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
