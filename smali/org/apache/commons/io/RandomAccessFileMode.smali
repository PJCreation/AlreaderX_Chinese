.class public final enum Lorg/apache/commons/io/RandomAccessFileMode;
.super Ljava/lang/Enum;
.source "RandomAccessFileMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/RandomAccessFileMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum READ_ONLY:Lorg/apache/commons/io/RandomAccessFileMode;

.field public static final enum READ_WRITE:Lorg/apache/commons/io/RandomAccessFileMode;

.field public static final enum READ_WRITE_SYNC_ALL:Lorg/apache/commons/io/RandomAccessFileMode;

.field public static final enum READ_WRITE_SYNC_CONTENT:Lorg/apache/commons/io/RandomAccessFileMode;

.field private static final synthetic e:[Lorg/apache/commons/io/RandomAccessFileMode;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/apache/commons/io/RandomAccessFileMode;

    const-string v1, "READ_ONLY"

    const/4 v2, 0x0

    const-string v3, "r"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/io/RandomAccessFileMode;->READ_ONLY:Lorg/apache/commons/io/RandomAccessFileMode;

    .line 2
    new-instance v1, Lorg/apache/commons/io/RandomAccessFileMode;

    const-string v3, "READ_WRITE"

    const/4 v4, 0x1

    const-string v5, "rw"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/io/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/io/RandomAccessFileMode;->READ_WRITE:Lorg/apache/commons/io/RandomAccessFileMode;

    .line 3
    new-instance v3, Lorg/apache/commons/io/RandomAccessFileMode;

    const-string v5, "READ_WRITE_SYNC_ALL"

    const/4 v6, 0x2

    const-string v7, "rws"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/io/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/io/RandomAccessFileMode;->READ_WRITE_SYNC_ALL:Lorg/apache/commons/io/RandomAccessFileMode;

    .line 4
    new-instance v5, Lorg/apache/commons/io/RandomAccessFileMode;

    const-string v7, "READ_WRITE_SYNC_CONTENT"

    const/4 v8, 0x3

    const-string v9, "rwd"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/commons/io/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/io/RandomAccessFileMode;->READ_WRITE_SYNC_CONTENT:Lorg/apache/commons/io/RandomAccessFileMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/commons/io/RandomAccessFileMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/apache/commons/io/RandomAccessFileMode;->e:[Lorg/apache/commons/io/RandomAccessFileMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/apache/commons/io/RandomAccessFileMode;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/RandomAccessFileMode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/io/RandomAccessFileMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/RandomAccessFileMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/RandomAccessFileMode;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/RandomAccessFileMode;->e:[Lorg/apache/commons/io/RandomAccessFileMode;

    invoke-virtual {v0}, [Lorg/apache/commons/io/RandomAccessFileMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/RandomAccessFileMode;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/io/RandomAccessFileMode;->f:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public create(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 2

    .line 3
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/io/RandomAccessFileMode;->f:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public create(Ljava/nio/file/Path;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/RandomAccessFileMode;->create(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/RandomAccessFileMode;->f:Ljava/lang/String;

    return-object v0
.end method
