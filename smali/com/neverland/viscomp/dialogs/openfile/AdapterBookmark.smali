.class public Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;
.super Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;
.source "AdapterBookmark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;,
        Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$realLoadAllLists;
    }
.end annotation


# instance fields
.field private final myTime:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/neverland/viscomp/dialogs/BaseGridView;Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;-><init>(Landroid/content/Context;Lcom/neverland/viscomp/dialogs/BaseGridView;Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;)V

    .line 2
    new-instance p1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    return-void
.end method

.method private getBookmarkInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5

    .line 1
    iget-wide v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "BMK"

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "CITE"

    goto :goto_0

    :cond_1
    const-string v0, "BMK + CITE"

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "%s %04d-%02d-%02d %02d:%02d"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 6
    iget p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadPercent:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "%5.02f%%"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getLeftInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftFormat:I

    if-eq p3, p2, :cond_2

    .line 2
    :cond_0
    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iget-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v0

    const-string v0, "%d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    .line 4
    :goto_0
    iput-boolean v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    .line 5
    iput p3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftFormat:I

    .line 6
    :cond_2
    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftInfo:Ljava/lang/String;

    return-object p1
.end method

.method private getRightInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    iget-boolean p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightActual:Z

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightFormat:I

    if-eq p3, p2, :cond_9

    .line 2
    :cond_0
    iget p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    if-eqz v2, :cond_2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->archiveName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/readbase/FileLastReadItem;

    if-nez v2, :cond_4

    .line 7
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/neverland/readbase/FileLastReadItem;

    :cond_4
    if-eqz v2, :cond_8

    .line 10
    iget-wide v3, v2, Lcom/neverland/readbase/FileLastReadItem;->date:J

    iput-wide v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadTime:J

    .line 11
    iget p2, v2, Lcom/neverland/readbase/FileLastReadItem;->percent:F

    iput p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadPercent:F

    .line 12
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    invoke-virtual {p2, v3, v4}, Landroid/text/format/Time;->set(J)V

    const/4 p2, 0x0

    if-eqz p3, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    .line 13
    iget v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadPercent:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p2

    const-string p2, "%d%%"

    .line 15
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget v4, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->lastReadPercent:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%04d-%02d-%02d %5.02f%%"

    .line 18
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 19
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->strToday:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, " %02d:%02d"

    if-eqz v3, :cond_6

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v6, 0x7f1100a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->hour:I

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, p2

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget p2, p2, Landroid/text/format/Time;->minute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->strToday:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 23
    :cond_6
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->strYesterday:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v6, 0x7f1100a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->hour:I

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, p2

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->myTime:Landroid/text/format/Time;

    iget p2, p2, Landroid/text/format/Time;->minute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->strYesterday:Ljava/lang/String;

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    move-object p2, v2

    .line 27
    :goto_0
    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/4 p2, 0x0

    .line 28
    iput-object p2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    .line 29
    :goto_1
    iput-boolean v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightActual:Z

    .line 30
    iput p3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightFormat:I

    .line 31
    :cond_9
    iget-object p1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->rightInfo:Ljava/lang/String;

    return-object p1
.end method

