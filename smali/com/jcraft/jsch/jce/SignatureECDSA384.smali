.class public Lcom/jcraft/jsch/jce/SignatureECDSA384;
.super Lcom/jcraft/jsch/jce/SignatureECDSAN;
.source "SignatureECDSA384.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/SignatureECDSAN;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ecdsa-sha2-nistp384"

    return-object v0
.end method
