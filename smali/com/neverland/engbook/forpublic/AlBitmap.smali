.class public Lcom/neverland/engbook/forpublic/AlBitmap;
.super Ljava/lang/Object;
.source "AlBitmap.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bmp:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public height:I

.field public marker:I

.field public position:I

.field public shtamp:I

.field public skinNonPremul:Landroid/graphics/Bitmap;

.field public spaceAfter:[I

.field public spaceBefore:[I

.field public textBottom:I

.field public textPages:I

.field public textSide:I

.field public textTop:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->shtamp:I

    .line 3
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    .line 4
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    const/16 v0, -0x64

    .line 5
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->position:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 7
    iput-object v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    .line 8
    iput-object v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->skinNonPremul:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->textTop:I

    .line 10
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->textBottom:I

    .line 11
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->textSide:I

    .line 12
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->textPages:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 13
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceBefore:[I

    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->spaceAfter:[I

    const/high16 v0, 0xf000000

    .line 15
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlBitmap;->marker:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
