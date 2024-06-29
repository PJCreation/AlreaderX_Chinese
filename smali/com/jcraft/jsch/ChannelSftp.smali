.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;
.source "ChannelSftp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;,
        Lcom/jcraft/jsch/ChannelSftp$LsEntry;,
        Lcom/jcraft/jsch/ChannelSftp$Header;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    }
.end annotation


# static fields
.field public static final APPEND:I = 0x2

.field private static final LOCAL_MAXIMUM_PACKET_SIZE:I = 0x8000

.field private static final LOCAL_WINDOW_SIZE_MAX:I = 0x200000

.field private static final MAX_MSG_LENGTH:I = 0x40000

.field public static final OVERWRITE:I = 0x0

.field public static final RESUME:I = 0x1

.field private static final SSH_FILEXFER_ATTR_ACMODTIME:I = 0x8

.field private static final SSH_FILEXFER_ATTR_EXTENDED:I = -0x80000000

.field private static final SSH_FILEXFER_ATTR_PERMISSIONS:I = 0x4

.field private static final SSH_FILEXFER_ATTR_SIZE:I = 0x1

.field private static final SSH_FILEXFER_ATTR_UIDGID:I = 0x2

.field private static final SSH_FXF_APPEND:I = 0x4

.field private static final SSH_FXF_CREAT:I = 0x8

.field private static final SSH_FXF_EXCL:I = 0x20

.field private static final SSH_FXF_READ:I = 0x1

.field private static final SSH_FXF_TRUNC:I = 0x10

.field private static final SSH_FXF_WRITE:I = 0x2

.field private static final SSH_FXP_ATTRS:B = 0x69t

.field private static final SSH_FXP_CLOSE:B = 0x4t

.field private static final SSH_FXP_DATA:B = 0x67t

.field private static final SSH_FXP_EXTENDED:B = -0x38t

.field private static final SSH_FXP_EXTENDED_REPLY:B = -0x37t

.field private static final SSH_FXP_FSETSTAT:B = 0xat

.field private static final SSH_FXP_FSTAT:B = 0x8t

.field private static final SSH_FXP_HANDLE:B = 0x66t

.field private static final SSH_FXP_INIT:B = 0x1t

.field private static final SSH_FXP_LSTAT:B = 0x7t

.field private static final SSH_FXP_MKDIR:B = 0xet

.field private static final SSH_FXP_NAME:B = 0x68t

.field private static final SSH_FXP_OPEN:B = 0x3t

.field private static final SSH_FXP_OPENDIR:B = 0xbt

.field private static final SSH_FXP_READ:B = 0x5t

.field private static final SSH_FXP_READDIR:B = 0xct

.field private static final SSH_FXP_READLINK:B = 0x13t

.field private static final SSH_FXP_REALPATH:B = 0x10t

.field private static final SSH_FXP_REMOVE:B = 0xdt

.field private static final SSH_FXP_RENAME:B = 0x12t

.field private static final SSH_FXP_RMDIR:B = 0xft

.field private static final SSH_FXP_SETSTAT:B = 0x9t

.field private static final SSH_FXP_STAT:B = 0x11t

.field private static final SSH_FXP_STATUS:B = 0x65t

.field private static final SSH_FXP_SYMLINK:B = 0x14t

.field private static final SSH_FXP_VERSION:B = 0x2t

.field private static final SSH_FXP_WRITE:B = 0x6t

.field public static final SSH_FX_BAD_MESSAGE:I = 0x5

.field public static final SSH_FX_CONNECTION_LOST:I = 0x7

.field public static final SSH_FX_EOF:I = 0x1

.field public static final SSH_FX_FAILURE:I = 0x4

.field public static final SSH_FX_NO_CONNECTION:I = 0x6

.field public static final SSH_FX_NO_SUCH_FILE:I = 0x2

.field public static final SSH_FX_OK:I = 0x0

.field public static final SSH_FX_OP_UNSUPPORTED:I = 0x8

.field public static final SSH_FX_PERMISSION_DENIED:I = 0x3

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final file_separator:Ljava/lang/String;

.field private static final file_separatorc:C

.field private static fs_is_bs:Z


