.class public Lcom/jcraft/jsch/jce/ECDH521;
.super Lcom/jcraft/jsch/jce/ECDHN;
.source "ECDH521.java"

# interfaces
.implements Lcom/jcraft/jsch/ECDH;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/ECDHN;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/16 v0, 0x209

    .line 1
    invoke-super {p0, v0}, Lcom/jcraft/jsch/jce/ECDHN;->init(I)V

    return-void
.end method
