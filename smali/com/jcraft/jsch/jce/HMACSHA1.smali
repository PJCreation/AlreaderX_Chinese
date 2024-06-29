.class public Lcom/jcraft/jsch/jce/HMACSHA1;
.super Lcom/jcraft/jsch/jce/HMAC;
.source "HMACSHA1.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMAC;-><init>()V

    const-string v0, "hmac-sha1"

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->name:Ljava/lang/String;

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/jcraft/jsch/jce/HMAC;->bsize:I

    const-string v0, "HmacSHA1"

    .line 4
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->algorithm:Ljava/lang/String;

    return-void
.end method
