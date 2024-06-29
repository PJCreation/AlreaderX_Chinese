.class Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;
.super Ljava/lang/Object;
.source "AdapterStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "realLoadAllBooks"
.end annotation


# instance fields
.field private final needReload:Z

.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;


# direct methods
.method public constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->needReload:Z

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    const-string v1, "handler start"

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->endRealLoad()V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    const-string v1, "handler end"

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    const-string v1, "thread start "

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->needReload:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;->access$000(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->needReload:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntFile:I

    .line 6
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntDir:I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->opdsState:Lcom/neverland/viscomp/dialogs/openfile/OPDSState;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/OPDSState;->getLevel()I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    .line 10
    iget v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 11
    iput-boolean v0, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->leftActual:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v3, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->sortByTypes1(Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    const-string v1, "thread end 0 "

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/k;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/k;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;)V

    .line 17
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    const-string v2, "thread end 1"

    invoke-virtual {v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->uiHandlerEnd:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage;

    const-string v1, "thread interruped"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method
