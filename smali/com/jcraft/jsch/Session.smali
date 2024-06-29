.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Session$GlobalRequestReply;,
        Lcom/jcraft/jsch/Session$Forwarding;
    }
.end annotation


# static fields
.field private static final PACKET_MAX_SIZE:I = 0x40000

.field static final SSH_MSG_CHANNEL_CLOSE:I = 0x61

.field static final SSH_MSG_CHANNEL_DATA:I = 0x5e

.field static final SSH_MSG_CHANNEL_EOF:I = 0x60

.field static final SSH_MSG_CHANNEL_EXTENDED_DATA:I = 0x5f

.field static final SSH_MSG_CHANNEL_FAILURE:I = 0x64

.field static final SSH_MSG_CHANNEL_OPEN:I = 0x5a

.field static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field static final SSH_MSG_CHANNEL_REQUEST:I = 0x62

.field static final SSH_MSG_CHANNEL_SUCCESS:I = 0x63

.field static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field static final SSH_MSG_DEBUG:I = 0x4

.field static final SSH_MSG_DISCONNECT:I = 0x1

.field static final SSH_MSG_GLOBAL_REQUEST:I = 0x50

.field static final SSH_MSG_IGNORE:I = 0x2

.field static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field static final SSH_MSG_KEXINIT:I = 0x14

.field static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22

.field static final SSH_MSG_NEWKEYS:I = 0x15

.field static final SSH_MSG_REQUEST_FAILURE:I = 0x52

.field static final SSH_MSG_REQUEST_SUCCESS:I = 0x51

.field static final SSH_MSG_SERVICE_ACCEPT:I = 0x6

.field static final SSH_MSG_SERVICE_REQUEST:I = 0x5

.field static final SSH_MSG_UNIMPLEMENTED:I = 0x3

.field static final buffer_margin:I = 0x80

