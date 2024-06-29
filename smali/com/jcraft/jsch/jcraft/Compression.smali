.class public Lcom/jcraft/jsch/jcraft/Compression;
.super Ljava/lang/Object;
.source "Compression.java"

# interfaces
.implements Lcom/jcraft/jsch/Compression;


# static fields
.field private static final BUF_SIZE:I = 0x1000


# instance fields
.field private final buffer_margin:I

.field private inflated_buf:[B

.field private stream:Lcom/jcraft/jzlib/ZStream;

.field private tmpbuf:[B

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x34

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->buffer_margin:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    .line 4
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    return-void
.end method


# virtual methods
.method public compress([BI[I)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput p2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x0

    aget v2, p3, v1

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 6
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/16 v2, 0x1000

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 7
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "compress: deflate returnd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v2, v0

    .line 10
    array-length v0, p1

    add-int v3, p2, v2

    add-int/lit8 v4, v3, 0x34

    if-ge v0, v4, :cond_2

    mul-int/lit8 v4, v4, 0x2

    .line 11
    new-array v0, v4, [B

    .line 12
    array-length v4, p1

    invoke-static {p1, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v3

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v0, :cond_0

    .line 15
    aput p2, p3, v1

    return-object p1
.end method

.method public init(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {p1, p2}, Lcom/jcraft/jzlib/ZStream;->deflateInit(I)I

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->type:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {p1}, Lcom/jcraft/jzlib/ZStream;->inflateInit()I

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/jcraft/jsch/jcraft/Compression;->type:I

    :cond_1
    :goto_0
    return-void
.end method

.method public uncompress([BI[I)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput p2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x0

    aget v2, p3, v1

    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    iput-object v3, v2, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 5
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 6
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/16 v3, 0x1000

    iput v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 7
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_3

    if-eqz v2, :cond_0

    .line 8
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "uncompress: inflate returnd "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    array-length v2, v2

    add-int/lit16 v4, v0, 0x1000

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v5, v4, v5

    if-ge v2, v5, :cond_2

    .line 10
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 11
    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v5, v4, v5

    if-ge v2, v5, :cond_1

    .line 12
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v2, v4, v2

    .line 13
    :cond_1
    new-array v2, v2, [B

    .line 14
    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v5, v5, 0x1000

    invoke-static {v2, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 18
    aput v0, p3, v1

    goto :goto_0

    .line 19
    :cond_3
    array-length v2, p1

    sub-int/2addr v2, p2

    if-le v0, v2, :cond_4

    add-int v2, v0, p2

    .line 20
    new-array v2, v2, [B

    .line 21
    invoke-static {p1, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object p1, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    invoke-static {p1, v1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_1

    .line 23
    :cond_4
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    :goto_1
    aput v0, p3, v1

    return-object p1
.end method
