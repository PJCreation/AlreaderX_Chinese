.class Lcom/neverland/libservice/LibraryScanBase$a;
.super Landroid/os/Handler;
.source "LibraryScanBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/libservice/LibraryScanBase;->queueLibraryPresent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/neverland/libservice/LibraryScanBase;


# direct methods
.method constructor <init>(Lcom/neverland/libservice/LibraryScanBase;Landroid/os/Looper;Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/libservice/LibraryScanBase$a;->c:Lcom/neverland/libservice/LibraryScanBase;

    iput-object p3, p0, Lcom/neverland/libservice/LibraryScanBase$a;->a:Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    iput-object p4, p0, Lcom/neverland/libservice/LibraryScanBase$a;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/libservice/LibraryScanBase$a;->c:Lcom/neverland/libservice/LibraryScanBase;

    invoke-static {v0}, Lcom/neverland/libservice/LibraryScanBase;->a(Lcom/neverland/libservice/LibraryScanBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/libservice/LibraryScanBase$a;->a:Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/neverland/libservice/LibraryScanBase$a;->a:Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->imageView:Lcom/neverland/viscomp/dialogs/openfile/FileImageView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/neverland/libservice/LibraryScanBase$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/neverland/libservice/LibraryScanBase$a;->a:Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    iget-object v0, v0, Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;->rightInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/neverland/libservice/LibraryScanBase$a;->c:Lcom/neverland/libservice/LibraryScanBase;

    invoke-static {p1}, Lcom/neverland/libservice/LibraryScanBase;->a(Lcom/neverland/libservice/LibraryScanBase;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/neverland/libservice/LibraryScanBase$a;->a:Lcom/neverland/viscomp/dialogs/openfile/FileViewHolder;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
