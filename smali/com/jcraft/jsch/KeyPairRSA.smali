.class public Lcom/jcraft/jsch/KeyPairRSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "KeyPairRSA.java"


# static fields
.field private static final begin:[B

.field private static final end:[B

.field private static final sshrsa:[B


# instance fields
.field private c_array:[B

.field private ep_array:[B

.field private eq_array:[B

.field private key_size:I

.field private n_array:[B

.field private p_array:[B

.field private prv_array:[B

.field private pub_array:[B

.field private q_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    .line 1
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->begin:[B

    const-string v0, "-----END RSA PRIVATE KEY-----"

    .line 2
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->end:[B

    const-string v0, "ssh-rsa"

    .line 3
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 p1, 0x400

    .line 3
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    .line 4
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 5
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 6
    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    if-eqz p2, :cond_0

    .line 7
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    :cond_0
    return-void
.end method

.method static fromSSHAgent(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 4

    const/16 v0, 0x8

    const-string v1, "invalid key format"

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    aget-object v0, p1, v0

    const/4 v1, 0x2

    .line 3
    aget-object v1, p1, v1

    const/4 v2, 0x3

    .line 4
    aget-object v2, p1, v2

    .line 5
    new-instance v3, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    const/4 p0, 0x4

    .line 6
    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    const/4 p0, 0x5

    .line 7
    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    const/4 p0, 0x6

    .line 8
    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 9
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x7

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    const/4 p0, 0x0

    .line 10
    iput p0, v3, Lcom/jcraft/jsch/KeyPair;->vendor:I

    return-object v3
.end method

.method private getCArray()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    return-object v0
.end method

.method private getEPArray()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    return-object v0
.end method

.method private getEQArray()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

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
    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 5
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 6
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 7
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getCArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 8
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 10
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 11
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v2, v3, v1}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    return-object v2

    .line 13
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method generate(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    :try_start_0
    const-string v0, "keypairgen.rsa"

    .line 2
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyPairGenRSA;

    .line 4
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/KeyPairGenRSA;->init(I)V

    .line 5
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getE()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 6
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getD()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 7
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getN()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 8
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getP()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 9
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getQ()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 10
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getEP()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    .line 11
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getEQ()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    .line 12
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getC()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method getBegin()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->begin:[B

    return-object v0
.end method

.method getEnd()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->end:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    return v0
.end method

.method public getKeyType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method getKeyTypeName()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

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

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

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
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeINTEGER([BI[B)I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

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
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    .line 3
    sget-object v3, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    .line 4
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    aput-object v2, v1, v0

    .line 5
    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 3

    :try_start_0
    const-string v0, "signature.rsa"

    .line 1
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    .line 3
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->init()V

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->setPrvKey([B[B)V

    .line 5
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 6
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->sign()[B

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 7
    sget-object v2, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

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
    .locals 3

    :try_start_0
    const-string v0, "signature.rsa"

    .line 1
    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    .line 3
    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->init()V

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getPublicKeyBlob()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getPublicKeyBlob()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 6
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 7
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 8
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V
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

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 3
    array-length p1, p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x4

    :try_start_1
    const-string v4, ""

    .line 4
    invoke-virtual {v1, p1, v4}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 5
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 6
    aget-object v1, p1, v3

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 7
    aget-object v1, p1, v2

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    const/4 v1, 0x3

    .line 8
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :try_start_2
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    .line 10
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    return v3

    :catch_0
    return v0

    :cond_0
    if-ne v1, v3, :cond_3

    .line 11
    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    .line 12
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 13
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 14
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 15
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 16
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 17
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 18
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 19
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz p1, :cond_1

    .line 20
    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    .line 22
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    .line 23
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getCArray()[B

    return v3

    :cond_2
    return v0

    .line 24
    :cond_3
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_4

    and-int/lit8 v1, v1, 0x7f

    const/4 v4, 0x2

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_5

    add-int/lit8 v1, v4, 0x1

    .line 25
    aget-byte v4, p1, v4

    move v4, v1

    move v1, v5

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    .line 26
    :cond_5
    aget-byte v1, p1, v4

    if-eq v1, v2, :cond_6

    return v0

    :cond_6
    add-int/2addr v4, v3

    add-int/lit8 v1, v4, 0x1

    .line 27
    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_8

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_7

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 28
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    move v2, v5

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_1

    :cond_7
    move v2, v4

    :cond_8
    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    .line 29
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_a

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_9

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v4, 0x1

    .line 30
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    :cond_9
    move v1, v2

    move v2, v4

    .line 31
    :cond_a
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 32
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 33
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_c

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_b

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 34
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    move v2, v5

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_3

    :cond_b
    move v2, v4

    .line 35
    :cond_c
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 36
    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    .line 37
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_e

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_d

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v4, 0x1

    .line 38
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_4

    :cond_d
    move v1, v2

    move v2, v4

    .line 39
    :cond_e
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 40
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 41
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_10

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_f

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 42
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    move v2, v5

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_5

    :cond_f
    move v2, v4

    .line 43
    :cond_10
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 44
    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    .line 45
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_12

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_11

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v4, 0x1

    .line 46
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_6

    :cond_11
    move v1, v2

    move v2, v4

    .line 47
    :cond_12
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 48
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 49
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_14

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_7
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_13

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 50
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    move v2, v5

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_7

    :cond_13
    move v2, v4

    .line 51
    :cond_14
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    .line 52
    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    .line 53
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_16

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_15

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v4, 0x1

    .line 54
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_8

    :cond_15
    move v1, v2

    move v2, v4

    .line 55
    :cond_16
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    .line 56
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 57
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_18

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_9
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_17

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 58
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    move v2, v5

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_9

    :cond_17
    move v2, v4

    .line 59
    :cond_18
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    .line 60
    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz p1, :cond_19

    .line 62
    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_19
    return v3

    :catch_1
    return v0
.end method
