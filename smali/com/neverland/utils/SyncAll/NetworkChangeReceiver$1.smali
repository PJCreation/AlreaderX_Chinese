.class Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;
.super Ljava/lang/Object;
.source "NetworkChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;


# direct methods
.method constructor <init>(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;->this$0:Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;->this$0:Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;

    invoke-static {v1}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$000(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcom/neverland/utils/TCustomDevice;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "network available"

    .line 3
    invoke-static {v0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$200(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    invoke-static {v0}, Lcom/neverland/mainApp;->t(Landroid/app/Activity;)V

    .line 5
    sget-object v0, Lcom/neverland/mainApp;->o:Lcom/neverland/utils/TCommands;

    sget-object v1, Lcom/neverland/utils/finit$ECOMMANDS;->command_read_syncposition:Lcom/neverland/utils/finit$ECOMMANDS;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/neverland/utils/TCommands;->commandSystem(Lcom/neverland/utils/finit$ECOMMANDS;I)Lcom/neverland/utils/finit$ECOMMAND_RESULT;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network unavailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;->this$0:Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;

    invoke-static {v1}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$300(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$200(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;->this$0:Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$308(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)I

    .line 8
    iget-object v0, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;->this$0:Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;

    invoke-static {v0}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$300(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)I

    move-result v0

    invoke-static {}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$400()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver$1;->this$0:Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;

    invoke-static {v1}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$000(Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/neverland/utils/SyncAll/NetworkChangeReceiver;->access$500()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
