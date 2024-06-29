.class public Lcom/neverland/engbook/bookobj/AlScanWorker;
.super Ljava/lang/Object;
.source "AlScanWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;
    }
.end annotation


# static fields
.field private static final emptyArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final emptySeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/util/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final emptyTitle:Ljava/lang/String; = "*"


# instance fields
.field public TAG:Ljava/lang/String;

.field formatMetaDataFB2:Lcom/neverland/d/a/d;

.field formatMetaDataSimple:Lcom/neverland/d/a/d;

.field private ignoreFiles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final replaceBuff:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/neverland/engbook/bookobj/AlScanWorker;->emptyArr:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/neverland/engbook/bookobj/AlScanWorker;->emptySeries:Ljava/util/ArrayList;

    const-string v2, "*"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    invoke-static {v2, v0}, Lcom/neverland/engbook/util/p;->a(Ljava/lang/String;F)Lcom/neverland/engbook/util/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ARX_SCAN_WRK"

    .line 2
    iput-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->ignoreFiles:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Lcom/neverland/d/a/c0;

    invoke-direct {v0}, Lcom/neverland/d/a/c0;-><init>()V

    iput-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->formatMetaDataFB2:Lcom/neverland/d/a/d;

    .line 6
    new-instance v0, Lcom/neverland/d/a/f0;

    invoke-direct {v0}, Lcom/neverland/d/a/f0;-><init>()V

    iput-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->formatMetaDataSimple:Lcom/neverland/d/a/d;

    return-void
.end method

