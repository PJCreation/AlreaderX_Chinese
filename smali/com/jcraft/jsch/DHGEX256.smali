.class public Lcom/jcraft/jsch/DHGEX256;
.super Lcom/jcraft/jsch/DHGEX;
.source "DHGEX256.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/DHGEX;-><init>()V

    const-string v0, "sha-256"

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->hash:Ljava/lang/String;

    return-void
.end method
