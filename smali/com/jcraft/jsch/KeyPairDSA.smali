.class public Lcom/jcraft/jsch/KeyPairDSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "KeyPairDSA.java"


# static fields
.field private static final begin:[B

.field private static final end:[B

.field private static final sshdss:[B


# instance fields
.field private G_array:[B

.field private P_array:[B

.field private Q_array:[B

.field private key_size:I

.field private prv_array:[B

.field private pub_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    .line 1
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->begin:[B

    const-string v0, "-----END DSA PRIVATE KEY-----"

    .line 2
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->end:[B

    const-string v0, "ssh-dss"

    .line 3
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 p1, 0x400

    .line 3
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    .line 4
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 5
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 6
    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 7
    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 8
    iput-object p6, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    if-eqz p2, :cond_0

    .line 9
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    :cond_0
    return-void
.end method

.method static fromSSHAgent(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8

    const/4 v0, 0x7

    const-string v1, "invalid key format"

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    aget-object v3, p1, v0

    const/4 v0, 0x2

    .line 3
    aget-object v4, p1, v0

    const/4 v0, 0x3

    .line 4
    aget-object v5, p1, v0

    const/4 v0, 0x4

    .line 5
    aget-object v6, p1, v0

    const/4 v0, 0x5

    .line 6
    aget-object v7, p1, v0

    .line 7
    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    .line 8
    new-instance p0, Ljava/lang/String;

    const/4 v1, 0x6

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p0, v0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    const/4 p0, 0x0

    .line 9
    iput p0, v0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    return-void
.end method

.method public forSSHAgent()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 3
    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 5
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 6
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 8
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 10
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v2, v3, v1}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    return-object v2

    .line 12
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method generate(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    :try_start_0
    const-string v0, "keypairgen.dsa"

    .line 2
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyPairGenDSA;

    .line 4
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/KeyPairGenDSA;->init(I)V

    .line 5
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getP()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 6
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getQ()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 7
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getG()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 8
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getY()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 9
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getX()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method getBegin()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->begin:[B

    return-object v0
.end method

.method getEnd()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->end:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    return v0
.end method

.method public getKeyType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method getKeyTypeName()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    return-object v0
.end method

.method getPrivateKey()[B
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 3
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, v1}, Lcom/jcraft/jsch/KeyPair;->writeSEQUENCE([BII)I

    move-result v1

    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v2, v1, v0}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    return-object v2
.end method

.method public getPublicKeyBlob()[B
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/4 v2, 0x0

    .line 3
    sget-object v3, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    .line 4
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    aput-object v2, v1, v0

    const/4 v0, 0x3

    .line 5
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    aput-object v2, v1, v0

    const/4 v0, 0x4

    .line 6
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    aput-object v2, v1, v0

    .line 7
    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 5

    :try_start_0
    const-string v0, "signature.dss"

    .line 1
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    .line 3
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->init()V

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jsch/SignatureDSA;->setPrvKey([B[B[B[B)V

    .line 5
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 6
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->sign()[B

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 7
    sget-object v2, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 8
    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 5

    :try_start_0
    const-string v0, "signature.dss"

    .line 1
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    .line 3
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->init()V

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getPublicKeyBlob()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getPublicKeyBlob()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 6
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 7
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 8
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 9
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 10
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method parse([B)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 2
    aget-byte v1, p1, v0

    if-eq v1, v2, :cond_1

    .line 3
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 4
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 5
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 6
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 7
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 8
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 9
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    .line 10
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    :cond_0
    return v3

    :cond_1
    return v0

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 12
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 13
    array-length p1, p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, ""

    .line 14
    invoke-virtual {v1, v3, p1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 15
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_0
    return v0

    .line 16
    :cond_3
    :try_start_2
    aget-byte v1, p1, v0

    if-eq v1, v2, :cond_4

    return v0

    .line 17
    :cond_4
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_5

    and-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x2

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    .line 18
    aget-byte v2, p1, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    .line 19
    :cond_6
    aget-byte v1, p1, v2

    if-eq v1, v4, :cond_7

    return v0

    :cond_7
    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 20
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_9

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_8

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 21
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    move v2, v5

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_1

    :cond_8
    move v2, v4

    :cond_9
    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    .line 22
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_b

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_a

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v4, 0x1

    .line 23
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    :cond_a
    move v1, v2

    move v2, v4

    .line 24
    :cond_b
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 25
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 26
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_d

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_c

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 27
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    move v2, v5

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_3

    :cond_c
    move v2, v4

    .line 28
    :cond_d
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 29
    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    .line 30
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_f

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_e

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v4, 0x1

    .line 31
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_4

    :cond_e
    move v1, v2

    move v2, v4

    .line 32
    :cond_f
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 33
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 34
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_11

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_10

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 35
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    move v2, v5

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_5

    :cond_10
    move v2, v4

    .line 36
    :cond_11
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 37
    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    .line 38
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_13

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_12

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v4, 0x1

    .line 39
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_6

    :cond_12
    move v1, v2

    move v2, v4

    .line 40
    :cond_13
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    .line 41
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-eqz p1, :cond_14

    .line 43
    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_14
    return v3

    :catch_1
    return v0
.end method
