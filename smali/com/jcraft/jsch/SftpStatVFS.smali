.class public Lcom/jcraft/jsch/SftpStatVFS;
.super Ljava/lang/Object;
.source "SftpStatVFS.java"


# instance fields
.field atime:I

.field private bavail:J

.field private bfree:J

.field private blocks:J

.field private bsize:J

.field extended:[Ljava/lang/String;

.field private favail:J

.field private ffree:J

.field private files:J

.field private flag:J

.field flags:I

.field private frsize:J

.field private fsid:J

.field gid:I

.field mtime:I

.field private namemax:J

.field permissions:I

.field size:J

.field uid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->flags:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->extended:[Ljava/lang/String;

    return-void
.end method

.method static getStatVFS(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 7

    .line 1
    new-instance v0, Lcom/jcraft/jsch/SftpStatVFS;

    invoke-direct {v0}, Lcom/jcraft/jsch/SftpStatVFS;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->bsize:J

    .line 3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->frsize:J

    .line 4
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->blocks:J

    .line 5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->bfree:J

    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->bavail:J

    .line 7
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->files:J

    .line 8
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->ffree:J

    .line 9
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->favail:J

    .line 10
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->fsid:J

    .line 11
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    long-to-int v2, v1

    .line 12
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/jcraft/jsch/SftpStatVFS;->namemax:J

    and-int/lit8 p0, v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_0

    const-wide/16 v5, 0x1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 13
    :goto_0
    iput-wide v5, v0, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    and-int/lit8 p0, v2, 0x2

    if-eqz p0, :cond_1

    const-wide/16 v3, 0x2

    :cond_1
    or-long v1, v5, v3

    .line 14
    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    return-object v0
.end method


# virtual methods
.method public getAvail()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getAvailBlocks()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bavail:J

    return-wide v0
.end method

.method public getAvailForNonRoot()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getAvailBlocks()J

    move-result-wide v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getAvailINodes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->favail:J

    return-wide v0
.end method

.method public getBlockSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bsize:J

    return-wide v0
.end method

.method public getBlocks()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->blocks:J

    return-wide v0
.end method

.method public getCapacity()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getFileSystemID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->fsid:J

    return-wide v0
.end method

.method public getFragmentSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->frsize:J

    return-wide v0
.end method

.method public getFreeBlocks()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bfree:J

    return-wide v0
.end method

.method public getFreeINodes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->ffree:J

    return-wide v0
.end method

.method public getINodes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->files:J

    return-wide v0
.end method

.method public getMaximumFilenameLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->namemax:J

    return-wide v0
.end method

.method public getMountFlag()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    return-wide v0
.end method

.method public getSize()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsed()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method
