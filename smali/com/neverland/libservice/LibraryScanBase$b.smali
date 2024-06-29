.class Lcom/neverland/libservice/LibraryScanBase$b;
.super Ljava/lang/Object;
.source "LibraryScanBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/libservice/LibraryScanBase;->queueLibraryPresent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/os/Handler;

.field final synthetic h:Lcom/neverland/libservice/LibraryScanBase;


# direct methods
.method constructor <init>(Lcom/neverland/libservice/LibraryScanBase;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/libservice/LibraryScanBase$b;->h:Lcom/neverland/libservice/LibraryScanBase;

    iput-object p2, p0, Lcom/neverland/libservice/LibraryScanBase$b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/neverland/libservice/LibraryScanBase$b;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/neverland/libservice/LibraryScanBase$b;->g:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/libservice/LibraryScanBase$b;->h:Lcom/neverland/libservice/LibraryScanBase;

    iget-object v1, p0, Lcom/neverland/libservice/LibraryScanBase$b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/neverland/libservice/LibraryScanBase$b;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/neverland/libservice/LibraryScanBase;->b(Lcom/neverland/libservice/LibraryScanBase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/neverland/libservice/LibraryScanBase$b;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
