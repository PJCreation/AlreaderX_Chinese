.class Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile$2;
.super Ljava/lang/Object;
.source "AdapterOpenFile.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile;->scanPath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile$2;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "."

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v3}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 9
    iput v1, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    .line 10
    iput-object p2, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 11
    invoke-static {v2}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    .line 13
    iput-object p1, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 14
    iput-wide p1, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadId:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    iput p1, v3, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadPercent:F

    .line 16
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile$2;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile;

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    return v1

    .line 17
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_6

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr v5, v7

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5, v1}, Lcom/neverland/engbook/level1/AlFiles;->isValidExt(Ljava/lang/String;Z)I

    move-result v6

    if-gez v6, :cond_5

    return v1

    .line 22
    :cond_5
    new-instance v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v6}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    const/4 v8, 0x2

    .line 23
    iput v8, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    .line 24
    iput-object p2, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 25
    invoke-static {v4}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 26
    iput-object v5, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    .line 27
    iput-wide v2, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    .line 29
    iput-object p1, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 30
    iput-boolean v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    .line 31
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile$2;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterOpenFile;

    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    return v1
.end method
