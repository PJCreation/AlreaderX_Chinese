.class Lcom/neverland/viscomp/dialogs/BaseGridView$2;
.super Ljava/lang/Object;
.source "BaseGridView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/BaseGridView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/BaseGridView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$302(Lcom/neverland/viscomp/dialogs/BaseGridView;I)I

    .line 5
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$502(Lcom/neverland/viscomp/dialogs/BaseGridView;I)I

    .line 6
    invoke-static {}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$000()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 7
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$100(Lcom/neverland/viscomp/dialogs/BaseGridView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$400(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p1

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$300(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$700(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p2

    if-le p1, p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1, v2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$102(Lcom/neverland/viscomp/dialogs/BaseGridView;Z)Z

    .line 9
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$400(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p1

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$300(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p2

    sub-int/2addr p1, p2

    if-lez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->isNextAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->scrollToNext()V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->isPrevAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->scrollToPrevious()V

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$100(Lcom/neverland/viscomp/dialogs/BaseGridView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$600(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p1

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$500(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$700(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p2

    if-le p1, p2, :cond_7

    .line 15
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1, v2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$102(Lcom/neverland/viscomp/dialogs/BaseGridView;Z)Z

    .line 16
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$600(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p1

    iget-object p2, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$500(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p2

    sub-int/2addr p1, p2

    if-lez p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->isNextAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->scrollToNext()V

    goto/16 :goto_2

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->isPrevAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->scrollToPrevious()V

    goto/16 :goto_2

    .line 21
    :cond_3
    invoke-static {}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$000()I

    move-result p1

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$100(Lcom/neverland/viscomp/dialogs/BaseGridView;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$200(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$200(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result v0

    iget-object v3, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {v4}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$200(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/widget/GridView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_2

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$402(Lcom/neverland/viscomp/dialogs/BaseGridView;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$302(Lcom/neverland/viscomp/dialogs/BaseGridView;I)I

    .line 24
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$602(Lcom/neverland/viscomp/dialogs/BaseGridView;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$502(Lcom/neverland/viscomp/dialogs/BaseGridView;I)I

    .line 25
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$300(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result p2

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {v0}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$500(Lcom/neverland/viscomp/dialogs/BaseGridView;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$202(Lcom/neverland/viscomp/dialogs/BaseGridView;I)I

    .line 26
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {p1, v1}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$102(Lcom/neverland/viscomp/dialogs/BaseGridView;Z)Z

    .line 27
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    const/high16 p2, 0x42300000    # 44.0f

    sget v0, Lcom/neverland/mainApp;->g:F

    mul-float v0, v0, p2

    float-to-int p2, v0

    shr-int/2addr p2, v2

    invoke-static {p1, p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$702(Lcom/neverland/viscomp/dialogs/BaseGridView;I)I

    goto :goto_2

    :cond_5
    if-lez v0, :cond_7

    .line 28
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/BaseGridView$2;->this$0:Lcom/neverland/viscomp/dialogs/BaseGridView;

    invoke-static {}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$000()I

    move-result p2

    if-ne p2, v2, :cond_6

    const/4 p2, 0x1

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, p2}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$102(Lcom/neverland/viscomp/dialogs/BaseGridView;Z)Z

    .line 29
    :cond_7
    :goto_2
    invoke-static {}, Lcom/neverland/viscomp/dialogs/BaseGridView;->access$000()I

    move-result p1

    if-ne p1, v2, :cond_8

    return v2

    :cond_8
    return v1
.end method
