.class Lcom/jcraft/jsch/UserAuthPassword;
.super Lcom/jcraft/jsch/UserAuth;
.source "UserAuthPassword.java"


# instance fields
.field private final SSH_MSG_USERAUTH_PASSWD_CHANGEREQ:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/16 v0, 0x3c

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->SSH_MSG_USERAUTH_PASSWD_CHANGEREQ:I

    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 14

    const-string v0, "ssh-connection"

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 2
    iget-object v1, p1, Lcom/jcraft/jsch/Session;->password:[B

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget v3, p1, Lcom/jcraft/jsch/Session;->port:I

    const/16 v4, 0x16

    if-eq v3, v4, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v8, v2

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    iget v2, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v3, p1, Lcom/jcraft/jsch/Session;->max_auth_tries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    if-lt v2, v3, :cond_3

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    :cond_2
    return v9

    :cond_3
    const-string v10, "password"

    if-nez v1, :cond_8

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    .line 9
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    :cond_4
    return v9

    .line 10
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Password for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/UserInfo;->promptPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v2}, Lcom/jcraft/jsch/UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 12
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    invoke-direct {p1, v10}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_7
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    invoke-direct {p1, v10}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v11

    .line 16
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 17
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v12, 0x32

    invoke-virtual {v2, v12}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 18
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v11}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 19
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 20
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 21
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 22
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 23
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 24
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 25
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x34

    const/4 v13, 0x1

    if-ne v2, v3, :cond_b

    if-eqz v1, :cond_a

    .line 26
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    :cond_a
    return v13

    :cond_b
    const/16 v3, 0x35

    if-ne v2, v3, :cond_c

    .line 27
    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 28
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 30
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_9

    .line 32
    invoke-interface {v3, v2}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_12

    .line 33
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 34
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 36
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_f

    instance-of v4, v3, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v4, :cond_d

    goto :goto_3

    .line 37
    :cond_d
    check-cast v3, Lcom/jcraft/jsch/UIKeyboardInteractive;

    const-string v4, "Password Change Required"

    new-array v6, v13, [Ljava/lang/String;

    const-string v5, "New Password: "

    aput-object v5, v6, v9

    new-array v7, v13, [Z

    aput-boolean v9, v7, v9

    .line 38
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    move-object v3, v8

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/UIKeyboardInteractive;->promptKeyboardInteractive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 39
    aget-object v2, v2, v9

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 41
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v12}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 42
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v11}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 43
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 44
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 45
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v13}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 46
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 47
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 48
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 49
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_2

    .line 50
    :cond_e
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    invoke-direct {p1, v10}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_3
    if-eqz v3, :cond_10

    const-string p1, "Password must be changed."

    .line 51
    invoke-interface {v3, p1}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_10
    if-eqz v1, :cond_11

    .line 52
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    :cond_11
    return v9

    :cond_12
    const/16 v3, 0x33

    if-ne v2, v3, :cond_14

    .line 53
    :try_start_4
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 54
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v3

    if-nez v3, :cond_13

    .line 56
    iget v2, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    add-int/2addr v2, v13

    iput v2, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    if-eqz v1, :cond_1

    .line 57
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 58
    :cond_13
    new-instance p1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_14
    if-eqz v1, :cond_15

    .line 59
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    :cond_15
    return v9

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_16

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 60
    :cond_16
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
