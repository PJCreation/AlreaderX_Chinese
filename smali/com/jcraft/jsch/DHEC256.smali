.class public Lcom/jcraft/jsch/DHEC256;
.super Lcom/jcraft/jsch/DHECN;
.source "DHEC256.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/DHECN;-><init>()V

    const-string v0, "sha-256"

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/DHECN;->sha_name:Ljava/lang/String;

    const/16 v0, 0x100

    .line 3
    iput v0, p0, Lcom/jcraft/jsch/DHECN;->key_size:I

    return-void
.end method