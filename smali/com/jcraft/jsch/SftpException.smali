.class public Lcom/jcraft/jsch/SftpException;
.super Ljava/lang/Exception;
.source "SftpException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field public id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/jcraft/jsch/SftpException;->cause:Ljava/lang/Throwable;

    .line 3
    iput p1, p0, Lcom/jcraft/jsch/SftpException;->id:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/jcraft/jsch/SftpException;->cause:Ljava/lang/Throwable;

    .line 6
    iput p1, p0, Lcom/jcraft/jsch/SftpException;->id:I

    .line 7
    iput-object p3, p0, Lcom/jcraft/jsch/SftpException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/SftpException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/jcraft/jsch/SftpException;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