.field private static final keepalivemsg:[B

.field private static final nomoresessions:[B

.field static random:Lcom/jcraft/jsch/Random;


# instance fields
.field private Ec2s:[B

.field private Es2c:[B

.field private IVc2s:[B

.field private IVs2c:[B

.field private I_C:[B

.field private I_S:[B

.field private K_S:[B

.field private MACc2s:[B

.field private MACs2c:[B

.field private V_C:[B

.field private V_S:[B

.field agent_forwarding:Z

.field auth_failures:I

.field buf:Lcom/jcraft/jsch/Buffer;

.field private c2scipher:Lcom/jcraft/jsch/Cipher;

.field private c2scipher_size:I

.field private c2smac:Lcom/jcraft/jsch/MAC;

.field compress_len:[I

.field private config:Ljava/util/Hashtable;

.field private connectThread:Ljava/lang/Thread;

.field protected daemon_thread:Z

.field private deflater:Lcom/jcraft/jsch/Compression;

.field private grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field guess:[Ljava/lang/String;

.field host:Ljava/lang/String;

.field private hostKeyAlias:Ljava/lang/String;

.field private hostkey:Lcom/jcraft/jsch/HostKey;

.field private hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

.field private identityRepository:Lcom/jcraft/jsch/IdentityRepository;

.field in:Ljava/io/InputStream;

.field private volatile in_kex:Z

.field private volatile in_prompt:Z

.field private inflater:Lcom/jcraft/jsch/Compression;

.field private io:Lcom/jcraft/jsch/IO;

.field private isAuthed:Z

.field private volatile isConnected:Z

.field jsch:Lcom/jcraft/jsch/JSch;

.field private kex_start_time:J

.field private lock:Ljava/lang/Object;

.field max_auth_tries:I

.field org_host:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field packet:Lcom/jcraft/jsch/Packet;

.field password:[B

.field port:I

.field private proxy:Lcom/jcraft/jsch/Proxy;

.field private s2ccipher:Lcom/jcraft/jsch/Cipher;

.field private s2ccipher_size:I

.field private s2cmac:Lcom/jcraft/jsch/MAC;

.field private s2cmac_result1:[B

.field private s2cmac_result2:[B

.field private seqi:I

.field private seqo:I

.field private serverAliveCountMax:I

.field private serverAliveInterval:I

.field private session_id:[B

.field private socket:Ljava/net/Socket;

.field socket_factory:Lcom/jcraft/jsch/SocketFactory;

.field thread:Ljava/lang/Runnable;

.field private timeout:I

.field uncompress_len:[I

.field private userinfo:Lcom/jcraft/jsch/UserInfo;

.field username:Ljava/lang/String;

.field x11_forwarding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "keepalive@jcraft.com"

    .line 1
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->keepalivemsg:[B

    const-string v0, "no-more-sessions@openssh.com"

    .line 2
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->nomoresessions:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSH-2.0-JSCH-0.1.54"

    .line 2
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jcraft/jsch/Session;->seqi:I

    .line 4
    iput v0, p0, Lcom/jcraft/jsch/Session;->seqo:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 8
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    .line 9
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    .line 10
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    .line 11
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    .line 12
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    .line 13
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    .line 14
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    .line 15
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    .line 16
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    .line 17
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    .line 18
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    const/4 v2, 0x1

    .line 20
    iput v2, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    .line 21
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    .line 22
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    .line 23
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    const-wide/16 v3, 0x0

    .line 24
    iput-wide v3, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    const/4 v3, 0x6

    .line 25
    iput v3, p0, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    .line 26
    iput v0, p0, Lcom/jcraft/jsch/Session;->auth_failures:I

    const-string v3, "127.0.0.1"

    .line 27
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    const/16 v3, 0x16

    .line 29
    iput v3, p0, Lcom/jcraft/jsch/Session;->port:I

    .line 30
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->password:[B

    .line 32
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 33
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_prompt:Z

    new-array v0, v2, [I

    .line 34
    iput-object v0, p0, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    new-array v0, v2, [I

    .line 35
    iput-object v0, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    const/16 v0, 0x8

    .line 36
    iput v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 37
    iput v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    .line 38
    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 39
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    .line 40
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    .line 41
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    .line 42
    new-instance p1, Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    .line 43
    iput-object p2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    .line 45
    iput p4, p0, Lcom/jcraft/jsch/Session;->port:I

    .line 46
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->applyConfig()V

    .line 47
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 48
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    const-string p2, "user.name"

    invoke-virtual {p1, p2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 49
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-eqz p1, :cond_1

    return-void

    .line 50
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "username is not given."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private _setPortForwardingR(Ljava/lang/String;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 3
    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 4
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    .line 6
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v3, p2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setPort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 7
    :try_start_1
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v4, 0x50

    .line 8
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const-string v4, "tcpip-forward"

    .line 9
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 11
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 12
    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 13
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 14
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getReply()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x3e8

    .line 15
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    add-int/lit8 p1, p1, 0x1

    .line 16
    :try_start_4
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getReply()I

    move-result v1

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    if-ne v1, v4, :cond_1

    .line 18
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getPort()I

    move-result p1

    .line 19
    monitor-exit v0

    return p1

    .line 20
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "remote port forwarding failed for listen port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 21
    iget-object p2, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p2, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    .line 22
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private _write(Lcom/jcraft/jsch/Packet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->encode(Lcom/jcraft/jsch/Packet;)V

    .line 3
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/IO;->put(Lcom/jcraft/jsch/Packet;)V

    .line 5
    iget p1, p0, Lcom/jcraft/jsch/Session;->seqo:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jcraft/jsch/Session;->seqo:I

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private applyConfig()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    .line 6
    :cond_1
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getHostname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 8
    :cond_2
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 9
    iput v2, p0, Lcom/jcraft/jsch/Session;->port:I

    :cond_3
    const-string v2, "kex"

    .line 10
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "server_host_key"

    .line 11
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.c2s"

    .line 12
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "cipher.s2c"

    .line 13
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.c2s"

    .line 14
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "mac.s2c"

    .line 15
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.c2s"

    .line 16
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression.s2c"

    .line 17
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "compression_level"

    .line 18
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "StrictHostKeyChecking"

    .line 19
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "HashKnownHosts"

    .line 20
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "PreferredAuthentications"

    .line 21
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v2, "MaxAuthTries"

    .line 22
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v3, "ClearAllForwardings"

    .line 23
    invoke-direct {p0, v1, v3}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const-string v4, "HostKeyAlias"

    .line 24
    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 25
    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setHostKeyAlias(Ljava/lang/String;)V

    :cond_4
    const-string v4, "UserKnownHostsFile"

    .line 26
    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 27
    new-instance v5, Lcom/jcraft/jsch/KnownHosts;

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-direct {v5, v6}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    .line 28
    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/KnownHosts;->setKnownHosts(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V

    :cond_5
    const-string v4, "IdentityFile"

    .line 30
    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v6, ""

    .line 31
    invoke-interface {v0, v6}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    .line 32
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_7

    .line 33
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    new-array v0, v4, [Ljava/lang/String;

    .line 34
    :cond_7
    array-length v6, v5

    array-length v7, v0

    sub-int/2addr v6, v7

    if-lez v6, :cond_c

    .line 35
    new-instance v6, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v7}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    const/4 v7, 0x0

    .line 36
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_b

    .line 37
    aget-object v8, v5, v7

    const/4 v9, 0x0

    .line 38
    :goto_2
    array-length v10, v0

    const/4 v11, 0x0

    if-ge v9, v10, :cond_9

    .line 39
    aget-object v10, v0, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object v8, v11

    :cond_9
    if-nez v8, :cond_a

    goto :goto_3

    .line 40
    :cond_a
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-static {v8, v11, v9}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v8

    .line 41
    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->add(Lcom/jcraft/jsch/Identity;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 42
    :cond_b
    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V

    :cond_c
    const-string v0, "ServerAliveInterval"

    .line 43
    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 44
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->setServerAliveInterval(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    :cond_d
    :goto_4
    const-string v0, "ConnectTimeout"

    .line 45
    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 46
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->setTimeout(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    .line 47
    :cond_e
    :goto_5
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 48
    invoke-virtual {p0, v2, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_f
    invoke-interface {v1, v3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 50
    invoke-virtual {p0, v3, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private applyConfigChannel(Lcom/jcraft/jsch/ChannelSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v1, "ForwardAgent"

    .line 3
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    :cond_1
    const-string v1, "RequestTTY"

    .line 5
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/ChannelSession;->setPty(Z)V

    :cond_2
    return-void
.end method

.method static checkCipher(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/Cipher;

    .line 3
    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {p0, v0, v1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private checkCiphers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "CheckCiphers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const-string v1, "cipher.c2s"

    .line 4
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cipher.s2c"

    .line 5
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const-string v5, ","

    .line 7
    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_4

    .line 9
    aget-object v7, p1, v6

    .line 10
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 12
    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_5

    return-object v0

    .line 14
    :cond_5
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    .line 15
    invoke-virtual {v4}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    if-ge v5, p1, :cond_6

    .line 17
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method private checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkHost(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .locals 11

    const-string v0, "StrictHostKeyChecking"

    .line 1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object p1, v1

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getHostKey()[B

    move-result-object v1

    .line 4
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getFingerPrint()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    if-nez v4, :cond_1

    const/16 v4, 0x16

    if-eq p2, v4, :cond_1

    .line 7
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "]:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object p2

    const-string v4, "HashKnownHosts"

    .line 9
    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yes"

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, p2, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v4, :cond_2

    .line 11
    move-object v4, p2

    check-cast v4, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v4, p1, v1}, Lcom/jcraft/jsch/KnownHosts;->createHashedHostKey(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    goto :goto_0

    .line 12
    :cond_2
    new-instance v4, Lcom/jcraft/jsch/HostKey;

    invoke-direct {v4, p1, v1}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    .line 13
    :goto_0
    monitor-enter p2

    .line 14
    :try_start_0
    invoke-interface {p2, p1, v1}, Lcom/jcraft/jsch/HostKeyRepository;->check(Ljava/lang/String;[B)I

    move-result v4

    .line 15
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v5, "ask"

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_3

    const-string v5, "yes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    if-ne v4, v6, :cond_8

    .line 17
    monitor-enter p2

    .line 18
    :try_start_1
    invoke-interface {p2}, Lcom/jcraft/jsch/HostKeyRepository;->getKnownHostsRepositoryID()Ljava/lang/String;

    move-result-object v5

    .line 19
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_4

    const-string v5, "known_hosts"

    .line 20
    :cond_4
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v9, :cond_6

    .line 21
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " host key has just been changed.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "The fingerprint for the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " key sent by the remote host "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " is\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, ".\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "Please contact your system administrator.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "Add correct host key in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " to get rid of this message."

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "ask"

    .line 22
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 23
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\nDo you want to delete the old key and insert the new key?"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 24
    :cond_5
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v9, v5}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    :cond_6
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_7

    .line 25
    monitor-enter p2

    .line 26
    :try_start_2
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyAlgorithName()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-interface {p2, p1, v5, v9}, Lcom/jcraft/jsch/HostKeyRepository;->remove(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 27
    monitor-exit p2

    const/4 v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 28
    :cond_7
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "HostKey has been changed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 29
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_8
    const/4 v5, 0x0

    :goto_2
    const-string v9, "ask"

    .line 30
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "yes"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_9
    if-eqz v4, :cond_e

    if-nez v5, :cond_e

    const-string v5, "yes"

    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 32
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v5, :cond_b

    .line 33
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "The authenticity of host \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\' can\'t be established.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " key fingerprint is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".\n"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "Are you sure you want to continue connecting?"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    .line 34
    :cond_a
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "reject HostKey: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-ne v4, v8, :cond_c

    .line 35
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "UnknownHostKey: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ". "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " key fingerprint is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_c
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "HostKey has been changed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_d
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "reject HostKey: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_3
    const-string v3, "no"

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-ne v8, v4, :cond_f

    const/4 v5, 0x1

    :cond_f
    if-nez v4, :cond_13

    .line 39
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyAlgorithName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object p1

    .line 40
    array-length p3, v1

    invoke-static {v1, v7, p3}, Lcom/jcraft/jsch/Util;->toBase64([BII)[B

    move-result-object p3

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p3

    .line 41
    :goto_4
    array-length v0, p1

    if-ge v7, v0, :cond_13

    .line 42
    aget-object v0, p1, v4

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    aget-object v0, p1, v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->getMarker()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@revoked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 43
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz p1, :cond_10

    .line 44
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "The "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " host key for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " is marked as revoked.\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "This could mean that a stolen key is being used to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "impersonate this host."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 45
    :cond_10
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 46
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Host \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\' has provided revoked key."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v8, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 47
    :cond_11
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "revoked HostKey: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_13
    if-nez v4, :cond_14

    .line 48
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 49
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Host \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' is known and matches the "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " host key"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v8, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_14
    if-eqz v5, :cond_15

    .line 50
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 51
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Permanently added \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") to the list of known hosts."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v6, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_15
    if-eqz v5, :cond_16

    .line 52
    monitor-enter p2

    .line 53
    :try_start_4
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    iget-object p3, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {p2, p1, p3}, Lcom/jcraft/jsch/HostKeyRepository;->add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    .line 54
    monitor-exit p2

    goto :goto_5

    :catchall_2
    move-exception p1

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_16
    :goto_5
    return-void

    :catchall_3
    move-exception p1

    .line 55
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method static checkKex(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkKexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "CheckKexes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 4
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const-string v3, ","

    .line 5
    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 7
    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/jcraft/jsch/Session;->checkKex(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 8
    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    .line 10
    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    if-ge v3, p1, :cond_5

    .line 13
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " is not available."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method private checkSignatures(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "CheckSignatures: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 4
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const-string v3, ","

    .line 5
    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 7
    :try_start_0
    aget-object v5, p1, v4

    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/Signature;

    .line 9
    invoke-interface {v5}, Lcom/jcraft/jsch/Signature;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    .line 12
    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    .line 13
    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    if-ge v3, p1, :cond_4

    .line 15
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " is not available."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0
.end method

.method private expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B
    .locals 5

    .line 1
    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->getBlockSize()I

    move-result v0

    .line 2
    :goto_0
    array-length v1, p4

    if-ge v1, p6, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 4
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 5
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 6
    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 7
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v3, 0x0

    invoke-interface {p5, v1, v3, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 8
    array-length v1, p4

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 9
    array-length v2, p4

    invoke-static {p4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    array-length v4, p4

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-static {p4}, Lcom/jcraft/jsch/Util;->bzero([B)V

    move-object p4, v1

    goto :goto_0

    :cond_0
    return-object p4
.end method

.method private initDeflater(Ljava/lang/String;)V
    .locals 2

    const-string v0, "none"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "zlib"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v1, :cond_2

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Compression;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x6

    :try_start_1
    const-string v0, "compression_level"

    .line 7
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    .line 8
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/jcraft/jsch/Compression;->init(II)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 10
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private initInflater(Ljava/lang/String;)V
    .locals 2

    const-string v0, "none"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "zlib"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v1, :cond_2

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Compression;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0, v0}, Lcom/jcraft/jsch/Compression;->init(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;
    .locals 8

    const-string v0, "parseForwarding: "

    const-string v1, " "

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ":"

    if-le v2, v4, :cond_4

    .line 3
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_1

    .line 5
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 8
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_4
    new-instance v1, Lcom/jcraft/jsch/Session$Forwarding;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jcraft/jsch/Session$Forwarding;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V

    .line 14
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_a

    .line 15
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    .line 16
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v6, :cond_9

    .line 18
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "127.0.0.1"

    if-eq v2, v6, :cond_8

    .line 21
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    .line 22
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string p1, "0.0.0.0"

    :cond_6
    const-string v2, "localhost"

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, p1

    .line 25
    :goto_3
    iput-object v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    goto :goto_4

    .line 26
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    .line 27
    iput-object v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    :goto_4
    return-object v1

    .line 28
    :cond_9
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_a
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 30
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method private receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 4
    iget v0, p1, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget p1, p1, Lcom/jcraft/jsch/Buffer;->s:I

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-nez p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    invoke-static {p1, v0}, Lcom/jcraft/jsch/KeyExchange;->guess([B[B)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 10
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x2

    aget-object p1, p1, v0

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "NONE Cipher should not be chosen before authentification is successed."

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/KeyExchange;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->V_S:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :cond_4
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "Algorithm negotiation fail"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->updateKeys(Lcom/jcraft/jsch/KeyExchange;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    return-void
.end method

.method private requestPortForwarding()V
    .locals 5

    const-string v0, "ClearAllForwardings"

    .line 1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v1, "LocalForward"

    .line 4
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 6
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "RemoteForward"

    .line 7
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 9
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private send_kexinit()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "cipher.c2s"

    .line 2
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cipher.s2c"

    .line 3
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckCiphers"

    .line 4
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->checkCiphers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    array-length v3, v2

    if-lez v3, :cond_2

    .line 6
    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available ciphers."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v2, "kex"

    .line 9
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckKexes"

    .line 10
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/Session;->checkKexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 11
    array-length v4, v3

    if-lez v4, :cond_4

    .line 12
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available kexes."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const-string v3, "server_host_key"

    .line 14
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CheckSignatures"

    .line 15
    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jcraft/jsch/Session;->checkSignatures(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 16
    array-length v5, v4

    if-lez v5, :cond_6

    .line 17
    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available sig algorithm."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    const/4 v4, 0x1

    .line 19
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    .line 21
    new-instance v5, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v5}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 22
    new-instance v6, Lcom/jcraft/jsch/Packet;

    invoke-direct {v6, v5}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 23
    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v7, 0x14

    .line 24
    invoke-virtual {v5, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 25
    sget-object v7, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    monitor-enter v7

    .line 26
    :try_start_0
    sget-object v8, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    iget-object v9, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v10, v5, Lcom/jcraft/jsch/Buffer;->index:I

    const/16 v11, 0x10

    invoke-interface {v8, v9, v10, v11}, Lcom/jcraft/jsch/Random;->fill([BII)V

    invoke-virtual {v5, v11}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 27
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 29
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 30
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 31
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "mac.c2s"

    .line 32
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "mac.s2c"

    .line 33
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "compression.c2s"

    .line 34
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "compression.s2c"

    .line 35
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "lang.c2s"

    .line 36
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v0, "lang.s2c"

    .line 37
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 39
    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v0, 0x5

    .line 40
    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    .line 41
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    .line 42
    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 43
    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 44
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXINIT sent"

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private send_newkeys()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 4
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->isCBC()Z

    move-result p2

    const-string v0, "Packet corrupt"

    if-eqz p2, :cond_5

    const/high16 p2, 0x40000

    if-eq p4, p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    :goto_0
    iget p2, p1, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr p5, p2

    :goto_1
    const/4 p2, 0x0

    if-lez p5, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 4
    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, p4

    if-le p5, v1, :cond_1

    array-length v1, p4

    goto :goto_2

    :cond_1
    move v1, p5

    .line 5
    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v2, p4, p2, v1}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    if-eqz p3, :cond_2

    .line 6
    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {p3, p4, p2, v1}, Lcom/jcraft/jsch/MAC;->update([BII)V

    :cond_2
    sub-int/2addr p5, v1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {p3, p1, p2}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 8
    :cond_4
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_5
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private updateKeys(Lcom/jcraft/jsch/KeyExchange;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getK()[B

    move-result-object v7

    .line 2
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getH()[B

    move-result-object v8

    .line 3
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getHash()Lcom/jcraft/jsch/HASH;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 5
    array-length v0, v8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    .line 6
    array-length v1, v8

    invoke-static {v8, v9, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 8
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 10
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 11
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 12
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 13
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->IVc2s:[B

    .line 14
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    array-length v2, v2

    sub-int v2, v1, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 15
    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v0, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 16
    invoke-interface {p1, v0, v9, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 17
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->IVs2c:[B

    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 19
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 20
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    .line 21
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 22
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 23
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    .line 24
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 25
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 26
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    .line 27
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v1, v2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 28
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 29
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 31
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 34
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 35
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 36
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 37
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 38
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 39
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v2, v1

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 41
    array-length v4, v1

    invoke-static {v1, v9, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v1, v1

    array-length v4, v0

    invoke-static {v0, v9, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->IVs2c:[B

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 45
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 46
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 47
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    .line 49
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    .line 50
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 51
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    .line 52
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    .line 53
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 54
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v2, v1

    if-le v0, v2, :cond_2

    .line 57
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 58
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 59
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 60
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 61
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v1, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 62
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 64
    array-length v3, v1

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v9, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->IVc2s:[B

    invoke-interface {v0, v9, v1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 68
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    .line 69
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 70
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    .line 72
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    .line 73
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 74
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object p1, p1, v0

    .line 75
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->initDeflater(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object p1, p1, v0

    .line 77
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->initInflater(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 78
    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_3

    .line 79
    throw p1

    .line 80
    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method addChannel(Lcom/jcraft/jsch/Channel;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Channel;->setSession(Lcom/jcraft/jsch/Session;)V

    return-void
.end method

.method public connect()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->connect(I)V

    return-void
.end method

.method public connect(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-nez v3, :cond_30

    .line 3
    new-instance v3, Lcom/jcraft/jsch/IO;

    invoke-direct {v3}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v3, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    .line 4
    sget-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "random"

    .line 5
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Random;

    sput-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 7
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 8
    :cond_0
    :goto_0
    sget-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    invoke-static {v3}, Lcom/jcraft/jsch/Packet;->setRandom(Lcom/jcraft/jsch/Random;)V

    .line 9
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Connecting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v6, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 11
    :try_start_1
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    if-nez v9, :cond_3

    .line 12
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    if-nez v9, :cond_2

    .line 13
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v10, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-static {v9, v10, v2}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    .line 14
    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 15
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    goto :goto_1

    .line 16
    :cond_2
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v11, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-interface {v9, v10, v11}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    .line 17
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    invoke-interface {v10, v9}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v9

    .line 18
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-interface {v10, v11}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v10

    .line 19
    :goto_1
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v11, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 20
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v11, v9}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 21
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 22
    :cond_3
    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    :try_start_2
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v12, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v13, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-interface {v10, v11, v12, v13, v2}, Lcom/jcraft/jsch/Proxy;->connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    .line 24
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v11}, Lcom/jcraft/jsch/Proxy;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 25
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v11}, Lcom/jcraft/jsch/Proxy;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 26
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v10}, Lcom/jcraft/jsch/Proxy;->getSocket()Ljava/net/Socket;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    .line 27
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-lez v2, :cond_4

    .line 28
    :try_start_3
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v9, :cond_4

    .line 29
    invoke-virtual {v9, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 30
    :cond_4
    iput-boolean v4, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 31
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 32
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const-string v10, "Connection established"

    invoke-interface {v9, v4, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 33
    :cond_5
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v9, v1}, Lcom/jcraft/jsch/JSch;->addSession(Lcom/jcraft/jsch/Session;)V

    .line 34
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->V_C:[B

    array-length v10, v9

    add-int/2addr v10, v4

    new-array v11, v10, [B

    .line 35
    array-length v12, v9

    invoke-static {v9, v8, v11, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v10, -0x1

    const/16 v12, 0xa

    .line 36
    aput-byte v12, v11, v9

    .line 37
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v9, v11, v8, v10}, Lcom/jcraft/jsch/IO;->put([BII)V

    :cond_6
    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 38
    :cond_7
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v11, v11, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v11, v11

    if-ge v9, v11, :cond_9

    .line 39
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v10}, Lcom/jcraft/jsch/IO;->getByte()I

    move-result v10

    if-gez v10, :cond_8

    goto :goto_4

    .line 40
    :cond_8
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v11, v11, Lcom/jcraft/jsch/Buffer;->buffer:[B

    int-to-byte v13, v10

    aput-byte v13, v11, v9

    add-int/lit8 v9, v9, 0x1

    if-ne v10, v12, :cond_7

    :cond_9
    :goto_4
    if-ltz v10, :cond_2c

    .line 41
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    add-int/lit8 v11, v9, -0x1

    aget-byte v11, v10, v11

    if-ne v11, v12, :cond_a

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_a

    add-int/lit8 v11, v9, -0x1

    .line 42
    aget-byte v11, v10, v11

    if-ne v11, v3, :cond_a

    add-int/lit8 v9, v9, -0x1

    :cond_a
    if-le v9, v5, :cond_6

    .line 43
    array-length v11, v10

    if-eq v9, v11, :cond_b

    aget-byte v11, v10, v8

    const/16 v13, 0x53

    if-ne v11, v13, :cond_6

    aget-byte v11, v10, v4

    if-ne v11, v13, :cond_6

    aget-byte v11, v10, v7

    const/16 v13, 0x48

    if-ne v11, v13, :cond_6

    aget-byte v11, v10, v5

    const/16 v13, 0x2d

    if-eq v11, v13, :cond_b

    goto :goto_3

    .line 44
    :cond_b
    array-length v11, v10

    if-eq v9, v11, :cond_2b

    const/4 v11, 0x7

    if-lt v9, v11, :cond_2b

    const/4 v11, 0x4

    aget-byte v11, v10, v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_c

    const/4 v11, 0x6

    aget-byte v11, v10, v11

    const/16 v12, 0x39

    if-ne v11, v12, :cond_2b

    .line 45
    :cond_c
    new-array v11, v9, [B

    iput-object v11, v1, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v10, v8, v11, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 47
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Remote version string: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Local version string: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->V_C:[B

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 49
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    .line 50
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    .line 51
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v9

    const/16 v10, 0x14

    if-ne v9, v10, :cond_2a

    .line 52
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 53
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const-string v10, "SSH_MSG_KEXINIT received"

    invoke-interface {v9, v4, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 54
    :cond_e
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v9}, Lcom/jcraft/jsch/Session;->receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v9

    .line 55
    :cond_f
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v10}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    .line 56
    invoke-virtual {v9}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v10

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v11

    if-ne v10, v11, :cond_29

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J

    .line 58
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 59
    invoke-virtual {v9}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v10, :cond_f

    .line 60
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 61
    iput-boolean v4, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z

    .line 62
    iget-object v12, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v13, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-direct {v1, v12, v13, v9}, Lcom/jcraft/jsch/Session;->checkHost(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V

    .line 63
    iput-boolean v8, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z

    .line 64
    iget-wide v12, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J
    :try_end_4
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 65
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_newkeys()V

    .line 66
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v10}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    .line 67
    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_27

    .line 68
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    invoke-interface {v10, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 69
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    const-string v11, "SSH_MSG_NEWKEYS received"

    invoke-interface {v10, v4, v11}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 70
    :cond_10
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v10, v9}, Lcom/jcraft/jsch/Session;->receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v9, "MaxAuthTries"

    .line 71
    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_11
    :try_start_7
    const-string v9, "userauth.none"

    .line 73
    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 74
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jcraft/jsch/UserAuth;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 75
    :try_start_8
    invoke-virtual {v9, v1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-result v10

    const-string v11, "PreferredAuthentications"

    .line 76
    invoke-virtual {v1, v11}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    .line 77
    invoke-static {v11, v12}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-nez v10, :cond_12

    .line 78
    check-cast v9, Lcom/jcraft/jsch/UserAuthNone;

    invoke-virtual {v9}, Lcom/jcraft/jsch/UserAuthNone;->getMethods()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 79
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_12
    move-object v11, v6

    :cond_13
    :goto_5
    const-string v9, ","

    .line 80
    invoke-static {v11, v9}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    :goto_6
    const/4 v14, 0x0

    :goto_7
    if-nez v10, :cond_1f

    if-eqz v12, :cond_1f

    .line 81
    array-length v15, v12

    if-ge v13, v15, :cond_1f

    add-int/lit8 v15, v13, 0x1

    .line 82
    aget-object v13, v12, v13

    const/4 v5, 0x0

    .line 83
    :goto_8
    array-length v3, v9

    if-ge v5, v3, :cond_15

    .line 84
    aget-object v3, v9, v5

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_15
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_16

    move v13, v15

    const/16 v3, 0xd

    const/4 v5, 0x3

    goto :goto_7

    .line 85
    :cond_16
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "Authentications that can continue: "

    add-int/lit8 v5, v15, -0x1

    .line 86
    :cond_17
    :goto_a
    array-length v8, v12

    if-ge v5, v8, :cond_18

    .line 87
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, v12, v5

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    .line 88
    array-length v8, v12

    if-ge v5, v8, :cond_17

    .line 89
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 90
    :cond_18
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Next authentication method: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 92
    :cond_19
    :try_start_9
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "userauth."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 93
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "userauth."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/UserAuth;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    .line 95
    :catch_1
    :try_start_a
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 96
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "failed to load "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " method"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v7, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_1a
    move-object v3, v6

    :goto_b
    if-eqz v3, :cond_1e

    .line 97
    :try_start_b
    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 98
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 99
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Authentication succeeded ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ")."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_b
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_1b
    const/4 v14, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 100
    :try_start_c
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 101
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "an exception during authentication\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v7, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1c
    const/4 v14, 0x0

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 102
    throw v2

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 103
    throw v2

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 104
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSchPartialAuthException;->getMethods()Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    .line 105
    invoke-static {v3, v5}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const/4 v13, 0x0

    goto :goto_c

    :cond_1d
    move v13, v15

    :goto_c
    move-object v11, v3

    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v8, 0x0

    goto/16 :goto_6

    :catch_6
    const/4 v14, 0x1

    :cond_1e
    :goto_d
    move v13, v15

    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_1f
    :goto_e
    if-nez v10, :cond_22

    .line 107
    iget v2, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v3, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    if-lt v2, v3, :cond_20

    .line 108
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 109
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Login trials exceeds "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_20
    if-eqz v14, :cond_21

    .line 110
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Auth cancel"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_21
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Auth fail"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_22
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_24

    if-gtz v2, :cond_23

    iget v2, v1, Lcom/jcraft/jsch/Session;->timeout:I

    if-lez v2, :cond_24

    .line 113
    :cond_23
    iget v2, v1, Lcom/jcraft/jsch/Session;->timeout:I

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 114
    :cond_24
    iput-boolean v4, v1, Lcom/jcraft/jsch/Session;->isAuthed:Z

    .line 115
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 116
    :try_start_d
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v3, :cond_26

    .line 117
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    .line 118
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Connect thread "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " session"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 119
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v3, :cond_25

    .line 120
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v5, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 121
    :cond_25
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->requestPortForwarding()V

    .line 123
    :cond_26
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 124
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->password:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 125
    iput-object v6, v1, Lcom/jcraft/jsch/Session;->password:[B

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 126
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v3

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 127
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 128
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "MaxAuthTries: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "MaxAuthTries"

    invoke-virtual {v1, v8}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_27
    const/4 v2, 0x0

    .line 129
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 130
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "invalid protocol(newkyes): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catch_9
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 131
    :try_start_10
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 132
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 133
    :try_start_11
    throw v2

    :catch_a
    move-exception v0

    move-object v2, v0

    goto :goto_f

    :cond_28
    const/4 v2, 0x0

    .line 134
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 135
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "verify: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    const/4 v2, 0x0

    .line 136
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 137
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "invalid protocol(kex): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2a
    const/4 v2, 0x0

    .line 138
    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 139
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "invalid protocol: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_2b
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "invalid server\'s version string"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_2c
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "connection is closed by foreign host"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 142
    :try_start_12
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    throw v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catch_b
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 143
    :goto_f
    :try_start_14
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->in_kex:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 144
    :try_start_15
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v3, :cond_2d

    .line 145
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 147
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xd

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/lit16 v8, v8, 0x80

    invoke-virtual {v5, v8}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 148
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 149
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 150
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 151
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v4, "en"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 152
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 153
    :catch_c
    :cond_2d
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :catch_d
    const/4 v3, 0x0

    .line 154
    :try_start_17
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 155
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_2f

    .line 156
    instance-of v3, v2, Lcom/jcraft/jsch/JSchException;

    if-eqz v3, :cond_2e

    check-cast v2, Lcom/jcraft/jsch/JSchException;

    throw v2

    .line 157
    :cond_2e
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Session.connect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_2f
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 159
    :goto_10
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->password:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 160
    iput-object v6, v1, Lcom/jcraft/jsch/Session;->password:[B

    throw v2

    .line 161
    :cond_30
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "session is already connected"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw v2

    :goto_12
    goto :goto_11
.end method

.method public delPortForwardingL(I)V
    .locals 1

    const-string v0, "127.0.0.1"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/Session;->delPortForwardingL(Ljava/lang/String;I)V

    return-void
.end method

.method public delPortForwardingL(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/PortWatcher;->delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    return-void
.end method

.method public delPortForwardingR(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/Session;->delPortForwardingR(Ljava/lang/String;I)V

    return-void
.end method

.method public delPortForwardingR(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    return-void
.end method

.method public disconnect()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Disconnecting from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->disconnect(Lcom/jcraft/jsch/Session;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 6
    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->delPort(Lcom/jcraft/jsch/Session;)V

    .line 7
    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;)V

    .line 8
    invoke-static {p0}, Lcom/jcraft/jsch/ChannelX11;->removeFakedCookie(Lcom/jcraft/jsch/Session;)V

    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 12
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    .line 14
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, v0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 23
    :cond_6
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v1}, Lcom/jcraft/jsch/Proxy;->close()V

    .line 25
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :try_start_3
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 27
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 28
    :catch_0
    :cond_7
    :goto_0
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    .line 29
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    .line 30
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->removeSession(Lcom/jcraft/jsch/Session;)Z

    return-void

    :catchall_1
    move-exception v1

    .line 31
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public encode(Lcom/jcraft/jsch/Packet;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v4, v3, Lcom/jcraft/jsch/Buffer;->index:I

    aput v4, v2, v1

    .line 3
    iget-object v4, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v5, 0x5

    invoke-interface {v0, v4, v5, v2}, Lcom/jcraft/jsch/Compression;->compress([BI[I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 4
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->padding(I)V

    .line 7
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    .line 8
    sget-object v2, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    monitor-enter v2

    .line 9
    :try_start_0
    sget-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v4, v0

    invoke-interface {v3, v5, v4, v0}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 10
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/16 v0, 0x8

    .line 11
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->padding(I)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_2

    .line 13
    iget v2, p0, Lcom/jcraft/jsch/Session;->seqo:I

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 14
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 15
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v3, :cond_3

    .line 17
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v7, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v5, 0x0

    .line 18
    iget v6, v0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v8, 0x0

    move-object v4, v7

    invoke-interface/range {v3 .. v8}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_4

    .line 20
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    :cond_4
    return-void
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKey()Lcom/jcraft/jsch/HostKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    return-object v0
.end method

.method public getHostKeyAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Session;->port:I

    return v0
.end method

.method public getPortForwardingL()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->getPortForwarding(Lcom/jcraft/jsch/Session;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortForwardingR()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPortForwarding(Lcom/jcraft/jsch/Session;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliveCountMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    return v0
.end method

.method public getServerAliveInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    return v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSessionId()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    return-object v0
.end method

.method public getStreamForwarder(Ljava/lang/String;I)Lcom/jcraft/jsch/Channel;
    .locals 1

    .line 1
    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->init()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setHost(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setPort(I)V

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    return v0
.end method

.method public getUserInfo()Lcom/jcraft/jsch/UserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    return v0
.end method

.method public noMoreSessionChannels()V
    .locals 3

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 2
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 3
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x50

    .line 4
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 5
    sget-object v2, Lcom/jcraft/jsch/Session;->nomoresessions:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Channel;->getChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    .line 4
    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->init()V

    .line 5
    instance-of v0, p1, Lcom/jcraft/jsch/ChannelSession;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->applyConfigChannel(Lcom/jcraft/jsch/ChannelSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "session is down"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 2
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, v7, Lcom/jcraft/jsch/Buffer;->index:I

    iget v3, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 3
    iget v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    iget v11, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    add-int/2addr v0, v11

    iput v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 4
    iget-object v8, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v8, :cond_1

    .line 5
    iget-object v12, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v9, v12

    invoke-interface/range {v8 .. v13}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 6
    :cond_1
    iget-object v0, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v8, 0x0

    aget-byte v1, v0, v8

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const/4 v9, 0x1

    aget-byte v2, v0, v9

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v10, 0x2

    aget-byte v2, v0, v10

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v11, 0x3

    aget-byte v0, v0, v11

    and-int/lit16 v0, v0, 0xff

    or-int v12, v1, v0

    const/high16 v13, 0x40000

    const/4 v14, 0x5

    if-lt v12, v14, :cond_2

    if-le v12, v13, :cond_3

    .line 7
    :cond_2
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v3, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    const/high16 v5, 0x40000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_3
    add-int/lit8 v0, v12, 0x4

    .line 8
    iget v1, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    sub-int v15, v0, v1

    .line 9
    iget v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    add-int v1, v0, v15

    iget-object v2, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_4

    add-int v1, v0, v15

    .line 10
    new-array v1, v1, [B

    .line 11
    invoke-static {v2, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 13
    :cond_4
    iget v0, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    rem-int v0, v15, v0

    const/4 v5, 0x4

    if-eqz v0, :cond_6

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Bad packet length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v5, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 17
    :cond_5
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v3, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget v0, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    sub-int v16, v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v12

    const/4 v11, 0x4

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    goto :goto_1

    :cond_6
    const/4 v11, 0x4

    :goto_1
    if-lez v15, :cond_7

    .line 18
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, v7, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v0, v1, v2, v15}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    iget v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v0, v15

    iput v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    .line 19
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_7

    .line 20
    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, v6, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    move v3, v15

    move-object v15, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v1

    move/from16 v20, v2

    invoke-interface/range {v15 .. v20}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    goto :goto_2

    :cond_7
    move v3, v15

    .line 21
    :goto_2
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_9

    .line 22
    iget v1, v6, Lcom/jcraft/jsch/Session;->seqi:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 23
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, v7, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v1, v8, v2}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 24
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v1, v6, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    invoke-interface {v0, v1, v8}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 25
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v6, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v8, v2}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 26
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    iget-object v1, v6, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    if-gt v3, v13, :cond_8

    .line 27
    iget-object v2, v6, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v4, v6, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    sub-int v5, v13, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    goto/16 :goto_0

    .line 28
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_9
    iget v0, v6, Lcom/jcraft/jsch/Session;->seqi:I

    add-int/2addr v0, v9

    iput v0, v6, Lcom/jcraft/jsch/Session;->seqi:I

    .line 30
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_b

    .line 31
    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v2, v1, v11

    .line 32
    iget-object v3, v6, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    iget v4, v7, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v4, v14

    sub-int/2addr v4, v2

    aput v4, v3, v8

    .line 33
    invoke-interface {v0, v1, v14, v3}, Lcom/jcraft/jsch/Compression;->uncompress([BI[I)[B

    move-result-object v0

    if-eqz v0, :cond_a

    .line 34
    iput-object v0, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 35
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    aget v0, v0, v8

    add-int/2addr v0, v14

    iput v0, v7, Lcom/jcraft/jsch/Buffer;->index:I

    goto :goto_3

    .line 36
    :cond_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "fail in inflater"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 37
    :cond_b
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v9, :cond_12

    if-ne v0, v10, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 41
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Received SSH_MSG_UNIMPLEMENTED for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v9, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-ne v0, v11, :cond_e

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_10

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-static {v0, v6}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    .line 48
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jsch/Channel;->addRemoteWindowSize(J)V

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x34

    if-ne v0, v1, :cond_11

    .line 49
    iput-boolean v9, v6, Lcom/jcraft/jsch/Session;->isAuthed:Z

    .line 50
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_11

    iget-object v0, v6, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_11

    .line 51
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 52
    invoke-direct {v6, v0}, Lcom/jcraft/jsch/Session;->initDeflater(Ljava/lang/String;)V

    .line 53
    iget-object v0, v6, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 54
    invoke-direct {v6, v0}, Lcom/jcraft/jsch/Session;->initInflater(Ljava/lang/String;)V

    .line 55
    :cond_11
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    return-object v7

    .line 56
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 61
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "SSH_MSG_DISCONNECT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v3

    :goto_6
    goto :goto_5
.end method

.method public rekey()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    return-void
.end method

.method public run()V
    .locals 13

    .line 1
    iput-object p0, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 3
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v8, v5

    :catch_0
    :cond_0
    :goto_1
    const/4 v7, 0x0

    .line 4
    :goto_2
    :try_start_0
    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v9, :cond_19

    .line 5
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 6
    :try_start_2
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-eqz v8, :cond_2

    .line 7
    invoke-virtual {v8}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v9

    if-ne v9, v7, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    .line 9
    invoke-virtual {v8, v0}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "verify: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v9, 0x14

    if-eq v7, v9, :cond_16

    const/16 v9, 0x15

    if-eq v7, v9, :cond_15

    packed-switch v7, :pswitch_data_0

    const/16 v9, 0x5d

    packed-switch v7, :pswitch_data_1

    .line 11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown SSH message type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 13
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 14
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 15
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iput v6, v7, Lcom/jcraft/jsch/Channel;->reply:I

    goto :goto_1

    .line 17
    :pswitch_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 18
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 19
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 20
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_1

    .line 21
    :cond_4
    iput v2, v7, Lcom/jcraft/jsch/Channel;->reply:I

    goto/16 :goto_1

    .line 22
    :pswitch_2
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 23
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 24
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 25
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v9

    .line 26
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 27
    :goto_3
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_0

    const/16 v11, 0x64

    .line 28
    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v9

    const-string v12, "exit-status"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 29
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v9

    .line 30
    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setExitStatus(I)V

    const/16 v11, 0x63

    :cond_6
    if-eqz v10, :cond_0

    .line 31
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 32
    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 33
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_1

    .line 35
    :pswitch_3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 36
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 37
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 38
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 39
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->disconnect()V

    goto/16 :goto_1

    .line 40
    :pswitch_4
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 41
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 42
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 43
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 44
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->eof_remote()V

    goto/16 :goto_1

    .line 45
    :pswitch_5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 46
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 47
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 48
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 49
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 50
    invoke-virtual {v0, v3, v4}, Lcom/jcraft/jsch/Buffer;->getString([I[I)[B

    move-result-object v10

    if-nez v7, :cond_7

    goto/16 :goto_1

    .line 51
    :cond_7
    aget v11, v4, v6

    if-nez v11, :cond_8

    goto/16 :goto_1

    .line 52
    :cond_8
    aget v11, v3, v6

    aget v12, v4, v6

    invoke-virtual {v7, v10, v11, v12}, Lcom/jcraft/jsch/Channel;->write_ext([BII)V

    .line 53
    aget v10, v4, v6

    .line 54
    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v11, v10

    invoke-virtual {v7, v11}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    .line 55
    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 57
    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 58
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 59
    iget v9, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 60
    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 61
    :try_start_3
    iget-boolean v9, v7, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v9, :cond_9

    .line 62
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 63
    :cond_9
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :try_start_4
    iget v9, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 65
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 66
    :pswitch_6
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 67
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 68
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 69
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 70
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 71
    invoke-virtual {v0, v3, v4}, Lcom/jcraft/jsch/Buffer;->getString([I[I)[B

    move-result-object v10

    if-nez v7, :cond_a

    goto/16 :goto_1

    .line 72
    :cond_a
    aget v11, v4, v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-nez v11, :cond_b

    goto/16 :goto_1

    .line 73
    :cond_b
    :try_start_7
    aget v11, v3, v6

    aget v12, v4, v6

    invoke-virtual {v7, v10, v11, v12}, Lcom/jcraft/jsch/Channel;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 74
    :try_start_8
    aget v10, v4, v6

    .line 75
    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v11, v10

    invoke-virtual {v7, v11}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    .line 76
    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 78
    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 79
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 80
    iget v9, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 81
    monitor-enter v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 82
    :try_start_9
    iget-boolean v9, v7, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v9, :cond_c

    .line 83
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 84
    :cond_c
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 85
    :try_start_a
    iget v9, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    .line 86
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 87
    :catch_1
    :try_start_d
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    .line 88
    :pswitch_7
    :try_start_e
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 89
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 90
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 91
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-nez v7, :cond_d

    goto/16 :goto_1

    .line 92
    :cond_d
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/jcraft/jsch/Channel;->addRemoteWindowSize(J)V

    goto/16 :goto_1

    .line 93
    :pswitch_8
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 94
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 95
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 96
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v9

    .line 98
    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setExitStatus(I)V

    .line 99
    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->close:Z

    .line 100
    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    .line 101
    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    goto/16 :goto_1

    .line 102
    :pswitch_9
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 103
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 104
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 105
    invoke-static {v7, p0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 106
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v9

    .line 107
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v10

    .line 108
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v12

    if-eqz v7, :cond_0

    .line 109
    invoke-virtual {v7, v10, v11}, Lcom/jcraft/jsch/Channel;->setRemoteWindowSize(J)V

    .line 110
    invoke-virtual {v7, v12}, Lcom/jcraft/jsch/Channel;->setRemotePacketSize(I)V

    .line 111
    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    .line 112
    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    goto/16 :goto_1

    .line 113
    :pswitch_a
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 114
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 115
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    .line 116
    invoke-static {v7}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v7

    const-string v9, "forwarded-tcpip"

    .line 117
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "x11"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    if-nez v9, :cond_10

    :cond_e
    const-string v9, "auth-agent@openssh.com"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    if-nez v9, :cond_10

    .line 118
    :cond_f
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v7, 0x5c

    .line 119
    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 120
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 121
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 122
    sget-object v7, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 123
    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_1

    .line 125
    :cond_10
    invoke-static {v7}, Lcom/jcraft/jsch/Channel;->getChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v9

    .line 126
    invoke-virtual {p0, v9}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    .line 127
    invoke-virtual {v9, v0}, Lcom/jcraft/jsch/Channel;->getData(Lcom/jcraft/jsch/Buffer;)V

    .line 128
    invoke-virtual {v9}, Lcom/jcraft/jsch/Channel;->init()V

    .line 129
    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Channel "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 131
    iget-boolean v7, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v7, :cond_11

    .line 132
    invoke-virtual {v10, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 133
    :cond_11
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 134
    :pswitch_b
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getThread()Ljava/lang/Thread;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 135
    iget-object v10, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/16 v11, 0x51

    if-ne v7, v11, :cond_12

    const/4 v12, 0x1

    goto :goto_4

    :cond_12
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setReply(I)V

    if-ne v7, v11, :cond_13

    .line 136
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getPort()I

    move-result v7

    if-nez v7, :cond_13

    .line 137
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 138
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 139
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setPort(I)V

    .line 140
    :cond_13
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_1

    .line 141
    :pswitch_c
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 142
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 143
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 144
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    goto :goto_5

    :cond_14
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_0

    .line 145
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v7, 0x52

    .line 146
    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_1

    .line 148
    :cond_15
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_newkeys()V

    .line 149
    invoke-direct {p0, v0, v8}, Lcom/jcraft/jsch/Session;->receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    goto/16 :goto_0

    .line 150
    :cond_16
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v7

    move-object v8, v7

    goto/16 :goto_1

    :catch_2
    move-exception v9

    .line 151
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-nez v10, :cond_17

    iget v10, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    if-ge v7, v10, :cond_17

    .line 152
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->sendKeepAliveMsg()V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 153
    :cond_17
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v10, :cond_18

    iget v10, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    if-ge v7, v10, :cond_18

    goto :goto_6

    .line 154
    :cond_18
    throw v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :catch_3
    move-exception v0

    .line 155
    iput-boolean v6, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 156
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 157
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Caught an exception, leaving main loop due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 158
    :cond_19
    :try_start_f
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 159
    :catch_4
    iput-boolean v6, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendIgnore()V
    .locals 3

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 2
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 3
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public sendKeepAliveMsg()V
    .locals 3

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 2
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 3
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x50

    .line 4
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 5
    sget-object v2, Lcom/jcraft/jsch/Session;->keepalivemsg:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    return-void
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConfig(Ljava/util/Hashtable;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setConfig(Ljava/util/Properties;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/util/Hashtable;)V

    return-void
.end method

.method public setDaemonThread(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    return-void
.end method

.method public setHostKeyAlias(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    return-void
.end method

.method public setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    return-void
.end method

.method public setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->password:[B

    :cond_0
    return-void
.end method

.method public setPassword([B)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->password:[B

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/Session;->port:I

    return-void
.end method

.method public setPortForwardingL(ILjava/lang/String;I)I
    .locals 1

    const-string v0, "127.0.0.1"

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;)I
    .locals 3

    .line 12
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    .line 13
    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    iget-object v2, p1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    iget p1, p1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I
    .locals 0

    .line 4
    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/PortWatcher;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p6}, Lcom/jcraft/jsch/PortWatcher;->setConnectTimeout(I)V

    .line 6
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, "PortWatcher Thread for "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8
    iget-boolean p3, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 11
    iget p1, p1, Lcom/jcraft/jsch/PortWatcher;->lport:I

    return p1
.end method

.method public setPortForwardingR(Ljava/lang/String;)I
    .locals 9

    .line 10
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    .line 11
    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v0

    .line 12
    iget-object v3, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v4, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    iget-object v6, p1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    iget v7, p1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    const/4 v8, 0x0

    move-object v2, p0

    move v5, v0

    invoke-static/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return v0
.end method

.method public setPortForwardingR(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPortForwardingR(ILjava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return-void
.end method

.method public setPortForwardingR(ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return-void
.end method

.method public setPortForwardingR(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return-void
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 7

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    return-void
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setProxy(Lcom/jcraft/jsch/Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    return-void
.end method

.method public setServerAliveCountMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    return-void
.end method

.method public setServerAliveInterval(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setTimeout(I)V

    .line 2
    iput p1, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    return-void
.end method

.method public setSocketFactory(Lcom/jcraft/jsch/SocketFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    return-void
.end method

.method public setTimeout(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 2
    iput p1, p0, Lcom/jcraft/jsch/Session;->timeout:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "invalid timeout value"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    iput p1, p0, Lcom/jcraft/jsch/Session;->timeout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setUserInfo(Lcom/jcraft/jsch/UserInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    return-void
.end method

.method setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    return-void
.end method

.method public setX11Cookie(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setCookie(Ljava/lang/String;)V

    return-void
.end method

.method public setX11Host(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method public setX11Port(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setPort(I)V

    return-void
.end method

.method public write(Lcom/jcraft/jsch/Packet;)V
    .locals 6

    .line 39
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 40
    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_prompt:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "timeout in waiting for rekeying process."

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_3

    const/16 v3, 0x15

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_3

    if-eq v2, v3, :cond_3

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    const/16 v3, 0x21

    if-eq v2, v3, :cond_3

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0xa

    .line 44
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 45
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "timeout in waiting for rekeying process."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    const-wide/16 v2, 0xa

    .line 5
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 6
    :cond_2
    monitor-enter p2

    .line 7
    :try_start_1
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->rwsize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    int-to-long v7, p3

    const/4 v2, 0x1

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    .line 8
    :try_start_2
    iget v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    add-int/2addr v5, v2

    iput v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    const-wide/16 v5, 0x64

    .line 9
    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    iget v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    :goto_2
    sub-int/2addr v5, v2

    iput v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_3

    :catchall_0
    move-exception p1

    iget p3, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    sub-int/2addr p3, v2

    iput p3, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    throw p1

    :catch_1
    iget v5, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_2

    .line 11
    :cond_3
    :goto_3
    iget-boolean v5, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v5, :cond_4

    .line 12
    monitor-exit p2

    goto :goto_0

    .line 13
    :cond_4
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_5

    .line 14
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v0, v7

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    .line 15
    monitor-exit p2

    goto/16 :goto_6

    .line 16
    :cond_5
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 17
    iget-boolean v5, p2, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v5, :cond_f

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, -0x1

    .line 18
    monitor-enter p2

    .line 19
    :try_start_4
    iget-wide v9, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    const/4 v6, 0x0

    cmp-long v11, v9, v3

    if-lez v11, :cond_a

    .line 20
    iget-wide v3, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    cmp-long p3, v3, v7

    if-lez p3, :cond_6

    move-wide v3, v7

    :cond_6
    cmp-long p3, v3, v7

    if-eqz p3, :cond_9

    long-to-int p3, v3

    .line 21
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    goto :goto_4

    :cond_7
    const/16 v5, 0x8

    :goto_4
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v9, :cond_8

    invoke-interface {v9}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    :cond_8
    invoke-virtual {p1, p3, v5, v6}, Lcom/jcraft/jsch/Packet;->shift(III)I

    move-result p3

    move v6, p3

    .line 22
    :cond_9
    iget-object p3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p3}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result p3

    .line 23
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v5

    sub-long/2addr v7, v3

    long-to-int v8, v7

    .line 24
    iget-wide v9, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v9, v3

    iput-wide v9, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    move v3, v6

    move v6, p3

    move p3, v8

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 25
    :goto_5
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_c

    .line 26
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    if-nez p3, :cond_b

    return-void

    .line 27
    :cond_b
    invoke-virtual {p1, v6, v5, v3, p3}, Lcom/jcraft/jsch/Packet;->unshift(BIII)V

    .line 28
    :cond_c
    monitor-enter p2

    .line 29
    :try_start_5
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v2, :cond_d

    .line 30
    monitor-exit p2

    goto/16 :goto_0

    .line 31
    :cond_d
    iget-wide v2, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v4, p3

    cmp-long v6, v2, v4

    if-ltz v6, :cond_e

    .line 32
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v0, v4

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    .line 33
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 34
    :goto_6
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    return-void

    .line 35
    :cond_e
    :try_start_6
    monitor-exit p2

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 36
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    .line 37
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "channel is broken"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p1

    .line 38
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
