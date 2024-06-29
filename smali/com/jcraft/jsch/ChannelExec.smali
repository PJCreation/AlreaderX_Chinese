.class public Lcom/jcraft/jsch/ChannelExec;
.super Lcom/jcraft/jsch/ChannelSession;
.source "ChannelExec.java"


# instance fields
.field command:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->command:[B

    return-void
.end method


# virtual methods
.method public getErrStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getExtInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelExec;->command:[B

    return-void
.end method

.method public setCommand([B)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelExec;->command:[B

    return-void
.end method

.method public setErrStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Channel;->setExtOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setErrStream(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/Channel;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->sendRequests()V

    .line 3
    new-instance v1, Lcom/jcraft/jsch/RequestExec;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelExec;->command:[B

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/RequestExec;-><init>([B)V

    .line 4
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    .line 7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Exec thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8
    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 11
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_2

    .line 12
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelExec"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :cond_2
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
.end method
