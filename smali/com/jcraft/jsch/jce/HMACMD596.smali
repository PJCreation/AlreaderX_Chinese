.class public Lcom/jcraft/jsch/jce/HMACMD596;
.super Lcom/jcraft/jsch/jce/HMACMD5;
.source "HMACMD596.java"


# instance fields
.field private final _buf16:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACMD5;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    const-string v0, "hmac-md5-96"

    .line 3
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/jcraft/jsch/jce/HMAC;->doFinal([BI)V

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
