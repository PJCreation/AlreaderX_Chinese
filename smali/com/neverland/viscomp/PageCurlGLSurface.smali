.class public Lcom/neverland/viscomp/PageCurlGLSurface;
.super Landroid/opengl/GLSurfaceView;
.source "PageCurlGLSurface.java"


# static fields
.field private static final LOGENABLE:Z = true

.field private static final TAG:Ljava/lang/String; = "surface"


# instance fields
.field private final _end:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private final _start:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private render:Lcom/neverland/viscomp/PageCurlRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    .line 8
    new-instance p1, Lcom/neverland/engbook/forpublic/AlBitmap;

    invoke-direct {p1}, Lcom/neverland/engbook/forpublic/AlBitmap;-><init>()V

    iput-object p1, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->_start:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 9
    new-instance p1, Lcom/neverland/engbook/forpublic/AlBitmap;

    invoke-direct {p1}, Lcom/neverland/engbook/forpublic/AlBitmap;-><init>()V

    iput-object p1, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->_end:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 10
    invoke-virtual {p0}, Lcom/neverland/viscomp/PageCurlGLSurface;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    .line 3
    new-instance p1, Lcom/neverland/engbook/forpublic/AlBitmap;

    invoke-direct {p1}, Lcom/neverland/engbook/forpublic/AlBitmap;-><init>()V

    iput-object p1, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->_start:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 4
    new-instance p1, Lcom/neverland/engbook/forpublic/AlBitmap;

    invoke-direct {p1}, Lcom/neverland/engbook/forpublic/AlBitmap;-><init>()V

    iput-object p1, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->_end:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 5
    invoke-virtual {p0}, Lcom/neverland/viscomp/PageCurlGLSurface;->init()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/viscomp/PageCurlGLSurface;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "surface"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public _listToHorizontal(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v1, v1, Lcom/neverland/prefs/TAnimation;->type:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/neverland/viscomp/PageCurlRenderer;->listToHorizontal(II)V

    :cond_1
    return-void
.end method

.method public _listToVertical(I)V
    .locals 0

    return-void
.end method

.method public _startHorizontal(Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/utils/finit$EDIRECTION;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    .line 1
    iget-object v5, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    .line 2
    :cond_0
    invoke-virtual {v5}, Lcom/neverland/viscomp/PageCurlRenderer;->getStarted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    iget-object v5, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    invoke-virtual {v5}, Lcom/neverland/viscomp/PageCurlRenderer;->stop()Z

    .line 4
    :cond_1
    sget-object v5, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v7, v5, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget-boolean v7, v7, Lcom/neverland/prefs/TAnimation;->useBackPage1:Z

    if-eqz v7, :cond_2

    .line 5
    iget-object v7, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->setUseMirrorBackPage(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v7, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    invoke-virtual {v5}, Lcom/neverland/prefs/TPref;->getBackColor()I

    move-result v8

    const v9, 0xffffff

    and-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->setUseMirrorBackPage(I)V

    .line 7
    :goto_0
    iget-object v7, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    invoke-virtual {v5}, Lcom/neverland/prefs/TPref;->getProfile()Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    move-result-object v8

    iget-boolean v8, v8, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->twoColumn:Z

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->setSinglePage(Z)V

    .line 8
    iget-object v7, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    iget-object v5, v5, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v5, v5, Lcom/neverland/prefs/TAnimation;->type:I

    and-int/2addr v5, v9

    rsub-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Lcom/neverland/viscomp/PageCurlRenderer;->setListMode(I)V

    .line 9
    iget v5, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->shtamp:I

    int-to-long v7, v5

    const/16 v5, 0x20

    shl-long/2addr v7, v5

    iget v10, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->marker:I

    int-to-long v10, v10

    or-long v16, v7, v10

    .line 10
    iget v7, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->shtamp:I

    int-to-long v7, v7

    shl-long/2addr v7, v5

    iget v5, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->marker:I

    int-to-long v10, v5

    or-long v18, v7, v10

    if-eqz v1, :cond_8

    .line 11
    iget-object v5, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->_start:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v7, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    const/4 v8, 0x2

    const/4 v10, 0x0

    if-eqz v7, :cond_3

    iget v7, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    iget v11, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    if-ne v7, v11, :cond_3

    iget v7, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    iget v11, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    if-eq v7, v11, :cond_4

    .line 12
    :cond_3
    iget v7, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    iget v11, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    invoke-static {v5, v7, v11, v10, v8}, Lcom/neverland/engbook/util/e0;->c(Lcom/neverland/engbook/forpublic/AlBitmap;IILcom/neverland/engbook/forpublic/h;I)Z

    .line 13
    :cond_4
    iget-object v5, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->_end:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v7, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    iget v7, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    iget v11, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    if-ne v7, v11, :cond_5

    iget v7, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    iget v11, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    if-eq v7, v11, :cond_6

    .line 14
    :cond_5
    iget v7, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    iget v11, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    invoke-static {v5, v7, v11, v10, v8}, Lcom/neverland/engbook/util/e0;->c(Lcom/neverland/engbook/forpublic/AlBitmap;IILcom/neverland/engbook/forpublic/h;I)Z

    .line 15
    :cond_6
    iget-object v5, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->_start:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    iget-object v7, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 16
    iget-object v5, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->_start:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v2, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 17
    iget-object v2, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->_end:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 18
    iget-object v1, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->_end:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 19
    iget-object v12, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    iget-object v13, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->_start:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v14, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->_end:Lcom/neverland/engbook/forpublic/AlBitmap;

    sget-object v1, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v4, v1, :cond_7

    const/4 v15, 0x1

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {v12 .. v19}, Lcom/neverland/viscomp/PageCurlRenderer;->startHorizontal(Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;ZJJ)V

    goto :goto_3

    .line 20
    :cond_8
    iget-object v1, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    sget-object v5, Lcom/neverland/utils/finit$EDIRECTION;->dir_to_left:Lcom/neverland/utils/finit$EDIRECTION;

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    invoke-virtual/range {v1 .. v8}, Lcom/neverland/viscomp/PageCurlRenderer;->startHorizontal(Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;ZJJ)V

    .line 21
    :goto_3
    iget-object v1, v0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    invoke-virtual {v1}, Lcom/neverland/viscomp/PageCurlRenderer;->getStarted()Z

    move-result v1

    return v1
.end method

.method public _stop()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/PageCurlRenderer;->stop()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/PageCurlRenderer;->getTexLoaded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 8

    const-string v0, "initOwner"

    .line 1
    invoke-direct {p0, v0}, Lcom/neverland/viscomp/PageCurlGLSurface;->log(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-boolean v0, v0, Lcom/neverland/utils/TCustomDevice;->supportOPENGL:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/neverland/viscomp/PageCurlRenderer;

    invoke-direct {v0}, Lcom/neverland/viscomp/PageCurlRenderer;-><init>()V

    iput-object v0, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p0

    .line 5
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 8
    iget-object v1, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 10
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    return-void
.end method

.method public isCreatedNormal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/PageCurlRenderer;->getCreated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/PageCurlGLSurface;->render:Lcom/neverland/viscomp/PageCurlRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/neverland/viscomp/PageCurlRenderer;->clearTextureStory()V

    :cond_0
    return-void
.end method
