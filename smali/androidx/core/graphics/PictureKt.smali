.class public final Landroidx/core/graphics/PictureKt;
.super Ljava/lang/Object;
.source "Picture.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method public static final record(Landroid/graphics/Picture;IILkotlin/jvm/b/l;)Landroid/graphics/Picture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Picture;",
            "II",
            "Lkotlin/jvm/b/l<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/m;",
            ">;)",
            "Landroid/graphics/Picture;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p1

    const-string p2, "beginRecording(width, height)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2
    :try_start_0
    invoke-interface {p3, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lkotlin/jvm/internal/h;->b(I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {p2}, Lkotlin/jvm/internal/h;->a(I)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p2}, Lkotlin/jvm/internal/h;->b(I)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {p2}, Lkotlin/jvm/internal/h;->a(I)V

    throw p1
.end method
