.class public Lcom/jcraft/jsch/jcraft/HMACSHA1;
.super Lcom/jcraft/jsch/jcraft/HMAC;
.source "HMACSHA1.java"

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# static fields
.field private static final name:Ljava/lang/String; = "hmac-sha1"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMAC;-><init>()V

    :try_start_0
    const-string v0, "SHA-1"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jcraft/HMAC;->setH(Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "hmac-sha1"

    return-object v0
.end method
