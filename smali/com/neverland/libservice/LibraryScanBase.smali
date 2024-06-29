.class public final enum Lcom/neverland/libservice/LibraryScanBase;
.super Ljava/lang/Enum;
.source "LibraryScanBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neverland/libservice/LibraryScanBase;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lcom/neverland/libservice/LibraryScanBase;

.field private static final synthetic e:[Lcom/neverland/libservice/LibraryScanBase;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Lcom/neverland/viscomp/dialogs/openfile/BlockingLifoQueue;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/neverland/libservice/LibraryScanBase;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neverland/libservice/LibraryScanBase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neverland/libservice/LibraryScanBase;->INSTANCE:Lcom/neverland/libservice/LibraryScanBase;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/neverland/libservice/LibraryScanBase;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/neverland/libservice/LibraryScanBase;->e:[Lcom/neverland/libservice/LibraryScanBase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "LibraryScanBase"

    .line 2
    iput-object p1, p0, Lcom/neverland/libservice/LibraryScanBase;->f:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/libservice/LibraryScanBase;->i:Ljava/util/Map;

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/neverland/libservice/LibraryScanBase;->j:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/neverland/viscomp/dialogs/openfile/BlockingLifoQueue;

    invoke-direct {p1}, Lcom/neverland/viscomp/dialogs/openfile/BlockingLifoQueue;-><init>()V

    iput-object p1, p0, Lcom/neverland/libservice/LibraryScanBase;->h:Lcom/neverland/viscomp/dialogs/openfile/BlockingLifoQueue;

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/libservice/LibraryScanBase;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/neverland/libservice/LibraryScanBase;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/libservice/LibraryScanBase;->i:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/neverland/libservice/LibraryScanBase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/neverland/libservice/LibraryScanBase;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neverland/libservice/LibraryScanBase;
    .locals 1

    .line 1
    const-class v0, Lcom/neverland/libservice/LibraryScanBase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neverland/libservice/LibraryScanBase;

    return-object p0
.end method

.method public static values()[Lcom/neverland/libservice/LibraryScanBase;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/libservice/LibraryScanBase;->e:[Lcom/neverland/libservice/LibraryScanBase;

    invoke-virtual {v0}, [Lcom/neverland/libservice/LibraryScanBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neverland/libservice/LibraryScanBase;

    return-object v0
.end method


# virtual methods
.method public loadLibraryPresent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/neverland/libservice/LibraryScanBase;->i:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/neverland/libservice/LibraryScanBase;->i:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/neverland/libservice/LibraryScanBase;->i:Ljava/util/Map;

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/neverland/libservice/LibraryScanBase;->queueLibraryPresent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public queueLibraryPresent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/neverland/libservice/LibraryScanBase$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p4, p1}, Lcom/neverland/libservice/LibraryScanBase$a;-><init>(Lcom/neverland/libservice/LibraryScanBase;Landroid/os/Looper;Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/neverland/libservice/LibraryScanBase;->g:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Lcom/neverland/libservice/LibraryScanBase$b;

    invoke-direct {p4, p0, p2, p3, v0}, Lcom/neverland/libservice/LibraryScanBase$b;-><init>(Lcom/neverland/libservice/LibraryScanBase;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
