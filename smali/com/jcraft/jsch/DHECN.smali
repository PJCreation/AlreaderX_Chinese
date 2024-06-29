.class public abstract Lcom/jcraft/jsch/DHECN;
.super Lcom/jcraft/jsch/KeyExchange;
.source "DHECN.java"


# static fields
.field private static final SSH_MSG_KEX_ECDH_INIT:I = 0x1e

.field private static final SSH_MSG_KEX_ECDH_REPLY:I = 0x1f


# instance fields
.field I_C:[B

.field I_S:[B

.field Q_C:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field e:[B

.field private ecdh:Lcom/jcraft/jsch/ECDH;

.field protected key_size:I

.field private packet:Lcom/jcraft/jsch/Packet;

.field protected sha_name:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/DHECN;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    .line 2
    iput-object p2, p0, Lcom/jcraft/jsch/DHECN;->V_S:[B

    .line 3
    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->V_C:[B

    .line 4
    iput-object p4, p0, Lcom/jcraft/jsch/DHECN;->I_S:[B

    .line 5
    iput-object p5, p0, Lcom/jcraft/jsch/DHECN;->I_C:[B

    .line 6
    :try_start_0
    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->sha_name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/HASH;

    iput-object p3, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    .line 8
    invoke-interface {p3}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 9
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p4, p3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 10
    :goto_0
    new-instance p3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    .line 11
    new-instance p3, Lcom/jcraft/jsch/Packet;

    iget-object p4, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p3, p4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->packet:Lcom/jcraft/jsch/Packet;

    .line 12
    invoke-virtual {p3}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 13
    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p4, 0x1e

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    :try_start_1
    const-string p3, "ecdh-sha2-nistp"

    .line 14
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 15
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/ECDH;

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->ecdh:Lcom/jcraft/jsch/ECDH;

    .line 16
    iget p4, p0, Lcom/jcraft/jsch/DHECN;->key_size:I

    invoke-interface {p3, p4}, Lcom/jcraft/jsch/ECDH;->init(I)V

    .line 17
    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->ecdh:Lcom/jcraft/jsch/ECDH;

    invoke-interface {p3}, Lcom/jcraft/jsch/ECDH;->getQ()[B

    move-result-object p3

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->Q_C:[B

    .line 18
    iget-object p4, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p4, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p2, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHECN;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 20
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "SSH_MSG_KEX_ECDH_INIT sent"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "expecting SSH_MSG_KEX_ECDH_REPLY"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const/16 p1, 0x1f

    .line 23
    iput p1, p0, Lcom/jcraft/jsch/DHECN;->state:I

    return-void

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/DHECN;->state:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 4
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "type: must be 31 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    .line 7
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/jcraft/jsch/KeyPairECDSA;->fromPoint([B)[[B

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->ecdh:Lcom/jcraft/jsch/ECDH;

    aget-object v4, v1, v2

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-interface {v3, v4, v6}, Lcom/jcraft/jsch/ECDH;->validate([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->ecdh:Lcom/jcraft/jsch/ECDH;

    aget-object v4, v1, v2

    aget-object v1, v1, v5

    invoke-interface {v3, v4, v1}, Lcom/jcraft/jsch/ECDH;->getSecret([B[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    .line 11
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyExchange;->normalize([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    .line 12
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 14
    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->V_C:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->V_S:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 15
    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->I_C:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->I_S:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 16
    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 17
    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->Q_C:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 19
    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v1, v0, [B

    .line 20
    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 21
    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v3, v1, v2, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 22
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    .line 23
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    aget-byte v1, v0, v2

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v5

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    const/4 v4, 0x3

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    const/4 v3, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 24
    invoke-static {v0, v3, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v3, v1

    .line 25
    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/jcraft/jsch/KeyExchange;->verify(Ljava/lang/String;[BI[B)Z

    move-result p1

    .line 26
    iput v2, p0, Lcom/jcraft/jsch/DHECN;->state:I

    return p1
.end method
