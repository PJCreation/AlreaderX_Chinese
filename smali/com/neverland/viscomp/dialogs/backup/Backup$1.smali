.class Lcom/neverland/viscomp/dialogs/backup/Backup$1;
.super Ljava/lang/Object;
.source "Backup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/backup/Backup;->fillList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/backup/Backup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

    const-string v1, "handler start"

    invoke-static {v0, v1}, Lcom/neverland/viscomp/dialogs/backup/Backup;->access$200(Lcom/neverland/viscomp/dialogs/backup/Backup;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->endRealLoad()V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

    const-string v1, "handler end"

    invoke-static {v0, v1}, Lcom/neverland/viscomp/dialogs/backup/Backup;->access$300(Lcom/neverland/viscomp/dialogs/backup/Backup;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/backup/Backup$1;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->state:Lcom/neverland/viscomp/dialogs/backup/StateBackup;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/backup/StateBackup;->list1:[Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v2, 0x7f03000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/backup/StateBackup;->list2:[Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/neverland/viscomp/dialogs/backup/a;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/backup/a;-><init>(Lcom/neverland/viscomp/dialogs/backup/Backup$1;)V

    .line 5
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

    const-string v2, "thread end 1"

    invoke-static {v1, v2}, Lcom/neverland/viscomp/dialogs/backup/Backup;->access$000(Lcom/neverland/viscomp/dialogs/backup/Backup;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->uiHandlerEnd:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$1;->this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

    const/4 v1, 0x1

    const-string v2, "thread interruped"

    invoke-static {v0, v2, v1}, Lcom/neverland/viscomp/dialogs/backup/Backup;->access$100(Lcom/neverland/viscomp/dialogs/backup/Backup;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