.method private verifyFileExists(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileActual:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3
    new-instance v2, Ljava/io/File;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    .line 8
    :cond_1
    iput-boolean v1, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileActual:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public clickItem(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iput p1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastVisible1:I

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->endLoadingData()V

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBookmark;

    invoke-virtual {p1, v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBookmark;->viewBookmarkRO(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->openFileVariant(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected endRealLoad()V
    .locals 3

    const-string v0, "ui end start"

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->grid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v0, p0}, Lcom/neverland/viscomp/dialogs/BaseGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastClicked1:I

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastClicked1:I

    .line 6
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iput v1, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastClicked1:I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastVisible1:I

    if-eq v0, v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastVisible1:I

    .line 9
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iput v1, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->getLastVisible1:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->grid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 12
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->workThread1:Ljava/lang/Thread;

    .line 14
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->endLoadingData()V

    const-string v0, "ui end end"

    .line 15
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p3}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->getViewBookmark(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    const v2, 0x7f0d004f

    .line 3
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v2, 0x7f0d0050

    .line 4
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v2, 0x7f0d0052

    :cond_1
    const/4 v4, 0x0

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    .line 6
    iget-object v6, v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_2

    iget-boolean v5, v5, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->useBookshelf:Z

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v6}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    move-object v5, v4

    goto :goto_0

    :cond_3
    move-object/from16 v5, p2

    :goto_0
    if-nez v5, :cond_4

    .line 8
    iget-object v5, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 9
    new-instance v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    invoke-direct {v6}, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;-><init>()V

    const v7, 0x7f0a0152

    .line 10
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    const v7, 0x7f0a006c

    .line 11
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    const v7, 0x7f0a0137

    .line 12
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const v7, 0x7f0a0253

    .line 13
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    const v7, 0x7f0a0247

    .line 14
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    const v7, 0x7f0a0246

    .line 15
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    const v7, 0x7f0a024d

    .line 16
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    const v7, 0x7f0a024e

    .line 17
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    :goto_1
    move-object v13, v6

    .line 20
    sget-object v6, Lcom/neverland/viscomp/dialogs/openfile/CoverManager;->INSTANCE:Lcom/neverland/viscomp/dialogs/openfile/CoverManager;

    invoke-virtual {v6, v13, v4}, Lcom/neverland/viscomp/dialogs/openfile/CoverManager;->setUniqueTagForView(Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Ljava/lang/String;)V

    .line 21
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/neverland/prefs/TPref;->getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v2

    iput-boolean v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->useBookshelf:Z

    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    const/4 v14, 0x0

    if-lt v2, v4, :cond_5

    .line 24
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getBookShelf(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 25
    :cond_5
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->layoutBack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getBookShelf(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 27
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    and-int/lit8 v4, v4, -0x9

    .line 28
    iget-object v7, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastOpenFile:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v9, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    or-int/lit8 v4, v4, 0x8

    :cond_6
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 29
    invoke-direct {v0, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->verifyFileExists(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)V

    .line 30
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    .line 31
    :cond_7
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    const/16 v7, 0x1000

    if-eqz v4, :cond_8

    .line 32
    invoke-direct {v0, v2, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->getLeftInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 33
    :cond_8
    invoke-direct {v0, v2, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->getLeftInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    .line 34
    :goto_3
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 35
    invoke-direct {v0, v2, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->getRightInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 36
    :cond_9
    invoke-direct {v0, v2, v1, v7}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->getRightInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    goto :goto_5

    .line 37
    :cond_a
    :goto_4
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    invoke-direct {v0, v2, v1, v14}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->getLeftInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    invoke-direct {v0, v2, v1, v14}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->getRightInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_5
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v15, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    const/16 v16, 0x0

    iget-boolean v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v4, :cond_b

    const v4, 0x7f110174

    const v17, 0x7f110174

    goto :goto_6

    :cond_b
    const v4, 0x7f110153

    const v17, 0x7f110153

    :goto_6
    const/16 v18, 0x1

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 41
    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v19

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    .line 42
    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v20

    .line 43
    invoke-virtual/range {v15 .. v20}, Lcom/neverland/viscomp/dialogs/openfile/FileImageView;->setCoverOrText(Landroid/graphics/Bitmap;IZZZ)V

    .line 44
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 45
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptUp:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->descriptDown:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-boolean v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExists:Z

    if-eqz v4, :cond_c

    .line 48
    iget-object v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v6, v13, v4}, Lcom/neverland/viscomp/dialogs/openfile/CoverManager;->setUniqueTagForView(Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Ljava/lang/String;)V

    .line 49
    iget-object v7, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    iget-wide v8, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    sget-object v11, Lcom/neverland/viscomp/dialogs/openfile/CoverManager$UPDATE_DESCRIPTION;->standard:Lcom/neverland/viscomp/dialogs/openfile/CoverManager$UPDATE_DESCRIPTION;

    const/4 v12, 0x0

    move-object v10, v13

    invoke-virtual/range {v6 .. v12}, Lcom/neverland/viscomp/dialogs/openfile/CoverManager;->loadBitmap(Ljava/lang/String;JLcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Lcom/neverland/viscomp/dialogs/openfile/CoverManager$UPDATE_DESCRIPTION;Z)V

    .line 50
    :cond_c
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuAccentColor:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    .line 52
    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->medium:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    goto :goto_7

    :cond_d
    sget-object v7, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->big:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    .line 53
    :goto_7
    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 54
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    sget-object v7, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->medium:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 55
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 56
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    sget-object v7, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->small:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 57
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v6, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v7}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 58
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    const/4 v7, 0x7

    const/4 v8, 0x2

    const v10, -0x35000001    # -8388607.5f

    const/4 v11, 0x0

    if-eqz v4, :cond_10

    .line 60
    iget v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-ne v4, v8, :cond_f

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 61
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    sget-object v12, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v15, v12, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v9, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v15, v9, :cond_e

    const/4 v9, -0x1

    goto :goto_8

    :cond_e
    const v9, -0x35000001    # -8388607.5f

    :goto_8
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Lcom/neverland/utils/TCustomDevice;->getAvailableShadowRadius(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9, v11, v11, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_9

    .line 63
    :cond_f
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v9, v9, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptUp:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v11, v11, v14}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 65
    :cond_10
    :goto_9
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    .line 66
    iget v4, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    if-ne v4, v8, :cond_12

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 67
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    sget-object v9, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v12, v9, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v14, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v12, v14, :cond_11

    const/4 v12, -0x1

    goto :goto_a

    :cond_11
    const v12, -0x35000001    # -8388607.5f

    :goto_a
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Lcom/neverland/utils/TCustomDevice;->getAvailableShadowRadius(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7, v11, v11, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_b

    .line 69
    :cond_12
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->descriptDown:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v11, v11, v14}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 71
    :cond_13
    :goto_b
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_16

    .line 72
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 73
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    sget-object v6, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v6, v6, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v7, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v6, v7, :cond_14

    const/4 v6, -0x1

    goto :goto_c

    :cond_14
    const v6, -0x35000001    # -8388607.5f

    :goto_c
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    .line 74
    :cond_15
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->leftInfo:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v6, v6, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :cond_16
    :goto_d
    iget-object v4, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    if-eqz v4, :cond_19

    .line 76
    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v4}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neverland/prefs/TPref;->getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 77
    iget-object v3, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v4, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v6, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v4, v6, :cond_17

    const/4 v9, -0x1

    goto :goto_e

    :cond_17
    const v9, -0x35000001    # -8388607.5f

    :goto_e
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 78
    :cond_18
    iget-object v3, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v4, v4, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_19
    :goto_f
    iget-object v3, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    if-eqz v3, :cond_1b

    .line 80
    iget v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const v4, 0x7f110187

    if-ne v3, v8, :cond_1a

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->favorMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1a

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 81
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    const v7, 0x7f110182

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v6, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 82
    :cond_1a
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_10
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v3, v3, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v2, v13, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->btnOptions:Landroid/widget/TextView;

    new-instance v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$1;

    invoke-direct {v3, v0, v1, v13}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$1;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;ILcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b
    return-object v5
.end method

.method public getViewBookmark(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 p3, 0x0

    const v0, 0x7f0d005d

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;

    .line 2
    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    move-object p2, p3

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5
    new-instance p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;

    invoke-direct {p3}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;-><init>()V

    const v2, 0x7f0a0152

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a006a

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    const v2, 0x7f0a006c

    .line 8
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btnOptions:Landroid/widget/Button;

    const v2, 0x7f0a0243

    .line 9
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    const v2, 0x7f0a0249

    .line 10
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->textDownLeft:Landroid/widget/TextView;

    const v2, 0x7f0a024a

    .line 11
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->textDownRight:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;

    .line 15
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 16
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getDeviderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getDeviderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :goto_1
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 19
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    .line 20
    iget-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v4, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v4, v4, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v4, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    iget-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v4, v4, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuAccentColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    or-int/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_2

    .line 24
    :cond_3
    iget-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v4, v4, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v2, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 26
    :goto_2
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 28
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->textDownLeft:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v2, v2, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->textDownRight:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v2, v2, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btnOptions:Landroid/widget/Button;

    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v2, v2, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 31
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v0, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const v4, 0x7f110184

    const v5, 0x7f11018c

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxColor:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v0, v2, :cond_4

    goto :goto_3

    .line 32
    :cond_4
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v1, v1, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 33
    iget-wide v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-nez v2, :cond_5

    .line 34
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    .line 35
    :cond_5
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    .line 36
    :cond_6
    :goto_3
    iget-wide v6, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileSize:J

    long-to-int v0, v6

    const/4 v2, 0x2

    const/high16 v6, -0x1000000

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v2, :cond_b

    const/4 v7, 0x4

    if-eq v0, v1, :cond_a

    const/4 v5, 0x5

    const v8, 0x7f1101b1

    if-eq v0, v5, :cond_9

    const/4 v2, 0x6

    if-eq v0, v2, :cond_8

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    .line 37
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget v1, v1, Lcom/neverland/viscomp/dialogs/TBaseDialog;->menuTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 38
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    .line 39
    :cond_7
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    aget v1, v1, v7

    or-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 40
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 41
    :cond_8
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    aget v1, v2, v1

    or-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 42
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 43
    :cond_9
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    aget v1, v1, v2

    or-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 44
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 45
    :cond_a
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    aget v1, v1, v7

    or-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 46
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 47
    :cond_b
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    aget v1, v2, v1

    or-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 48
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 49
    :cond_c
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    aget v1, v1, v2

    or-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 50
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 51
    :goto_4
    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->textDownLeft:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->textDownRight:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->getBookmarkInfo(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 52
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v1, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->big:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {p1, v0, v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 53
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->textDownLeft:Landroid/widget/TextView;

    sget-object v1, Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;->small:Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;

    invoke-virtual {p1, v0, v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 54
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    iget-object v0, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->textDownRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V

    .line 55
    iget-object p1, p3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$ViewHolder;->btnOptions:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-object p2
.end method

.method public init(Z)V
    .locals 2

    const-string v0, "init start"

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    invoke-virtual {v0}, Lcom/neverland/readbase/TBase;->getLastReadMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->lastReadMap:Ljava/util/HashMap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->favorMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    invoke-virtual {v0}, Lcom/neverland/readbase/TBase;->getFavorMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->favorMap:Ljava/util/HashMap;

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntFile:I

    .line 7
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->grid:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->startLoadingData()V

    .line 10
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$realLoadAllLists;

    invoke-direct {v1, p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark$realLoadAllLists;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->workThread1:Ljava/lang/Thread;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string p1, "init end"

    .line 12
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method public levelRoot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public levelUp()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iput-boolean v2, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isArchive:Z

    .line 3
    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->init(Z)V

    return v2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iput-boolean v2, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    .line 6
    invoke-virtual {p0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->init(Z)V

    return v2

    :cond_1
    return v1
.end method

.method public reload()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBookmark;->init(Z)V

    return v0
.end method
