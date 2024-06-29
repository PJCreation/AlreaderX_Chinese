.class Lcom/neverland/viscomp/dialogs/openfile/FileListItem$8;
.super Ljava/lang/Object;
.source "FileListItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/openfile/FileListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/neverland/viscomp/dialogs/openfile/FileListItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)I
    .locals 5

    .line 2
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    iget-object v1, p2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v0, -0x1

    return v0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    iget-object v2, p2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-wide v2, p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    iget-wide p1, p2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fileTime:J

    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    return v1

    :cond_1
    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    check-cast p2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem$8;->compare(Lcom/neverland/viscomp/dialogs/openfile/FileListItem;Lcom/neverland/viscomp/dialogs/openfile/FileListItem;)I

    move-result p1

    return p1
.end method
