.class public Lcom/neverland/engbook/util/e0;
.super Ljava/lang/Object;
.source "EngBitmap.java"


# direct methods
.method public static a(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/neverland/engbook/forpublic/AlBitmap;IILcom/neverland/engbook/forpublic/h;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/neverland/engbook/util/e0;->c(Lcom/neverland/engbook/forpublic/AlBitmap;IILcom/neverland/engbook/forpublic/h;I)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/neverland/engbook/forpublic/AlBitmap;IILcom/neverland/engbook/forpublic/h;I)Z
    .locals 4

    add-int/lit8 p4, p1, 0x3

    const v0, 0xfffc

    and-int/2addr p4, v0

    add-int/lit8 v1, p2, 0x3

    and-int/2addr v0, v1

    .line 1
    iget v1, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    const/4 v2, 0x1

    if-ne v1, p4, :cond_0

    iget v1, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    if-ne v1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    iput p4, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    .line 3
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    .line 4
    iget-object v1, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    iput-object v3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 7
    iput-object v3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    .line 8
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 9
    :cond_1
    iput-object v3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 10
    iput-object v3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    if-eqz p1, :cond_7

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 11
    iget p1, p3, Lcom/neverland/engbook/forpublic/h;->a:I

    add-int/2addr p1, v2

    iput p1, p3, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 12
    :cond_3
    :try_start_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 13
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    iput-object v3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 15
    iput-object v3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    if-nez p3, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iput p2, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->textPages:I

    iput p2, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->textSide:I

    iput p2, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->textBottom:I

    iput p2, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->textTop:I

    return v2

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 19
    :cond_6
    iput-object v3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 20
    iput-object v3, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    .line 21
    invoke-static {}, Ljava/lang/System;->gc()V

    return p2

    :cond_7
    :goto_2
    return v2
.end method
