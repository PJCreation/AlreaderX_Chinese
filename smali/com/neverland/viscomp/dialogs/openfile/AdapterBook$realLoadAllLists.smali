.class Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;
.super Ljava/lang/Object;
.source "AdapterBook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "realLoadAllLists"
.end annotation


# instance fields
.field private final needReload:Z

.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;


# direct methods
.method public constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->needReload:Z

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    const-string v1, "handler start"

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;->endRealLoad()V

    .line 3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    const-string v1, "handler end"

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    const-string v1, "thread start"

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->needReload:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v2

    const v3, 0x7f11005b

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 11
    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v2, 0x1

    .line 12
    iput-wide v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v2

    const v3, 0x7f110065

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 16
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 18
    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v2, 0x2

    .line 19
    iput-wide v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 21
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v2

    const v3, 0x7f11004d

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 23
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 25
    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v2, 0x3

    .line 26
    iput-wide v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v2

    const v3, 0x7f110059

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v2, v2, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 32
    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v2}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 33
    iput v1, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v3, 0x7

    .line 34
    iput-wide v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 36
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v3

    const v4, 0x7f110425

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 38
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v2}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 40
    iput v1, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v3, 0x4

    .line 41
    iput-wide v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v3

    const v4, 0x7f11003a

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v2}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 47
    iput v1, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v3, 0x5

    .line 48
    iput-wide v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 50
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v3}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v3

    const v4, 0x7f110422

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v3, v3, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 53
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;

    invoke-direct {v0}, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;-><init>()V

    .line 54
    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->type:I

    const-wide/16 v1, 0x6

    .line 55
    iput-wide v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->ganres:J

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->fullPath:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->dialog:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenBase;

    invoke-virtual {v1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getThisDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog;

    move-result-object v1

    const v2, 0x7f11005c

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->title:Ljava/lang/String;

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neverland/d/b/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/FileListItem;->titleLow:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v1, v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->needReload:Z

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    iget-object v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->arrDir:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->cntDir:I

    .line 62
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    new-instance v0, Lcom/neverland/viscomp/dialogs/openfile/a;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/openfile/a;-><init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;)V

    .line 64
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    const-string v2, "thread end 1"

    invoke-virtual {v1, v2}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->uiHandlerEnd:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/AdapterBook$realLoadAllLists;->this$0:Lcom/neverland/viscomp/dialogs/openfile/AdapterBook;

    const/4 v1, 0x1

    const-string v2, "thread interruped"

    invoke-virtual {v0, v2, v1}, Lcom/neverland/viscomp/dialogs/openfile/AdapterBase;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
