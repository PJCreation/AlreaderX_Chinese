.class Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;
.super Ljava/lang/Object;
.source "AdapterFavor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "realLoadAllLists"
.end annotation


# instance fields
.field private final needReload:Z

.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;


# direct methods
.method public constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->needReload:Z

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    const-string v1, "handler start"

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;->endRealLoad()V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    const-string v1, "handler end"

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    const-string v1, "thread start"

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->needReload:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/neverland/mainApp;->k:Lcom/neverland/readbase/TBase;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    iget-object v2, v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->getState()Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;->isSearch:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v3, Lcom/neverland/prefs/TInternalOptions;->favorViewType:I

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->sortFavorReverse:Z

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/neverland/readbase/TBase;->getAllFavorites(Ljava/util/ArrayList;Ljava/lang/String;IZ)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->needReload:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntFile:I

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/c;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/c;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;)V

    .line 8
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    const-string v2, "thread end 1"

    invoke-virtual {v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->uiHandlerEnd:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterFavor;

    const/4 v1, 0x1

    const-string v2, "thread interruped"

    invoke-virtual {v0, v2, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
