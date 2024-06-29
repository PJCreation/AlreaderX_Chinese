.class Lcom/neverland/viscomp/TBaseActivity$1;
.super Ljava/lang/Object;
.source "TBaseActivity.java"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/TBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/window/layout/WindowLayoutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/TBaseActivity;


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/TBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/TBaseActivity$1;->this$0:Lcom/neverland/viscomp/TBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 6

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/window/layout/d;->a()Landroidx/window/layout/WindowMetricsCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/viscomp/TBaseActivity$1;->this$0:Lcom/neverland/viscomp/TBaseActivity;

    .line 3
    invoke-static {v1}, Lcom/neverland/viscomp/TBaseActivity;->access$000(Lcom/neverland/viscomp/TBaseActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/window/layout/WindowMetricsCalculator;->computeCurrentWindowMetrics(Landroid/app/Activity;)Landroidx/window/layout/WindowMetrics;

    move-result-object v0

    const-string v1, "TBaseActivity METRIX "

    .line 4
    invoke-virtual {v0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    const-string v0, "TBaseActivity DF "

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/layout/FoldingFeature;

    .line 9
    invoke-interface {v2}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v3

    sget-object v4, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "TBaseActivity ORIENT "

    .line 10
    invoke-interface {v2}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/window/layout/FoldingFeature$Orientation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TBaseActivity STATE "

    .line 11
    invoke-interface {v2}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/window/layout/FoldingFeature$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TBaseActivity OCCTYPE "

    .line 12
    invoke-interface {v2}, Landroidx/window/layout/FoldingFeature;->getOcclusionType()Landroidx/window/layout/FoldingFeature$OcclusionType;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/window/layout/FoldingFeature$OcclusionType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TBaseActivity SEPARATE "

    .line 13
    invoke-interface {v2}, Landroidx/window/layout/FoldingFeature;->isSeparating()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " 1"

    goto :goto_2

    :cond_1
    const-string v2, " 0"

    :goto_2
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TAG"

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accept: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/window/layout/DisplayFeature;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    const-string p1, "TBaseActivity PROF "

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-boolean v1, v1, Lcom/neverland/utils/TCustomDevice;->isFolderOpen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/neverland/viscomp/TBaseActivity$1;->this$0:Lcom/neverland/viscomp/TBaseActivity;

    invoke-static {p1}, Lcom/neverland/viscomp/TBaseActivity;->access$000(Lcom/neverland/viscomp/TBaseActivity;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/neverland/viscomp/TBaseActivity$1$1;

    invoke-direct {v0, p0, v2}, Lcom/neverland/viscomp/TBaseActivity$1$1;-><init>(Lcom/neverland/viscomp/TBaseActivity$1;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/TBaseActivity$1;->accept(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
