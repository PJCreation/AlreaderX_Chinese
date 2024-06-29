.class Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;
.super Ljava/lang/Object;
.source "UnitOpenStorage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->onCreateDialogCustomize(Landroid/app/Dialog;Lcom/neverland/viscomp/dialogs/openfile/StateAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->access$000(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->access$102(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;I)I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->access$002(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;J)J

    .line 4
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->access$108(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)I

    .line 5
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->access$100(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 6
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v0, p1, Lcom/neverland/prefs/TInternalOptions;->storageReadAllFiles:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/neverland/prefs/TInternalOptions;->storageReadAllFiles:Z

    .line 7
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage$1;->this$0:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;->getAdapter()Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->init(Z)V

    :cond_1
    return-void
.end method
