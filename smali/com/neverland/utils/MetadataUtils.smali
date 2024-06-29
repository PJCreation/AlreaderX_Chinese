.class public Lcom/neverland/utils/MetadataUtils;
.super Ljava/lang/Object;
.source "MetadataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/utils/MetadataUtils$Column;
    }
.end annotation


# static fields
.field public static FINISHED:I = 0x0

.field public static final INVALID_ID:I = -0x1

.field public static final METADATA_URI:Landroid/net/Uri;

.field public static NEW:I = 0x0

.field public static final PROGRESS_DIVIDER:Ljava/lang/String; = "/"

.field public static READING:I

.field private static test_addfields:Z

.field private static use_fetchSource:Z

.field private static use_nocasePath:Z

.field private static use_status:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.onyx.content.database.ContentProvider/Metadata"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/neverland/utils/MetadataUtils;->METADATA_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/neverland/utils/MetadataUtils;->NEW:I

    const/4 v1, 0x1

    .line 3
    sput v1, Lcom/neverland/utils/MetadataUtils;->READING:I

    const/4 v2, 0x2

    .line 4
    sput v2, Lcom/neverland/utils/MetadataUtils;->FINISHED:I

    .line 5
    sput-boolean v1, Lcom/neverland/utils/MetadataUtils;->test_addfields:Z

    .line 6
    sput-boolean v0, Lcom/neverland/utils/MetadataUtils;->use_nocasePath:Z

    .line 7
    sput-boolean v0, Lcom/neverland/utils/MetadataUtils;->use_status:Z

    .line 8
    sput-boolean v0, Lcom/neverland/utils/MetadataUtils;->use_fetchSource:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/neverland/utils/MetadataUtils;->getDigestBuffer(Ljava/io/File;)[B

    move-result-object p0

    const-string v0, "MD5"

    .line 4
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 7
    fill-array-data v0, :array_0

    .line 8
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    shl-int/lit8 v3, v2, 0x1

    .line 10
    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 11
    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static createBasicMetadataContentValues(Ljava/io/File;Z)Landroid/content/ContentValues;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nativeAbsolutePath"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-boolean v2, Lcom/neverland/utils/MetadataUtils;->use_nocasePath:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nocasePath"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    sget-boolean v2, Lcom/neverland/utils/MetadataUtils;->use_status:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    :cond_2
    sget-boolean v2, Lcom/neverland/utils/MetadataUtils;->use_fetchSource:Z

    if-eqz v2, :cond_3

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "fetchSource"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "idString"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lastModified"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neverland/utils/MetadataUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Lcom/onyx/android/sdk/device/EnvironmentUtil;->isFileOnRemovableSDCard(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/onyx/android/sdk/device/EnvironmentUtil;->getRemovableSDCardCid()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v2, "storageId"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    :try_start_0
    const-string p1, "hashTag"

    .line 17
    invoke-static {p0}, Lcom/neverland/utils/MetadataUtils;->computeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method

.method private static createUpdateProgressColumnData(II)Landroid/content/ContentValues;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastAccess"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v3, v2, v4

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%d/%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    .line 6
    sget p0, Lcom/neverland/utils/MetadataUtils;->FINISHED:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/neverland/utils/MetadataUtils;->READING:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "readingStatus"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    sget-boolean p0, Lcom/neverland/utils/MetadataUtils;->use_status:Z

    if-eqz p0, :cond_1

    const-string p0, "status"

    .line 8
    invoke-virtual {v0, p0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    :cond_1
    sget-boolean p0, Lcom/neverland/utils/MetadataUtils;->use_fetchSource:Z

    if-eqz p0, :cond_2

    const-string p0, "fetchSource"

    .line 10
    invoke-virtual {v0, p0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-object v0
.end method

.method private static getDigestBuffer(Ljava/io/File;)[B
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x600

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    long-to-int p0, v2

    .line 3
    new-array p0, p0, [B

    .line 4
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_0

    :cond_0
    const/16 p0, 0x600

    new-array p0, p0, [B

    const-wide/16 v4, 0x0

    .line 5
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    const/16 v4, 0x200

    .line 6
    invoke-virtual {v1, p0, v0, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    const-wide/16 v5, 0x2

    .line 7
    div-long v5, v2, v5

    const-wide/16 v7, 0x100

    sub-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    invoke-virtual {v1, p0, v4, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    const-wide/16 v5, 0x200

    sub-long/2addr v2, v5

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x400

    .line 10
    invoke-virtual {v1, p0, v0, v4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 12
    :cond_1
    throw p0
.end method

.method private static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static scan_addfields(Landroid/content/Context;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/neverland/utils/MetadataUtils;->test_addfields:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/neverland/utils/MetadataUtils;->METADATA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string v0, "nocasePath"

    .line 4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/neverland/utils/MetadataUtils;->use_nocasePath:Z

    const-string v0, "status"

    .line 5
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/neverland/utils/MetadataUtils;->use_status:Z

    const-string v0, "fetchSource"

    .line 6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    sput-boolean v2, Lcom/neverland/utils/MetadataUtils;->use_fetchSource:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_3
    :goto_3
    sput-boolean v1, Lcom/neverland/utils/MetadataUtils;->test_addfields:Z

    return-void
.end method

.method public static updateProgress(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/neverland/utils/MetadataUtils;->scan_addfields(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v8, Lcom/neverland/utils/MetadataUtils;->METADATA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "nativeAbsolutePath=?"

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    .line 4
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-static {p2, p3}, Lcom/neverland/utils/MetadataUtils;->createUpdateProgressColumnData(II)Landroid/content/ContentValues;

    move-result-object p2

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p3, "nativeAbsolutePath=?"

    new-array v2, v9, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v8, p2, p3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 8
    :cond_3
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v9}, Lcom/neverland/utils/MetadataUtils;->createBasicMetadataContentValues(Ljava/io/File;Z)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const-string v2, "lastAccess"

    .line 10
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "progress"

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d/%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "readingStatus"

    if-ne p2, p3, :cond_5

    .line 12
    sget p2, Lcom/neverland/utils/MetadataUtils;->FINISHED:I

    goto :goto_0

    :cond_5
    sget p2, Lcom/neverland/utils/MetadataUtils;->READING:I

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v8, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 14
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_7

    .line 15
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return v1

    :goto_2
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_8
    throw p0
.end method
