.class Lcom/google/android/material/datepicker/g$c;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/g;->j(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/material/datepicker/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/g;ILandroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/g$c;->d:Lcom/google/android/material/datepicker/g;

    iput p2, p0, Lcom/google/android/material/datepicker/g$c;->a:I

    iput-object p3, p0, Lcom/google/android/material/datepicker/g$c;->b:Landroid/view/View;

    iput p4, p0, Lcom/google/android/material/datepicker/g$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 2
    iget v0, p0, Lcom/google/android/material/datepicker/g$c;->a:I

    if-ltz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/datepicker/g$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/g$c;->a:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/g$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/g$c;->b:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/datepicker/g$c;->c:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/google/android/material/datepicker/g$c;->b:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iget-object v3, p0, Lcom/google/android/material/datepicker/g$c;->b:Landroid/view/View;

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 9
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