# instance fields
.field private ackid:[I

.field private buf:Lcom/jcraft/jsch/Buffer;

.field private client_version:I

.field private cwd:Ljava/lang/String;

.field private extension_hardlink:Z

.field private extension_posix_rename:Z

.field private extension_statvfs:Z

.field private extensions:Ljava/util/Hashtable;

.field private fEncoding:Ljava/lang/String;

.field private fEncoding_is_utf8:Z

.field private home:Ljava/lang/String;

.field private interactive:Z

.field private io_in:Ljava/io/InputStream;

.field private lcwd:Ljava/lang/String;

.field private obuf:Lcom/jcraft/jsch/Buffer;

.field private opacket:Lcom/jcraft/jsch/Packet;

.field private packet:Lcom/jcraft/jsch/Packet;

.field private rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

.field private seq:I

.field private server_version:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    .line 2
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    int-to-byte v0, v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->interactive:Z

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    new-array v2, v1, [I

    .line 4
    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    const/4 v2, 0x3

    .line 5
    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->client_version:I

    .line 6
    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->version:Ljava/lang/String;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    .line 9
    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    .line 10
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    .line 11
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    .line 12
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    const-string v0, "UTF-8"

    .line 13
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    .line 15
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/high16 v0, 0x200000

    .line 16
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSizeMax(I)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    const v0, 0x8000

    .line 18
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalPacketSize(I)V

    return-void
.end method

.method private _get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    const-string v9, ""

    .line 1
    iget-object v0, v7, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v10, 0x4

    .line 2
    :try_start_0
    invoke-direct {v7, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENR([B)V

    .line 3
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, v7}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 4
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    .line 5
    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 6
    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 7
    iget-object v3, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v11, 0x65

    if-eq v2, v11, :cond_1

    const/16 v1, 0x66

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v10, v9}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-ne v2, v11, :cond_2

    .line 9
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 10
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 11
    :cond_2
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v12

    const-wide/16 v1, 0x0

    const/4 v13, 0x1

    move/from16 v3, p4

    if-ne v3, v13, :cond_3

    add-long v1, p5, v1

    .line 12
    :cond_3
    iget-object v3, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    .line 13
    iget-object v3, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0xd

    .line 14
    iget v4, v7, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    if-nez v4, :cond_4

    const/16 v3, 0x400

    move-wide v14, v1

    const/4 v5, 0x1

    const/16 v6, 0x400

    goto :goto_1

    :cond_4
    move-wide v14, v1

    move v6, v3

    const/4 v5, 0x1

    .line 15
    :goto_1
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count()I

    move-result v1

    if-ge v1, v5, :cond_5

    .line 16
    iget-object v3, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v16, v3

    move-wide v3, v14

    move/from16 v17, v5

    move v5, v6

    move v10, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    int-to-long v1, v10

    add-long/2addr v14, v1

    move v6, v10

    move/from16 v5, v17

    const/4 v10, 0x4

    goto :goto_1

    :cond_5
    move/from16 v17, v5

    move v10, v6

    .line 17
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v6

    .line 18
    iget v0, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 19
    iget v1, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    iget v3, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->get(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    move-result-object v5
    :try_end_1
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v1, v11, :cond_7

    .line 21
    :try_start_2
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 22
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    if-ne v2, v13, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    iget-object v3, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_7
    const/16 v2, 0x67

    if-eq v1, v2, :cond_8

    :goto_2
    move-object/from16 v13, p2

    goto :goto_5

    .line 24
    :cond_8
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 25
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v7, v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    add-int/lit8 v0, v0, -0x4

    .line 26
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    sub-int/2addr v0, v1

    move v3, v1

    :goto_3
    if-lez v3, :cond_e

    .line 27
    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v11, v4

    if-le v3, v11, :cond_9

    .line 28
    array-length v11, v4

    goto :goto_4

    :cond_9
    move v11, v3

    .line 29
    :goto_4
    iget-object v13, v7, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v13, v4, v2, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_a

    goto :goto_2

    .line 30
    :cond_a
    iget-object v11, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v11, v11, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v13, p2

    invoke-virtual {v13, v11, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    move/from16 p4, v10

    int-to-long v10, v4

    sub-int/2addr v3, v4

    if-eqz v8, :cond_d

    .line 31
    invoke-interface {v8, v10, v11}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v4

    if-nez v4, :cond_d

    int-to-long v1, v3

    .line 32
    invoke-direct {v7, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    if-lez v0, :cond_b

    int-to-long v0, v0

    .line 33
    invoke-direct {v7, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    .line 34
    :cond_b
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v8, :cond_c

    .line 35
    invoke-interface/range {p3 .. p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 36
    :cond_c
    iget-object v0, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v6, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    .line 37
    invoke-direct {v7, v12, v6}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    return-void

    :cond_d
    move/from16 v10, p4

    const/16 v11, 0x65

    const/4 v13, 0x1

    goto :goto_3

    :cond_e
    move-object/from16 v13, p2

    move/from16 p4, v10

    if-lez v0, :cond_f

    int-to-long v2, v0

    .line 38
    invoke-direct {v7, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    :cond_f
    int-to-long v0, v1

    .line 39
    iget-wide v2, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    .line 40
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    iget-object v3, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v6, v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    .line 41
    iget-wide v2, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    add-long v10, v2, v0

    iget-wide v2, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    iget-object v14, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v10

    move-object v10, v5

    move v5, v0

    move-object v11, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    .line 42
    iget-wide v0, v10, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    iget-wide v2, v10, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    add-long/2addr v0, v2

    move-wide v14, v0

    goto :goto_6

    :cond_10
    move-object v11, v6

    .line 43
    :goto_6
    iget-object v0, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v0

    move/from16 v1, v17

    if-ge v1, v0, :cond_11

    add-int/lit8 v5, v1, 0x1

    goto :goto_7

    :cond_11
    move v5, v1

    :goto_7
    move/from16 v6, p4

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v13, p2

    move-object v11, v6

    move/from16 p4, v10

    move/from16 v1, v17

    .line 44
    iget-wide v14, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->offset:J

    .line 45
    iget v0, v11, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    int-to-long v2, v0

    invoke-direct {v7, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    .line 46
    iget-object v0, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v11, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v6, p4

    move v5, v1

    :goto_8
    move-object v0, v11

    const/4 v10, 0x4

    const/16 v11, 0x65

    const/4 v13, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 47
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_12

    .line 48
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v9, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 49
    :cond_12
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method private _lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x4

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendLSTAT([B)V

    .line 2
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 4
    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 5
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 6
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x69

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 8
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 9
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_2

    .line 12
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 13
    :cond_2
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method private _realpath(Ljava/lang/String;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendREALPATH([B)V

    .line 2
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 4
    iget v0, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 5
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 6
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v1, 0x68

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 12
    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v2, 0x3

    if-gt p1, v2, :cond_3

    .line 13
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move p1, v1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private _sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendCLOSE([B)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p1

    return p1
.end method

.method private _setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x4

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sendSETSTAT([BLcom/jcraft/jsch/SftpATTRS;)V

    .line 2
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 3
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 4
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 5
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 6
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_2

    .line 11
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_2
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method private _stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    return-object p1
.end method

.method private _stat([B)Lcom/jcraft/jsch/SftpATTRS;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x4

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTAT([B)V

    .line 2
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 4
    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 5
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 6
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x69

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 8
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 9
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_2

    .line 12
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 13
    :cond_2
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method private _statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_statVFS([B)Lcom/jcraft/jsch/SftpStatVFS;

    move-result-object p1

    return-object p1
.end method

.method private _statVFS([B)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 4

    const-string v0, ""

    .line 1
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTATVFS([B)V

    .line 3
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 4
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 5
    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 6
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 7
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0xc9

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    .line 8
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 9
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 10
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpStatVFS;->getStatVFS(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpStatVFS;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_2

    .line 13
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 14
    :cond_2
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 15
    :cond_3
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/16 v0, 0x8

    const-string v1, "statvfs@openssh.com is not supported"

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    return p0
.end method

.method static synthetic access$100(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->sendWRITE([BJ[BII)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/jcraft/jsch/ChannelSftp;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    return p0
.end method

.method static synthetic access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-object p0
.end method

.method private checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p2

    .line 2
    iget v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 3
    iget v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 4
    iget p2, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    aput p2, p1, v2

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 p1, 0x65

    if-ne v1, p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 p2, 0x4

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private fill([BII)I
    .locals 2

    move v0, p2

    :goto_0
    if-lez p3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "inputstream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method private fill(Lcom/jcraft/jsch/Buffer;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 2
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    .line 3
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    return-void
.end method

.method private getCwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getHome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    return-object v0
.end method

.method private glob_local(Ljava/lang/String;)Ljava/util/Vector;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "UTF-8"

    .line 2
    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 3
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 4
    aget-byte v5, v2, v3

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_0

    aget-byte v5, v2, v3

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_0

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean v5, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-nez v5, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    .line 6
    aget-byte v5, v2, v5

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    if-gez v3, :cond_3

    .line 7
    sget-boolean v1, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    :goto_3
    if-ltz v3, :cond_5

    .line 8
    aget-byte v5, v2, v3

    sget-char v6, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    if-eq v5, v6, :cond_5

    sget-boolean v5, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v5, :cond_4

    aget-byte v5, v2, v3

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-gez v3, :cond_7

    .line 9
    sget-boolean v1, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0

    :cond_7
    const/4 p1, 0x0

    if-nez v3, :cond_8

    new-array v5, v4, [B

    .line 10
    sget-char v6, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    int-to-byte v6, v6

    aput-byte v6, v5, p1

    goto :goto_6

    .line 11
    :cond_8
    new-array v5, v3, [B

    .line 12
    invoke-static {v2, p1, v5, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :goto_6
    array-length v6, v2

    sub-int/2addr v6, v3

    sub-int/2addr v6, v4

    new-array v7, v6, [B

    add-int/2addr v3, v4

    .line 14
    invoke-static {v2, v3, v7, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {v5, v1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    :goto_7
    array-length v4, v2

    if-ge p1, v4, :cond_a

    .line 18
    aget-object v4, v2, p1

    invoke-static {v4, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v7, v4}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 19
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v2, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :catch_0
    :cond_a
    return-object v0
.end method

.method private glob_remote(Ljava/lang/String;)Ljava/util/Vector;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/16 v3, 0x2f

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    const/4 v6, 0x0

    .line 4
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [[B

    .line 7
    invoke-direct {v0, v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result v5

    const-string v7, "/"

    if-nez v5, :cond_3

    .line 8
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v2

    .line 11
    :cond_3
    aget-object v1, v4, v6

    .line 12
    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENDIR([B)V

    .line 13
    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4, v0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 14
    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v5, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    .line 15
    iget v5, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 16
    iget v8, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 17
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v9, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const-string v5, ""

    const/4 v9, 0x4

    const/16 v10, 0x65

    if-eq v8, v10, :cond_5

    const/16 v11, 0x66

    if-ne v8, v11, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v1, v9, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    if-ne v8, v10, :cond_6

    .line 19
    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    .line 20
    iget-object v11, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v11, v8}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 21
    :cond_6
    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    const/4 v11, 0x0

    move-object v12, v11

    .line 22
    :goto_2
    invoke-direct {v0, v8}, Lcom/jcraft/jsch/ChannelSftp;->sendREADDIR([B)V

    .line 23
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v13, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    .line 24
    iget v13, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 25
    iget v14, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    if-eq v14, v10, :cond_8

    const/16 v15, 0x68

    if-ne v14, v15, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v1, v9, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_8
    :goto_3
    if-ne v14, v10, :cond_a

    .line 27
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1, v13}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 28
    invoke-direct {v0, v8, v4}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v2

    :cond_9
    return-object v11

    .line 29
    :cond_a
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 30
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v14, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-direct {v0, v14, v6, v9}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    add-int/lit8 v13, v13, -0x4

    .line 31
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v14

    .line 32
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->reset()V

    :goto_4
    if-lez v14, :cond_14

    if-lez v13, :cond_d

    .line 33
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->shift()V

    .line 34
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v6, v15, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v9, v6

    iget v15, v15, Lcom/jcraft/jsch/Buffer;->index:I

    add-int v10, v15, v13

    if-le v9, v10, :cond_b

    move v9, v13

    goto :goto_5

    :cond_b
    array-length v9, v6

    sub-int/2addr v9, v15

    .line 35
    :goto_5
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v10, v6, v15, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gtz v6, :cond_c

    goto/16 :goto_8

    .line 36
    :cond_c
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v10, v9, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v10, v6

    iput v10, v9, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v13, v6

    .line 37
    :cond_d
    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    .line 38
    iget v9, v0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v10, 0x3

    if-gt v9, v10, :cond_e

    .line 39
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 40
    :cond_e
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v9}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 41
    iget-boolean v9, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    if-nez v9, :cond_f

    .line 42
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    .line 43
    invoke-static {v9, v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_6

    :cond_f
    move-object v10, v6

    move-object v9, v11

    .line 44
    :goto_6
    invoke-static {v1, v10}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v10

    if-eqz v10, :cond_13

    if-nez v9, :cond_10

    .line 45
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_10
    if-nez v12, :cond_12

    .line 46
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 47
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_11
    move-object v12, v3

    .line 48
    :cond_12
    :goto_7
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_13
    add-int/lit8 v14, v14, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/16 v10, 0x65

    goto/16 :goto_4

    :cond_14
    :goto_8
    const/4 v6, 0x0

    const/4 v9, 0x4

    const/16 v10, 0x65

    goto/16 :goto_2
.end method

.method private header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 2
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    .line 3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 4
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 5
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    iput p1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    return-object p2
.end method

.method private static isLocalAbsolutePath(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result p0

    return p0
.end method

.method private isPattern(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result p1

    return p1
.end method

.method private isPattern(Ljava/lang/String;[[B)Z
    .locals 1

    const-string v0, "UTF-8"

    .line 4
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 5
    aput-object p1, p2, v0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isPattern([B)Z

    move-result p1

    return p1
.end method

.method private isPattern([B)Z
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    aget-byte v3, p1, v2

    const/16 v4, 0x2a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    aget-byte v3, p1, v2

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-byte v3, p1, v2

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v5

    :cond_3
    return v1
.end method

.method private isRemoteDir(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTAT([B)V

    .line 2
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 3
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 4
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 5
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 6
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x69

    if-eq p1, v1, :cond_0

    return v0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private isUnique(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " is not unique: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelSftp;->isLocalAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    sget-object v1, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private putHEAD(BI)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(Lcom/jcraft/jsch/Buffer;BI)V

    return-void
.end method

.method private putHEAD(Lcom/jcraft/jsch/Buffer;BI)V
    .locals 1

    const/16 v0, 0x5e

    .line 1
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2
    iget v0, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    add-int/lit8 v0, p3, 0x4

    .line 3
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    return-void
.end method

.method private read([BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 p2, 0x4

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sendCLOSE([B)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendFSTAT([B)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendHARDLINK([B[B)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "hardlink@openssh.com"

    .line 1
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    return-void
.end method

.method private sendINIT()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 4
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendLSTAT([B)V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendMKDIR([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x9

    const/4 v1, 0x4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    add-int/2addr v0, v2

    const/16 v2, 0xe

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    if-eqz p2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->dump(Lcom/jcraft/jsch/Buffer;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x9

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x4

    :goto_2
    add-int/2addr p1, p2

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendOPEN([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x11

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 6
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 7
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x11

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, v0, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendOPENA([B)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    return-void
.end method

.method private sendOPENDIR([B)V
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendOPENR([B)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    return-void
.end method

.method private sendOPENW([B)V
    .locals 1

    const/16 v0, 0x1a

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    return-void
.end method

.method private sendPacketPath(B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[BLjava/lang/String;)V

    return-void
.end method

.method private sendPacketPath(B[BLjava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 3
    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    if-nez p3, :cond_0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 5
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    const/16 p1, -0x38

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 8
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 9
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 11
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, p2, p0, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendPacketPath(B[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    return-void
.end method

.method private sendPacketPath(B[B[BLjava/lang/String;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 14
    array-length v0, p2

    add-int/lit8 v0, v0, 0xd

    array-length v1, p3

    add-int/2addr v0, v1

    if-nez p4, :cond_0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 16
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget p4, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v1, p4, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    const/16 p1, -0x38

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 19
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 20
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 22
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 23
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, p2, p0, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendREAD([BJI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    return-void
.end method

.method private sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x15

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 6
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    .line 7
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 8
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x15

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    if-eqz p5, :cond_0

    .line 9
    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->add(IJI)V

    :cond_0
    return-void
.end method

.method private sendREADDIR([B)V
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendREADLINK([B)V
    .locals 1

    const/16 v0, 0x13

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendREALPATH([B)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendREMOVE([B)V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendRENAME([B[B)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    if-eqz v0, :cond_0

    const-string v0, "posix-rename@openssh.com"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    return-void
.end method

.method private sendRMDIR([B)V
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendSETSTAT([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2
    array-length v0, p1

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->dump(Lcom/jcraft/jsch/Buffer;)V

    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/2addr p1, v1

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, v2, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendSTAT([B)V
    .locals 1

    const/16 v0, 0x11

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendSTATVFS([B)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "statvfs@openssh.com"

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[BLjava/lang/String;)V

    return-void
.end method

.method private sendSYMLINK([B[B)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[B)V

    return-void
.end method

.method private sendWRITE([BJ[BII)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v1

    iget v3, v0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v4, v3, 0xd

    add-int/lit8 v4, v4, 0x15

    array-length v5, p1

    add-int/2addr v4, v5

    add-int/2addr v4, p6

    add-int/lit16 v4, v4, 0x80

    if-ge v2, v4, :cond_0

    .line 3
    array-length p6, v1

    add-int/lit8 v3, v3, 0xd

    add-int/lit8 v3, v3, 0x15

    array-length v1, p1

    add-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x80

    sub-int/2addr p6, v3

    :cond_0
    const/4 v1, 0x6

    .line 4
    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p6

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(Lcom/jcraft/jsch/Buffer;BI)V

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 6
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 7
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    .line 8
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    if-eq p3, p4, :cond_1

    .line 9
    invoke-virtual {p2, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 11
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p2

    iget-object p3, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x15

    add-int/2addr p1, p6

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p3, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return p6
.end method

.method private setCwd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    return-void
.end method

.method private skip(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v0, "Failure"

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public _put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move/from16 v2, p4

    const/4 v10, 0x4

    .line 1
    :try_start_0
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v11, 0x1

    if-eq v2, v11, :cond_0

    if-ne v2, v4, :cond_1

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v7

    .line 4
    invoke-virtual {v7}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-wide v12, v5

    :goto_0
    if-ne v2, v11, :cond_3

    cmp-long v7, v12, v5

    if-lez v7, :cond_3

    .line 5
    :try_start_2
    invoke-virtual {v0, v12, v13}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v14

    cmp-long v7, v14, v12

    if-ltz v7, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "failed to resume for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 7
    invoke-direct {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENW([B)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-direct {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENA([B)V

    .line 9
    :goto_2
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, v8}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 10
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v8, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v14

    .line 11
    iget v1, v14, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 12
    iget v3, v14, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 13
    iget-object v7, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v8, v7, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v3, v1, :cond_6

    const/16 v7, 0x66

    if-ne v3, v7, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v3, v1, :cond_7

    .line 15
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 16
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v8, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 17
    :cond_7
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v15

    if-eq v2, v11, :cond_8

    if-ne v2, v4, :cond_9

    :cond_8
    add-long/2addr v5, v12

    .line 18
    :cond_9
    iget v12, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    .line 19
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 20
    array-length v2, v15

    add-int/lit8 v13, v2, 0x27

    .line 21
    array-length v2, v1

    sub-int/2addr v2, v13

    add-int/lit8 v2, v2, -0x80

    .line 22
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v7

    const/16 v16, 0x0

    move-wide/from16 v17, v5

    const/4 v3, 0x0

    :goto_4
    move v5, v2

    move v4, v13

    const/4 v6, 0x0

    .line 23
    :cond_a
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    if-lez v19, :cond_b

    add-int v4, v4, v19

    sub-int v5, v5, v19

    add-int v6, v6, v19

    :cond_b
    if-lez v5, :cond_c

    if-gtz v19, :cond_a

    :cond_c
    if-gtz v6, :cond_d

    goto/16 :goto_8

    :cond_d
    move-object v5, v1

    move/from16 v19, v2

    move/from16 v20, v6

    :goto_5
    if-lez v20, :cond_14

    .line 24
    iget v1, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, -0x1

    if-eq v2, v12, :cond_e

    sub-int/2addr v1, v12

    sub-int/2addr v1, v3

    if-lt v1, v7, :cond_12

    .line 25
    :cond_e
    :goto_6
    iget v1, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v3

    if-lt v1, v7, :cond_12

    .line 26
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    invoke-direct {v8, v1, v14}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 27
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    aget v1, v1, v16

    if-gt v12, v1, :cond_f

    .line 28
    iget v2, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int/2addr v2, v11

    if-le v1, v2, :cond_10

    .line 29
    :cond_f
    iget v2, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, " _ackid="

    const-string v11, " seq="

    const-string v10, "ack error: startid="

    if-ne v1, v2, :cond_11

    .line 30
    :try_start_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v10, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    const/4 v10, 0x4

    const/4 v11, 0x1

    goto :goto_6

    .line 31
    :cond_11
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_12
    move v0, v3

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-wide/from16 v3, v17

    move-object v11, v5

    move/from16 p2, v0

    move v0, v6

    move v6, v10

    move v10, v7

    move/from16 v7, v20

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/ChannelSftp;->sendWRITE([BJ[BII)I

    move-result v1

    sub-int v20, v20, v1

    .line 33
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    if-eq v11, v5, :cond_13

    .line 34
    array-length v1, v5

    sub-int/2addr v1, v13

    add-int/lit8 v19, v1, -0x80

    move/from16 v3, p2

    move v6, v0

    move v7, v10

    goto :goto_7

    :cond_13
    move/from16 v3, p2

    move v6, v0

    move v7, v10

    move-object v5, v11

    :goto_7
    const/4 v10, 0x4

    const/4 v11, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_5

    :cond_14
    move-object v11, v5

    move v0, v6

    move v10, v7

    int-to-long v0, v0

    add-long v17, v17, v0

    if-eqz v9, :cond_18

    .line 35
    invoke-interface {v9, v0, v1}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v0

    if-nez v0, :cond_18

    .line 36
    :goto_8
    iget v0, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int/2addr v0, v12

    :goto_9
    if-le v0, v3, :cond_16

    const/4 v1, 0x0

    .line 37
    invoke-direct {v8, v1, v14}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_a

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    if-eqz v9, :cond_17

    .line 38
    invoke-interface/range {p3 .. p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 39
    :cond_17
    invoke-direct {v8, v15, v14}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :cond_18
    move-object/from16 v0, p1

    move v7, v10

    move-object v1, v11

    move/from16 v2, v19

    const/4 v10, 0x4

    const/4 v11, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 40
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_19

    .line 41
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 42
    :cond_19
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public cd(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x4

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object v1

    .line 5
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getFlags()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v3, v0

    const-string v4, "Can\'t change directory: "

    if-eqz v3, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->setCwd(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 10
    :cond_1
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 11
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_2

    .line 12
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :cond_2
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public chgrp(ILjava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    .line 8
    iget v5, v4, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    invoke-virtual {v4, v5, p1}, Lcom/jcraft/jsch/SftpATTRS;->setUIDGID(II)V

    .line 9
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 10
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_1

    .line 11
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_1
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public chmod(ILjava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    .line 8
    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/SftpATTRS;->setPERMISSIONS(I)V

    .line 9
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 10
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_1

    .line 11
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_1
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public chown(ILjava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    .line 8
    iget v5, v4, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    invoke-virtual {v4, p1, v5}, Lcom/jcraft/jsch/SftpATTRS;->setUIDGID(II)V

    .line 9
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 10
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_1

    .line 11
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_1
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public disconnect()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    return-void
.end method

.method public exit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 2

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x4

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 63
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    const-string v5, "??"

    .line 67
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v6

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENR([B)V

    .line 69
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 70
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 71
    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 72
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 73
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    if-eq p1, v2, :cond_2

    const/16 v3, 0x66

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-ne p1, v2, :cond_3

    .line 75
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 76
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    .line 78
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    .line 79
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_4

    .line 81
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 82
    :cond_4
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 7

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    .locals 7

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 49
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    const/4 v1, 0x1

    const-string v3, "??"

    .line 52
    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v4

    move-object v0, p3

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 53
    invoke-interface {p3, p5, p6}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->_get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 55
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_1

    .line 56
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    const/4 p3, 0x4

    const-string p4, ""

    invoke-direct {p2, p3, p4, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 57
    :cond_1
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    move/from16 v9, p4

    .line 3
    :try_start_0
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 4
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    .line 5
    invoke-direct {v8, v2}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-direct {v8, v1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v13

    .line 7
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v14

    if-eqz v14, :cond_f

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v15

    const/4 v7, 0x1

    if-eqz v15, :cond_1

    .line 10
    sget-object v1, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v5, v1

    move-object v6, v2

    goto :goto_0

    :cond_1
    if-gt v14, v7, :cond_e

    move-object v6, v2

    const/4 v5, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v4, v14, :cond_d

    .line 13
    :try_start_1
    invoke-virtual {v13, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 14
    invoke-direct {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v17, :cond_c

    if-eqz v15, :cond_5

    const/16 v1, 0x2f

    .line 16
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v11, -0x1

    if-ne v1, v11, :cond_2

    .line 17
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v12, ".."

    .line 20
    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v11, :cond_4

    .line 21
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 22
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    if-le v10, v7, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    add-int/2addr v7, v10

    const/4 v10, 0x0

    invoke-virtual {v12, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v11, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 24
    :cond_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "writing to an unexpected file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    const/4 v10, 0x0

    .line 25
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v7, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v11, v1

    goto :goto_4

    :catch_0
    move-exception v0

    move/from16 v10, v16

    goto/16 :goto_9

    :cond_5
    const/4 v10, 0x0

    move-object v11, v6

    .line 26
    :goto_4
    :try_start_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v9, v1, :cond_7

    .line 27
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v18

    .line 28
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v1, v20, v18

    if-gtz v1, :cond_6

    cmp-long v1, v20, v18

    if-nez v1, :cond_7

    return-void

    .line 29
    :cond_6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "failed to resume for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v0, :cond_8

    const/4 v12, 0x1

    .line 30
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v18

    move-object/from16 v1, p3

    move v2, v12

    move-object v12, v3

    move/from16 v20, v4

    move-object v4, v11

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    move-wide/from16 v5, v18

    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    const/4 v1, 0x1

    if-ne v9, v1, :cond_9

    .line 31
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    goto :goto_5

    :cond_8
    move-object v12, v3

    move/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    .line 32
    :cond_9
    :goto_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v9, :cond_a

    .line 33
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v1

    const/4 v6, 0x1

    goto :goto_6

    .line 34
    :cond_a
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v1, v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v18, v1

    .line 35
    :goto_6
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v23

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v18

    move-object/from16 v4, p3

    move/from16 v5, p4

    const/4 v12, 0x1

    move-wide/from16 v6, v23

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/ChannelSftp;->_get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 36
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    add-int/lit8 v4, v20, 0x1

    move-object v1, v11

    move-object/from16 v6, v21

    move-object/from16 v5, v22

    const/4 v7, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v17, v18

    goto :goto_7

    :catchall_1
    move-exception v0

    const/16 v17, 0x0

    :goto_7
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_c
    move-object v12, v3

    .line 37
    :try_start_8
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "not supported to get directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    move-object v11, v1

    :goto_8
    move/from16 v10, v16

    goto :goto_a

    :cond_d
    return-void

    :cond_e
    const/4 v10, 0x0

    .line 38
    :try_start_9
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "Copying multiple files, but destination is missing or a file."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_f
    const/4 v10, 0x0

    .line 39
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x2

    const-string v2, "No such file"

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    const/4 v10, 0x0

    :goto_9
    const/4 v11, 0x0

    :goto_a
    if-nez v10, :cond_10

    if-eqz v11, :cond_10

    .line 40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_10

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 43
    :cond_10
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_11

    .line 44
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 45
    :cond_11
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public getBulkRequests()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v0

    return v0
.end method

.method public getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHome()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 3
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 7
    :cond_0
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, "The channel is not connected."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public hardlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 1
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v4, 0x2f

    if-eq p1, v4, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_1
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendHARDLINK([B[B)V

    .line 12
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 13
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 14
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 15
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 16
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_3

    .line 17
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 18
    :cond_2
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    return-void

    .line 19
    :cond_3
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 21
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_5

    .line 22
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 23
    :cond_5
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 24
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/16 p2, 0x8

    const-string v0, "hardlink@openssh.com is not supported"

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method init()V
    .locals 0

    return-void
.end method

.method public lcd(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x2

    const-string v1, "No such directory"

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public lpwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    return-object v0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$3;

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/ChannelSftp$3;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/util/Vector;)V

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V

    return-object v0
.end method

.method public ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x4

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/16 v4, 0x2f

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const/4 v7, 0x0

    .line 8
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [[B

    .line 11
    invoke-direct {v1, v4, v8}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 12
    aget-object v0, v8, v7

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v11

    .line 15
    invoke-virtual {v11}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v6, v0

    move-object v0, v10

    goto :goto_1

    .line 16
    :cond_2
    iget-boolean v0, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    if-eqz v0, :cond_3

    .line 17
    aget-object v0, v8, v7

    .line 18
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->unquote([B)[B

    move-result-object v0

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 21
    :goto_1
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENDIR([B)V

    .line 22
    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 23
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    .line 24
    iget v6, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 25
    iget v8, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 26
    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v11, v6}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v6, 0x65

    if-eq v8, v6, :cond_5

    const/16 v11, 0x66

    if-ne v8, v11, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-ne v8, v6, :cond_6

    .line 28
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    .line 29
    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v11, v8}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 30
    :cond_6
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_16

    .line 31
    invoke-direct {v1, v8}, Lcom/jcraft/jsch/ChannelSftp;->sendREADDIR([B)V

    .line 32
    iget-object v12, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v12, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    .line 33
    iget v12, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 34
    iget v13, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    if-eq v13, v6, :cond_8

    const/16 v14, 0x68

    if-ne v13, v14, :cond_7

    goto :goto_4

    .line 35
    :cond_7
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-ne v13, v6, :cond_a

    .line 36
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v13, v12}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 37
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v13

    if-ne v13, v5, :cond_9

    goto/16 :goto_d

    .line 38
    :cond_9
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v14, v13}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 39
    :cond_a
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 40
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v13, v13, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-direct {v1, v13, v7, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    add-int/lit8 v12, v12, -0x4

    .line 41
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v13

    .line 42
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->reset()V

    :goto_5
    if-lez v13, :cond_15

    if-lez v12, :cond_c

    .line 43
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->shift()V

    .line 44
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v15, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v6, v15

    iget v14, v14, Lcom/jcraft/jsch/Buffer;->index:I

    add-int v7, v14, v12

    if-le v6, v7, :cond_b

    move v6, v12

    goto :goto_6

    :cond_b
    array-length v6, v15

    sub-int/2addr v6, v14

    .line 45
    :goto_6
    invoke-direct {v1, v15, v14, v6}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result v6

    .line 46
    iget-object v7, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v14, v7, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v14, v6

    iput v14, v7, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v12, v6

    .line 47
    :cond_c
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    .line 48
    iget v7, v1, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v14, 0x3

    if-gt v7, v14, :cond_d

    .line 49
    iget-object v7, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    goto :goto_7

    :cond_d
    move-object v7, v10

    .line 50
    :goto_7
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v14}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v14

    if-ne v11, v5, :cond_e

    add-int/lit8 v13, v13, -0x1

    :goto_8
    const/16 v6, 0x65

    const/4 v7, 0x0

    goto :goto_5

    :cond_e
    if-nez v0, :cond_f

    move-object v5, v10

    const/4 v15, 0x1

    goto :goto_a

    :cond_f
    if-nez v9, :cond_10

    .line 51
    invoke-static {v0, v6}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v15

    move-object v5, v10

    goto :goto_a

    .line 52
    :cond_10
    iget-boolean v15, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    if-nez v15, :cond_11

    .line 53
    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "UTF-8"

    .line 54
    invoke-static {v15, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_9

    :cond_11
    move-object v5, v6

    move-object v15, v10

    .line 55
    :goto_9
    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v5

    move-object/from16 v16, v15

    move v15, v5

    move-object/from16 v5, v16

    :goto_a
    if-eqz v15, :cond_14

    if-nez v5, :cond_12

    .line 56
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_12
    if-nez v7, :cond_13

    .line 57
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    .line 58
    :cond_13
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    :goto_b
    new-instance v7, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-direct {v7, v1, v5, v6, v14}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    move-object/from16 v5, p2

    invoke-interface {v5, v7}, Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;->select(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result v6

    move v11, v6

    goto :goto_c

    :cond_14
    move-object/from16 v5, p2

    :goto_c
    add-int/lit8 v13, v13, -0x1

    const/4 v5, 0x1

    goto :goto_8

    :cond_15
    move-object/from16 v5, p2

    const/4 v5, 0x1

    goto/16 :goto_3

    .line 60
    :cond_16
    :goto_d
    invoke-direct {v1, v8, v4}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 61
    instance-of v4, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v4, :cond_17

    .line 62
    new-instance v4, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v4, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 63
    :cond_17
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method public lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    const/4 v1, 0x4

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/jcraft/jsch/ChannelSftp;->sendMKDIR([BLcom/jcraft/jsch/SftpATTRS;)V

    .line 4
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 5
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 6
    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 7
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 8
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 12
    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_2

    .line 13
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 14
    :cond_2
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public put(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v8, p3

    const-string v9, ""

    const/4 v10, 0x4

    .line 63
    :try_start_0
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 64
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-direct {v1, v5}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 67
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v8, v13, :cond_0

    if-ne v8, v12, :cond_1

    .line 68
    :cond_0
    :try_start_1
    invoke-direct {v1, v11}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    move-wide v14, v2

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :try_start_2
    const-string v4, "-"

    const-wide/16 v6, -0x1

    move-object/from16 v2, p2

    .line 70
    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_2
    if-nez v8, :cond_3

    .line 71
    invoke-direct {v1, v11}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENW([B)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-direct {v1, v11}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENA([B)V

    .line 73
    :goto_0
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 74
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    .line 75
    iget v3, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 76
    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 77
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v3, 0x65

    if-eq v2, v3, :cond_5

    const/16 v4, 0x66

    if-ne v2, v4, :cond_4

    goto :goto_1

    .line 78
    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v10, v9}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    if-ne v2, v3, :cond_6

    .line 79
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    .line 80
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 81
    :cond_6
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    if-eq v8, v13, :cond_8

    if-ne v8, v12, :cond_7

    goto :goto_2

    :cond_7
    move-wide/from16 v3, p4

    goto :goto_3

    :cond_8
    :goto_2
    add-long v3, p4, v14

    :goto_3
    new-array v5, v13, [J

    const/4 v6, 0x0

    aput-wide v3, v5, v6

    .line 82
    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$1;

    invoke-direct {v3, v1, v2, v5, v0}, Lcom/jcraft/jsch/ChannelSftp$1;-><init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V

    return-object v3

    .line 83
    :cond_9
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 84
    instance-of v2, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_a

    .line 85
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v10, v9, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 86
    :cond_a
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 8

    const/4 v0, 0x4

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 45
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_1

    .line 48
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 50
    :cond_0
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    .line 51
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_3

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "-"

    const-wide/16 v6, -0x1

    move-object v2, p3

    move-object v5, v1

    .line 53
    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 54
    :cond_3
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/jcraft/jsch/ChannelSftp;->_put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object p2, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 55
    :goto_0
    instance-of p3, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p3, :cond_5

    .line 56
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    iget p3, p1, Lcom/jcraft/jsch/SftpException;->id:I

    if-ne p3, v0, :cond_4

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 57
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " is a directory"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 58
    :cond_4
    throw p1

    .line 59
    :cond_5
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move/from16 v8, p4

    const-string v2, "/"

    const/4 v9, 0x4

    .line 4
    :try_start_0
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    .line 6
    invoke-direct {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-direct {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_2

    if-nez v6, :cond_1

    .line 9
    invoke-direct {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v9, v4}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    :cond_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v5}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v9, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-direct {v1, v5}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result v11

    .line 15
    invoke-direct {v1, v3}, Lcom/jcraft/jsch/ChannelSftp;->glob_local(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v12

    .line 16
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v13

    if-eqz v11, :cond_4

    .line 17
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 18
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 19
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v15, v2

    move-object/from16 v16, v5

    goto :goto_0

    :cond_4
    if-gt v13, v10, :cond_e

    move-object/from16 v16, v5

    const/4 v15, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v13, :cond_d

    .line 20
    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 21
    sget-char v2, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 22
    sget-boolean v3, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_5

    const/16 v3, 0x2f

    .line 23
    invoke-virtual {v7, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_5

    if-le v3, v2, :cond_5

    move v2, v3

    :cond_5
    if-ne v2, v4, :cond_6

    .line 24
    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 25
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    :goto_2
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v2

    goto :goto_3

    :cond_7
    move-object/from16 v5, v16

    :goto_3
    const-wide/16 v2, 0x0

    if-ne v8, v10, :cond_9

    .line 28
    :try_start_1
    invoke-direct {v1, v5}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    :catch_0
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v4, v17, v2

    if-ltz v4, :cond_8

    cmp-long v4, v17, v2

    if-nez v4, :cond_9

    return-void

    .line 31
    :cond_8
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "failed to resume for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v9, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    move-wide v3, v2

    if-eqz v0, :cond_a

    const/16 v17, 0x0

    .line 32
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    move-object/from16 v2, p3

    move-object/from16 p2, v15

    move-wide v14, v3

    move/from16 v3, v17

    move-object v4, v7

    move-object/from16 v17, v5

    move/from16 v20, v6

    move-object v9, v7

    move-wide/from16 v6, v18

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    if-ne v8, v10, :cond_b

    .line 33
    invoke-interface {v0, v14, v15}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_a
    move-object/from16 v17, v5

    move/from16 v20, v6

    move-object v9, v7

    move-object/from16 p2, v15

    .line 34
    :cond_b
    :goto_4
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v3, v17

    .line 35
    :try_start_4
    invoke-virtual {v1, v2, v3, v0, v8}, Lcom/jcraft/jsch/ChannelSftp;->_put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    add-int/lit8 v6, v20, 0x1

    move-object/from16 v15, p2

    const/4 v9, 0x4

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v14, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    :cond_c
    throw v0

    :cond_d
    return-void

    .line 37
    :cond_e
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v2, "Copying multiple files, but the destination is missing or a file."

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 38
    instance-of v2, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_f

    .line 39
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 40
    :cond_f
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public pwd()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V

    return-void
.end method

.method public readlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x4

    .line 1
    :try_start_0
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    .line 2
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendREADLINK([B)V

    .line 6
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 7
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 8
    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 9
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 10
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    const/16 v4, 0x68

    if-eq p1, v2, :cond_1

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-ne p1, v4, :cond_4

    .line 12
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_3

    .line 13
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 14
    iget v5, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    if-gt v5, v3, :cond_2

    .line 15
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 16
    :cond_2
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v5}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 19
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    return-object v2

    .line 20
    :cond_5
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/16 v2, 0x8

    const-string v3, "The remote sshd is too old to support symlink operation."

    invoke-direct {p1, v2, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 21
    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_6

    .line 22
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 23
    :cond_6
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public realpath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 1
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    const/4 v1, 0x4

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v2, :cond_4

    const/4 v2, 0x1

    if-ne v4, v2, :cond_0

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sendRENAME([B[B)V

    .line 12
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 13
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 14
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 15
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 16
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_2

    .line 17
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    return-void

    .line 19
    :cond_2
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v3}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 22
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_5

    .line 23
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 24
    :cond_5
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 25
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/16 p2, 0x8

    const-string v0, "The remote sshd is too old to support rename operation."

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public rm(Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x4

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 5
    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v3, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 6
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/ChannelSftp;->sendREMOVE([B)V

    .line 8
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v3

    .line 9
    iget v5, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 10
    iget v6, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 11
    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v7, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v5, 0x65

    if-ne v6, v5, :cond_1

    .line 12
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v5}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 15
    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_3

    .line 16
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 17
    :cond_3
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x4

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 5
    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v3, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 6
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/ChannelSftp;->sendRMDIR([B)V

    .line 8
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v3

    .line 9
    iget v5, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 10
    iget v6, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 11
    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v7, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v5, 0x65

    if-ne v6, v5, :cond_1

    .line 12
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v5}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 15
    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_3

    .line 16
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 17
    :cond_3
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setBulkRequests(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 1
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-direct {v0, p0, p1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "setBulkRequests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " must be greater than 0."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilenameEncoding(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getServerVersion()I

    move-result v0

    const-string v1, "UTF-8"

    const/4 v2, 0x3

    if-gt v2, v0, :cond_1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, "The encoding can not be changed for this sftp server."

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, v1

    .line 5
    :cond_2
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    return-void
.end method

.method public setMtime(Ljava/lang/String;I)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    .line 8
    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->getATime()I

    move-result v5

    invoke-virtual {v4, v5, p2}, Lcom/jcraft/jsch/SftpATTRS;->setACMODTIME(II)V

    .line 9
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 10
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_1

    .line 11
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_1
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v2, p2}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 7
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_1

    .line 8
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_1
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public start()V
    .locals 8

    const-string v0, "hardlink@openssh.com"

    const-string v1, "statvfs@openssh.com"

    const-string v2, "posix-rename@openssh.com"

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/PipedOutputStream;

    invoke-direct {v3}, Ljava/io/PipedOutputStream;-><init>()V

    .line 2
    iget-object v4, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 3
    new-instance v4, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iget v5, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v4, p0, v3, v5}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    .line 4
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 5
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    if-eqz v3, :cond_5

    .line 6
    new-instance v3, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v3}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 8
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    iget v4, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 9
    new-instance v3, Lcom/jcraft/jsch/Packet;

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    .line 10
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    iget v4, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    .line 11
    new-instance v3, Lcom/jcraft/jsch/Packet;

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    .line 12
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->sendINIT()V

    .line 13
    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v3, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 14
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v3

    .line 15
    iget v4, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/high16 v5, 0x40000

    const/4 v6, 0x4

    if-gt v4, v5, :cond_4

    .line 16
    iget v3, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    .line 17
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    if-lez v4, :cond_0

    .line 18
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    :goto_0
    if-lez v4, :cond_0

    .line 19
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 20
    array-length v5, v3

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 21
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v5

    .line 22
    array-length v7, v5

    add-int/2addr v7, v6

    sub-int/2addr v4, v7

    .line 23
    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "1"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    .line 30
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    return-void

    .line 31
    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Received message is too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 32
    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 33
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_6

    .line 34
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 35
    :cond_6
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 1
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_6

    const/4 v1, 0x4

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v4, 0x2f

    if-eq p1, v4, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_1
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSYMLINK([B[B)V

    .line 12
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 13
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 14
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 15
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 16
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_3

    .line 17
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 18
    :cond_2
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    return-void

    .line 19
    :cond_3
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 21
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_5

    .line 22
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 23
    :cond_5
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 24
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/16 p2, 0x8

    const-string v0, "The remote sshd is too old to support symlink operation."

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->version:Ljava/lang/String;

    return-object v0
.end method
