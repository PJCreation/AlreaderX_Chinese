.class public final enum Lcom/google/android/material/elevation/SurfaceColors;
.super Ljava/lang/Enum;
.source "SurfaceColors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/elevation/SurfaceColors;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;

.field private static final synthetic e:[Lcom/google/android/material/elevation/SurfaceColors;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    sget v1, Lb/a/a/a/d;->r:I

    const-string v2, "SURFACE_0"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

    .line 2
    new-instance v1, Lcom/google/android/material/elevation/SurfaceColors;

    sget v2, Lb/a/a/a/d;->s:I

    const-string v4, "SURFACE_1"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

    .line 3
    new-instance v2, Lcom/google/android/material/elevation/SurfaceColors;

    sget v4, Lb/a/a/a/d;->t:I

    const-string v6, "SURFACE_2"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

    .line 4
    new-instance v4, Lcom/google/android/material/elevation/SurfaceColors;

    sget v6, Lb/a/a/a/d;->u:I

    const-string v8, "SURFACE_3"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

    .line 5
    new-instance v6, Lcom/google/android/material/elevation/SurfaceColors;

    sget v8, Lb/a/a/a/d;->v:I

    const-string v10, "SURFACE_4"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

    .line 6
    new-instance v8, Lcom/google/android/material/elevation/SurfaceColors;

    sget v10, Lb/a/a/a/d;->w:I

    const-string v12, "SURFACE_5"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/google/android/material/elevation/SurfaceColors;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    .line 7
    sput-object v10, Lcom/google/android/material/elevation/SurfaceColors;->e:[Lcom/google/android/material/elevation/SurfaceColors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/material/elevation/SurfaceColors;->f:I

    return-void
.end method

.method public static getColorForElevation(Landroid/content/Context;F)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/elevation/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/elevation/a;-><init>(Landroid/content/Context;)V

    sget v1, Lb/a/a/a/b;->r:I

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v1, v2}, Lb/a/a/a/o/a;->b(Landroid/content/Context;II)I

    move-result p0

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/elevation/a;->b(IF)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/elevation/SurfaceColors;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/elevation/SurfaceColors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/elevation/SurfaceColors;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/elevation/SurfaceColors;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/elevation/SurfaceColors;->e:[Lcom/google/android/material/elevation/SurfaceColors;

    invoke-virtual {v0}, [Lcom/google/android/material/elevation/SurfaceColors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/elevation/SurfaceColors;

    return-object v0
.end method


# virtual methods
.method public getColor(Landroid/content/Context;)I
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/elevation/SurfaceColors;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/material/elevation/SurfaceColors;->getColorForElevation(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method
