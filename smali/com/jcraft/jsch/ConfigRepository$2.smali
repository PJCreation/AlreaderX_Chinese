.class final Lcom/jcraft/jsch/ConfigRepository$2;
.super Ljava/lang/Object;
.source "ConfigRepository.java"

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;
    .locals 0

    .line 1
    sget-object p1, Lcom/jcraft/jsch/ConfigRepository;->defaultConfig:Lcom/jcraft/jsch/ConfigRepository$Config;

    return-object p1
.end method
