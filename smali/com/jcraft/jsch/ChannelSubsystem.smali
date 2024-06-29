.class public Lcom/jcraft/jsch/ChannelSubsystem;
.super Lcom/jcraft/jsch/ChannelSession;
.source "ChannelSubsystem.java"


# instance fields
.field pty:Z

.field subsystem:Ljava/lang/String;

.field want_reply:Z

.field xforwading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    .line 3
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

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

.method public setErrStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Channel;->setExtOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setPty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    return-void
.end method

.method public setSubsystem(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    return-void
.end method

.method public setWantReply(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    return-void
.end method

.method public setXForwarding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    .line 4
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    .line 7
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 8
    :cond_1
    new-instance v1, Lcom/jcraft/jsch/RequestSubsystem;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestSubsystem;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/jcraft/jsch/RequestSubsystem;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 11
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    .line 12
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Subsystem for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 13
    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 16
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_4

    .line 17
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelSubsystem"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 18
    :cond_4
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
.end method
