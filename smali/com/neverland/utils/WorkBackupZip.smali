.class public Lcom/neverland/utils/WorkBackupZip;
.super Ljava/lang/Object;
.source "WorkBackupZip.java"


# static fields
.field static final BUFFER:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "makeZip"

.field private static isCompleted:Z = true

.field private static isError:Z = false

.field private static needRestart:Z = true

.field private static final syncObj:Ljava/lang/Object;


# instance fields
.field data:[B

.field private final dbOper:Lcom/neverland/readbase/DBOperation;

.field out:Ljava/util/zip/ZipOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/neverland/utils/WorkBackupZip;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/utils/WorkBackupZip;->out:Ljava/util/zip/ZipOutputStream;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/neverland/utils/WorkBackupZip;->data:[B

    .line 4
    new-instance v0, Lcom/neverland/readbase/DBOperation;

    invoke-direct {v0}, Lcom/neverland/readbase/DBOperation;-><init>()V

    iput-object v0, p0, Lcom/neverland/utils/WorkBackupZip;->dbOper:Lcom/neverland/readbase/DBOperation;

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/utils/WorkBackupZip;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/neverland/utils/WorkBackupZip;->addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addZipFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "addZipFile open"

    .line 3
    invoke-direct {p0, p1}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string p1, "addZipFile error 0"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    move-object v3, v2

    const/4 p1, 0x0

    .line 6
    :goto_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    if-eqz p2, :cond_0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 8
    :cond_0
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 9
    :try_start_2
    iget-object p3, p0, Lcom/neverland/utils/WorkBackupZip;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p3, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const-string p2, "addZipFile entry"

    .line 10
    invoke-direct {p0, p2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "addZipFile entry error"

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 13
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/neverland/utils/WorkBackupZip;->data:[B

    invoke-virtual {v2, p2, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 14
    iget-object p3, p0, Lcom/neverland/utils/WorkBackupZip;->out:Ljava/util/zip/ZipOutputStream;

    iget-object v3, p0, Lcom/neverland/utils/WorkBackupZip;->data:[B

    invoke-virtual {p3, v3, v1, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "addZipFile data error"

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 17
    :cond_1
    :try_start_4
    iget-object p2, p0, Lcom/neverland/utils/WorkBackupZip;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    .line 18
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move v1, p1

    goto :goto_4

    :catch_5
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return v1
.end method

.method public static clearTask()V
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/utils/WorkBackupZip;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sput-boolean v1, Lcom/neverland/utils/WorkBackupZip;->isCompleted:Z

    .line 3
    sput-boolean v1, Lcom/neverland/utils/WorkBackupZip;->isError:Z

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcom/neverland/utils/WorkBackupZip;->needRestart:Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private closeZip()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/neverland/utils/WorkBackupZip;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createZip(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/neverland/utils/WorkBackupZip;->out:Ljava/util/zip/ZipOutputStream;

    return p1
.end method

.method public static getCompleted()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/utils/WorkBackupZip;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/neverland/utils/WorkBackupZip;->isCompleted:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getError()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/utils/WorkBackupZip;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/neverland/utils/WorkBackupZip;->isError:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getNeedRestart()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/utils/WorkBackupZip;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/neverland/utils/WorkBackupZip;->needRestart:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "makeZip"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTask(Z)V
    .locals 2

    .line 6
    sget-object v0, Lcom/neverland/utils/WorkBackupZip;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 7
    :try_start_0
    sput-boolean v1, Lcom/neverland/utils/WorkBackupZip;->isCompleted:Z

    .line 8
    sput-boolean p0, Lcom/neverland/utils/WorkBackupZip;->isError:Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setTask(ZZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/neverland/utils/WorkBackupZip;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    sput-boolean v1, Lcom/neverland/utils/WorkBackupZip;->isCompleted:Z

    .line 3
    sput-boolean p0, Lcom/neverland/utils/WorkBackupZip;->isError:Z

    .line 4
    sput-boolean p1, Lcom/neverland/utils/WorkBackupZip;->needRestart:Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unpackZip(Ljava/lang/String;ZZ)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, v0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_12

    move-object v4, v0

    .line 3
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_a

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_2
    move-exception v5

    .line 6
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/Skins/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x2f

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v6, Ljava/io/File;

    sget-object v9, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v9, v9, Lcom/neverland/utils/TCustomDevice;->skinPath:Ljava/lang/String;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_f

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "/Assets/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p3, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    new-instance v6, Ljava/io/File;

    sget-object v9, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v9, v9, Lcom/neverland/utils/TCustomDevice;->assetsPath:Ljava/lang/String;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_f

    goto/16 :goto_1

    .line 16
    :cond_5
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "/Fonts/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez p3, :cond_6

    goto/16 :goto_1

    .line 17
    :cond_6
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 18
    sget-object v6, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v9, v6, Lcom/neverland/utils/TCustomDevice;->fontsPaths:Ljava/util/ArrayList;

    const/4 v10, 0x2

    if-eqz v9, :cond_8

    .line 19
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v1, :cond_8

    iget-object v9, v6, Lcom/neverland/utils/TCustomDevice;->fontsPaths:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, v6, Lcom/neverland/utils/TCustomDevice;->fontsPaths:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    new-instance v9, Ljava/io/File;

    iget-object v6, v6, Lcom/neverland/utils/TCustomDevice;->fontsPaths:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_8
    :goto_2
    invoke-virtual {v6}, Lcom/neverland/utils/TCustomDevice;->getAllCardNames()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 24
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v1, :cond_b

    .line 25
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 26
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_9

    goto :goto_4

    .line 27
    :cond_9
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Fonts"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    :goto_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    .line 29
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 30
    :cond_a
    new-instance v6, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_f

    goto/16 :goto_1

    :cond_b
    :goto_4
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 32
    :cond_c
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "alrxread.db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez p2, :cond_d

    goto/16 :goto_1

    .line 33
    :cond_d
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 34
    new-instance v6, Ljava/io/File;

    sget-object v9, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v9, v9, Lcom/neverland/utils/TCustomDevice;->restorePath:Ljava/lang/String;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_f

    goto/16 :goto_1

    .line 36
    :cond_e
    new-instance v6, Ljava/io/File;

    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v5, v5, Lcom/neverland/utils/TCustomDevice;->restorePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_f
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_10

    goto/16 :goto_1

    .line 38
    :cond_10
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v5

    .line 39
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v0

    .line 40
    :goto_5
    :try_start_6
    iget-object v6, p0, Lcom/neverland/utils/WorkBackupZip;->data:[B

    invoke-virtual {v3, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    .line 41
    iget-object v7, p0, Lcom/neverland/utils/WorkBackupZip;->data:[B

    invoke-virtual {v5, v7, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 42
    :cond_11
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v5

    .line 43
    :try_start_8
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    .line 44
    :try_start_9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 45
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_6
    move-exception p1

    .line 46
    :try_start_b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 47
    :goto_6
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    :catch_7
    move-exception p2

    .line 48
    :try_start_d
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 49
    :goto_7
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 50
    :goto_8
    :try_start_e
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_9

    :catch_8
    move-exception p2

    .line 51
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    :goto_9
    throw p1

    :cond_12
    :goto_a
    move v2, p1

    :goto_b
    return v2
.end method


# virtual methods
.method public backup(ZZ)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/neverland/utils/TCustomDevice;->getBackupName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 2
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "D"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_3

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "R"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".alrxbackup"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/neverland/utils/WorkBackupZip;->createZip(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clearbase.db"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/neverland/utils/WorkBackupZip;->dbOper:Lcom/neverland/readbase/DBOperation;

    invoke-virtual {v1, p1}, Lcom/neverland/readbase/DBOperation;->makeClearBackupBase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "alrxread.db"

    .line 9
    invoke-direct {p0, p1, v3, v1}, Lcom/neverland/utils/WorkBackupZip;->addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->saveAll()V

    .line 11
    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->getFileNamePortable()Ljava/lang/String;

    move-result-object p1

    const-string v1, "alrxsettings.ini"

    invoke-direct {p0, p1, v3, v1}, Lcom/neverland/utils/WorkBackupZip;->addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_5
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_7

    .line 12
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v7, v6, Lcom/neverland/utils/TCustomDevice;->configPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/neverland/utils/TCustomDevice;->exeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_6

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alrx"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lcom/neverland/utils/WorkBackupZip;->addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 16
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v4, Lcom/neverland/utils/TCustomDevice;->skinPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v4, Lcom/neverland/utils/WorkBackupZip$1;

    invoke-direct {v4, p0}, Lcom/neverland/utils/WorkBackupZip$1;-><init>(Lcom/neverland/utils/WorkBackupZip;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    :cond_8
    if-eqz p2, :cond_9

    .line 18
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->fontsPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 20
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_9

    .line 21
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v5, Lcom/neverland/utils/WorkBackupZip$2;

    invoke-direct {v5, p0, v4}, Lcom/neverland/utils/WorkBackupZip$2;-><init>(Lcom/neverland/utils/WorkBackupZip;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    .line 23
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object p2, p2, Lcom/neverland/utils/TCustomDevice;->assetsPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance p2, Lcom/neverland/utils/WorkBackupZip$3;

    invoke-direct {p2, p0}, Lcom/neverland/utils/WorkBackupZip$3;-><init>(Lcom/neverland/utils/WorkBackupZip;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 25
    :cond_a
    invoke-direct {p0}, Lcom/neverland/utils/WorkBackupZip;->closeZip()Z

    .line 26
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_b

    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p2, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget p2, p2, Lcom/neverland/prefs/TInternalOptions;->syncBackup:I

    if-eqz p2, :cond_b

    .line 27
    new-instance p2, Landroidx/work/Data$Builder;

    invoke-direct {p2}, Landroidx/work/Data$Builder;-><init>()V

    const-string v2, "filename"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v5, v5, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {p2, v2, v4}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object p2

    const-string v2, "syncmode"

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget p1, p1, Lcom/neverland/prefs/TInternalOptions;->syncBackup:I

    .line 29
    invoke-virtual {p2, v2, p1}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    move-result-object p1

    const-string p2, "folder"

    const/4 v2, 0x2

    .line 30
    invoke-virtual {p1, p2, v2}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p1

    .line 32
    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/neverland/utils/SyncAll/UploadFileWorker;

    invoke-direct {p2, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 33
    invoke-virtual {p2, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 34
    sget-object p2, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    invoke-static {p2}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_2
    xor-int/lit8 p1, v1, 0x1

    .line 36
    invoke-static {p1}, Lcom/neverland/utils/WorkBackupZip;->setTask(Z)V

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    move-object v0, v3

    :goto_3
    return-object v0
.end method

.method public changeCard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/neverland/utils/WorkBackupZip;->dbOper:Lcom/neverland/readbase/DBOperation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "auto_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/neverland/utils/TCustomDevice;->getBackupName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".db"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/neverland/readbase/DBOperation;->makeClearBackupBase(Ljava/lang/String;)Z

    .line 4
    iget-object v0, p0, Lcom/neverland/utils/WorkBackupZip;->dbOper:Lcom/neverland/readbase/DBOperation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->restorePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "alrxread.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/neverland/readbase/DBOperation;->changeBaseCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    .line 5
    invoke-static {p2}, Lcom/neverland/utils/WorkBackupZip;->setTask(Z)V

    return p1
.end method

.method public restore(Ljava/lang/String;ZZ)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v1, v1, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".alrxbackup"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/neverland/utils/WorkBackupZip;->unpackZip(Ljava/lang/String;ZZ)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    .line 2
    invoke-static {p2}, Lcom/neverland/utils/WorkBackupZip;->setTask(Z)V

    return p1
.end method

.method public syncBookmarks(I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 1
    new-instance v0, Lcom/neverland/utils/SyncAll/SyncFileSystem;

    invoke-direct {v0}, Lcom/neverland/utils/SyncAll/SyncFileSystem;-><init>()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 2
    new-instance p1, Lcom/neverland/utils/SyncAll/SyncFTPApache;

    invoke-direct {p1, v0}, Lcom/neverland/utils/SyncAll/SyncFTPApache;-><init>(Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;)V

    :goto_1
    move-object v0, p1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    .line 3
    new-instance p1, Lcom/neverland/utils/SyncAll/SyncSFTP;

    invoke-direct {p1, v0}, Lcom/neverland/utils/SyncAll/SyncSFTP;-><init>(Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 4
    new-instance p1, Lcom/neverland/utils/SyncAll/SyncWebDav1;

    invoke-direct {p1, v0}, Lcom/neverland/utils/SyncAll/SyncWebDav1;-><init>(Lcom/neverland/utils/SyncAll/BaseSyncAll$ExternalAddress;)V

    goto :goto_1

    :cond_3
    const-string p1, "sb: syncobj is null"

    .line 5
    invoke-direct {p0, p1, v2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v5, v4, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "remotebmk.db"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {v4, v3}, Lcom/neverland/utils/TCustomDevice;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string v5, "sb: delfile error"

    .line 8
    invoke-direct {p0, v5, v2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    .line 9
    :cond_4
    sget-object v5, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->ERROR:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0, v1, v1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->isReady(ZZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 11
    invoke-virtual {v0, v3}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->downloadBookmarks(Ljava/lang/String;)Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    move-result-object v6

    if-eq v6, v5, :cond_5

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ok!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v5, v6

    :cond_6
    const-string p1, "sb: download error"

    .line 13
    invoke-direct {p0, p1, v2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    move-object v6, v5

    const/4 p1, 0x0

    .line 14
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "localbmk.db"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {v4, v5}, Lcom/neverland/utils/TCustomDevice;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string v7, "sb: delfile2 error"

    .line 16
    invoke-direct {p0, v7, v2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    .line 17
    :cond_7
    new-instance v7, Lcom/neverland/readbase/DBOperation;

    invoke-direct {v7}, Lcom/neverland/readbase/DBOperation;-><init>()V

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {v7, v5}, Lcom/neverland/readbase/DBOperation;->makeBookmarksBackup(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string v8, "sb: makebmkbackup error"

    .line 19
    invoke-direct {p0, v8, v2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    :cond_8
    if-eqz p1, :cond_b

    .line 20
    sget-object v8, Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;->OK:Lcom/neverland/utils/SyncAll/BaseSyncAll$DOWNLOADRESULT;

    if-ne v6, v8, :cond_b

    .line 21
    invoke-virtual {v7, v3, v5}, Lcom/neverland/readbase/DBOperation;->compareBookmarks(Ljava/lang/String;Ljava/lang/String;)Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    move-result-object v3

    .line 22
    sget-object v6, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->ERROR:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    if-ne v3, v6, :cond_9

    const-string p1, "sb: compare error"

    .line 23
    invoke-direct {p0, p1, v2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    goto :goto_4

    .line 24
    :cond_9
    sget-object v6, Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;->NEWEST:Lcom/neverland/readbase/DBOperation$COMPARE_RESULT;

    if-ne v3, v6, :cond_b

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/neverland/utils/TCustomDevice;->restorePath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "resultbmk.db"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/neverland/utils/TCustomDevice;->copyFileToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string p1, "sb: copy for load error"

    .line 26
    invoke-direct {p0, p1, v2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    :cond_a
    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz p1, :cond_d

    .line 27
    invoke-virtual {v0, v1, v1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->isReady(ZZ)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "_alrxbookmarks.db"

    const-string v6, "AlReaderX-01Sync"

    .line 28
    invoke-virtual {v0, v5, p1, v6, v1}, Lcom/neverland/utils/SyncAll/BaseSyncAll;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    :goto_6
    if-nez p1, :cond_d

    const-string v0, "sb: upload error"

    .line 29
    invoke-direct {p0, v0, v2}, Lcom/neverland/utils/WorkBackupZip;->log(Ljava/lang/String;Z)V

    :cond_d
    if-nez p1, :cond_e

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/neverland/utils/TCustomDevice;->restorePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/resultbmk.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/neverland/utils/TCustomDevice;->deleteFile(Ljava/lang/String;)Z

    goto :goto_7

    :cond_e
    move v1, v3

    :goto_7
    xor-int/lit8 v0, p1, 0x1

    .line 31
    invoke-static {v0, v1}, Lcom/neverland/utils/WorkBackupZip;->setTask(ZZ)V

    return p1
.end method
