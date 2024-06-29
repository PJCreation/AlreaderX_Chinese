.class public abstract Lcom/google/android/material/navigation/c;
.super Landroid/view/ViewGroup;
.source "NavigationBarMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final e:[I

.field private static final f:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Lb/a/a/a/x/m;

.field private E:Z

.field private F:Landroid/content/res/ColorStateList;

.field private G:Lcom/google/android/material/navigation/NavigationBarPresenter;

.field private H:Landroidx/appcompat/view/menu/MenuBuilder;

.field private final g:Landroidx/transition/TransitionSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/navigation/a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:[Lcom/google/android/material/navigation/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private q:Landroid/content/res/ColorStateList;

.field private final r:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private t:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:I

.field private final w:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/a;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/google/android/material/navigation/c;->e:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/google/android/material/navigation/c;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/navigation/c;->i:Landroidx/core/util/Pools$Pool;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/navigation/c;->j:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/material/navigation/c;->m:I

    .line 5
    iput p1, p0, Lcom/google/android/material/navigation/c;->n:I

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/material/navigation/c;->x:I

    .line 8
    iput v0, p0, Lcom/google/android/material/navigation/c;->y:I

    .line 9
    iput-boolean p1, p0, Lcom/google/android/material/navigation/c;->E:Z

    const v0, 0x1010038

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/c;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/navigation/c;->r:Landroid/content/res/ColorStateList;

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/material/navigation/c;->g:Landroidx/transition/TransitionSet;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/navigation/c;->g:Landroidx/transition/TransitionSet;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lb/a/a/a/b;->J:I

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/a/a/g;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 17
    invoke-static {p1, v1, v2}, Lb/a/a/a/t/a;->d(Landroid/content/Context;II)I

    move-result p1

    int-to-long v1, p1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lb/a/a/a/b;->K:I

    sget-object v2, Lb/a/a/a/m/a;->b:Landroid/animation/TimeInterpolator;

    .line 20
    invoke-static {p1, v1, v2}, Lb/a/a/a/t/a;->e(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    .line 22
    new-instance p1, Lcom/google/android/material/internal/n;

    invoke-direct {p1}, Lcom/google/android/material/internal/n;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 23
    :goto_0
    new-instance p1, Lcom/google/android/material/navigation/c$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/navigation/c$a;-><init>(Lcom/google/android/material/navigation/c;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/c;->h:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 24
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/navigation/c;)Lcom/google/android/material/navigation/NavigationBarPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigation/c;->G:Lcom/google/android/material/navigation/NavigationBarPresenter;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/navigation/c;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method private e()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->D:Lb/a/a/a/x/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/c;->F:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lb/a/a/a/x/h;

    iget-object v1, p0, Lcom/google/android/material/navigation/c;->D:Lb/a/a/a/x/m;

    invoke-direct {v0, v1}, Lb/a/a/a/x/h;-><init>(Lb/a/a/a/x/m;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/navigation/c;->F:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lb/a/a/a/x/h;->b0(Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNewItem()Lcom/google/android/material/navigation/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->i:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/c;->f(Landroid/content/Context;)Lcom/google/android/material/navigation/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private h(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/navigation/a;)V
    .locals 2
    .param p1    # Lcom/google/android/material/navigation/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/c;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/a;->setBadge(Lcom/google/android/material/badge/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 4
    iget-object v5, p0, Lcom/google/android/material/navigation/c;->i:Landroidx/core/util/Pools$Pool;

    invoke-interface {v5, v4}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v4}, Lcom/google/android/material/navigation/a;->f()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iput v1, p0, Lcom/google/android/material/navigation/c;->m:I

    .line 8
    iput v1, p0, Lcom/google/android/material/navigation/c;->n:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    return-void

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/navigation/c;->i()V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/navigation/a;

    iput-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    .line 12
    iget v0, p0, Lcom/google/android/material/navigation/c;->k:I

    iget-object v2, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/navigation/c;->g(II)Z

    move-result v0

    const/4 v2, 0x0

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_7

    .line 14
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->G:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarPresenter;->c(Z)V

    .line 15
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 16
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->G:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-virtual {v3, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->c(Z)V

    .line 17
    invoke-direct {p0}, Lcom/google/android/material/navigation/c;->getNewItem()Lcom/google/android/material/navigation/a;

    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    aput-object v3, v4, v2

    .line 19
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    iget v4, p0, Lcom/google/android/material/navigation/c;->p:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setIconSize(I)V

    .line 21
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 22
    iget v4, p0, Lcom/google/android/material/navigation/c;->s:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setTextAppearanceInactive(I)V

    .line 23
    iget v4, p0, Lcom/google/android/material/navigation/c;->t:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setTextAppearanceActive(I)V

    .line 24
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 25
    iget v4, p0, Lcom/google/android/material/navigation/c;->x:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 26
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setItemPaddingTop(I)V

    .line 27
    :cond_3
    iget v4, p0, Lcom/google/android/material/navigation/c;->y:I

    if-eq v4, v5, :cond_4

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setItemPaddingBottom(I)V

    .line 29
    :cond_4
    iget v4, p0, Lcom/google/android/material/navigation/c;->A:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setActiveIndicatorWidth(I)V

    .line 30
    iget v4, p0, Lcom/google/android/material/navigation/c;->B:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setActiveIndicatorHeight(I)V

    .line 31
    iget v4, p0, Lcom/google/android/material/navigation/c;->C:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setActiveIndicatorMarginHorizontal(I)V

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/navigation/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-boolean v4, p0, Lcom/google/android/material/navigation/c;->E:Z

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setActiveIndicatorResizeable(Z)V

    .line 34
    iget-boolean v4, p0, Lcom/google/android/material/navigation/c;->z:Z

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setActiveIndicatorEnabled(Z)V

    .line 35
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 36
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 37
    :cond_5
    iget v4, p0, Lcom/google/android/material/navigation/c;->v:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setItemBackground(I)V

    .line 38
    :goto_2
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/a;->setShifting(Z)V

    .line 39
    iget v4, p0, Lcom/google/android/material/navigation/c;->k:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setLabelVisibilityMode(I)V

    .line 40
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 41
    invoke-virtual {v3, v4, v1}, Lcom/google/android/material/navigation/a;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 42
    invoke-virtual {v3, v2}, Lcom/google/android/material/navigation/a;->setItemPosition(I)V

    .line 43
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    .line 44
    iget-object v5, p0, Lcom/google/android/material/navigation/c;->j:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    iget-object v5, p0, Lcom/google/android/material/navigation/c;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget v5, p0, Lcom/google/android/material/navigation/c;->m:I

    if-eqz v5, :cond_6

    if-ne v4, v5, :cond_6

    .line 47
    iput v2, p0, Lcom/google/android/material/navigation/c;->n:I

    .line 48
    :cond_6
    invoke-direct {p0, v3}, Lcom/google/android/material/navigation/c;->setBadgeIfNeeded(Lcom/google/android/material/navigation/a;)V

    .line 49
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/google/android/material/navigation/c;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigation/c;->n:I

    .line 51
    iget-object v1, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public d(I)Landroid/content/res/ColorStateList;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 6
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 9
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/c;->f:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/navigation/c;->e:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    .line 10
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method protected abstract f(Landroid/content/Context;)Lcom/google/android/material/navigation/a;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected g(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->F:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/c;->z:Z

    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->B:I

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->C:I

    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lb/a/a/a/x/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->D:Lb/a/a/a/x/m;

    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->A:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->v:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->p:I

    return v0
.end method

.method public getItemPaddingBottom()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->y:I

    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->x:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->t:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->s:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->q:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->k:I

    return v0
.end method

.method protected getMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->m:I

    return v0
.end method

.method protected getSelectedItemPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/c;->n:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method j(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz p1, :cond_2

    .line 6
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 7
    iget-object v3, p0, Lcom/google/android/material/navigation/c;->w:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/badge/a;

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/a;->setBadge(Lcom/google/android/material/badge/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/navigation/c;->m:I

    .line 5
    iput v1, p0, Lcom/google/android/material/navigation/c;->n:I

    const/4 p1, 0x1

    .line 6
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public l()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/navigation/c;->c()V

    return-void

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/android/material/navigation/c;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 6
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/navigation/c;->m:I

    .line 9
    iput v3, p0, Lcom/google/android/material/navigation/c;->n:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget v3, p0, Lcom/google/android/material/navigation/c;->m:I

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/material/navigation/c;->g:Landroidx/transition/TransitionSet;

    if-eqz v1, :cond_4

    .line 11
    invoke-static {p0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 12
    :cond_4
    iget v1, p0, Lcom/google/android/material/navigation/c;->k:I

    iget-object v3, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/material/navigation/c;->g(II)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 13
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->G:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarPresenter;->c(Z)V

    .line 14
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/google/android/material/navigation/c;->k:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/a;->setLabelVisibilityMode(I)V

    .line 15
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/navigation/a;->setShifting(Z)V

    .line 16
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/navigation/a;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 17
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->G:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-virtual {v4, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->c(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->H:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v0, v2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/c;->o:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/c;->F:Landroid/content/res/ColorStateList;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz p1, :cond_0

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/navigation/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/a;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/c;->z:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setActiveIndicatorEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->B:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setActiveIndicatorHeight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->C:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setActiveIndicatorMarginHorizontal(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setItemActiveIndicatorResizeable(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/c;->E:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setActiveIndicatorResizeable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lb/a/a/a/x/m;)V
    .locals 4
    .param p1    # Lb/a/a/a/x/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/c;->D:Lb/a/a/a/x/m;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz p1, :cond_0

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/navigation/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/a;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->A:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setActiveIndicatorWidth(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/c;->u:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->v:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->p:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->y:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setItemPaddingBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->x:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setItemPaddingTop(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->t:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setTextAppearanceActive(I)V

    .line 5
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->q:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->s:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setTextAppearanceInactive(I)V

    .line 5
    iget-object v4, p0, Lcom/google/android/material/navigation/c;->q:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/c;->q:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/c;->l:[Lcom/google/android/material/navigation/a;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/c;->k:I

    return-void
.end method

.method public setPresenter(Lcom/google/android/material/navigation/NavigationBarPresenter;)V
    .locals 0
    .param p1    # Lcom/google/android/material/navigation/NavigationBarPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/c;->G:Lcom/google/android/material/navigation/NavigationBarPresenter;

    return-void
.end method
