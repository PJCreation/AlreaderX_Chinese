.class public Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field a:I

.field private b:Lcom/google/android/material/appbar/AppBarLayout$d;

.field c:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    .line 3
    sget-object v0, Lb/a/a/a/l;->u:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget v0, Lb/a/a/a/l;->w:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    .line 5
    sget v0, Lb/a/a/a/l;->v:I

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a(I)Lcom/google/android/material/appbar/AppBarLayout$d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->f(Lcom/google/android/material/appbar/AppBarLayout$d;)V

    .line 8
    sget v0, Lb/a/a/a/l;->x:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 10
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->c:Landroid/view/animation/Interpolator;

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return-void
.end method

.method private a(I)Lcom/google/android/material/appbar/AppBarLayout$d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$e;

    invoke-direct {p1}, Lcom/google/android/material/appbar/AppBarLayout$e;-><init>()V

    return-object p1
.end method


# virtual methods
.method public b()Lcom/google/android/material/appbar/AppBarLayout$d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->b:Lcom/google/android/material/appbar/AppBarLayout$d;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return v0
.end method

.method public d()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method e()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public f(Lcom/google/android/material/appbar/AppBarLayout$d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->b:Lcom/google/android/material/appbar/AppBarLayout$d;

    return-void
.end method
