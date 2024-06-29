.class Lcom/jcraft/jsch/UserAuthNone;
.super Lcom/jcraft/jsch/UserAuth;
.source "UserAuthNone.java"


# static fields
.field private static final SSH_MSG_SERVICE_ACCEPT:I = 0x6


# instance fields
.field private methods:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getMethods()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return-object v0
.end method

.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v1, "ssh-userauth"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 5
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 6
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "SSH_MSG_SERVICE_REQUEST sent"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v4, "SSH_MSG_SERVICE_ACCEPT received"

    invoke-interface {v2, v1, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    return v3

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 14
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 15
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 16
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-connection"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 17
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v2, "none"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 19
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 20
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x34

    if-ne v0, v2, :cond_5

    return v1

    :cond_5
    const/16 v2, 0x35

    if-ne v0, v2, :cond_6

    .line 21
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 22
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 24
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v2, :cond_4

    .line 26
    :try_start_0
    invoke-interface {v2, v0}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_6
    const/16 p1, 0x33

    if-ne v0, p1, :cond_7

    .line 27
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 28
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 30
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return v3

    .line 31
    :cond_7
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "USERAUTH fail ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