.method private freeIgnoreFiles()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->ignoreFiles:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->ignoreFiles:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method private isIgnored(Lcom/neverland/engbook/forpublic/p;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private isIgnored(Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->ignoreFiles:Ljava/util/HashSet;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static loadIgnoreFiles()Ljava/util/HashSet;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->assetsPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ignoredfiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v1, v3, v5

    if-lez v1, :cond_c

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_b

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1000

    new-array v5, v4, [B

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    .line 8
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    move-object v2, v0

    goto :goto_6

    :cond_1
    const/16 v9, 0xa

    if-ge v7, v4, :cond_2

    .line 9
    aput-byte v9, v5, v7

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_0

    .line 10
    aget-byte v11, v5, v10

    int-to-char v11, v11

    and-int/lit16 v11, v11, 0xff

    int-to-char v11, v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/16 v14, 0x10

    if-eqz v2, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v13, :cond_3

    if-eq v2, v12, :cond_4

    goto :goto_4

    :cond_3
    const/4 v2, 0x3

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v2, 0x10

    goto :goto_4

    :cond_5
    and-int/lit16 v2, v11, 0x80

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    and-int/lit8 v2, v11, 0x20

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x2

    :goto_4
    if-ne v2, v14, :cond_a

    if-eq v11, v9, :cond_8

    const/16 v2, 0xd

    if-eq v11, v2, :cond_8

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 12
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_9
    :goto_5
    const/4 v2, 0x0

    :cond_a
    add-int/lit8 v10, v10, 0x1

    int-to-char v10, v10

    goto :goto_2

    .line 15
    :cond_b
    :goto_6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_7
    return-object v2
.end method

.method private removeSpace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    const/16 v5, 0xa0

    if-ne v2, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_2

    .line 6
    iget-object v2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    if-eqz p2, :cond_5

    .line 7
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neverland/d/b/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u041d\u0415\u0418\u0417\u0412\u0415\u0421\u0422\u041d\u042b\u0419 \u0410\u0412\u0422\u041e\u0420"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_4

    .line 9
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x11

    invoke-virtual {p2, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 10
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neverland/d/b/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    const-string v0, "UNKNOWN AUTHOR"

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p1, :cond_5

    .line 12
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0xe

    invoke-virtual {v0, p2, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 13
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    if-ne p2, v3, :cond_6

    .line 14
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 15
    :cond_6
    :goto_4
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    const-string v0, " \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p1, :cond_7

    .line 16
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p2, v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 18
    :cond_7
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    const-string v0, " \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p1, :cond_8

    .line 19
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p2, v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 21
    :cond_8
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    const-string v0, "\" "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_9

    .line 22
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 23
    :cond_9
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    const-string v0, "\' "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_a

    .line 24
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 25
    :cond_a
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    const-string v0, "\"\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p1, :cond_b

    .line 26
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, p2, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 27
    :cond_b
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    const-string v0, "\'\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p1, :cond_c

    .line 28
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, p2, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 29
    :cond_c
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p1, :cond_d

    .line 30
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_d
    const/4 p2, -0x1

    .line 31
    :goto_5
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_e

    .line 32
    iget-object p2, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    goto :goto_5

    :cond_e
    if-ne p2, p1, :cond_6

    .line 33
    :goto_6
    iget-object p1, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ge v1, p1, :cond_10

    .line 34
    iget-object p1, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/neverland/d/b/a;->I(C)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 35
    iget-object p1, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->replaceBuff:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    const-string p1, "*"

    return-object p1
.end method

.method private scanEPUB(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neverland/engbook/level1/AlFiles;",
            "Lcom/neverland/engbook/forpublic/p;",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/level1/AlFileZipEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/neverland/engbook/level1/AlFilesZIP;

    invoke-direct {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;-><init>()V

    const-string v1, "/META-INF/container.xml"

    .line 2
    invoke-virtual {v0, v1, p1, p3}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    .line 3
    new-instance p1, Lcom/neverland/engbook/level1/AlFilesEPUB;

    invoke-direct {p1}, Lcom/neverland/engbook/level1/AlFilesEPUB;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v0, p3}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result p3

    .line 5
    invoke-virtual {p1}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Lcom/neverland/d/a/b0;

    invoke-direct {p3}, Lcom/neverland/d/a/b0;-><init>()V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->setResult1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Lcom/neverland/d/a/d;)V

    .line 8
    invoke-virtual {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;->closeInflater()V

    return-void

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "err epub "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private scanFB2(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/neverland/d/a/l;->J1(Lcom/neverland/engbook/level1/AlFiles;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->formatMetaDataFB2:Lcom/neverland/d/a/d;

    invoke-virtual {v0}, Lcom/neverland/d/a/d;->a1()V

    .line 3
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->formatMetaDataFB2:Lcom/neverland/d/a/d;

    invoke-direct {p0, p1, p2, v0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->setResult1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Lcom/neverland/d/a/d;)V

    return v1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".zip"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "err fb2 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private scanFB3(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neverland/engbook/level1/AlFiles;",
            "Lcom/neverland/engbook/forpublic/p;",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/level1/AlFileZipEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/neverland/engbook/level1/AlFilesZIP;

    invoke-direct {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;-><init>()V

    const-string v1, "/[Content_Types].xml"

    .line 2
    invoke-virtual {v0, v1, p1, p3}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    .line 3
    new-instance v1, Lcom/neverland/d/a/h;

    invoke-direct {v1}, Lcom/neverland/d/a/h;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2, v0, v2}, Lcom/neverland/d/a/h;->I0(Lcom/neverland/engbook/forpublic/a;Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/util/AlPreferenceOptions;)V

    .line 5
    invoke-virtual {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;->closeInflater()V

    .line 6
    iget-object v0, v1, Lcom/neverland/d/a/h;->W0:Lcom/neverland/d/a/b;

    iget v0, v0, Lcom/neverland/d/a/b;->h:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 7
    new-instance v0, Lcom/neverland/engbook/level1/AlFilesZIP;

    invoke-direct {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;-><init>()V

    const/4 v4, 0x0

    .line 8
    iput-boolean v4, v0, Lcom/neverland/engbook/level1/AlFiles;->usefileName:Z

    .line 9
    iget-object v4, v1, Lcom/neverland/d/a/h;->W0:Lcom/neverland/d/a/b;

    iget-object v4, v4, Lcom/neverland/d/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, p1, p3}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    .line 10
    new-instance p1, Lcom/neverland/engbook/level1/AlFilesFB3;

    iget-object v1, v1, Lcom/neverland/d/a/h;->W0:Lcom/neverland/d/a/b;

    invoke-direct {p1, v1}, Lcom/neverland/engbook/level1/AlFilesFB3;-><init>(Lcom/neverland/d/a/b;)V

    .line 11
    invoke-virtual {p1, v2, v0, p3}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result p3

    move-object v2, p1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    move-object v0, v2

    :goto_0
    if-nez p3, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long p1, v4, v6

    if-gez p1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Lcom/neverland/d/a/d0;

    invoke-direct {p1}, Lcom/neverland/d/a/d0;-><init>()V

    .line 14
    invoke-direct {p0, v2, p2, p1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->setResult1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Lcom/neverland/d/a/d;)V

    .line 15
    invoke-virtual {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;->closeInflater()V

    return-void

    .line 16
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "err fb3 "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private scanMOBI(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/neverland/engbook/level1/AlFilesMOBI;

    invoke-direct {v0}, Lcom/neverland/engbook/level1/AlFilesMOBI;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/neverland/engbook/level1/AlFiles;->setOnlyScan()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v1}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result p1

    .line 4
    invoke-virtual {v0}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/neverland/d/a/e0;

    invoke-direct {p1}, Lcom/neverland/d/a/e0;-><init>()V

    .line 6
    invoke-direct {p0, v0, p2, p1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->setResult1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Lcom/neverland/d/a/d;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "err mobi "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private scanSimple1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->formatMetaDataSimple:Lcom/neverland/d/a/d;

    invoke-virtual {v0}, Lcom/neverland/d/a/d;->a1()V

    .line 2
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->formatMetaDataSimple:Lcom/neverland/d/a/d;

    invoke-virtual {p2}, Lcom/neverland/engbook/forpublic/p;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/d;->u:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->formatMetaDataSimple:Lcom/neverland/d/a/d;

    iget-object v1, v0, Lcom/neverland/d/a/d;->u:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->setResult1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Lcom/neverland/d/a/d;)V

    :cond_0
    return-void
.end method

.method private scanZIPArchive(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neverland/engbook/level1/AlFiles;",
            "Lcom/neverland/engbook/forpublic/p;",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/level1/AlFileZipEntry;",
            ">;",
            "Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;",
            "I)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v0, p5

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-ne v0, v11, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v12, 0x1

    if-ne v0, v11, :cond_1

    .line 1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    add-int/2addr v0, v12

    :goto_1
    move v13, v0

    move v15, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v15, v13, :cond_1f

    .line 2
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/level1/AlFileZipEntry;

    if-eqz v0, :cond_2

    .line 3
    instance-of v2, v0, Lcom/neverland/engbook/level1/AlFilesZIP;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Lcom/neverland/engbook/level1/AlFilesZIP;

    invoke-virtual {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;->closeInflater()V

    .line 5
    :cond_2
    iget-object v0, v6, Lcom/neverland/engbook/bookobj/AlScanWorker;->ignoreFiles:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->isIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_e

    .line 6
    :cond_3
    iget-object v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v11, :cond_1e

    .line 7
    iget-object v2, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".fb2"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ".fbz"

    const-wide/16 v16, 0x0

    const/4 v5, 0x2

    if-nez v3, :cond_5

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v21, v13

    const/4 v3, 0x0

    const/16 v18, -0x1

    goto/16 :goto_7

    .line 10
    :cond_5
    :goto_3
    sget-object v3, Lcom/neverland/engbook/bookobj/AlScanWorker$a;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v3, v3, v18

    if-eq v3, v12, :cond_7

    if-eq v3, v5, :cond_6

    const/4 v3, 0x0

    const/16 v18, -0x1

    goto :goto_4

    .line 11
    :cond_6
    new-instance v3, Lcom/neverland/engbook/level1/AlFilesZIP;

    invoke-direct {v3}, Lcom/neverland/engbook/level1/AlFilesZIP;-><init>()V

    .line 12
    invoke-virtual {v3, v1, v7, v9}, Lcom/neverland/engbook/level1/AlFilesZIP;->initStateForScaner(Lcom/neverland/engbook/level1/AlFileZipEntry;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result v18

    goto :goto_4

    .line 13
    :cond_7
    new-instance v3, Lcom/neverland/engbook/level1/AlFilesRAR;

    invoke-direct {v3}, Lcom/neverland/engbook/level1/AlFilesRAR;-><init>()V

    .line 14
    invoke-virtual {v3, v1, v7, v9}, Lcom/neverland/engbook/level1/AlFilesRAR;->initStateForScaner(Lcom/neverland/engbook/level1/AlFileZipEntry;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result v18

    :goto_4
    if-nez v18, :cond_9

    .line 15
    invoke-virtual {v3}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v19

    cmp-long v21, v19, v16

    if-lez v21, :cond_9

    .line 16
    new-instance v11, Lcom/neverland/engbook/forpublic/p;

    invoke-direct {v11}, Lcom/neverland/engbook/forpublic/p;-><init>()V

    .line 17
    invoke-virtual {v11, v8}, Lcom/neverland/engbook/forpublic/p;->d(Lcom/neverland/engbook/forpublic/p;)V

    .line 18
    iput-object v0, v11, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    .line 19
    iget v14, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    move/from16 v21, v13

    int-to-long v12, v14

    iput-wide v12, v11, Lcom/neverland/engbook/forpublic/p;->d:J

    .line 20
    iget-wide v12, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->time:J

    iput-wide v12, v11, Lcom/neverland/engbook/forpublic/p;->e:J

    .line 21
    iget-object v12, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    iput-object v12, v11, Lcom/neverland/engbook/forpublic/p;->c:Ljava/lang/String;

    .line 22
    invoke-direct {v6, v3, v11}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanFB2(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_8
    :goto_5
    move-object v0, v3

    :goto_6
    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_f

    :cond_9
    move/from16 v21, v13

    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "err actF 4 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    :cond_a
    :goto_7
    const-string v11, ".zip"

    .line 24
    invoke-virtual {v0, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, ".fb3"

    .line 25
    invoke-virtual {v0, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, ".epub"

    .line 26
    invoke-virtual {v0, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 27
    invoke-virtual {v0, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 29
    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_b
    if-nez v3, :cond_e

    .line 30
    sget-object v2, Lcom/neverland/engbook/bookobj/AlScanWorker$a;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_d

    if-eq v2, v5, :cond_c

    goto :goto_8

    .line 31
    :cond_c
    new-instance v3, Lcom/neverland/engbook/level1/AlFilesZIP;

    invoke-direct {v3}, Lcom/neverland/engbook/level1/AlFilesZIP;-><init>()V

    .line 32
    invoke-virtual {v3, v1, v7, v9}, Lcom/neverland/engbook/level1/AlFilesZIP;->initStateForScaner(Lcom/neverland/engbook/level1/AlFileZipEntry;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result v18

    goto :goto_8

    .line 33
    :cond_d
    new-instance v3, Lcom/neverland/engbook/level1/AlFilesRAR;

    invoke-direct {v3}, Lcom/neverland/engbook/level1/AlFilesRAR;-><init>()V

    .line 34
    invoke-virtual {v3, v1, v7, v9}, Lcom/neverland/engbook/level1/AlFilesRAR;->initStateForScaner(Lcom/neverland/engbook/level1/AlFileZipEntry;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result v18

    :cond_e
    :goto_8
    move-object v11, v3

    if-nez v18, :cond_13

    .line 35
    invoke-virtual {v11}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v2

    cmp-long v4, v2, v16

    if-lez v4, :cond_13

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    iget-object v2, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    iget-object v4, v8, Lcom/neverland/engbook/forpublic/p;->f:Lcom/neverland/engbook/forpublic/a;

    iget v4, v4, Lcom/neverland/engbook/forpublic/a;->codePageZIP:I

    invoke-static {v2, v11, v3, v0, v4}, Lcom/neverland/engbook/level1/AlFilesZIP;->isZIPFile(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    move-result-object v2

    .line 38
    sget-object v4, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->ZIP:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-ne v2, v4, :cond_f

    .line 39
    new-instance v2, Lcom/neverland/engbook/forpublic/p;

    invoke-direct {v2}, Lcom/neverland/engbook/forpublic/p;-><init>()V

    .line 40
    invoke-virtual {v2, v8}, Lcom/neverland/engbook/forpublic/p;->d(Lcom/neverland/engbook/forpublic/p;)V

    .line 41
    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    .line 42
    iget v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    int-to-long v4, v0

    iput-wide v4, v2, Lcom/neverland/engbook/forpublic/p;->d:J

    .line 43
    iget-wide v4, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->time:J

    iput-wide v4, v2, Lcom/neverland/engbook/forpublic/p;->e:J

    .line 44
    iget-object v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->c:Ljava/lang/String;

    .line 45
    sget-object v4, Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;->ZIP:Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanZIPArchive(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;I)V

    goto :goto_a

    .line 46
    :cond_f
    sget-object v4, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->FB3_:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-eq v2, v4, :cond_12

    sget-object v4, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->FB3DOCX:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-ne v2, v4, :cond_10

    goto :goto_9

    .line 47
    :cond_10
    sget-object v4, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->EPUB:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-ne v2, v4, :cond_11

    .line 48
    new-instance v2, Lcom/neverland/engbook/forpublic/p;

    invoke-direct {v2}, Lcom/neverland/engbook/forpublic/p;-><init>()V

    .line 49
    invoke-virtual {v2, v8}, Lcom/neverland/engbook/forpublic/p;->d(Lcom/neverland/engbook/forpublic/p;)V

    .line 50
    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    .line 51
    iget v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    int-to-long v4, v0

    iput-wide v4, v2, Lcom/neverland/engbook/forpublic/p;->d:J

    .line 52
    iget-wide v4, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->time:J

    iput-wide v4, v2, Lcom/neverland/engbook/forpublic/p;->e:J

    .line 53
    iget-object v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->c:Ljava/lang/String;

    .line 54
    invoke-direct {v6, v11, v2, v3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanEPUB(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;)V

    goto :goto_a

    .line 55
    :cond_11
    sget-object v3, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->TXT:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-eq v2, v3, :cond_14

    goto :goto_a

    .line 56
    :cond_12
    :goto_9
    new-instance v2, Lcom/neverland/engbook/forpublic/p;

    invoke-direct {v2}, Lcom/neverland/engbook/forpublic/p;-><init>()V

    .line 57
    invoke-virtual {v2, v8}, Lcom/neverland/engbook/forpublic/p;->d(Lcom/neverland/engbook/forpublic/p;)V

    .line 58
    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    .line 59
    iget v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    int-to-long v4, v0

    iput-wide v4, v2, Lcom/neverland/engbook/forpublic/p;->d:J

    .line 60
    iget-wide v4, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->time:J

    iput-wide v4, v2, Lcom/neverland/engbook/forpublic/p;->e:J

    .line 61
    iget-object v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->c:Ljava/lang/String;

    .line 62
    invoke-direct {v6, v11, v2, v3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanFB3(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;)V

    :goto_a
    move-object v0, v11

    goto/16 :goto_6

    .line 63
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err actF 3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    :cond_14
    move-object v3, v11

    :cond_15
    const-string v2, ".prb"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, ".azw"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, ".azw3"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, ".mobi"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, ".prc"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    .line 69
    :cond_16
    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v2, v2, Lcom/neverland/prefs/TOptions;->libraryScanSimpleFileType:Z

    if-eqz v2, :cond_8

    const-string v2, ".txt"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, ".cbz"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, ".cbr"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, ".html"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, ".htm"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 75
    :cond_17
    new-instance v2, Lcom/neverland/engbook/forpublic/p;

    invoke-direct {v2}, Lcom/neverland/engbook/forpublic/p;-><init>()V

    .line 76
    invoke-virtual {v2, v8}, Lcom/neverland/engbook/forpublic/p;->d(Lcom/neverland/engbook/forpublic/p;)V

    .line 77
    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    .line 78
    iget v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    int-to-long v4, v0

    iput-wide v4, v2, Lcom/neverland/engbook/forpublic/p;->d:J

    .line 79
    iget-wide v4, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->time:J

    iput-wide v4, v2, Lcom/neverland/engbook/forpublic/p;->e:J

    .line 80
    iget-object v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->c:Ljava/lang/String;

    .line 81
    invoke-direct {v6, v3, v2}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanSimple1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)V

    goto/16 :goto_5

    :cond_18
    :goto_b
    if-nez v3, :cond_1b

    .line 82
    sget-object v2, Lcom/neverland/engbook/bookobj/AlScanWorker$a;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1a

    if-eq v2, v5, :cond_19

    goto :goto_c

    .line 83
    :cond_19
    new-instance v3, Lcom/neverland/engbook/level1/AlFilesZIP;

    invoke-direct {v3}, Lcom/neverland/engbook/level1/AlFilesZIP;-><init>()V

    .line 84
    invoke-virtual {v3, v1, v7, v9}, Lcom/neverland/engbook/level1/AlFilesZIP;->initStateForScaner(Lcom/neverland/engbook/level1/AlFileZipEntry;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result v18

    goto :goto_c

    .line 85
    :cond_1a
    new-instance v3, Lcom/neverland/engbook/level1/AlFilesRAR;

    invoke-direct {v3}, Lcom/neverland/engbook/level1/AlFilesRAR;-><init>()V

    .line 86
    invoke-virtual {v3, v1, v7, v9}, Lcom/neverland/engbook/level1/AlFilesRAR;->initStateForScaner(Lcom/neverland/engbook/level1/AlFileZipEntry;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result v18

    :cond_1b
    :goto_c
    if-nez v18, :cond_1d

    .line 87
    invoke-virtual {v3}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v4

    cmp-long v2, v4, v16

    if-lez v2, :cond_1d

    .line 88
    iget-object v2, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/neverland/engbook/level1/AlFilesPDB;->isPDBFile(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    move-result-object v2

    .line 89
    sget-object v5, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->MOBI:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-ne v2, v5, :cond_1c

    .line 90
    new-instance v2, Lcom/neverland/engbook/forpublic/p;

    invoke-direct {v2}, Lcom/neverland/engbook/forpublic/p;-><init>()V

    .line 91
    invoke-virtual {v2, v8}, Lcom/neverland/engbook/forpublic/p;->d(Lcom/neverland/engbook/forpublic/p;)V

    .line 92
    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    .line 93
    iget v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    int-to-long v11, v0

    iput-wide v11, v2, Lcom/neverland/engbook/forpublic/p;->d:J

    .line 94
    iget-wide v11, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->time:J

    iput-wide v11, v2, Lcom/neverland/engbook/forpublic/p;->e:J

    .line 95
    iget-object v0, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/neverland/engbook/forpublic/p;->c:Ljava/lang/String;

    .line 96
    invoke-direct {v6, v3, v2}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanMOBI(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)V

    const/4 v1, 0x1

    goto :goto_d

    .line 97
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err actF 2 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_1d
    const/4 v4, 0x0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err actF 1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/neverland/engbook/forpublic/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    :goto_d
    move-object v0, v3

    goto :goto_f

    :cond_1e
    :goto_e
    move/from16 v21, v13

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v4

    :goto_f
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v21

    const/4 v11, -0x1

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_1f
    if-eqz v0, :cond_20

    .line 99
    instance-of v1, v0, Lcom/neverland/engbook/level1/AlFilesZIP;

    if-eqz v1, :cond_20

    .line 100
    check-cast v0, Lcom/neverland/engbook/level1/AlFilesZIP;

    invoke-virtual {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;->closeInflater()V

    :cond_20
    return-void
.end method

.method private setResult1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Lcom/neverland/d/a/d;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/neverland/engbook/level1/AlFiles;->calcInitialCRC()V

    .line 2
    iget-object v0, p2, Lcom/neverland/engbook/forpublic/p;->f:Lcom/neverland/engbook/forpublic/a;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Lcom/neverland/d/a/d;->I0(Lcom/neverland/engbook/forpublic/a;Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/util/AlPreferenceOptions;)V

    .line 3
    invoke-virtual {p3}, Lcom/neverland/d/a/d;->o1()V

    .line 4
    invoke-virtual {p3}, Lcom/neverland/d/a/d;->X0()V

    .line 5
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    invoke-virtual {p1}, Lcom/neverland/engbook/forpublic/q;->a()V

    .line 6
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, p3, Lcom/neverland/d/a/d;->u:Ljava/lang/String;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->a:Ljava/lang/String;

    const-string v2, "*"

    if-nez v0, :cond_0

    .line 7
    iput-object v2, p1, Lcom/neverland/engbook/forpublic/q;->a:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/q;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->removeSpace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->a:Ljava/lang/String;

    .line 9
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, p3, Lcom/neverland/d/a/d;->m:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->c:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    sget-object v0, Lcom/neverland/engbook/bookobj/AlScanWorker;->emptyArr:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->c:Ljava/util/ArrayList;

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object v0, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 13
    iget-object v0, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/neverland/engbook/bookobj/AlScanWorker;->removeSpace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, p3, Lcom/neverland/d/a/d;->n:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->e:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    sget-object v0, Lcom/neverland/engbook/bookobj/AlScanWorker;->emptyArr:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->e:Ljava/util/ArrayList;

    :cond_3
    const/4 p1, 0x0

    .line 17
    :goto_1
    iget-object v0, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 18
    iget-object v0, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->removeSpace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 19
    :cond_4
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, p3, Lcom/neverland/d/a/d;->o:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->d:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    sget-object v0, Lcom/neverland/engbook/bookobj/AlScanWorker;->emptySeries:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->d:Ljava/util/ArrayList;

    :cond_5
    const/4 p1, 0x0

    .line 22
    :goto_2
    iget-object v0, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 23
    iget-object v0, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/q;->d:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/engbook/util/p;

    iget-object v4, v4, Lcom/neverland/engbook/util/p;->a:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->removeSpace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/q;->d:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/util/p;

    iget v5, v5, Lcom/neverland/engbook/util/p;->b:F

    .line 26
    invoke-static {v4, v5}, Lcom/neverland/engbook/util/p;->a(Ljava/lang/String;F)Lcom/neverland/engbook/util/p;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 27
    :cond_6
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-boolean v0, p3, Lcom/neverland/d/a/d;->f:Z

    iput-boolean v0, p1, Lcom/neverland/engbook/forpublic/q;->l:Z

    .line 28
    iget-object v0, p3, Lcom/neverland/d/a/d;->t:Ljava/lang/String;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->g:Ljava/lang/String;

    .line 29
    iget v0, p3, Lcom/neverland/d/a/d;->A:I

    iput v0, p1, Lcom/neverland/engbook/forpublic/q;->h:I

    .line 30
    iget-object v0, p3, Lcom/neverland/d/a/d;->s:Ljava/lang/String;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->f:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 31
    iput-object v2, p1, Lcom/neverland/engbook/forpublic/q;->f:Ljava/lang/String;

    .line 32
    :cond_7
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/q;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/neverland/engbook/bookobj/AlScanWorker;->removeSpace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->f:Ljava/lang/String;

    .line 33
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->h:Lcom/neverland/engbook/forpublic/q;

    iget-object v0, p3, Lcom/neverland/d/a/d;->v:Ljava/lang/String;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/q;->i:Ljava/lang/String;

    .line 34
    iget-object p3, p3, Lcom/neverland/d/a/d;->r:Ljava/lang/String;

    iput-object p3, p1, Lcom/neverland/engbook/forpublic/q;->k:Ljava/lang/String;

    .line 35
    iget-object p1, p2, Lcom/neverland/engbook/forpublic/p;->g:Lcom/neverland/engbook/forpublic/w;

    invoke-interface {p1, v1, p2}, Lcom/neverland/engbook/forpublic/w;->a(Ljava/lang/String;Lcom/neverland/engbook/forpublic/p;)V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->freeIgnoreFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public prepareForScan()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->freeIgnoreFiles()V

    .line 2
    invoke-static {}, Lcom/neverland/engbook/bookobj/AlScanWorker;->loadIgnoreFiles()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->ignoreFiles:Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized scanOneFile(Lcom/neverland/engbook/forpublic/p;)V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "realPath is null"

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/neverland/engbook/bookobj/AlScanWorker;->ignoreFiles:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->isIgnored(Lcom/neverland/engbook/forpublic/p;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->f:Lcom/neverland/engbook/forpublic/a;

    iget-wide v1, v0, Lcom/neverland/engbook/forpublic/a;->formatOptions:J

    const-wide v3, 0x1fffffffffffffffL

    and-long/2addr v1, v3

    iput-wide v1, v0, Lcom/neverland/engbook/forpublic/a;->formatOptions:J

    const-wide v3, -0x1800000000000001L    # -9.124881235244389E192

    and-long/2addr v1, v3

    .line 7
    iput-wide v1, v0, Lcom/neverland/engbook/forpublic/a;->formatOptions:J

    .line 8
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    iget-object v3, p1, Lcom/neverland/engbook/forpublic/p;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/neverland/engbook/level1/AlFilesBypassRAR;->isBypassRARFile(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 11
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    sget-object v3, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->RARUnk:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    .line 13
    :goto_0
    sget-object v4, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->RARUnk:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v3, v4, :cond_2

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_2
    :try_start_5
    sget-object v4, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->RAR:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v3, v4, :cond_5

    const/4 v3, -0x1

    .line 16
    :try_start_6
    new-instance v4, Lcom/neverland/engbook/level1/AlFilesBypassRAR;

    invoke-direct {v4}, Lcom/neverland/engbook/level1/AlFilesBypassRAR;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 17
    :try_start_7
    iget-object v5, p1, Lcom/neverland/engbook/forpublic/p;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v0}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v5, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v4

    goto :goto_1

    :catch_2
    move-exception v0

    .line 18
    :goto_1
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v2

    const/4 v0, -0x1

    :goto_2
    if-nez v0, :cond_4

    .line 19
    invoke-virtual {v5}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    .line 20
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-virtual {v5}, Lcom/neverland/engbook/level1/AlFiles;->getFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    sget-boolean v0, Lcom/neverland/utils/finit;->libraryOnlyOneBookInArchive:Z

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v7}, Lcom/neverland/engbook/level1/AlFilesRAR;->getOneFileFromList(Ljava/util/ArrayList;)I

    move-result v3

    move v9, v3

    goto :goto_3

    :cond_3
    const/4 v9, -0x1

    .line 24
    :goto_3
    sget-object v8, Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;->RAR:Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanZIPArchive(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 25
    :cond_4
    monitor-exit p0

    return-void

    .line 26
    :cond_5
    :try_start_9
    new-instance v6, Lcom/neverland/engbook/level1/AlFilesBypassNative;

    invoke-direct {v6}, Lcom/neverland/engbook/level1/AlFilesBypassNative;-><init>()V

    .line 27
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, v2, v2}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    move-result v0

    .line 28
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v3

    const-wide/16 v7, 0x1

    cmp-long v5, v3, v7

    if-ltz v5, :cond_16

    if-eqz v0, :cond_6

    goto/16 :goto_8

    .line 29
    :cond_6
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v3, ".fb2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v3, ".fbz"

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    :cond_7
    invoke-direct {p0, v6, p1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanFB2(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_8
    :try_start_a
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v3, ".fb2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v3, ".zip"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v3, ".fb3"

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v3, ".epub"

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v3, ".zip"

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v3, ".fbz"

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    iget-object v1, p1, Lcom/neverland/engbook/forpublic/p;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/neverland/engbook/forpublic/p;->f:Lcom/neverland/engbook/forpublic/a;

    iget v4, v4, Lcom/neverland/engbook/forpublic/a;->codePageZIP:I

    invoke-static {v1, v6, v0, v3, v4}, Lcom/neverland/engbook/level1/AlFilesZIP;->isZIPFile(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    move-result-object v1

    .line 42
    sget-object v3, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->ZIP:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-ne v1, v3, :cond_b

    .line 43
    sget-boolean v1, Lcom/neverland/utils/finit;->libraryOnlyOneBookInArchive:Z

    if-eqz v1, :cond_a

    .line 44
    invoke-static {v0}, Lcom/neverland/engbook/level1/AlFilesZIP;->getOneFileFromList(Ljava/util/ArrayList;)Lcom/neverland/engbook/level1/AlFileZipEntry;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    goto :goto_4

    :cond_a
    move-object v3, v0

    .line 47
    :goto_4
    sget-object v4, Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;->ZIP:Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanZIPArchive(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;Lcom/neverland/engbook/bookobj/AlScanWorker$TArchiveType;I)V

    .line 48
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 50
    :cond_b
    :try_start_b
    sget-object v3, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->FB3_:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-eq v1, v3, :cond_15

    sget-object v3, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->FB3DOCX:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-ne v1, v3, :cond_c

    goto/16 :goto_7

    .line 51
    :cond_c
    sget-object v3, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->EPUB:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-ne v1, v3, :cond_d

    .line 52
    invoke-direct {p0, v6, p1, v0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanEPUB(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;)V

    .line 53
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 55
    :cond_d
    :try_start_c
    sget-object v0, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->TXT:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-eq v1, v0, :cond_e

    .line 56
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :cond_e
    if-ne v1, v0, :cond_f

    .line 58
    :try_start_d
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".fb2.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 59
    invoke-direct {p0, v6, p1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanFB2(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 60
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 62
    :cond_f
    :try_start_e
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".prb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".azw"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".azw3"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".mobi"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".prc"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    .line 67
    :cond_10
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".cbz"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".cbr"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".html"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    const-string v1, ".htm"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    .line 72
    :cond_11
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 74
    :cond_12
    :goto_5
    :try_start_f
    invoke-direct {p0, v6, p1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanSimple1(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)V

    .line 75
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 77
    :cond_13
    :goto_6
    :try_start_10
    iget-object v0, p1, Lcom/neverland/engbook/forpublic/p;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/neverland/engbook/forpublic/p;->b:Ljava/lang/String;

    invoke-static {v0, v6, v2, v1}, Lcom/neverland/engbook/level1/AlFilesPDB;->isPDBFile(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->MOBI:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-ne v0, v1, :cond_14

    .line 79
    invoke-direct {p0, v6, p1}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanMOBI(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;)V

    .line 80
    :cond_14
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 82
    :cond_15
    :goto_7
    :try_start_11
    invoke-direct {p0, v6, p1, v0}, Lcom/neverland/engbook/bookobj/AlScanWorker;->scanFB3(Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/forpublic/p;Ljava/util/ArrayList;)V

    .line 83
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 85
    :cond_16
    :goto_8
    :try_start_12
    invoke-virtual {v6}, Lcom/neverland/engbook/level1/AlFiles;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
