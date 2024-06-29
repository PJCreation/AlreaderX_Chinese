.class public Lcom/neverland/engbook/level1/AlFilesMIME;
.super Lcom/neverland/engbook/level1/AlFiles;
.source "AlFilesMIME.java"


# static fields
.field private static final MIME_TEST_STR_1:Ljava/lang/String; = "mime-version:"


# instance fields
.field private active_file:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/neverland/engbook/level1/AlFiles;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/neverland/engbook/level1/AlFilesMIME;->active_file:I

    return-void
.end method

.method private static add2List(Lorg/apache/james/mime4j/dom/c;JLjava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/c;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/level1/AlFileZipEntry;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/neverland/engbook/level1/AlFileZipEntry;

    invoke-direct {p1}, Lcom/neverland/engbook/level1/AlFileZipEntry;-><init>()V

    .line 2
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/c;->i()Lorg/apache/james/mime4j/dom/e;

    move-result-object p2

    const-string v0, "Content-Location"

    invoke-interface {p2, v0}, Lorg/apache/james/mime4j/dom/e;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/i;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/james/mime4j/stream/i;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/c;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/c;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->chmRealName:Ljava/lang/String;

    const-string v0, "text/html"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->chmRealName:Ljava/lang/String;

    const-string v0, "text/plain"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 6
    iput p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->cSize:I

    .line 7
    iget-object p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    if-nez p2, :cond_3

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_2
    :goto_0
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/c;->d()Lorg/apache/james/mime4j/dom/b;

    move-result-object p2

    check-cast p2, Lorg/apache/james/mime4j/dom/i;

    .line 9
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/i;->d()J

    move-result-wide v0

    long-to-int p2, v0

    iput p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->cSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 10
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :goto_1
    iget-object p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    if-nez p2, :cond_3

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->name:Ljava/lang/String;

    .line 13
    :cond_3
    iget p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->cSize:I

    iput p2, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    .line 14
    iput-object p0, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->obj1:Ljava/lang/Object;

    .line 15
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static isMHTFile(Lcom/neverland/engbook/level1/AlFiles;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neverland/engbook/level1/AlFiles;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/level1/AlFileZipEntry;",
            ">;)",
            "Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->TXT:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    if-eqz p1, :cond_0

    const-string v1, ".mht"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".mhtml"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    return-object v0

    :cond_2
    const/16 p1, 0x800

    new-array v1, p1, [C

    const/16 v2, 0x4e2

    const/4 v3, 0x1

    .line 5
    invoke-static {p0, v2, v1, p1, v3}, Lcom/neverland/d/a/d;->z0(Lcom/neverland/engbook/level1/AlFiles;I[CIZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {v1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mime-version:"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    .line 8
    :cond_3
    new-instance p1, Lorg/apache/james/mime4j/stream/k$a;

    invoke-direct {p1}, Lorg/apache/james/mime4j/stream/k$a;-><init>()V

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/stream/k$a;->e(I)Lorg/apache/james/mime4j/stream/k$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/stream/k$a;->f(I)Lorg/apache/james/mime4j/stream/k$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/k$a;->a()Lorg/apache/james/mime4j/stream/k;

    move-result-object p1

    .line 12
    new-instance v0, Lorg/apache/james/mime4j/d/i;

    invoke-direct {v0}, Lorg/apache/james/mime4j/d/i;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/d/i;->c(Lorg/apache/james/mime4j/stream/k;)V

    const/4 p1, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/neverland/engbook/level1/AlFiles;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :goto_0
    :try_start_1
    invoke-virtual {v0, p0}, Lorg/apache/james/mime4j/d/i;->b(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/f;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz p1, :cond_5

    .line 18
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/c;->d()Lorg/apache/james/mime4j/dom/b;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/dom/h;

    invoke-static {p0, p2}, Lcom/neverland/engbook/level1/AlFilesMIME;->scanPart(Lorg/apache/james/mime4j/dom/h;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 20
    :cond_4
    iget-wide v0, p0, Lcom/neverland/engbook/level1/AlFiles;->size:J

    invoke-static {p1, v0, v1, p2}, Lcom/neverland/engbook/level1/AlFilesMIME;->add2List(Lorg/apache/james/mime4j/dom/c;JLjava/util/ArrayList;)Z

    :cond_5
    :goto_2
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 21
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_8

    .line 22
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget-object v0, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->chmRealName:Ljava/lang/String;

    const-string v1, "text/plain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget-object v0, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->chmRealName:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    :cond_6
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget v0, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    const/high16 v1, 0x10000000

    if-ge v0, v1, :cond_7

    add-int/lit8 p1, p1, 0x1

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_8
    if-lez p1, :cond_9

    .line 24
    sget-object p0, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->MHT:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    goto :goto_4

    :cond_9
    sget-object p0, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;->TXT:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_FILE_TYPE;

    :goto_4
    return-object p0
.end method

.method private static scanPart(Lorg/apache/james/mime4j/dom/h;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/h;",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/level1/AlFileZipEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/h;->c()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/c;

    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/c;->d()Lorg/apache/james/mime4j/dom/b;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/c;

    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/h;

    invoke-static {v1, p1}, Lcom/neverland/engbook/level1/AlFilesMIME;->scanPart(Lorg/apache/james/mime4j/dom/h;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/c;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p1}, Lcom/neverland/engbook/level1/AlFilesMIME;->add2List(Lorg/apache/james/mime4j/dom/c;JLjava/util/ArrayList;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public fillBufFromExternalFile(II[BII)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    .line 1
    iget-object v1, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 2
    iget-object v1, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/engbook/level1/AlFileZipEntry;

    .line 3
    iget-object p1, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->obj1:Ljava/lang/Object;

    check-cast p1, Lorg/apache/james/mime4j/dom/c;

    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/c;->d()Lorg/apache/james/mime4j/dom/b;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/i;

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/dom/i;->a()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p1, p5, :cond_3

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_3

    :cond_0
    if-lt v2, p2, :cond_1

    add-int/lit8 v4, p1, 0x1

    add-int/2addr p1, p4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 6
    :try_start_2
    aput-byte v3, p3, p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move p1, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int v3, p2, p5

    if-le v2, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p2

    move v4, p1

    move-object p1, p2

    goto :goto_2

    :catch_2
    move-exception p1

    const/4 v4, 0x0

    .line 7
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move p1, v4

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 8
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-ne p1, p5, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public getBuffer(J[BI)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/neverland/engbook/level1/AlFilesMIME;->active_file:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/level1/AlFileZipEntry;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_9

    .line 2
    iget v2, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_9

    .line 3
    iget-boolean v2, p0, Lcom/neverland/engbook/level1/AlFiles;->useUnpack1:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 4
    iget-object v2, p0, Lcom/neverland/engbook/level1/AlFiles;->unpack_buffer1:[B

    if-nez v2, :cond_2

    .line 5
    iget-wide v5, p0, Lcom/neverland/engbook/level1/AlFiles;->size:J

    long-to-int v2, v5

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/neverland/engbook/level1/AlFiles;->unpack_buffer1:[B

    .line 6
    iget-object v0, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->obj1:Ljava/lang/Object;

    check-cast v0, Lorg/apache/james/mime4j/dom/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/c;->d()Lorg/apache/james/mime4j/dom/b;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/i;

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/dom/i;->a()Ljava/io/InputStream;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    int-to-long v5, v0

    .line 8
    iget-wide v7, p0, Lcom/neverland/engbook/level1/AlFiles;->size:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    .line 9
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v5, p0, Lcom/neverland/engbook/level1/AlFiles;->unpack_buffer1:[B

    add-int/lit8 v6, v0, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 12
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    int-to-long v2, p4

    add-long/2addr v2, p1

    .line 14
    iget-wide v4, p0, Lcom/neverland/engbook/level1/AlFiles;->size:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    sub-long/2addr v4, p1

    long-to-int p4, v4

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->unpack_buffer1:[B

    long-to-int p2, p1

    invoke-static {v0, p2, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, p4

    goto :goto_7

    .line 16
    :cond_4
    iget-object v0, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->obj1:Ljava/lang/Object;

    check-cast v0, Lorg/apache/james/mime4j/dom/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/c;->d()Lorg/apache/james/mime4j/dom/b;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/i;

    .line 17
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/james/mime4j/dom/i;->a()Ljava/io/InputStream;

    move-result-object v4

    const/4 v0, 0x0

    :goto_3
    if-ge v1, p4, :cond_8

    .line 18
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v2, v3, :cond_5

    goto :goto_6

    :cond_5
    int-to-long v5, v0

    cmp-long v7, v5, p1

    if-ltz v7, :cond_6

    add-int/lit8 v7, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 19
    :try_start_3
    aput-byte v2, p3, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v1, v7

    goto :goto_4

    :catch_2
    move-exception p1

    move v1, v7

    goto :goto_5

    :cond_6
    :goto_4
    int-to-long v7, p4

    add-long/2addr v7, p1

    cmp-long v2, v5, v7

    if-lez v2, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_3
    move-exception p1

    .line 20
    :goto_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    .line 21
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_7
    return v1
.end method

.method public getExternalFileSize(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/level1/AlFileZipEntry;

    .line 3
    iget v1, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    if-ltz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget p1, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    return p1

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->obj1:Ljava/lang/Object;

    check-cast v1, Lorg/apache/james/mime4j/dom/c;

    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/c;->d()Lorg/apache/james/mime4j/dom/b;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/i;

    .line 6
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/dom/i;->d()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->cSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :goto_0
    iget v1, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->cSize:I

    iput v1, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    .line 9
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget p1, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/neverland/engbook/level1/AlFiles;",
            "Ljava/util/ArrayList<",
            "Lcom/neverland/engbook/level1/AlFileZipEntry;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/neverland/engbook/level1/AlFiles;->initState(Ljava/lang/String;Lcom/neverland/engbook/level1/AlFiles;Ljava/util/ArrayList;)I

    const-string p2, "mht"

    .line 2
    iput-object p2, p0, Lcom/neverland/engbook/level1/AlFiles;->ident:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget-object v0, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->chmRealName:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/neverland/engbook/level1/AlFiles;->fileName:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget p1, p1, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/neverland/engbook/level1/AlFiles;->size:J

    .line 7
    iput p3, p0, Lcom/neverland/engbook/level1/AlFilesMIME;->active_file:I

    goto :goto_1

    .line 8
    :cond_0
    iget v0, p0, Lcom/neverland/engbook/level1/AlFilesMIME;->active_file:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget-object v0, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->chmRealName:Ljava/lang/String;

    const-string v1, "text/plain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iput-object p1, p0, Lcom/neverland/engbook/level1/AlFiles;->fileName:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/neverland/engbook/level1/AlFiles;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/level1/AlFileZipEntry;

    iget v0, v0, Lcom/neverland/engbook/level1/AlFileZipEntry;->uSize:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/neverland/engbook/level1/AlFiles;->size:J

    .line 11
    iput p3, p0, Lcom/neverland/engbook/level1/AlFilesMIME;->active_file:I

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    iput-boolean p2, p0, Lcom/neverland/engbook/level1/AlFiles;->usefileName:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/neverland/engbook/level1/AlFiles;->useUnpack1:Z

    return p2
.end method
