.class Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;
.super Ljava/lang/Object;
.source "BookmarkSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;->fillList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    const-string v1, "handler start"

    invoke-static {v0, v1}, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;->access$200(Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->endRealLoad()V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    const-string v1, "handler end"

    invoke-static {v0, v1}, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;->access$300(Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->state:Lcom/neverland/viscomp/dialogs/backup/StateBackup;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/backup/StateBackup;->list1:[Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v2, 0x7f030040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/backup/StateBackup;->list2:[Ljava/lang/String;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->state:Lcom/neverland/viscomp/dialogs/backup/StateBackup;

    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v2, Lcom/neverland/prefs/TInternalOptions;->syncBookmark:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v1

    :goto_0
    iput v2, v0, Lcom/neverland/viscomp/dialogs/backup/StateBackup;->index2:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->state:Lcom/neverland/viscomp/dialogs/backup/StateBackup;

    iput v1, v0, Lcom/neverland/viscomp/dialogs/backup/StateBackup;->index2:I

    .line 6
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/neverland/viscomp/dialogs/backup/b;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/backup/b;-><init>(Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;)V

    .line 8
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    const-string v2, "thread end 1"

    invoke-static {v1, v2}, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;->access$000(Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->uiHandlerEnd:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;

    const-string v2, "thread interruped"

    invoke-static {v0, v2, v1}, Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;->access$100(Lcom/neverland/viscomp/dialogs/backup/BookmarkSync;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method
