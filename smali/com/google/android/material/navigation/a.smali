.class public abstract Lcom/google/android/material/navigation/a;
.super Landroid/widget/FrameLayout;
.source "NavigationBarItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/a$e;,
        Lcom/google/android/material/navigation/a$d;
    }
.end annotation


# static fields
.field private static final e:[I

.field private static final f:Lcom/google/android/material/navigation/a$d;

.field private static final g:Lcom/google/android/material/navigation/a$d;


# instance fields
.field private A:Landroid/animation/ValueAnimator;

.field private B:Lcom/google/android/material/navigation/a$d;

.field private C:F

.field private D:Z

.field private E:I

.field private F:I

.field private G:Z

.field private H:I

.field private I:Lcom/google/android/material/badge/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:Z

.field private final p:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Landroid/widget/ImageView;

.field private final s:Landroid/view/ViewGroup;

.field private final t:Landroid/widget/TextView;

.field private final u:Landroid/widget/TextView;

.field private v:I

.field private w:Landroidx/appcompat/view/menu/MenuItemImpl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/google/android/material/navigation/a;->e:[I

    .line 2
    new-instance v0, Lcom/google/android/material/navigation/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/a$d;-><init>(Lcom/google/android/material/navigation/a$a;)V

    sput-object v0, Lcom/google/android/material/navigation/a;->f:Lcom/google/android/material/navigation/a$d;

    .line 3
    new-instance v0, Lcom/google/android/material/navigation/a$e;

    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/a$e;-><init>(Lcom/google/android/material/navigation/a$a;)V

    sput-object v0, Lcom/google/android/material/navigation/a;->g:Lcom/google/android/material/navigation/a$d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/navigation/a;->h:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/google/android/material/navigation/a;->v:I

    .line 4
    sget-object v1, Lcom/google/android/material/navigation/a;->f:Lcom/google/android/material/navigation/a$d;

    iput-object v1, p0, Lcom/google/android/material/navigation/a;->B:Lcom/google/android/material/navigation/a$d;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/google/android/material/navigation/a;->C:F

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/navigation/a;->D:Z

    .line 7
    iput v0, p0, Lcom/google/android/material/navigation/a;->E:I

    .line 8
    iput v0, p0, Lcom/google/android/material/navigation/a;->F:I

    .line 9
    iput-boolean v0, p0, Lcom/google/android/material/navigation/a;->G:Z

    .line 10
    iput v0, p0, Lcom/google/android/material/navigation/a;->H:I

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/a;->getItemLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    sget p1, Lb/a/a/a/f;->L:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/google/android/material/navigation/a;->p:Landroid/widget/FrameLayout;

    .line 13
    sget p1, Lb/a/a/a/f;->K:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/navigation/a;->q:Landroid/view/View;

    .line 14
    sget p1, Lb/a/a/a/f;->M:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    .line 15
    sget v0, Lb/a/a/a/f;->N:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    .line 16
    sget v2, Lb/a/a/a/f;->P:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    .line 17
    sget v3, Lb/a/a/a/f;->O:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/navigation/a;->getItemBackgroundResId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/material/navigation/a;->getItemDefaultMarginResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/navigation/a;->i:I

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigation/a;->j:I

    const/4 v0, 0x2

    .line 21
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 22
    invoke-static {v3, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 24
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/navigation/a;->e(FF)V

    if-eqz p1, :cond_0

    .line 25
    new-instance v0, Lcom/google/android/material/navigation/a$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/a$a;-><init>(Lcom/google/android/material/navigation/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/navigation/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/navigation/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->s(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/navigation/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->t(I)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/navigation/a;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/navigation/a;->m(FF)V

    return-void
.end method

.method private e(FF)V
    .locals 2

    sub-float v0, p1, p2

    .line 1
    iput v0, p0, Lcom/google/android/material/navigation/a;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    .line 2
    iput v1, p0, Lcom/google/android/material/navigation/a;->l:F

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    .line 3
    iput p1, p0, Lcom/google/android/material/navigation/a;->m:F

    return-void
.end method

.method private g(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    sget-boolean p1, Lcom/google/android/material/badge/b;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_0
    return-object v1
.end method

.method private getIconOrContainer()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    :goto_0
    return-object v0
.end method

.method private getItemVisiblePosition()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    instance-of v5, v4, Lcom/google/android/material/navigation/a;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getSuggestedIconHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method private getSuggestedIconWidth()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    invoke-virtual {v1}, Lcom/google/android/material/badge/a;->i()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method private h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/a;->G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/navigation/a;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/a;->D:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/navigation/a;->h:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->A:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/material/navigation/a;->A:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/google/android/material/navigation/a;->C:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/navigation/a;->A:Landroid/animation/ValueAnimator;

    .line 6
    new-instance v1, Lcom/google/android/material/navigation/a$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/navigation/a$c;-><init>(Lcom/google/android/material/navigation/a;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->A:Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lb/a/a/a/b;->K:I

    sget-object v2, Lb/a/a/a/m/a;->b:Landroid/animation/TimeInterpolator;

    .line 9
    invoke-static {v0, v1, v2}, Lb/a/a/a/t/a;->e(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->A:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lb/a/a/a/b;->J:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/a/a/g;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 14
    invoke-static {v0, v1, v2}, Lb/a/a/a/t/a;->d(Landroid/content/Context;II)I

    move-result v0

    int-to-long v0, v0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 17
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/material/navigation/a;->m(FF)V

    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/a;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private m(FF)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->B:Lcom/google/android/material/navigation/a$d;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/material/navigation/a$d;->d(FFLandroid/view/View;)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/google/android/material/navigation/a;->C:F

    return-void
.end method

.method private static n(Landroid/widget/TextView;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lb/a/a/a/u/c;->h(Landroid/content/Context;II)I

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, p1

    .line 3
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private static o(Landroid/view/View;FFI)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 3
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static p(Landroid/view/View;II)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private q(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->g(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 6
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/b;->a(Lcom/google/android/material/badge/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method private r(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    invoke-static {v0, p1}, Lcom/google/android/material/badge/b;->d(Lcom/google/android/material/badge/a;Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    return-void
.end method

.method private s(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->g(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 4
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/b;->e(Lcom/google/android/material/badge/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private t(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->q:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/material/navigation/a;->E:I

    iget v1, p0, Lcom/google/android/material/navigation/a;->H:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/material/navigation/a;->F:I

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 7
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/material/navigation/a;->g:Lcom/google/android/material/navigation/a$d;

    iput-object v0, p0, Lcom/google/android/material/navigation/a;->B:Lcom/google/android/material/navigation/a$d;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/material/navigation/a;->f:Lcom/google/android/material/navigation/a$d;

    iput-object v0, p0, Lcom/google/android/material/navigation/a;->B:Lcom/google/android/material/navigation/a$d;

    :goto_0
    return-void
.end method

.method private static v(Landroid/view/View;I)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 2
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/navigation/a;->l()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/material/navigation/a;->C:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/navigation/a;->h:Z

    return-void
.end method

.method public getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->q:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadge()Lcom/google/android/material/badge/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    return-object v0
.end method

.method protected getItemBackgroundResId()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    sget v0, Lb/a/a/a/e;->g:I

    return v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method protected getItemDefaultMarginResId()I
    .locals 1
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation

    .line 1
    sget v0, Lb/a/a/a/d;->m0:I

    return v0
.end method

.method protected abstract getItemLayoutResId()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method public getItemPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/a;->v:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getSuggestedIconHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getSuggestedIconWidth()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/a;->setCheckable(Z)V

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/a;->setChecked(Z)V

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/a;->setEnabled(Z)V

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    .line 13
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    .line 14
    :cond_2
    invoke-static {p0, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/google/android/material/navigation/a;->h:Z

    return-void
.end method

.method l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/a;->r(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/material/navigation/a;->e:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/badge/a;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getItemVisiblePosition()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v5

    .line 12
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 16
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/a/a/j;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    new-instance p2, Lcom/google/android/material/navigation/a$b;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/navigation/a$b;-><init>(Lcom/google/android/material/navigation/a;I)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->q:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setActiveIndicatorEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/a;->D:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setActiveIndicatorHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/a;->F:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->t(I)V

    return-void
.end method

.method public setActiveIndicatorMarginHorizontal(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/a;->H:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->t(I)V

    return-void
.end method

.method public setActiveIndicatorResizeable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/a;->G:Z

    return-void
.end method

.method public setActiveIndicatorWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/a;->E:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->t(I)V

    return-void
.end method

.method setBadge(Lcom/google/android/material/badge/a;)V
    .locals 2
    .param p1    # Lcom/google/android/material/badge/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const-string v0, "NavigationBar"

    const-string v1, "Multiple badges shouldn\'t be attached to one item."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/a;->r(Landroid/view/View;)V

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/navigation/a;->I:Lcom/google/android/material/badge/a;

    .line 6
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->q(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/material/navigation/a;->j(F)V

    .line 6
    iget v1, p0, Lcom/google/android/material/navigation/a;->n:I

    const/4 v3, -0x1

    const/16 v4, 0x11

    const/16 v5, 0x31

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq v1, v3, :cond_6

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/navigation/a;->i:I

    invoke-static {v0, v1, v4}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/google/android/material/navigation/a;->j:I

    invoke-static {v1, v2}, Lcom/google/android/material/navigation/a;->v(Landroid/view/View;I)V

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/navigation/a;->i:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/navigation/a;->k:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 12
    invoke-static {v1, v2, v5}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 13
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-static {v1, v0, v0, v7}, Lcom/google/android/material/navigation/a;->o(Landroid/view/View;FFI)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/navigation/a;->l:F

    invoke-static {v0, v1, v1, v6}, Lcom/google/android/material/navigation/a;->o(Landroid/view/View;FFI)V

    goto/16 :goto_3

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/navigation/a;->i:I

    .line 16
    invoke-static {v1, v2, v5}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 17
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/material/navigation/a;->m:F

    invoke-static {v1, v2, v2, v6}, Lcom/google/android/material/navigation/a;->o(Landroid/view/View;FFI)V

    .line 18
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-static {v1, v0, v0, v7}, Lcom/google/android/material/navigation/a;->o(Landroid/view/View;FFI)V

    goto/16 :goto_3

    :cond_4
    if-eqz p1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/navigation/a;->i:I

    .line 20
    invoke-static {v0, v1, v5}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 21
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/google/android/material/navigation/a;->j:I

    invoke-static {v0, v1}, Lcom/google/android/material/navigation/a;->v(Landroid/view/View;I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/navigation/a;->i:I

    invoke-static {v0, v1, v4}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 24
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lcom/google/android/material/navigation/a;->v(Landroid/view/View;I)V

    .line 25
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 27
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/navigation/a;->o:Z

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    .line 28
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/navigation/a;->i:I

    .line 29
    invoke-static {v0, v1, v5}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 30
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/google/android/material/navigation/a;->j:I

    invoke-static {v0, v1}, Lcom/google/android/material/navigation/a;->v(Landroid/view/View;I)V

    .line 31
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 32
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/navigation/a;->i:I

    invoke-static {v0, v1, v4}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 33
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lcom/google/android/material/navigation/a;->v(Landroid/view/View;I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 36
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->s:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/google/android/material/navigation/a;->j:I

    invoke-static {v1, v2}, Lcom/google/android/material/navigation/a;->v(Landroid/view/View;I)V

    if-eqz p1, :cond_9

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/navigation/a;->i:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/navigation/a;->k:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 38
    invoke-static {v1, v2, v5}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 39
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-static {v1, v0, v0, v7}, Lcom/google/android/material/navigation/a;->o(Landroid/view/View;FFI)V

    .line 40
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/navigation/a;->l:F

    invoke-static {v0, v1, v1, v6}, Lcom/google/android/material/navigation/a;->o(Landroid/view/View;FFI)V

    goto :goto_3

    .line 41
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/navigation/a;->i:I

    .line 42
    invoke-static {v1, v2, v5}, Lcom/google/android/material/navigation/a;->p(Landroid/view/View;II)V

    .line 43
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/material/navigation/a;->m:F

    invoke-static {v1, v2, v2, v6}, Lcom/google/android/material/navigation/a;->o(Landroid/view/View;FFI)V

    .line 44
    iget-object v1, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-static {v1, v0, v0, v7}, Lcom/google/android/material/navigation/a;->o(Landroid/view/View;FFI)V

    .line 45
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->y:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/navigation/a;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/material/navigation/a;->z:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->x:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/a;->x:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/a;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/a;->j:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/navigation/a;->j:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->k()V

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/a;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/navigation/a;->i:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->k()V

    :cond_0
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/a;->v:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/a;->n:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/navigation/a;->n:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->u()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/a;->t(I)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->k()V

    :cond_0
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/a;->o:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/navigation/a;->o:Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/navigation/a;->k()V

    :cond_0
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/material/navigation/a;->n(Landroid/widget/TextView;I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/a;->e(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/material/navigation/a;->n(Landroid/widget/TextView;I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/a;->e(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/navigation/a;->w:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 7
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    const/16 v1, 0x17

    if-le v0, v1, :cond_5

    .line 8
    :cond_4
    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
