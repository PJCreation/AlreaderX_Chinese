.class public Lcom/google/android/material/navigation/NavigationBarPresenter;
.super Ljava/lang/Object;
.source "NavigationBarPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;
    }
.end annotation


# instance fields
.field private e:Landroidx/appcompat/view/menu/MenuBuilder;

.field private f:Lcom/google/android/material/navigation/c;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->h:I

    return-void
.end method

.method public b(Lcom/google/android/material/navigation/c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/navigation/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->g:Z

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->h:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->e:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    invoke-virtual {p1, p2}, Lcom/google/android/material/navigation/c;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/c;->k(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->f:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/material/badge/b;->b(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/c;->j(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/c;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->e:I

    .line 3
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/navigation/c;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/badge/b;->c(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->f:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/SubMenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/c;->c()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/c;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/c;->l()V

    :goto_0
    return-void
.end method
