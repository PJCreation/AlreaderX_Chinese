.class public Lcom/jcraft/jsch/ChannelForwardedTCPIP;
.super Lcom/jcraft/jsch/Channel;
.source "ChannelForwardedTCPIP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;,
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;,
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;
    }
.end annotation


# static fields
.field private static final LOCAL_MAXIMUM_PACKET_SIZE:I = 0x4000

.field private static final LOCAL_WINDOW_SIZE_MAX:I = 0x20000

.field private static final TIMEOUT:I = 0x2710

.field private static pool:Ljava/util/Vector;


# instance fields
.field private config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

.field private daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    .line 3
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 4
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    const/high16 v0, 0x20000

    .line 5
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSizeMax(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    const/16 v0, 0x4000

    .line 7
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalPacketSize(I)V

    .line 8
    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    return-void
.end method

.method static addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    invoke-direct {v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;-><init>()V

    .line 5
    iput-object p0, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->session:Lcom/jcraft/jsch/Session;

    .line 6
    iput p2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    .line 7
    iput p3, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->allocated_rport:I

    .line 8
    iput-object p4, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    .line 9
    iput p5, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->lport:I

    .line 10
    iput-object p1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->address_to_bind:Ljava/lang/String;

    .line 11
    iput-object p6, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->factory:Lcom/jcraft/jsch/SocketFactory;

    .line 12
    sget-object p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "PortForwardingR: remote port "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " is already registered."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 16
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    sget-object p3, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter p3

    .line 18
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;-><init>()V

    .line 20
    iput-object p0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->session:Lcom/jcraft/jsch/Session;

    .line 21
    iput p2, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    .line 22
    iput p2, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->allocated_rport:I

    .line 23
    iput-object p4, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    .line 24
    iput-object p5, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->arg:[Ljava/lang/Object;

    .line 25
    iput-object p1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->address_to_bind:Ljava/lang/String;

    .line 26
    sget-object p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 27
    monitor-exit p3

    return-void

    .line 28
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "PortForwardingR: remote port "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " is already registered."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 29
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static delPort(Lcom/jcraft/jsch/ChannelForwardedTCPIP;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-eqz p0, :cond_0

    .line 3
    iget p0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    invoke-static {v0, p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;I)V

    :cond_0
    return-void
.end method

.method static delPort(Lcom/jcraft/jsch/Session;)V
    .locals 7

    .line 22
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 24
    :goto_0
    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 25
    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 26
    iget-object v6, v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->session:Lcom/jcraft/jsch/Session;

    if-ne v6, p0, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 27
    iget v5, v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    aput v5, v1, v4

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 29
    aget v0, v1, v2

    invoke-static {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static delPort(Lcom/jcraft/jsch/Session;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    return-void
.end method

.method static delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V
    .locals 3

    .line 5
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    if-nez p1, :cond_2

    .line 10
    iget-object p1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->address_to_bind:Ljava/lang/String;

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "0.0.0.0"

    .line 11
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 13
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 14
    :try_start_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x50

    .line 15
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const-string v2, "cancel-tcpip-forward"

    .line 16
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 18
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 19
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;
    .locals 4

    .line 1
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 4
    iget-object v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->session:Lcom/jcraft/jsch/Session;

    if-eq v3, p0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    if-eq v3, p2, :cond_1

    if-nez v3, :cond_2

    .line 6
    iget v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->allocated_rport:I

    if-eq v3, p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 7
    iget-object v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->address_to_bind:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    monitor-exit v0

    return-object v2

    :cond_4
    const/4 p0, 0x0

    .line 9
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static getPortForwarding(Lcom/jcraft/jsch/Session;)[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 2
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    :try_start_0
    sget-object v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    sget-object v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 5
    instance-of v4, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    if-eqz v4, :cond_0

    .line 6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget v5, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->allocated_rport:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget v5, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->allocated_rport:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    iget v3, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->lport:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 10
    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 11
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "localhost"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private setSocketFactory(Lcom/jcraft/jsch/SocketFactory;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    iput-object p1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->factory:Lcom/jcraft/jsch/SocketFactory;

    :cond_0
    return-void
.end method


# virtual methods
.method getData(Lcom/jcraft/jsch/Buffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    .line 2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->setRemoteWindowSize(J)V

    .line 3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setRemotePacketSize(I)V

    .line 4
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 7
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    const/4 p1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, p1

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-nez v3, :cond_0

    .line 10
    invoke-static {v2, p1, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-nez p1, :cond_1

    .line 12
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "ChannelForwardedTCPIP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " is not registered."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getRemotePort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    instance-of v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    .line 3
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 5
    new-instance v2, Ljava/io/PipedOutputStream;

    invoke-direct {v2}, Ljava/io/PipedOutputStream;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveInputStream;

    const v5, 0x8000

    invoke-direct {v4, p0, v2, v5}, Lcom/jcraft/jsch/Channel$PassiveInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;Z)V

    .line 7
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, p0, v4, v2}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->setChannel(Lcom/jcraft/jsch/ChannelForwardedTCPIP;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 8
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iget-object v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->arg:[Ljava/lang/Object;

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->setArg([Ljava/lang/Object;)V

    .line 9
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 10
    :cond_0
    check-cast v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    .line 11
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->factory:Lcom/jcraft/jsch/SocketFactory;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    iget v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->lport:I

    const/16 v3, 0x2710

    invoke-static {v2, v1, v3}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    iget v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->lport:I

    invoke-interface {v2, v3, v1}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    .line 12
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 13
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 14
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->sendOpenConfirmation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    .line 17
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 18
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 19
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    .line 20
    :goto_2
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v3, :cond_4

    .line 21
    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v5, v4

    const/16 v6, 0xe

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x80

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->eof()V

    goto :goto_3

    .line 23
    :cond_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v4, 0x5e

    .line 24
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 25
    iget v4, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 26
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 27
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 28
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    :try_start_2
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->close:Z

    if-eqz v4, :cond_3

    .line 30
    monitor-exit p0

    goto :goto_3

    .line 31
    :cond_3
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 32
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 33
    :catch_0
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    return-void

    .line 34
    :catch_1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->sendOpenFailure(I)V

    .line 35
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    .line 36
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    return-void
.end method
