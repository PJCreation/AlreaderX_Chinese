.class Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks$2;
.super Ljava/lang/Object;
.source "UnitViewBookmarks.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks$2;->this$0:Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object p1, p1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput p3, p1, Lcom/neverland/prefs/TInternalOptions;->bookmarkViewType:I

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks$2;->this$0:Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks;->access$000(Lcom/neverland/viscomp/dialogs/bookmarks/UnitViewBookmarks;Z)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
