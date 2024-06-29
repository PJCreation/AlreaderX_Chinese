.class public Lcom/jcraft/jsch/jce/TripleDESCTR;
.super Ljava/lang/Object;
.source "TripleDESCTR.java"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final bsize:I = 0x18

.field static synthetic class$javax$crypto$Cipher:Ljava/lang/Class; = null

.field private static final ivsize:I = 0x8


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getIVSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(I[B[B)V
    .locals 4

    const-string v0, "NoPadding"

    .line 1
    array-length v1, p3

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    new-array v1, v2, [B

    .line 2
    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v1

    .line 3
    :cond_0
    array-length v1, p2

    const/16 v2, 0x18

    if-le v1, v2, :cond_1

    new-array v1, v2, [B

    .line 4
    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v1

    .line 5
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DESede/CTR/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCTR;->cipher:Ljavax/crypto/Cipher;

    .line 6
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string p2, "DESede"

    .line 7
    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p2

    .line 8
    invoke-virtual {p2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 9
    sget-object v0, Lcom/jcraft/jsch/jce/TripleDESCTR;->class$javax$crypto$Cipher:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "javax.crypto.Cipher"

    invoke-static {v0}, Lcom/jcraft/jsch/jce/TripleDESCTR;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jce/TripleDESCTR;->class$javax$crypto$Cipher:Ljava/lang/Class;

    :cond_2
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/jce/TripleDESCTR;->cipher:Ljavax/crypto/Cipher;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    :goto_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, p1, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/jcraft/jsch/jce/TripleDESCTR;->cipher:Ljavax/crypto/Cipher;

    .line 13
    throw p1
.end method

.method public isCBC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update([BII[BI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCTR;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-void
.end method
