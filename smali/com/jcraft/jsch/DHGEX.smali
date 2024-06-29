.class public Lcom/jcraft/jsch/DHGEX;
.super Lcom/jcraft/jsch/KeyExchange;
.source "DHGEX.java"


# static fields
.field private static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field private static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field private static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field private static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22

.field static min:I = 0x400

.field static preferred:I = 0x400


# instance fields
.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field dh:Lcom/jcraft/jsch/DH;

.field private e:[B

.field private g:[B

.field protected hash:Ljava/lang/String;

.field max:I

.field private p:[B

.field private packet:Lcom/jcraft/jsch/Packet;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/16 v0, 0x400

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    const-string v0, "sha-1"

    .line 3
    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected check2048(Ljava/lang/Class;I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/DH;

    .line 2
    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->init()V

    const/16 v0, 0x101

    new-array v0, v0, [B

    const/16 v1, -0x23

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x100

    const/16 v3, 0x73

    aput-byte v3, v0, v1

    .line 3
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setP([B)V

    new-array v0, v2, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 4
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setG([B)V

    .line 5
    :try_start_0
    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->getE()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0x800

    :catch_0
    return p2
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    .line 2
    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->V_S:[B

    .line 3
    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX;->V_C:[B

    .line 4
    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX;->I_S:[B

    .line 5
    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX;->I_C:[B

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/HASH;

    iput-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    .line 8
    invoke-interface {p2}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 10
    :goto_0
    new-instance p2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    .line 11
    new-instance p2, Lcom/jcraft/jsch/Packet;

    iget-object p3, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p2, p3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    :try_start_1
    const-string p2, "dh"

    .line 12
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 13
    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p0, p2, p3}, Lcom/jcraft/jsch/DHGEX;->check2048(Ljava/lang/Class;I)I

    move-result p3

    iput p3, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    sput p3, Lcom/jcraft/jsch/DHGEX;->preferred:I

    .line 14
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/DH;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    .line 15
    invoke-interface {p2}, Lcom/jcraft/jsch/DH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 17
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 18
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget p3, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 19
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget p3, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 20
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 21
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 22
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "SSH_MSG_KEX_DH_GEX_REQUEST("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget p4, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p4, "<"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget p5, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p4, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p4, ") sent"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_0
    const/16 p1, 0x1f

    .line 25
    iput p1, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return-void

    :catch_1
    move-exception p1

    .line 26
    throw p1
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    const/16 v1, 0x1f

    const/16 v2, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    return v4

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 4
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 5
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v4

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    .line 7
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/DH;->setF([B)V

    .line 10
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1}, Lcom/jcraft/jsch/DH;->checkRange()V

    .line 11
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1}, Lcom/jcraft/jsch/DH;->getK()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyExchange;->normalize([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    .line 12
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 13
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->V_C:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->V_S:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 14
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->I_C:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->I_S:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 15
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 16
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget v2, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget v2, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 17
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 19
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v1, v0, [B

    .line 20
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 21
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v2, v1, v4, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 22
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    .line 23
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    aget-byte v1, v0, v4

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v5, 0xff00

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    const/4 v2, 0x4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 24
    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    .line 25
    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/jcraft/jsch/KeyExchange;->verify(Ljava/lang/String;[BI[B)Z

    move-result p1

    .line 26
    iput v4, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return p1

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 28
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 29
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 30
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v4

    .line 31
    :cond_3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    .line 32
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    .line 33
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setP([B)V

    .line 34
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setG([B)V

    .line 35
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->getE()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    .line 36
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 37
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 38
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 39
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 40
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 41
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "SSH_MSG_KEX_DH_GEX_INIT sent"

    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 43
    :cond_4
    iput v2, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return v3
.end method
