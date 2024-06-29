.class public Lcom/jcraft/jsch/DHG14;
.super Lcom/jcraft/jsch/KeyExchange;
.source "DHG14.java"


# static fields
.field private static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field private static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field static final g:[B

.field static final p:[B


# instance fields
.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field dh:Lcom/jcraft/jsch/DH;

.field e:[B

.field private packet:Lcom/jcraft/jsch/Packet;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 1
    sput-object v0, Lcom/jcraft/jsch/DHG14;->g:[B

    const/16 v0, 0x101

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jsch/DHG14;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x37t
        -0x13t
        0x6bt
        0xbt
        -0x1t
        0x5ct
        -0x4at
        -0xct
        0x6t
        -0x49t
        -0x13t
        -0x12t
        0x38t
        0x6bt
        -0x5t
        0x5at
        -0x77t
        -0x61t
        -0x5bt
        -0x52t
        -0x61t
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        -0x1at
        0x49t
        0x28t
        0x66t
        0x51t
        -0x14t
        -0x1ct
        0x5bt
        0x3dt
        -0x3et
        0x0t
        0x7ct
        -0x48t
        -0x5ft
        0x63t
        -0x41t
        0x5t
        -0x68t
        -0x26t
        0x48t
        0x36t
        0x1ct
        0x55t
        -0x2dt
        -0x66t
        0x69t
        0x16t
        0x3ft
        -0x58t
        -0x3t
        0x24t
        -0x31t
        0x5ft
        -0x7dt
        0x65t
        0x5dt
        0x23t
        -0x24t
        -0x5dt
        -0x53t
        -0x6at
        0x1ct
        0x62t
        -0xdt
        0x56t
        0x20t
        -0x7bt
        0x52t
        -0x45t
        -0x62t
        -0x2bt
        0x29t
        0x7t
        0x70t
        -0x6at
        -0x6at
        0x6dt
        0x67t
        0xct
        0x35t
        0x4et
        0x4at
        -0x44t
        -0x68t
        0x4t
        -0xft
        0x74t
        0x6ct
        0x8t
        -0x36t
        0x18t
        0x21t
        0x7ct
        0x32t
        -0x70t
        0x5et
        0x46t
        0x2et
        0x36t
        -0x32t
        0x3bt
        -0x1dt
        -0x62t
        0x77t
        0x2ct
        0x18t
        0xet
        -0x7at
        0x3t
        -0x65t
        0x27t
        -0x7dt
        -0x5et
        -0x14t
        0x7t
        -0x5et
        -0x71t
        -0x4bt
        -0x3bt
        0x5dt
        -0x10t
        0x6ft
        0x4ct
        0x52t
        -0x37t
        -0x22t
        0x2bt
        -0x35t
        -0xat
        -0x6bt
        0x58t
        0x17t
        0x18t
        0x39t
        -0x6bt
        0x49t
        0x7ct
        -0x16t
        -0x6bt
        0x6at
        -0x1bt
        0x15t
        -0x2et
        0x26t
        0x18t
        -0x68t
        -0x6t
        0x5t
        0x10t
        0x15t
        0x72t
        -0x72t
        0x5at
        -0x76t
        -0x54t
        -0x56t
        0x68t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

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
    iget v0, p0, Lcom/jcraft/jsch/DHG14;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    .line 2
    iput-object p2, p0, Lcom/jcraft/jsch/DHG14;->V_S:[B

    .line 3
    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->V_C:[B

    .line 4
    iput-object p4, p0, Lcom/jcraft/jsch/DHG14;->I_S:[B

    .line 5
    iput-object p5, p0, Lcom/jcraft/jsch/DHG14;->I_C:[B

    :try_start_0
    const-string p3, "sha-1"

    .line 6
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

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    .line 11
    new-instance p3, Lcom/jcraft/jsch/Packet;

    iget-object p4, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p3, p4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    :try_start_1
    const-string p3, "dh"

    .line 12
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 13
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/DH;

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    .line 14
    invoke-interface {p3}, Lcom/jcraft/jsch/DH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    sget-object p4, Lcom/jcraft/jsch/DHG14;->p:[B

    invoke-interface {p3, p4}, Lcom/jcraft/jsch/DH;->setP([B)V

    .line 16
    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    sget-object p4, Lcom/jcraft/jsch/DHG14;->g:[B

    invoke-interface {p3, p4}, Lcom/jcraft/jsch/DH;->setG([B)V

    .line 17
    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p3}, Lcom/jcraft/jsch/DH;->getE()[B

    move-result-object p3

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    .line 18
    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p3}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 19
    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p4, 0x1e

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 20
    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object p4, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    if-nez p2, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 22
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "SSH_MSG_KEXDH_INIT sent"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "expecting SSH_MSG_KEXDH_REPLY"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const/16 p1, 0x1f

    .line 25
    iput p1, p0, Lcom/jcraft/jsch/DHG14;->state:I

    return-void

    :catch_1
    move-exception p1

    .line 26
    throw p1
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/DHG14;->state:I

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
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/DH;->setF([B)V

    .line 10
    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1}, Lcom/jcraft/jsch/DH;->checkRange()V

    .line 11
    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1}, Lcom/jcraft/jsch/DH;->getK()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyExchange;->normalize([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    .line 12
    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 13
    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->V_C:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->V_S:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 14
    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->I_C:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->I_S:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 15
    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 16
    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 17
    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v1, v0, [B

    .line 19
    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 20
    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v3, v1, v2, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 21
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    .line 22
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    const/4 v1, 0x1

    aget-byte v3, v0, v2

    shl-int/lit8 v3, v3, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    const/4 v4, 0x4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 23
    invoke-static {v0, v4, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v4, v1

    .line 24
    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {p0, v0, v1, v4, p1}, Lcom/jcraft/jsch/KeyExchange;->verify(Ljava/lang/String;[BI[B)Z

    move-result p1

    .line 25
    iput v2, p0, Lcom/jcraft/jsch/DHG14;->state:I

    return p1
.end method
