.class public Lcom/google/android/material/internal/i;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

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
        Lcom/google/android/material/internal/i$h;,
        Lcom/google/android/material/internal/i$d;,
        Lcom/google/android/material/internal/i$f;,
        Lcom/google/android/material/internal/i$g;,
        Lcom/google/android/material/internal/i$e;,
        Lcom/google/android/material/internal/i$c;,
        Lcom/google/android/material/internal/i$b;,
        Lcom/google/android/material/internal/i$j;,
        Lcom/google/android/material/internal/i$k;,
        Lcom/google/android/material/internal/i$i;,
        Lcom/google/android/material/internal/i$l;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field private C:I

.field private D:I

.field E:I

.field private F:I

.field final G:Landroid/view/View$OnClickListener;

.field private e:Lcom/google/android/material/internal/NavigationMenuView;

.field f:Landroid/widget/LinearLayout;

.field private g:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field h:Landroidx/appcompat/view/menu/MenuBuilder;

.field private i:I

.field j:Lcom/google/android/material/internal/i$c;

.field k:Landroid/view/LayoutInflater;

.field l:I

.field m:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field n:I

.field o:Landroid/content/res/ColorStateList;

.field p:Landroid/content/res/ColorStateList;

.field q:Landroid/graphics/drawable/Drawable;

.field r:Landroid/graphics/drawable/RippleDrawable;

.field s:I

.field t:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field u:I

.field v:I

.field w:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field x:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field y:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field z:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/internal/i;->l:I

    .line 3
    iput v0, p0, Lcom/google/android/material/internal/i;->n:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/internal/i;->B:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/material/internal/i;->F:I

    .line 6
    new-instance v0, Lcom/google/android/material/internal/i$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/i$a;-><init>(Lcom/google/android/material/internal/i;)V

    iput-object v0, p0, Lcom/google/android/material/internal/i;->G:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/i;->B:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/material/internal/i;->D:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/internal/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/internal/i;->C:I

    return p0
.end method


# virtual methods
.method public A(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->v:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/i;->v:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/internal/i;->A:Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public B(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/i;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public C(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->C:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public D(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->n:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public E(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/i;->o:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public F(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->t:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public G(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->F:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public H(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/i;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public I(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->y:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public J(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->l:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public K(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i$c;->k(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public c(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/material/internal/i;->D:I

    if-eq v1, v0, :cond_0

    .line 3
    iput v0, p0, Lcom/google/android/material/internal/i;->D:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/internal/i;->L()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i$c;->c()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->x:I

    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->w:I

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->i:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/i;->k:Landroid/view/LayoutInflater;

    sget v1, Lb/a/a/a/h;->h:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    .line 4
    new-instance v0, Lcom/google/android/material/internal/i$h;

    iget-object v1, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/internal/i$h;-><init>(Lcom/google/android/material/internal/i;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/android/material/internal/i$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/i$c;-><init>(Lcom/google/android/material/internal/i;)V

    iput-object p1, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    .line 7
    :cond_0
    iget p1, p0, Lcom/google/android/material/internal/i;->F:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/i;->k:Landroid/view/LayoutInflater;

    sget v0, Lb/a/a/a/h;->e:I

    iget-object v1, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    .line 11
    iget-object p1, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->s:I

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/i;->k:Landroid/view/LayoutInflater;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/internal/i;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 4
    sget p2, Lb/a/a/a/d;->l:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/i;->E:I

    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->u:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->C:I

    return v0
.end method

.method public l()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public m()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->p:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public n()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->t:I

    return v0
.end method

.method public o()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->z:I

    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->g:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/i$c;->i(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/google/android/material/internal/i;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/internal/i$c;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public p()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/i;->y:I

    return v0
.end method

.method public q(I)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->k:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/i;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public r(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/i;->B:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/internal/i;->B:Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/internal/i;->L()V

    :cond_0
    return-void
.end method

.method public s(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i$c;->j(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/i;->g:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public t(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->x:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public u(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->w:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/i;->j:Lcom/google/android/material/internal/i$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/internal/i$c;->l()V

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->i:I

    return-void
.end method

.method public w(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/i;->q:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public x(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/RippleDrawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/i;->r:Landroid/graphics/drawable/RippleDrawable;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->s:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/i;->u:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method
