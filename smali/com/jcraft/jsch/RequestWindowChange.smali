.class Lcom/jcraft/jsch/RequestWindowChange;
.super Lcom/jcraft/jsch/Request;
.source "RequestWindowChange.java"


# instance fields
.field height_pixels:I

.field height_rows:I

.field width_columns:I

.field width_pixels:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/16 v0, 0x50

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    const/16 v0, 0x18

    .line 3
    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    const/16 v0, 0x280

    .line 4
    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    const/16 v0, 0x1e0

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    return-void
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 2
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 3
    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 4
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v1, 0x62

    .line 5
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 6
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const-string p2, "window-change"

    .line 7
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 8
    invoke-virtual {p0}, Lcom/jcraft/jsch/Request;->waitForReply()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 9
    iget p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 10
    iget p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 11
    iget p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 12
    iget p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method setSize(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    .line 2
    iput p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    .line 3
    iput p3, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    .line 4
    iput p4, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    return-void
.end method
