.class public Lorg/apache/commons/io/monitor/FileAlterationObserver;
.super Ljava/lang/Object;
.source "FileAlterationObserver.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x107266629bcfe480L


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/monitor/i;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lorg/apache/commons/io/monitor/FileEntry;

.field private final g:Ljava/io/FileFilter;

.field private final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;)V
    .locals 1

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 1

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    const-string v0, "rootEntry"

    .line 6
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "rootEntry.getFile()"

    invoke-static {v0, v1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    .line 9
    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->g:Ljava/io/FileFilter;

    .line 10
    sget-object p1, Lorg/apache/commons/io/monitor/FileAlterationObserver$a;->a:[I

    sget-object p2, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p3, p2}, Lorg/apache/commons/io/IOCase;->value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 11
    sget-object p1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->h:Ljava/util/Comparator;

    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->h:Ljava/util/Comparator;

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->h:Ljava/util/Comparator;

    :goto_0
    return-void
.end method

.method private a(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V
    .locals 8

    .line 1
    array-length v0, p3

    if-lez v0, :cond_0

    array-length v0, p3

    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->e:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 2
    :goto_0
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, p2, v2

    .line 3
    :goto_2
    array-length v5, p3

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->h:Ljava/util/Comparator;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    aget-object v7, p3, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 4
    aget-object v5, p3, v3

    invoke-direct {p0, p1, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->b(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    aput-object v5, v0, v3

    .line 5
    aget-object v5, v0, v3

    invoke-direct {p0, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->c(Lorg/apache/commons/io/monitor/FileEntry;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6
    :cond_1
    array-length v5, p3

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->h:Ljava/util/Comparator;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    aget-object v7, p3, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    .line 7
    aget-object v5, p3, v3

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    .line 8
    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    aget-object v6, p3, v3

    invoke-direct {p0, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->r(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->a(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 9
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/io/k;->i:[Ljava/io/File;

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->a(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 11
    invoke-direct {p0, v4}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->d(Lorg/apache/commons/io/monitor/FileEntry;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_3
    :goto_4
    array-length p2, p3

    if-ge v3, p2, :cond_4

    .line 13
    aget-object p2, p3, v3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->b(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object p2

    aput-object p2, v0, v3

    .line 14
    aget-object p2, v0, v3

    invoke-direct {p0, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->c(Lorg/apache/commons/io/monitor/FileEntry;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 15
    :cond_4
    invoke-virtual {p1, v0}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method private b(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    .line 3
    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e(Ljava/io/File;Lorg/apache/commons/io/monitor/FileEntry;)[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    return-object p1
.end method

.method private c(Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/e;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/monitor/e;-><init>(Lorg/apache/commons/io/monitor/FileEntry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/io/monitor/d;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/monitor/d;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private d(Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/a;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/monitor/a;-><init>(Lorg/apache/commons/io/monitor/FileEntry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private e(Ljava/io/File;Lorg/apache/commons/io/monitor/FileEntry;)[Lorg/apache/commons/io/monitor/FileEntry;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->r(Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->e:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 3
    :goto_0
    new-instance v1, Lorg/apache/commons/io/monitor/g;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/commons/io/monitor/g;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method private f(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/c;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/io/monitor/c;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->c(Lorg/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method public static synthetic h(Lorg/apache/commons/io/monitor/i;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic i(Lorg/apache/commons/io/monitor/i;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/apache/commons/io/monitor/i;->e(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    return-void
.end method

.method private synthetic k(Lorg/apache/commons/io/monitor/i;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/apache/commons/io/monitor/i;->h(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    return-void
.end method

.method static synthetic m(Lorg/apache/commons/io/monitor/FileEntry;Lorg/apache/commons/io/monitor/i;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/io/monitor/i;->a(Ljava/io/File;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/io/monitor/i;->g(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method static synthetic n(Lorg/apache/commons/io/monitor/FileEntry;Lorg/apache/commons/io/monitor/i;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/io/monitor/i;->b(Ljava/io/File;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/io/monitor/i;->d(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method private synthetic o(Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;I)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 0

    .line 1
    aget-object p2, p2, p3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->b(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object p1

    return-object p1
.end method

.method static synthetic q(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;Lorg/apache/commons/io/monitor/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lorg/apache/commons/io/monitor/i;->c(Ljava/io/File;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2, p1}, Lorg/apache/commons/io/monitor/i;->f(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method private r(Ljava/io/File;)[Ljava/io/File;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->g:Ljava/io/FileFilter;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 3
    sget-object p1, Lorg/apache/commons/io/k;->i:[Ljava/io/File;

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->h:Ljava/util/Comparator;

    if-eqz v0, :cond_3

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_3
    return-object p1
.end method


# virtual methods
.method public addListener(Lorg/apache/commons/io/monitor/i;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkAndNotify()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/b;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/monitor/b;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->r(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->a(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->isExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/io/k;->i:[Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->a(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/h;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/monitor/h;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileFilter()Ljava/io/FileFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->g:Ljava/io/FileFilter;

    return-object v0
.end method

.method public getListeners()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/io/monitor/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    .line 2
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->f:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e(Ljava/io/File;Lorg/apache/commons/io/monitor/FileEntry;)[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method public synthetic j(Lorg/apache/commons/io/monitor/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->i(Lorg/apache/commons/io/monitor/i;)V

    return-void
.end method

.method public synthetic l(Lorg/apache/commons/io/monitor/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->k(Lorg/apache/commons/io/monitor/i;)V

    return-void
.end method

.method public synthetic p(Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;I)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->o(Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;I)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lorg/apache/commons/io/monitor/i;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/f;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/monitor/f;-><init>(Lorg/apache/commons/io/monitor/i;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[file=\'"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->g:Ljava/io/FileFilter;

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->g:Ljava/io/FileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", listeners="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
