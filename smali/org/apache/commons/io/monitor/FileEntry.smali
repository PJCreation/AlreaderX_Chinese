.class public Lorg/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "FileEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final e:[Lorg/apache/commons/io/monitor/FileEntry;

.field private static final serialVersionUID:J = -0x22c5e8fed07c1d41L


# instance fields
.field private final f:Lorg/apache/commons/io/monitor/FileEntry;

.field private g:[Lorg/apache/commons/io/monitor/FileEntry;

.field private final h:Ljava/io/File;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Lorg/apache/commons/io/monitor/j;

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    .line 1
    sput-object v0, Lorg/apache/commons/io/monitor/FileEntry;->e:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/apache/commons/io/monitor/j;->e:Lorg/apache/commons/io/monitor/j;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->l:Lorg/apache/commons/io/monitor/j;

    const-string v0, "file"

    .line 4
    invoke-static {p2, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->h:Ljava/io/File;

    .line 5
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->f:Lorg/apache/commons/io/monitor/FileEntry;

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Lorg/apache/commons/io/monitor/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->l:Lorg/apache/commons/io/monitor/j;

    return-void
.end method

.method public getChildren()[Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->g:[Lorg/apache/commons/io/monitor/FileEntry;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->e:[Lorg/apache/commons/io/monitor/FileEntry;

    :goto_0
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->h:Ljava/io/File;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->l:Lorg/apache/commons/io/monitor/j;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/j;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastModifiedFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->l:Lorg/apache/commons/io/monitor/j;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/j;->b()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->m:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->f:Lorg/apache/commons/io/monitor/FileEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->f:Lorg/apache/commons/io/monitor/FileEntry;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->k:Z

    return v0
.end method

.method public isExists()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->j:Z

    return v0
.end method

.method public newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->j:Z

    .line 2
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileEntry;->l:Lorg/apache/commons/io/monitor/j;

    .line 3
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileEntry;->k:Z

    .line 4
    iget-wide v3, p0, Lorg/apache/commons/io/monitor/FileEntry;->m:J

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->i:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->j:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->k:Z

    .line 8
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->j:Z

    if-eqz v5, :cond_1

    invoke-static {p1}, Lorg/apache/commons/io/k;->e(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    goto :goto_1

    :cond_1
    sget-object v5, Lorg/apache/commons/io/file/i/a;->a:Ljava/nio/file/attribute/FileTime;

    :goto_1
    invoke-virtual {p0, v5}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Ljava/nio/file/attribute/FileTime;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 9
    :catch_0
    sget-object v5, Lorg/apache/commons/io/monitor/j;->e:Lorg/apache/commons/io/monitor/j;

    invoke-virtual {p0, v5}, Lorg/apache/commons/io/monitor/FileEntry;->a(Lorg/apache/commons/io/monitor/j;)V

    .line 10
    :goto_2
    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->j:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->k:Z

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    goto :goto_3

    :cond_2
    const-wide/16 v8, 0x0

    :goto_3
    iput-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->m:J

    .line 11
    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->j:Z

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->l:Lorg/apache/commons/io/monitor/j;

    invoke-virtual {p1, v1}, Lorg/apache/commons/io/monitor/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->k:Z

    if-ne p1, v2, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->m:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_4

    :cond_3
    const/4 v6, 0x1

    :cond_4
    return v6
.end method

.method public varargs setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->g:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public setDirectory(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->k:Z

    return-void
.end method

.method public setExists(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->j:Z

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method public setLastModified(Ljava/nio/file/attribute/FileTime;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/monitor/j;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/monitor/j;-><init>(Ljava/nio/file/attribute/FileTime;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/monitor/FileEntry;->a(Lorg/apache/commons/io/monitor/j;)V

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->m:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->i:Ljava/lang/String;

    return-void
.end method
