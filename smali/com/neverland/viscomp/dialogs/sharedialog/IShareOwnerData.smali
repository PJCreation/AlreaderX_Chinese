.class public interface abstract Lcom/neverland/viscomp/dialogs/sharedialog/IShareOwnerData;
.super Ljava/lang/Object;
.source "IShareOwnerData.java"


# virtual methods
.method public abstract getDeviderBackground()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getShareList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neverland/utils/ShareApplicationItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getmenuTextColor()I
.end method

.method public abstract setTextFieldProperty(Landroid/widget/TextView;Lcom/neverland/viscomp/dialogs/TBaseDialog$TextViewType;)V
.end method
