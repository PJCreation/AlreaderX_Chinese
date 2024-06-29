.class public Lcom/neverland/utils/APIWrap19;
.super Ljava/lang/Object;
.source "APIWrap19.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalDirs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/neverland/utils/APIWrap19$1;

    invoke-direct {v2, v0}, Lcom/neverland/utils/APIWrap19$1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 9
    aget-object v5, p0, v4

    if-eqz v5, :cond_1

    .line 10
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_9

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string v1, "/Android/data/"

    const/4 v4, 0x1

    if-lez p0, :cond_6

    const/4 p0, 0x0

    .line 13
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p0, v5, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 14
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 15
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v4, :cond_8

    invoke-static {}, Lcom/neverland/utils/APIWrap19;->hasExternalSDCard()Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0xe

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "/mnt/ext_card"

    aput-object v0, p0, v3

    const-string v0, "/mnt/external_sd"

    aput-object v0, p0, v4

    const/4 v0, 0x2

    const-string v4, "/mnt/ext_sd"

    aput-object v4, p0, v0

    const/4 v0, 0x3

    const-string v4, "/mnt/external"

    aput-object v4, p0, v0

    const/4 v0, 0x4

    const-string v4, "/mnt/extSdCard"

    aput-object v4, p0, v0

    const/4 v0, 0x5

    const-string v4, "/mnt/externalSdCard"

    aput-object v4, p0, v0

    const/4 v0, 0x6

    const-string v4, "/mnt/sdcard1"

    aput-object v4, p0, v0

    const/4 v0, 0x7

    const-string v4, "/storage/ext_card"

    aput-object v4, p0, v0

    const/16 v0, 0x8

    const-string v4, "/storage/external_sd"

    aput-object v4, p0, v0

    const/16 v0, 0x9

    const-string v4, "/storage/ext_sd"

    aput-object v4, p0, v0

    const/16 v0, 0xa

    const-string v4, "/storage/external"

    aput-object v4, p0, v0

    const/16 v0, 0xb

    const-string v4, "/storage/extSdCard"

    aput-object v4, p0, v0

    const/16 v0, 0xc

    const-string v4, "/storage/externalSdCard"

    aput-object v4, p0, v0

    const/16 v0, 0xd

    const-string v4, "/storage/sdcard1"

    aput-object v4, p0, v0

    .line 18
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v2

    :cond_9
    return-object v1
.end method

.method public static hasExternalSDCard()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isAvailable()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
