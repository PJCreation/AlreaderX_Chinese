.class Lcom/jcraft/jsch/RequestX11;
.super Lcom/jcraft/jsch/Request;
.source "RequestX11.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 2
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 3
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 4
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v2, 0x62

    .line 5
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 6
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const-string p2, "x11-req"

    .line 7
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 8
    invoke-virtual {p0}, Lcom/jcraft/jsch/Request;->waitForReply()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const-string v2, "MIT-MAGIC-COOKIE-1"

    .line 10
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 11
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->getFakedCookie(Lcom/jcraft/jsch/Session;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 12
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Request;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p1, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    sput-object p1, Lcom/jcraft/jsch/ChannelX11;->cookie:[B

    return-void
.end method
