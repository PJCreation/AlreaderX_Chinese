.class public Lcom/neverland/viscomp/PageCurlRenderer;
.super Ljava/lang/Object;
.source "PageCurlRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final ArcMult:[F

.field private static final BEND:[[[F

.field private static final BorderColor:[F

.field private static final BorderWidth:F

.field private static final FragmentShader1:Ljava/lang/String;

.field private static final FragmentShader1c:Ljava/lang/String;

.field private static final FragmentShader2:Ljava/lang/String;

.field private static final FragmentShaderBack:Ljava/lang/String; = "precision mediump float;uniform sampler2D t1;uniform sampler2D t2;varying mediump float c;varying vec2 tc;void main(){if(c>0.0){gl_FragColor=texture2D(t2,tc);}else{gl_FragColor=texture2D(t1,tc);}}"

.field private static final HeightMult:[F

.field private static final LOGENABLE:Z = false

.field private static final NUMCELL:I = 0x40

.field private static final Slope:[F

.field private static final TAG:Ljava/lang/String; = "render"

.field private static final VertShift:[F

.field private static final VertexShaderBack:Ljava/lang/String; = "precision highp float;attribute vec2 a;uniform vec2 s;varying mediump float c;varying mediump vec2 tc;void main(){c=(a.x>0.0)?8.0:0.0;tc=vec2((1.0+a.x)*s.x,(1.0-a.y)*s.y);gl_Position=vec4(a.x,a.y,0.0,1.0);}"

.field private static final VertexShaderPage:Ljava/lang/String; = "precision highp float;attribute vec3 a2;attribute vec4 a3;uniform mat4 MP;uniform mat3 MT;varying mediump vec4 tc;varying mediump float a;void main(){a=max(0.25-abs(0.25-a2.z/128.0),0.0);\ntc=vec4(MT*vec3(a2.xy,1.0),a3.z);gl_Position=MP*a3;}"


# instance fields
.field private Pages:I

.field private Program0:I

.field private Program0_aPos:I

.field private Program0_scrSize:I

.field private Program1:I

.field private Program1_MP:I

.field private Program1_MT:I

.field private Program1_Size:I

.field private Program1_aPos2D:I

.field private Program1_aPos3D:I

.field private Program1c:I

.field private Program1c_BackColor:I

.field private Program1c_MP:I

.field private Program1c_MT:I

.field private Program1c_Size:I

.field private Program1c_aPos2D:I

.field private Program1c_aPos3D:I

.field private Program2:I

.field private Program2_MP:I

.field private Program2_MT:I

.field private Program2_Size:I

.field private Program2_aPos2D:I

.field private Program2_aPos3D:I

.field private final USEPOWEROFTWO:Z

.field private actualMatrix:I

.field private final alpha:D

.field private arcLength:D

.field private bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private bmp1id:J

.field private bmp1new:J

.field private bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private bmp2id:J

.field private bmp2new:J

.field private final cosA:D

.field private volatile created:Z

.field private final currentMatrix:[[D

.field private dir:Z

.field private height:I

.field private mode:I

.field private final onePageBacksideColor:[F

.field private onePageBacksideSwitch:Z

.field private pageWidth:D

.field private retCode:I

.field private final rotateMatrix:[D

.field private final sinA:D

.field private volatile started1:Z

.field private volatile texLoaded1:Z

.field private final texMaxSize:[I

.field private final textures:[I

.field private final vertexBuffer:Ljava/nio/FloatBuffer;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/neverland/viscomp/PageCurlRenderer;->ArcMult:[F

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/neverland/viscomp/PageCurlRenderer;->HeightMult:[F

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lcom/neverland/viscomp/PageCurlRenderer;->VertShift:[F

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_3

    sput-object v1, Lcom/neverland/viscomp/PageCurlRenderer;->Slope:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 5
    fill-array-data v1, :array_4

    sput-object v1, Lcom/neverland/viscomp/PageCurlRenderer;->BorderColor:[F

    .line 6
    sget v2, Lcom/neverland/mainApp;->g:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    sput v2, Lcom/neverland/viscomp/PageCurlRenderer;->BorderWidth:F

    new-array v2, v0, [[[F

    new-array v3, v0, [[F

    new-array v4, v0, [F

    .line 7
    fill-array-data v4, :array_5

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v0, [F

    fill-array-data v4, :array_6

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v3, v0, [[F

    new-array v4, v0, [F

    fill-array-data v4, :array_7

    aput-object v4, v3, v5

    new-array v4, v0, [F

    fill-array-data v4, :array_8

    aput-object v4, v3, v6

    aput-object v3, v2, v6

    sput-object v2, Lcom/neverland/viscomp/PageCurlRenderer;->BEND:[[[F

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "precision mediump float;uniform sampler2D t1;uniform vec4 s;\nvarying mediump vec4 tc;varying mediump float a;void main(){vec4 bc=vec4("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget v7, v1, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ");vec4 c;if(gl_FrontFacing){c=texture2D(t1,tc.xy);}else{c=vec4(mix(texture2D(t1,tc.xy).rgb,bc.rgb,bc.a),1.0);}c=vec4(mix(c.rgb,bc.rgb,a),1.0);if(tc.w>10.0){float b=max(max(s.z-s.x+tc.x,max(s.z-tc.x,0.0))/s.z,max(s.w-s.y+tc.y,max(s.w-tc.y,0.0))/s.w)*bc.a;gl_FragColor=vec4(mix(c.rgb,bc.rgb,b),1.0);}else{gl_FragColor=c;}}"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/neverland/viscomp/PageCurlRenderer;->FragmentShader1:Ljava/lang/String;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "precision mediump float;uniform sampler2D t1;uniform vec4 s;uniform vec4 b;varying mediump vec4 tc;varying mediump float a;void main(){vec4 bc=vec4("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ");vec4 c;if(gl_FrontFacing){c=texture2D(t1,tc.xy);}else{c=b;}c=vec4(mix(c.rgb,bc.rgb,a),1.0);if(tc.w>10.0){float b=max(max(s.z-s.x+tc.x,max(s.z-tc.x,0.0))/s.z,max(s.w-s.y+tc.y,max(s.w-tc.y,0.0))/s.w)*bc.a;gl_FragColor=vec4(mix(c.rgb,bc.rgb,b),1.0);}else{gl_FragColor=c;}}"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/neverland/viscomp/PageCurlRenderer;->FragmentShader1c:Ljava/lang/String;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "precision mediump float;uniform sampler2D t1;uniform sampler2D t2;uniform vec4 s;varying mediump vec4 tc;varying mediump float a;void main(){vec4 bc=vec4("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ");vec4 c;if(gl_FrontFacing){c=texture2D(t1,tc.xy);}else{c=texture2D(t2,tc.zy);}c=vec4(mix(c.rgb,bc.rgb,a),1.0);if(tc.w>10.0){float b=max(max(s.z-s.x+tc.x,max(s.z-tc.x,0.0))/s.z,max(s.w-s.y+tc.y,max(s.w-tc.y,0.0))/s.w)*bc.a;gl_FragColor=vec4(mix(c.rgb,bc.rgb,b),1.0);}else{gl_FragColor=c;}}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neverland/viscomp/PageCurlRenderer;->FragmentShader2:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f333333    # 0.7f
    .end array-data

    :array_1
    .array-data 4
        0x40e00000    # 7.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_5
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 3
    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->USEPOWEROFTWO:Z

    .line 4
    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->onePageBacksideSwitch:Z

    const/4 v1, 0x4

    new-array v2, v1, [F

    .line 5
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->onePageBacksideColor:[F

    .line 6
    iput v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 7
    iput-object v3, p0, Lcom/neverland/viscomp/PageCurlRenderer;->texMaxSize:[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 8
    iput-object v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    .line 9
    iput v2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    iput v2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    iput v3, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    const-wide/16 v4, 0x0

    .line 10
    iput-wide v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1id:J

    iput-wide v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2id:J

    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1new:J

    iput-wide v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2new:J

    .line 11
    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->created:Z

    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->started1:Z

    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->texLoaded1:Z

    .line 12
    iput v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    iput v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    iput v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    iput v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    const/16 v4, 0xcc0

    .line 13
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const-wide v4, 0x3fa8beff56e88aecL    # 0.0483321946706122

    .line 14
    iput-wide v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->alpha:D

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/neverland/viscomp/PageCurlRenderer;->cosA:D

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->sinA:D

    const/16 v4, 0x10

    new-array v4, v4, [D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v4, v0

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v2

    aput-wide v10, v4, v3

    const/4 v2, 0x3

    aput-wide v10, v4, v2

    aput-wide v10, v4, v1

    const/4 v1, 0x5

    aput-wide v8, v4, v1

    const/4 v1, 0x6

    aput-wide v10, v4, v1

    const/4 v1, 0x7

    aput-wide v10, v4, v1

    const/16 v1, 0x8

    aput-wide v10, v4, v1

    const/16 v1, 0x9

    aput-wide v10, v4, v1

    const/16 v1, 0xa

    aput-wide v6, v4, v1

    const/16 v1, 0xb

    aput-wide v10, v4, v1

    const/16 v1, 0xc

    aput-wide v10, v4, v1

    const/16 v1, 0xd

    aput-wide v10, v4, v1

    const/16 v1, 0xe

    aput-wide v10, v4, v1

    const/16 v1, 0xf

    aput-wide v8, v4, v1

    .line 17
    iput-object v4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->rotateMatrix:[D

    new-array v1, v3, [I

    .line 18
    fill-array-data v1, :array_1

    const-class v2, D

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->currentMatrix:[[D

    .line 19
    iput v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->actualMatrix:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x10
    .end array-data
.end method

.method private addVertex(DDF)V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [D

    move-object v1, p0

    move-object v2, v0

    move-wide v3, p1

    move-wide v5, p3

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/neverland/viscomp/PageCurlRenderer;->multMV([DDD)V

    .line 2
    iget-object v1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    double-to-float p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 3
    iget-object p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    double-to-float p2, p3

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 4
    iget-object p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 5
    iget-object p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    aget-wide p2, v0, p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 6
    iget-object p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x1

    aget-wide p2, v0, p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 7
    iget-object p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x2

    aget-wide p2, v0, p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method private addVertices(DDDDZF)V
    .locals 34

    move-object/from16 v6, p0

    const-wide/16 v7, 0x0

    cmpg-double v0, p1, v7

    if-gez v0, :cond_0

    move-wide v9, v7

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p1

    :goto_0
    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide/from16 v3, p3

    move/from16 v5, p10

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/neverland/viscomp/PageCurlRenderer;->addVertex(DDF)V

    .line 2
    iget-wide v1, v6, Lcom/neverland/viscomp/PageCurlRenderer;->pageWidth:D

    cmpl-double v0, p5, v1

    if-lez v0, :cond_1

    sub-double v3, p7, p3

    sub-double v11, p5, v9

    div-double/2addr v3, v11

    sub-double v11, v1, v9

    mul-double v3, v3, v11

    add-double v3, p3, v3

    move-object/from16 v0, p0

    move/from16 v5, p10

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/neverland/viscomp/PageCurlRenderer;->addVertex(DDF)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move/from16 v5, p10

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/neverland/viscomp/PageCurlRenderer;->addVertex(DDF)V

    :goto_1
    if-eqz p9, :cond_3

    .line 5
    iget v0, v6, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v0, v0

    cmpl-double v4, p3, p7

    if-lez v4, :cond_2

    sub-double v4, v9, p5

    goto :goto_2

    :cond_2
    sub-double v4, p5, v9

    :goto_2
    mul-double v11, v4, v4

    add-double/2addr v11, v2

    .line 7
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v4, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const/16 v2, 0x10

    new-array v3, v2, [D

    const/4 v11, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v3, v11

    const/4 v14, 0x1

    aput-wide v7, v3, v14

    const/4 v15, 0x2

    aput-wide v7, v3, v15

    const/16 v16, 0x3

    aput-wide v7, v3, v16

    const/16 v17, 0x4

    aput-wide v7, v3, v17

    const/16 v18, 0x5

    aput-wide v12, v3, v18

    const/16 v19, 0x6

    aput-wide v7, v3, v19

    const/16 v20, 0x7

    aput-wide v7, v3, v20

    const/16 v21, 0x8

    aput-wide v7, v3, v21

    const/16 v22, 0x9

    aput-wide v7, v3, v22

    const/16 v23, 0xa

    aput-wide v12, v3, v23

    const/16 v24, 0xb

    aput-wide v7, v3, v24

    const/16 v25, 0xc

    aput-wide v9, v3, v25

    const/16 v26, 0xd

    aput-wide p3, v3, v26

    const/16 v27, 0xe

    aput-wide v7, v3, v27

    const/16 v28, 0xf

    aput-wide v12, v3, v28

    new-array v12, v2, [D

    aput-wide v0, v12, v11

    move-object v13, v3

    neg-double v2, v4

    aput-wide v2, v12, v14

    aput-wide v7, v12, v15

    aput-wide v7, v12, v16

    aput-wide v4, v12, v17

    aput-wide v0, v12, v18

    aput-wide v7, v12, v19

    aput-wide v7, v12, v20

    aput-wide v7, v12, v21

    aput-wide v7, v12, v22

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    aput-wide v29, v12, v23

    aput-wide v7, v12, v24

    aput-wide v7, v12, v25

    aput-wide v7, v12, v26

    aput-wide v7, v12, v27

    aput-wide v29, v12, v28

    const/16 v15, 0x10

    new-array v7, v15, [D

    move-object v8, v12

    move-object/from16 p3, v13

    .line 9
    iget-wide v12, v6, Lcom/neverland/viscomp/PageCurlRenderer;->cosA:D

    aput-wide v12, v7, v11

    const-wide/16 v31, 0x0

    aput-wide v31, v7, v14

    iget-wide v14, v6, Lcom/neverland/viscomp/PageCurlRenderer;->sinA:D

    const/16 v33, 0x2

    aput-wide v14, v7, v33

    aput-wide v31, v7, v16

    aput-wide v31, v7, v17

    aput-wide v29, v7, v18

    aput-wide v31, v7, v19

    aput-wide v31, v7, v20

    neg-double v14, v14

    aput-wide v14, v7, v21

    aput-wide v31, v7, v22

    aput-wide v12, v7, v23

    aput-wide v31, v7, v24

    aput-wide v31, v7, v25

    aput-wide v31, v7, v26

    aput-wide v31, v7, v27

    aput-wide v29, v7, v28

    const/16 v12, 0x10

    new-array v13, v12, [D

    aput-wide v0, v13, v11

    const/4 v12, 0x1

    aput-wide v4, v13, v12

    const/4 v4, 0x2

    aput-wide v31, v13, v4

    aput-wide v31, v13, v16

    aput-wide v2, v13, v17

    aput-wide v0, v13, v18

    aput-wide v31, v13, v19

    aput-wide v31, v13, v20

    aput-wide v31, v13, v21

    aput-wide v31, v13, v22

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    aput-wide v0, v13, v23

    aput-wide v31, v13, v24

    aput-wide v31, v13, v25

    aput-wide v31, v13, v26

    aput-wide v31, v13, v27

    aput-wide v0, v13, v28

    const/16 v2, 0x10

    new-array v2, v2, [D

    aput-wide v0, v2, v11

    const/4 v3, 0x1

    aput-wide v31, v2, v3

    const/4 v3, 0x2

    aput-wide v31, v2, v3

    aput-wide v31, v2, v16

    aput-wide v31, v2, v17

    aput-wide v0, v2, v18

    aput-wide v31, v2, v19

    aput-wide v31, v2, v20

    aput-wide v31, v2, v21

    aput-wide v31, v2, v22

    aput-wide v0, v2, v23

    aput-wide v31, v2, v24

    neg-double v3, v9

    aput-wide v3, v2, v25

    aput-wide p7, v2, v26

    aput-wide v31, v2, v27

    aput-wide v0, v2, v28

    move-object/from16 v0, p3

    .line 10
    invoke-direct {v6, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->multMM([D)V

    move-object v0, v8

    .line 11
    invoke-direct {v6, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->multMM([D)V

    .line 12
    invoke-direct {v6, v7}, Lcom/neverland/viscomp/PageCurlRenderer;->multMM([D)V

    .line 13
    invoke-direct {v6, v13}, Lcom/neverland/viscomp/PageCurlRenderer;->multMM([D)V

    .line 14
    invoke-direct {v6, v2}, Lcom/neverland/viscomp/PageCurlRenderer;->multMM([D)V

    :cond_3
    return-void
.end method

.method private declared-synchronized clrStarted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->started1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized clrTexLoaded()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->texLoaded1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private log(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "render"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private multMM([D)V
    .locals 20
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->actualMatrix:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->actualMatrix:I

    .line 2
    iget-object v3, v0, Lcom/neverland/viscomp/PageCurlRenderer;->currentMatrix:[[D

    aget-object v4, v3, v1

    xor-int/2addr v1, v2

    .line 3
    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->actualMatrix:I

    .line 4
    aget-object v1, v3, v1

    const/4 v3, 0x0

    .line 5
    aget-wide v5, p1, v3

    aget-wide v7, v4, v3

    mul-double v5, v5, v7

    aget-wide v7, p1, v2

    const/4 v9, 0x4

    aget-wide v10, v4, v9

    mul-double v7, v7, v10

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v10, p1, v7

    const/16 v8, 0x8

    aget-wide v12, v4, v8

    mul-double v10, v10, v12

    add-double/2addr v5, v10

    aput-wide v5, v1, v3

    .line 6
    aget-wide v5, p1, v3

    aget-wide v10, v4, v2

    mul-double v5, v5, v10

    aget-wide v10, p1, v2

    const/4 v12, 0x5

    aget-wide v13, v4, v12

    mul-double v10, v10, v13

    add-double/2addr v5, v10

    aget-wide v10, p1, v7

    const/16 v13, 0x9

    aget-wide v14, v4, v13

    mul-double v10, v10, v14

    add-double/2addr v5, v10

    aput-wide v5, v1, v2

    .line 7
    aget-wide v5, p1, v3

    aget-wide v10, v4, v7

    mul-double v5, v5, v10

    aget-wide v10, p1, v2

    const/4 v14, 0x6

    aget-wide v15, v4, v14

    mul-double v10, v10, v15

    add-double/2addr v5, v10

    aget-wide v10, p1, v7

    const/16 v15, 0xa

    aget-wide v16, v4, v15

    mul-double v10, v10, v16

    add-double/2addr v5, v10

    aput-wide v5, v1, v7

    const/4 v5, 0x3

    const-wide/16 v10, 0x0

    .line 8
    aput-wide v10, v1, v5

    .line 9
    aget-wide v5, p1, v9

    aget-wide v16, v4, v3

    mul-double v5, v5, v16

    aget-wide v16, p1, v12

    aget-wide v18, v4, v9

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aget-wide v16, p1, v14

    aget-wide v18, v4, v8

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aput-wide v5, v1, v9

    .line 10
    aget-wide v5, p1, v9

    aget-wide v16, v4, v2

    mul-double v5, v5, v16

    aget-wide v16, p1, v12

    aget-wide v18, v4, v12

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aget-wide v16, p1, v14

    aget-wide v18, v4, v13

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aput-wide v5, v1, v12

    .line 11
    aget-wide v5, p1, v9

    aget-wide v16, v4, v7

    mul-double v5, v5, v16

    aget-wide v16, p1, v12

    aget-wide v18, v4, v14

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aget-wide v16, p1, v14

    aget-wide v18, v4, v15

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aput-wide v5, v1, v14

    const/4 v5, 0x7

    .line 12
    aput-wide v10, v1, v5

    .line 13
    aget-wide v5, p1, v8

    aget-wide v16, v4, v3

    mul-double v5, v5, v16

    aget-wide v16, p1, v13

    aget-wide v18, v4, v9

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aget-wide v16, p1, v15

    aget-wide v18, v4, v8

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aput-wide v5, v1, v8

    .line 14
    aget-wide v5, p1, v8

    aget-wide v16, v4, v2

    mul-double v5, v5, v16

    aget-wide v16, p1, v13

    aget-wide v18, v4, v12

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aget-wide v16, p1, v15

    aget-wide v18, v4, v13

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aput-wide v5, v1, v13

    .line 15
    aget-wide v5, p1, v8

    aget-wide v16, v4, v7

    mul-double v5, v5, v16

    aget-wide v16, p1, v13

    aget-wide v18, v4, v14

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aget-wide v16, p1, v15

    aget-wide v18, v4, v15

    mul-double v16, v16, v18

    add-double v5, v5, v16

    aput-wide v5, v1, v15

    const/16 v5, 0xb

    .line 16
    aput-wide v10, v1, v5

    const/16 v5, 0xc

    .line 17
    aget-wide v10, p1, v5

    aget-wide v16, v4, v3

    mul-double v10, v10, v16

    const/16 v3, 0xd

    aget-wide v16, p1, v3

    aget-wide v18, v4, v9

    mul-double v16, v16, v18

    add-double v10, v10, v16

    const/16 v6, 0xe

    aget-wide v16, p1, v6

    aget-wide v8, v4, v8

    mul-double v16, v16, v8

    add-double v10, v10, v16

    aget-wide v8, v4, v5

    add-double/2addr v10, v8

    aput-wide v10, v1, v5

    .line 18
    aget-wide v8, p1, v5

    aget-wide v10, v4, v2

    mul-double v8, v8, v10

    aget-wide v10, p1, v3

    aget-wide v16, v4, v12

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    aget-wide v10, p1, v6

    aget-wide v12, v4, v13

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    aget-wide v10, v4, v3

    add-double/2addr v8, v10

    aput-wide v8, v1, v3

    .line 19
    aget-wide v8, p1, v5

    aget-wide v10, v4, v7

    mul-double v8, v8, v10

    aget-wide v2, p1, v3

    aget-wide v10, v4, v14

    mul-double v2, v2, v10

    add-double/2addr v8, v2

    aget-wide v2, p1, v6

    aget-wide v10, v4, v15

    mul-double v2, v2, v10

    add-double/2addr v8, v2

    aget-wide v2, v4, v6

    add-double/2addr v8, v2

    aput-wide v8, v1, v6

    const/16 v2, 0xf

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 20
    aput-wide v3, v1, v2

    return-void
.end method

.method private multMV([DDD)V
    .locals 6
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->currentMatrix:[[D

    iget v1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->actualMatrix:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 2
    aget-wide v2, v0, v1

    mul-double v2, v2, p2

    const/4 v4, 0x4

    aget-wide v4, v0, v4

    mul-double v4, v4, p4

    add-double/2addr v2, v4

    const/16 v4, 0xc

    aget-wide v4, v0, v4

    add-double/2addr v2, v4

    aput-wide v2, p1, v1

    const/4 v1, 0x1

    .line 3
    aget-wide v2, v0, v1

    mul-double v2, v2, p2

    const/4 v4, 0x5

    aget-wide v4, v0, v4

    mul-double v4, v4, p4

    add-double/2addr v2, v4

    const/16 v4, 0xd

    aget-wide v4, v0, v4

    add-double/2addr v2, v4

    aput-wide v2, p1, v1

    const/4 v1, 0x2

    .line 4
    aget-wide v2, v0, v1

    mul-double p2, p2, v2

    const/4 v2, 0x6

    aget-wide v2, v0, v2

    mul-double p4, p4, v2

    add-double/2addr p2, p4

    const/16 p4, 0xe

    aget-wide p4, v0, p4

    add-double/2addr p2, p4

    aput-wide p2, p1, v1

    return-void
.end method

.method private onDrawFrameHorizontal(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 43

    move-object/from16 v12, p0

    const-string v0, "onDrawFrameH"

    const/4 v13, 0x0

    .line 1
    invoke-direct {v12, v0, v13}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 2
    iget-boolean v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->created:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/PageCurlRenderer;->getStarted()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v0, v14, :cond_2

    iput v15, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    .line 5
    :cond_2
    sget-object v0, Lcom/neverland/viscomp/PageCurlRenderer;->BEND:[[[F

    iget v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    sub-int/2addr v1, v15

    aget-object v0, v0, v1

    iget v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    aget-object v0, v0, v1

    iget-boolean v2, v12, Lcom/neverland/viscomp/PageCurlRenderer;->dir:Z

    xor-int/2addr v2, v15

    aget v2, v0, v2

    .line 6
    sget-object v0, Lcom/neverland/viscomp/PageCurlRenderer;->HeightMult:[F

    aget v1, v0, v1

    .line 7
    iget-object v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v11, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    .line 8
    iget v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v11

    div-float v10, v3, v4

    int-to-float v4, v0

    div-float v9, v3, v4

    .line 9
    iget v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-float v3, v3

    mul-float v8, v10, v3

    .line 10
    iget v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-float v3, v3

    mul-float v7, v9, v3

    .line 11
    iget v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 12
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    const-string v4, "UseProgram0 error="

    invoke-direct {v12, v4, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/viscomp/PageCurlRenderer;->getTexLoaded()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 14
    :try_start_0
    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 15
    :goto_1
    iget-object v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v4, v5, :cond_5

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/16 v16, 0x1

    :goto_3
    if-nez v3, :cond_7

    if-eqz v16, :cond_8

    :cond_7
    const/4 v3, 0x1

    .line 16
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    .line 17
    iget-wide v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1new:J

    iget-wide v14, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const v20, 0x8d62

    const-string v6, ", error="

    move/from16 v21, v8

    const-string v8, ", height="

    const/16 v22, 0x1908

    move-object/from16 v23, v8

    cmp-long v24, v4, v14

    if-eqz v24, :cond_12

    move/from16 v24, v9

    :try_start_1
    iget-wide v8, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2new:J

    move-wide/from16 v26, v14

    iget-wide v13, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1id:J

    cmp-long v15, v8, v13

    if-nez v15, :cond_9

    move/from16 v28, v7

    move v14, v10

    move v15, v11

    move/from16 v29, v21

    move-object/from16 v13, v23

    goto/16 :goto_e

    :cond_9
    cmp-long v8, v4, v13

    if-eqz v8, :cond_d

    .line 18
    iput-wide v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1id:J

    const v4, 0x84c0

    .line 19
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v4, "ActiveTexture 0, error="

    .line 20
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-direct {v12, v4, v5}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 21
    iget-object v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v8, 0xde1

    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "BindTexture 0, error="

    .line 22
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-direct {v12, v4, v5}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v4, 0xde1

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    const v9, 0x8d62

    goto :goto_4

    :cond_a
    const/16 v9, 0x1908

    :goto_4
    const/4 v13, 0x0

    if-eqz v3, :cond_b

    const v14, 0x8d62

    goto :goto_5

    :cond_b
    const/16 v14, 0x1908

    :goto_5
    if-eqz v3, :cond_c

    const v3, 0x8363

    const v15, 0x8363

    goto :goto_6

    :cond_c
    const/16 v3, 0x1401

    const/16 v15, 0x1401

    :goto_6
    const/16 v25, 0x0

    move v3, v4

    move v4, v5

    move v5, v9

    move-object v9, v6

    move v6, v11

    move/from16 v28, v7

    move v7, v0

    move/from16 v29, v21

    move-object/from16 v30, v23

    move v8, v13

    move-object/from16 v32, v9

    move/from16 v13, v24

    move v9, v14

    move v14, v10

    move v10, v15

    move v15, v11

    move-object/from16 v11, v25

    .line 23
    :try_start_2
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glTexImage width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v30

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v32

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 25
    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/16 v9, 0xde1

    invoke-static {v9, v4, v4, v4, v3}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "texSubImage width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const v3, 0x84c1

    .line 27
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v3, "ActiveTexture 1, error="

    .line 28
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 29
    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v3, "BindTexture 1, error="

    .line 30
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move/from16 v20, v1

    move/from16 v24, v13

    goto/16 :goto_d

    :cond_d
    move/from16 v28, v7

    move v14, v10

    move v15, v11

    move/from16 v29, v21

    move-object/from16 v11, v23

    move/from16 v13, v24

    const/16 v9, 0xde1

    move-object v10, v6

    .line 31
    :goto_7
    :try_start_3
    iget-wide v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2new:J

    iget-wide v5, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_11

    .line 32
    iput-wide v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2id:J

    const v3, 0x84c1

    .line 33
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v3, "ActiveTexture 1, error="

    .line 34
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 35
    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v3, "BindTexture 1, error="

    .line 36
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v3, 0xde1

    const/4 v4, 0x0

    if-eqz v16, :cond_e

    const v5, 0x8d62

    goto :goto_8

    :cond_e
    const/16 v5, 0x1908

    :goto_8
    const/4 v8, 0x0

    if-eqz v16, :cond_f

    goto :goto_9

    :cond_f
    const/16 v20, 0x1908

    :goto_9
    if-eqz v16, :cond_10

    const v6, 0x8363

    const v16, 0x8363

    goto :goto_a

    :cond_10
    const/16 v6, 0x1401

    const/16 v16, 0x1401

    :goto_a
    const/16 v21, 0x0

    move v6, v15

    move v7, v0

    move/from16 v9, v20

    move-object/from16 v34, v10

    move/from16 v10, v16

    move/from16 v24, v13

    move-object v13, v11

    move-object/from16 v11, v21

    .line 37
    :try_start_4
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glTexImage width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v34

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v12, v0, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 39
    iget-object v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/16 v10, 0xde1

    invoke-static {v10, v3, v3, v3, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "texSubImage width="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v12, v0, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const v0, 0x84c0

    .line 41
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v0, "ActiveTexture 0, error="

    .line 42
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v12, v0, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 43
    iget-object v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "BindTexture 0, error="

    .line 44
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v12, v0, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_c

    :cond_11
    move/from16 v24, v13

    :goto_b
    move/from16 v20, v1

    move/from16 v21, v14

    goto/16 :goto_16

    :catch_2
    move-exception v0

    move/from16 v24, v13

    :goto_c
    move/from16 v20, v1

    :goto_d
    move/from16 v21, v14

    goto/16 :goto_19

    :catch_3
    move-exception v0

    move/from16 v28, v7

    move/from16 v29, v21

    move/from16 v20, v1

    goto/16 :goto_18

    :cond_12
    move/from16 v28, v7

    move/from16 v24, v9

    move-wide/from16 v26, v14

    move/from16 v29, v21

    move-object/from16 v13, v23

    move v14, v10

    move v15, v11

    :goto_e
    const/16 v10, 0xde1

    move-object v11, v6

    cmp-long v6, v4, v26

    if-eqz v6, :cond_16

    .line 45
    :try_start_5
    iput-wide v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2id:J

    const v4, 0x84c0

    .line 46
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v4, "ActiveTexture 0, error="

    .line 47
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-direct {v12, v4, v5}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 48
    iget-object v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "BindTexture 1, error="

    .line 49
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-direct {v12, v4, v5}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/16 v4, 0xde1

    const/4 v5, 0x0

    if-eqz v3, :cond_13

    const/16 v6, 0x1907

    goto :goto_f

    :cond_13
    const/16 v6, 0x1908

    :goto_f
    const/4 v8, 0x0

    if-eqz v3, :cond_14

    const/16 v7, 0x1907

    const/16 v9, 0x1907

    goto :goto_10

    :cond_14
    const/16 v9, 0x1908

    :goto_10
    if-eqz v3, :cond_15

    const v3, 0x8363

    const v21, 0x8363

    goto :goto_11

    :cond_15
    const/16 v3, 0x1401

    const/16 v21, 0x1401

    :goto_11
    const/16 v23, 0x0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v15

    move v7, v0

    move/from16 v10, v21

    move/from16 v21, v14

    move-object v14, v11

    move-object/from16 v11, v23

    .line 50
    :try_start_6
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glTexImage width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 52
    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/16 v11, 0xde1

    invoke-static {v11, v4, v4, v4, v3}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "texSubImage width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const v3, 0x84c1

    .line 54
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v3, "ActiveTexture 1, error="

    .line 55
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 56
    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v3, "BindTexture 0, error="

    .line 57
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    goto :goto_12

    :catch_4
    move-exception v0

    move/from16 v21, v14

    goto/16 :goto_17

    :cond_16
    move/from16 v21, v14

    move-object v14, v11

    const/16 v11, 0xde1

    .line 58
    :goto_12
    iget-wide v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2new:J

    iget-wide v5, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1a

    .line 59
    iput-wide v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1id:J

    const v3, 0x84c1

    .line 60
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v3, "ActiveTexture 1, error="

    .line 61
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 62
    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v3, "BindTexture 0, error="

    .line 63
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    invoke-direct {v12, v3, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const/16 v3, 0xde1

    const/4 v4, 0x0

    if-eqz v16, :cond_17

    const v5, 0x8d62

    goto :goto_13

    :cond_17
    const/16 v5, 0x1908

    :goto_13
    const/4 v8, 0x0

    if-eqz v16, :cond_18

    const v9, 0x8d62

    goto :goto_14

    :cond_18
    const/16 v9, 0x1908

    :goto_14
    if-eqz v16, :cond_19

    const v6, 0x8363

    const v10, 0x8363

    goto :goto_15

    :cond_19
    const/16 v6, 0x1401

    const/16 v10, 0x1401

    :goto_15
    const/16 v16, 0x0

    move v6, v15

    move v7, v0

    move/from16 v20, v1

    const/16 v1, 0xde1

    move-object/from16 v11, v16

    .line 64
    :try_start_7
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glTexImage width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v12, v0, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 66
    iget-object v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v3, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "texSubImage width="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlBitmap;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v12, v0, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const v0, 0x84c0

    .line 68
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v0, "ActiveTexture 0, error="

    .line 69
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v12, v0, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 70
    iget-object v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "BindTexture 1, error="

    .line 71
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    invoke-direct {v12, v0, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    goto :goto_16

    :cond_1a
    move/from16 v20, v1

    .line 72
    :goto_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time textures loaded at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    sub-long v0, v0, v17

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    :try_start_8
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v12, v0, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1a

    :catch_5
    move-exception v0

    goto :goto_19

    :catch_6
    move-exception v0

    :goto_17
    move/from16 v20, v1

    goto :goto_19

    :catch_7
    move-exception v0

    move/from16 v20, v1

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v24, v9

    :goto_18
    move/from16 v21, v10

    .line 74
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    :cond_1b
    move/from16 v20, v1

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v24, v9

    move/from16 v21, v10

    .line 75
    :goto_1a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 76
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program0_scrSize:I

    const/high16 v1, 0x3f000000    # 0.5f

    move/from16 v10, v29

    mul-float v8, v10, v1

    move/from16 v9, v28

    mul-float v7, v9, v1

    invoke-static {v0, v8, v7}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 77
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v1, "set Program0_scrSize error="

    invoke-direct {v12, v1, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 78
    iget-object v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x2

    add-int/2addr v1, v3

    const/16 v3, 0xc

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1c

    new-array v0, v4, [F

    .line 80
    fill-array-data v0, :array_0

    .line 81
    iget-object v5, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1b

    :cond_1c
    const/4 v5, 0x0

    new-array v0, v3, [F

    .line 82
    fill-array-data v0, :array_1

    .line 83
    iget-object v6, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    :goto_1b
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program0_aPos:I

    const/16 v27, 0x2

    const/16 v28, 0x1406

    const/16 v29, 0x0

    const/16 v30, 0x8

    iget-object v6, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v31

    move/from16 v26, v0

    invoke-static/range {v26 .. v31}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 85
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v5, "set VertexAttribPointer aPos, error="

    invoke-direct {v12, v5, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 86
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program0_aPos:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 87
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v5, "EnableVertexAttribArray aPos, error="

    invoke-direct {v12, v5, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/4 v0, 0x5

    const/4 v5, 0x0

    .line 88
    invoke-static {v0, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 89
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    const-string v5, "DrawArrays error="

    invoke-direct {v12, v5, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v1, 0xb46

    .line 90
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 91
    iget-wide v5, v12, Lcom/neverland/viscomp/PageCurlRenderer;->arcLength:D

    const-wide/high16 v15, 0x4050000000000000L    # 64.0

    div-double v15, v5, v15

    .line 92
    sget-object v1, Lcom/neverland/viscomp/PageCurlRenderer;->Slope:[F

    iget v5, v12, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    aget v1, v1, v5

    iget v5, v12, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-float v6, v5

    mul-float v1, v1, v6

    int-to-double v5, v5

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    .line 93
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v5, v17

    .line 94
    iget v11, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    const/16 v17, 0xd

    const/16 v18, 0xb

    const/16 v22, 0xa

    const/high16 v23, -0x40000000    # -2.0f

    const/16 v26, 0x7

    const/16 v27, 0x6

    const/16 v28, 0x4

    const/high16 v30, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-ne v11, v3, :cond_21

    .line 95
    iget-boolean v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->onePageBacksideSwitch:Z

    if-eqz v3, :cond_1d

    .line 96
    iget v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 97
    iget v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_aPos2D:I

    .line 98
    iget v8, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_aPos3D:I

    const/16 v11, 0x10

    new-array v11, v11, [F

    mul-float v33, v2, v20

    mul-float v33, v33, v30

    .line 99
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-float v4, v0

    div-float v33, v33, v4

    const/4 v4, 0x0

    aput v33, v11, v4

    const/4 v4, 0x1

    const/16 v33, 0x0

    aput v33, v11, v4

    const/4 v4, 0x2

    aput v33, v11, v4

    const/4 v4, 0x3

    aput v33, v11, v4

    aput v33, v11, v28

    mul-float v4, v20, v30

    move/from16 v35, v3

    iget v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    const/4 v3, 0x5

    aput v4, v11, v3

    aput v33, v11, v27

    aput v33, v11, v26

    const/16 v3, 0x8

    aput v33, v11, v3

    sget-object v3, Lcom/neverland/viscomp/PageCurlRenderer;->VertShift:[F

    iget v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    aget v3, v3, v4

    mul-float v3, v3, v23

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/16 v4, 0x9

    aput v3, v11, v4

    aput v33, v11, v22

    int-to-float v0, v0

    div-float v23, v23, v0

    aput v23, v11, v18

    move/from16 v3, v20

    neg-float v0, v3

    const/16 v4, 0xc

    aput v0, v11, v4

    aput v33, v11, v17

    const/16 v0, 0xe

    aput v33, v11, v0

    const/16 v0, 0xf

    aput v3, v11, v0

    .line 100
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_MP:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v11, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 101
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v11, "set Progtam1_MP, error="

    invoke-direct {v12, v11, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v0, 0x9

    new-array v11, v0, [F

    aput v21, v11, v4

    aput v33, v11, v3

    const/16 v19, 0x2

    aput v33, v11, v19

    const/4 v0, 0x3

    aput v33, v11, v0

    move/from16 v3, v24

    neg-float v0, v3

    aput v0, v11, v28

    const/4 v0, 0x5

    aput v33, v11, v0

    aput v33, v11, v27

    aput v7, v11, v26

    const/16 v0, 0x8

    aput v33, v11, v0

    .line 102
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_MT:I

    const/4 v3, 0x1

    invoke-static {v0, v3, v4, v11, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 103
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v3, "set Program1_MT, error="

    invoke-direct {v12, v3, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 104
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_Size:I

    sget v3, Lcom/neverland/viscomp/PageCurlRenderer;->BorderWidth:F

    mul-float v4, v3, v30

    iget v7, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    mul-float v3, v3, v30

    iget v7, v12, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v0, v10, v9, v4, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 105
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v3, "set Program1_Size, error="

    invoke-direct {v12, v3, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    move/from16 v3, v35

    const/4 v4, 0x1

    move-wide/from16 v35, v13

    goto/16 :goto_1c

    :cond_1d
    move/from16 v4, v20

    move/from16 v3, v24

    .line 106
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 107
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v8, "UseProgram1c error="

    invoke-direct {v12, v8, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 108
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_aPos2D:I

    .line 109
    iget v8, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_aPos3D:I

    const/16 v11, 0x10

    new-array v11, v11, [F

    mul-float v20, v2, v4

    mul-float v20, v20, v30

    move/from16 v24, v0

    .line 110
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    move/from16 v33, v8

    int-to-float v8, v0

    div-float v20, v20, v8

    const/4 v8, 0x0

    aput v20, v11, v8

    const/4 v8, 0x1

    const/16 v20, 0x0

    aput v20, v11, v8

    const/4 v8, 0x2

    aput v20, v11, v8

    const/4 v8, 0x3

    aput v20, v11, v8

    aput v20, v11, v28

    mul-float v8, v4, v30

    move-wide/from16 v35, v13

    iget v13, v12, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-float v13, v13

    div-float/2addr v8, v13

    const/4 v13, 0x5

    aput v8, v11, v13

    aput v20, v11, v27

    aput v20, v11, v26

    const/16 v8, 0x8

    aput v20, v11, v8

    sget-object v8, Lcom/neverland/viscomp/PageCurlRenderer;->VertShift:[F

    iget v13, v12, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    aget v8, v8, v13

    mul-float v8, v8, v23

    int-to-float v13, v0

    div-float/2addr v8, v13

    const/16 v13, 0x9

    aput v8, v11, v13

    aput v20, v11, v22

    int-to-float v0, v0

    div-float v23, v23, v0

    aput v23, v11, v18

    neg-float v0, v4

    const/16 v8, 0xc

    aput v0, v11, v8

    aput v20, v11, v17

    const/16 v0, 0xe

    aput v20, v11, v0

    const/16 v0, 0xf

    aput v4, v11, v0

    .line 111
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_MP:I

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v4, v8, v11, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 112
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v11, "set Progtam1c_MP, error="

    invoke-direct {v12, v11, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v0, 0x9

    new-array v11, v0, [F

    aput v21, v11, v8

    aput v20, v11, v4

    const/4 v13, 0x2

    aput v20, v11, v13

    const/4 v0, 0x3

    aput v20, v11, v0

    neg-float v0, v3

    aput v0, v11, v28

    const/4 v0, 0x5

    aput v20, v11, v0

    aput v20, v11, v27

    aput v7, v11, v26

    const/16 v0, 0x8

    aput v20, v11, v0

    .line 113
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_MT:I

    invoke-static {v0, v4, v8, v11, v8}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 114
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v3, "set Program1_MT, error="

    invoke-direct {v12, v3, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 115
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_Size:I

    sget v3, Lcom/neverland/viscomp/PageCurlRenderer;->BorderWidth:F

    mul-float v4, v3, v30

    iget v7, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    mul-float v3, v3, v30

    iget v7, v12, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v0, v10, v9, v4, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 116
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v3, "set Program1c_Size, error="

    invoke-direct {v12, v3, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 117
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_BackColor:I

    iget-object v3, v12, Lcom/neverland/viscomp/PageCurlRenderer;->onePageBacksideColor:[F

    const/4 v4, 0x0

    aget v7, v3, v4

    const/4 v4, 0x1

    aget v8, v3, v4

    const/4 v9, 0x2

    aget v10, v3, v9

    const/4 v9, 0x3

    aget v3, v3, v9

    invoke-static {v0, v7, v8, v10, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    move/from16 v3, v24

    move/from16 v8, v33

    .line 118
    :goto_1c
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    if-ne v0, v4, :cond_1f

    float-to-double v9, v2

    .line 119
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->x:I

    int-to-double v13, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v13

    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-double v13, v0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    iget-boolean v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->dir:Z

    if-eqz v0, :cond_1e

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_1d

    :cond_1e
    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    goto :goto_1d

    :cond_1f
    float-to-double v9, v2

    .line 120
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->x:I

    int-to-double v13, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v13

    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-double v13, v0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    iget-boolean v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->dir:Z

    if-eqz v0, :cond_20

    const-wide v13, -0x403ccccccccccccdL    # -0.15

    goto :goto_1d

    :cond_20
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    :goto_1d
    add-double/2addr v9, v13

    move/from16 v20, v3

    move/from16 v24, v8

    goto/16 :goto_1f

    :cond_21
    move-wide/from16 v35, v13

    move/from16 v4, v20

    move/from16 v3, v24

    .line 121
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 122
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v11, "UseProgram2 error="

    invoke-direct {v12, v11, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 123
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_aPos2D:I

    .line 124
    iget v11, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_aPos3D:I

    const/16 v13, 0x10

    new-array v13, v13, [F

    mul-float v14, v2, v30

    mul-float v14, v14, v4

    move/from16 v20, v0

    .line 125
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    move/from16 v24, v11

    int-to-float v11, v0

    div-float/2addr v14, v11

    const/4 v11, 0x0

    aput v14, v13, v11

    const/4 v11, 0x1

    const/4 v14, 0x0

    aput v14, v13, v11

    const/4 v11, 0x2

    aput v14, v13, v11

    const/4 v11, 0x3

    aput v14, v13, v11

    aput v14, v13, v28

    mul-float v11, v4, v30

    iget v14, v12, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-float v14, v14

    div-float/2addr v11, v14

    const/4 v14, 0x5

    aput v11, v13, v14

    const/4 v11, 0x0

    aput v11, v13, v27

    aput v11, v13, v26

    const/16 v14, 0x8

    aput v11, v13, v14

    sget-object v14, Lcom/neverland/viscomp/PageCurlRenderer;->VertShift:[F

    iget v11, v12, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    aget v11, v14, v11

    mul-float v11, v11, v23

    int-to-float v14, v0

    div-float/2addr v11, v14

    const/16 v14, 0x9

    aput v11, v13, v14

    const/4 v11, 0x0

    aput v11, v13, v22

    int-to-float v0, v0

    div-float v23, v23, v0

    aput v23, v13, v18

    const/16 v0, 0xc

    aput v11, v13, v0

    aput v11, v13, v17

    const/16 v0, 0xe

    aput v11, v13, v0

    const/16 v0, 0xf

    aput v4, v13, v0

    .line 126
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_MP:I

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v0, v4, v14, v13, v14}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 127
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v13, "set Program2_MP, error="

    invoke-direct {v12, v13, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v0, 0x9

    new-array v13, v0, [F

    aput v21, v13, v14

    aput v11, v13, v4

    move/from16 v14, v21

    neg-float v0, v14

    const/4 v14, 0x2

    aput v0, v13, v14

    const/4 v0, 0x3

    aput v11, v13, v0

    neg-float v0, v3

    aput v0, v13, v28

    const/4 v0, 0x5

    aput v11, v13, v0

    aput v8, v13, v27

    aput v7, v13, v26

    const/16 v0, 0x8

    aput v8, v13, v0

    .line 128
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_MT:I

    const/4 v3, 0x0

    invoke-static {v0, v4, v3, v13, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 129
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v3, "set Program2_MT, error="

    invoke-direct {v12, v3, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 130
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_Size:I

    sget v3, Lcom/neverland/viscomp/PageCurlRenderer;->BorderWidth:F

    mul-float v4, v3, v30

    iget v7, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    mul-float v3, v3, v30

    iget v7, v12, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v0, v10, v9, v4, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 131
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v3, "set Program2_Size, error="

    invoke-direct {v12, v3, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    float-to-double v2, v2

    .line 132
    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->x:I

    int-to-double v7, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v7

    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v7

    iget v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    const/4 v0, 0x1

    goto :goto_1e

    :cond_22
    const/4 v0, 0x0

    :goto_1e
    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v9, v2, v7

    .line 133
    :goto_1f
    iget-wide v2, v12, Lcom/neverland/viscomp/PageCurlRenderer;->arcLength:D

    iget-wide v7, v12, Lcom/neverland/viscomp/PageCurlRenderer;->pageWidth:D

    add-double v13, v2, v7

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v0

    iget v4, v12, Lcom/neverland/viscomp/PageCurlRenderer;->y:I

    move-wide/from16 v37, v5

    int-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v5

    mul-double v13, v13, v9

    sub-double/2addr v13, v2

    add-double/2addr v7, v2

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v0

    int-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v0

    mul-double v7, v7, v9

    sub-double/2addr v7, v2

    neg-double v0, v2

    cmpg-double v4, v13, v0

    if-gez v4, :cond_23

    neg-double v13, v2

    :cond_23
    neg-double v0, v2

    cmpg-double v4, v7, v0

    if-gez v4, :cond_24

    neg-double v7, v2

    .line 135
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Xd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Xu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v12, v0, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 136
    iget-object v0, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    cmpg-double v0, v13, v7

    if-gez v0, :cond_25

    move-wide/from16 v5, v37

    neg-double v0, v5

    const/16 v2, 0x900

    .line 137
    invoke-static {v2}, Landroid/opengl/GLES20;->glFrontFace(I)V

    move-wide v10, v0

    move-wide/from16 v37, v7

    move-wide/from16 v39, v13

    move-wide v13, v5

    goto :goto_20

    :cond_25
    move-wide/from16 v5, v37

    neg-double v0, v5

    const/16 v2, 0x901

    .line 138
    invoke-static {v2}, Landroid/opengl/GLES20;->glFrontFace(I)V

    move-wide v10, v5

    move-wide/from16 v39, v7

    move-wide/from16 v37, v13

    move-wide v13, v0

    :goto_20
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v2, v37, v15

    sub-double/2addr v0, v2

    double-to-int v0, v0

    if-gez v0, :cond_26

    const/4 v0, 0x0

    .line 139
    :cond_26
    iget-wide v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->pageWidth:D

    sub-double v1, v1, v39

    div-double/2addr v1, v15

    double-to-int v1, v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_27

    const/16 v1, 0x40

    const/16 v8, 0x40

    goto :goto_21

    :cond_27
    move v8, v1

    :goto_21
    int-to-double v1, v0

    const-wide v3, 0x3fa8beff56e88aecL    # 0.0483321946706122

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    .line 141
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 143
    iget-object v5, v12, Lcom/neverland/viscomp/PageCurlRenderer;->currentMatrix:[[D

    iget v6, v12, Lcom/neverland/viscomp/PageCurlRenderer;->actualMatrix:I

    aget-object v5, v5, v6

    .line 144
    aput-wide v1, v5, v22

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v1, 0x2

    .line 145
    aput-wide v3, v5, v1

    neg-double v1, v3

    const/16 v3, 0x8

    aput-wide v1, v5, v3

    const/16 v1, 0xf

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 146
    aput-wide v2, v5, v1

    const/4 v1, 0x5

    aput-wide v2, v5, v1

    const/16 v1, 0xe

    const-wide/16 v2, 0x0

    .line 147
    aput-wide v2, v5, v1

    aput-wide v2, v5, v17

    const/16 v1, 0xc

    aput-wide v2, v5, v1

    aput-wide v2, v5, v18

    const/16 v1, 0x9

    aput-wide v2, v5, v1

    aput-wide v2, v5, v26

    aput-wide v2, v5, v27

    aput-wide v2, v5, v28

    const/4 v4, 0x3

    aput-wide v2, v5, v4

    const/4 v1, 0x1

    aput-wide v2, v5, v1

    .line 148
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 149
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    double-to-float v3, v10

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 150
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 151
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 152
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 153
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 154
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 155
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    double-to-float v3, v13

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 156
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 157
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 158
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 159
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x1

    const/16 v17, 0x2

    :goto_22
    if-gt v0, v8, :cond_29

    int-to-double v1, v0

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v15

    add-double v21, v39, v1

    add-double v26, v37, v1

    if-eqz v7, :cond_28

    .line 161
    iget-wide v5, v12, Lcom/neverland/viscomp/PageCurlRenderer;->pageWidth:D

    cmpl-double v1, v26, v5

    if-lez v1, :cond_28

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v1, v15, v1

    sub-double v2, v21, v1

    const/16 v18, 0x0

    int-to-float v9, v0

    move-object/from16 v1, p0

    const/4 v7, 0x3

    move-wide/from16 v28, v5

    move-wide v4, v10

    move-wide/from16 v6, v28

    move-wide/from16 v28, v15

    move v15, v8

    move/from16 v16, v9

    move-wide v8, v13

    move-wide/from16 v30, v10

    move/from16 v10, v18

    move/from16 v11, v16

    .line 162
    invoke-direct/range {v1 .. v11}, Lcom/neverland/viscomp/PageCurlRenderer;->addVertices(DDDDZF)V

    add-int/lit8 v17, v17, 0x2

    const/16 v16, 0x0

    goto :goto_23

    :cond_28
    move-wide/from16 v30, v10

    move-wide/from16 v28, v15

    move v15, v8

    move/from16 v16, v7

    :goto_23
    const/4 v10, 0x1

    int-to-float v11, v0

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    move-wide/from16 v4, v30

    move-wide/from16 v6, v26

    move-wide v8, v13

    .line 163
    invoke-direct/range {v1 .. v11}, Lcom/neverland/viscomp/PageCurlRenderer;->addVertices(DDDDZF)V

    const/4 v1, 0x2

    add-int/lit8 v17, v17, 0x2

    add-int/lit8 v0, v0, 0x1

    move v8, v15

    move/from16 v7, v16

    move-wide/from16 v15, v28

    move-wide/from16 v10, v30

    const/4 v4, 0x3

    goto :goto_22

    :cond_29
    move v15, v8

    move-wide/from16 v30, v10

    .line 164
    iget-wide v2, v12, Lcom/neverland/viscomp/PageCurlRenderer;->pageWidth:D

    int-to-float v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v4, v30

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/neverland/viscomp/PageCurlRenderer;->addVertex(DDF)V

    const/4 v1, 0x1

    add-int/lit8 v17, v17, 0x1

    if-eqz v7, :cond_2a

    .line 165
    iget-wide v2, v12, Lcom/neverland/viscomp/PageCurlRenderer;->pageWidth:D

    move-object/from16 v1, p0

    move-wide v4, v13

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/neverland/viscomp/PageCurlRenderer;->addVertex(DDF)V

    add-int/lit8 v17, v17, 0x1

    :cond_2a
    move/from16 v0, v17

    const/16 v38, 0x3

    const/16 v39, 0x1406

    const/16 v40, 0x0

    const/16 v41, 0x18

    .line 166
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v42

    move/from16 v37, v20

    invoke-static/range {v37 .. v42}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 167
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    const-string v2, "set VertexAttribPointer aPos2D, error="

    invoke-direct {v12, v2, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 168
    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 169
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    const-string v2, "EnableVertexAttribArray aPos2D, error="

    invoke-direct {v12, v2, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 170
    iget-object v1, v12, Lcom/neverland/viscomp/PageCurlRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v42

    move/from16 v37, v24

    invoke-static/range {v37 .. v42}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 171
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    const-string v2, "set VertexAttribPointer aPos3D, error="

    invoke-direct {v12, v2, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 172
    invoke-static/range {v24 .. v24}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 173
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    const-string v2, "EnableVertexAttribArray aPos3D, error="

    invoke-direct {v12, v2, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 174
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 175
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    const-string v2, "DrawArrays error="

    invoke-direct {v12, v2, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/neverland/viscomp/PageCurlRenderer;->setTexLoaded()V

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vertex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v1, v35

    long-to-double v0, v1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v12, v0, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private pot(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    shr-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    shl-int p1, v1, v0

    return p1
.end method

.method private declared-synchronized setStarted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->started1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setTexLoaded()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->texLoaded1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearTextureStory()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1id:J

    iput-wide v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2id:J

    return-void
.end method

.method public declared-synchronized getCreated()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->created:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStarted()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->started1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexLoaded()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->texLoaded1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method listToHorizontal(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->x:I

    .line 2
    iput p2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->y:I

    .line 3
    iget p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    if-nez p1, :cond_0

    int-to-float p1, p2

    const/high16 p2, 0x41a00000    # 20.0f

    .line 4
    sget v0, Lcom/neverland/mainApp;->g:F

    mul-float v0, v0, p2

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->y:I

    :cond_0
    return-void
.end method

.method listToVertical(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->x:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->y:I

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const-string v0, "onDrawFrame"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/neverland/viscomp/PageCurlRenderer;->onDrawFrameHorizontal(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public onDrawFrameVertical(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    const-string p1, "onDrawFrameV"

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/neverland/viscomp/PageCurlRenderer;->clearTextureStory()V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 3
    iput p2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    .line 4
    iput p3, p0, Lcom/neverland/viscomp/PageCurlRenderer;->height:I

    int-to-double v0, p2

    .line 5
    iget v2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->pageWidth:D

    .line 6
    sget-object v2, Lcom/neverland/viscomp/PageCurlRenderer;->ArcMult:[F

    iget v3, p0, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->arcLength:D

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "onSurfaceCreated started"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 3
    iget-object v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->texMaxSize:[I

    const/16 v5, 0xd33

    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "texMaxSize="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->texMaxSize:[I

    aget v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 5
    iget-object v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    const/4 v5, 0x2

    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    invoke-static {v1, v5, v6, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v1, 0x1

    new-array v5, v1, [I

    const v6, 0x8b31

    .line 7
    invoke-static {v6}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v6

    const v7, 0x8b30

    .line 8
    invoke-static {v7}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v8

    const v9, 0x8b31

    .line 9
    invoke-static {v9}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v9

    .line 10
    invoke-static {v7}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v10

    .line 11
    invoke-static {v7}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v11

    .line 12
    invoke-static {v7}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v7

    .line 13
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v12

    iput v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 14
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v12

    iput v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 15
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v12

    iput v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 16
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v12

    iput v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    const v12, 0x8b81

    if-eqz v6, :cond_0

    const-string v13, "precision highp float;attribute vec2 a;uniform vec2 s;varying mediump float c;varying mediump vec2 tc;void main(){c=(a.x>0.0)?8.0:0.0;tc=vec2((1.0+a.x)*s.x,(1.0-a.y)*s.y);gl_Position=vec4(a.x,a.y,0.0,1.0);}"

    .line 17
    invoke-static {v6, v13}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 18
    invoke-static {v6}, Landroid/opengl/GLES20;->glCompileShader(I)V

    aput v1, v5, v2

    .line 19
    invoke-static {v6, v12, v5, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 20
    aget v13, v5, v2

    if-nez v13, :cond_0

    .line 21
    invoke-static {v6}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VertexShaderBack "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 23
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 24
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 25
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 26
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 27
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 28
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 29
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 30
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 31
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 32
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 33
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 34
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 35
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 36
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    :cond_0
    if-eqz v8, :cond_1

    const-string v13, "precision mediump float;uniform sampler2D t1;uniform sampler2D t2;varying mediump float c;varying vec2 tc;void main(){if(c>0.0){gl_FragColor=texture2D(t2,tc);}else{gl_FragColor=texture2D(t1,tc);}}"

    .line 37
    invoke-static {v8, v13}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 38
    invoke-static {v8}, Landroid/opengl/GLES20;->glCompileShader(I)V

    aput v1, v5, v2

    .line 39
    invoke-static {v8, v12, v5, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 40
    aget v13, v5, v2

    if-nez v13, :cond_1

    .line 41
    invoke-static {v8}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FragmentShaderBack "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 43
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 44
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 45
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 46
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 47
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 48
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 49
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 50
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 51
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 52
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 53
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 54
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 55
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 56
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    .line 57
    :cond_1
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    const v14, 0x8b82

    if-eqz v13, :cond_2

    .line 58
    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 59
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v13, v8}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 60
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v13}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 61
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v13, v14, v5, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 62
    aget v13, v5, v2

    if-nez v13, :cond_2

    .line 63
    iget v3, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Program0:\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 65
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 66
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 67
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 68
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 69
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 70
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 71
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 72
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 73
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 74
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 75
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 76
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 77
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 78
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    :cond_2
    if-eqz v9, :cond_3

    const-string v13, "precision highp float;attribute vec3 a2;attribute vec4 a3;uniform mat4 MP;uniform mat3 MT;varying mediump vec4 tc;varying mediump float a;void main(){a=max(0.25-abs(0.25-a2.z/128.0),0.0);\ntc=vec4(MT*vec3(a2.xy,1.0),a3.z);gl_Position=MP*a3;}"

    .line 79
    invoke-static {v9, v13}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 80
    invoke-static {v9}, Landroid/opengl/GLES20;->glCompileShader(I)V

    aput v1, v5, v2

    .line 81
    invoke-static {v9, v12, v5, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 82
    aget v13, v5, v2

    if-nez v13, :cond_3

    .line 83
    invoke-static {v9}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VertexShader12 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 85
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 86
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 87
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 88
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 89
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 90
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 91
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 92
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 93
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 94
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 95
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 96
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 97
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 98
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    :cond_3
    if-eqz v10, :cond_4

    .line 99
    sget-object v13, Lcom/neverland/viscomp/PageCurlRenderer;->FragmentShader1:Ljava/lang/String;

    invoke-static {v10, v13}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 100
    invoke-static {v10}, Landroid/opengl/GLES20;->glCompileShader(I)V

    aput v1, v5, v2

    .line 101
    invoke-static {v10, v12, v5, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 102
    aget v13, v5, v2

    if-nez v13, :cond_4

    .line 103
    invoke-static {v10}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FragmentShader1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 105
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 106
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 107
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 108
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 109
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 110
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 111
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 112
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 113
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 114
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 115
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 116
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 117
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 118
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    .line 119
    :cond_4
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    if-eqz v13, :cond_5

    .line 120
    invoke-static {v13, v9}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 121
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v13, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 122
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v13}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 123
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v13, v14, v5, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 124
    aget v13, v5, v2

    if-nez v13, :cond_5

    .line 125
    iget v3, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Program1:\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 127
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 128
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 129
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 130
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 131
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 132
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 133
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 134
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 135
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 136
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 137
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 138
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 139
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 140
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    :cond_5
    if-eqz v11, :cond_6

    .line 141
    sget-object v13, Lcom/neverland/viscomp/PageCurlRenderer;->FragmentShader1c:Ljava/lang/String;

    invoke-static {v11, v13}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 142
    invoke-static {v11}, Landroid/opengl/GLES20;->glCompileShader(I)V

    aput v1, v5, v2

    .line 143
    invoke-static {v11, v12, v5, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 144
    aget v13, v5, v2

    if-nez v13, :cond_6

    .line 145
    invoke-static {v11}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FragmentShader1c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 147
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 148
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 149
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 150
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 151
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 152
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 153
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 154
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 155
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 156
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 157
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 158
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 159
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 160
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    .line 161
    :cond_6
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    if-eqz v13, :cond_7

    .line 162
    invoke-static {v13, v9}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 163
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v13, v11}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 164
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v13}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 165
    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v13, v14, v5, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 166
    aget v13, v5, v2

    if-nez v13, :cond_7

    .line 167
    iget v3, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Program1c:\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 169
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 170
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 171
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 172
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 173
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 174
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 175
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 176
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 177
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 178
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 179
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 180
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 181
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 182
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    :cond_7
    if-eqz v7, :cond_8

    .line 183
    sget-object v13, Lcom/neverland/viscomp/PageCurlRenderer;->FragmentShader2:Ljava/lang/String;

    invoke-static {v7, v13}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 184
    invoke-static {v7}, Landroid/opengl/GLES20;->glCompileShader(I)V

    aput v1, v5, v2

    .line 185
    invoke-static {v7, v12, v5, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 186
    aget v12, v5, v2

    if-nez v12, :cond_8

    .line 187
    invoke-static {v7}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FragmentShader2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 189
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 190
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 191
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 192
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 193
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 194
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 195
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 196
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 197
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 198
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 199
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 200
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 201
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 202
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    .line 203
    :cond_8
    iget v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    if-eqz v12, :cond_9

    .line 204
    invoke-static {v12, v9}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 205
    iget v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v12, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 206
    iget v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v12}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 207
    iget v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v12, v14, v5, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 208
    aget v5, v5, v2

    if-nez v5, :cond_9

    .line 209
    iget v3, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Program2:\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;Z)V

    .line 211
    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 212
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 213
    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 214
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 215
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 216
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 217
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 218
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    .line 219
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 220
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    .line 221
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 222
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    .line 223
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 224
    iput v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    return-void

    .line 225
    :cond_9
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 226
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 227
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    const-string v6, "a"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0_aPos:I

    .line 228
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Program0_aPos error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", aPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0_aPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v5, v6}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 230
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    const-string v6, "s"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0_scrSize:I

    .line 231
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Program0_scrSize error="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", scrSize="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0_scrSize:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v5, v7}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 233
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    const-string v7, "t1"

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    .line 234
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v8

    iput v8, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Program0_uTex1 error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tex1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v8, v10}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const v8, 0x84c0

    .line 236
    invoke-static {v8}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 237
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v8

    const-string v10, "ActiveTexture error="

    invoke-direct {v0, v10, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 238
    iget-object v8, v0, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    aget v8, v8, v2

    const/16 v10, 0xde1

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 239
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v8

    const-string v10, "Bind texture error="

    invoke-direct {v0, v10, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v8, 0x2801

    const/16 v10, 0x2601

    const/16 v11, 0xde1

    .line 240
    invoke-static {v11, v8, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 241
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v8

    const-string v10, "TexParameter MIN_FILTER error="

    invoke-direct {v0, v10, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v8, 0x2800

    const/16 v10, 0x2601

    .line 242
    invoke-static {v11, v8, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 243
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v8

    const-string v10, "TexParameter MAG_FILTER error="

    invoke-direct {v0, v10, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v8, 0x2802

    const v10, 0x47012f00    # 33071.0f

    .line 244
    invoke-static {v11, v8, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 245
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v8

    const-string v10, "TexParameter GL_TEXTURE_WRAP_S error="

    invoke-direct {v0, v10, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v8, 0x2803

    const v10, 0x47012f00    # 33071.0f

    .line 246
    invoke-static {v11, v8, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 247
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v8

    const-string v10, "TexParameter GL_TEXTURE_WRAP_T error="

    invoke-direct {v0, v10, v8}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 248
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 249
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    const-string v8, "set tex1 error="

    invoke-direct {v0, v8, v5}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 250
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program0:I

    const-string v10, "t2"

    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    .line 251
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v10

    iput v10, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 252
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Program0_uTex2 error="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", tex2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v10, v11}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const v10, 0x84c1

    .line 253
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 254
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v10

    const-string v11, "ActiveTexture error="

    invoke-direct {v0, v11, v10}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 255
    iget-object v10, v0, Lcom/neverland/viscomp/PageCurlRenderer;->textures:[I

    aget v10, v10, v1

    const/16 v11, 0xde1

    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 256
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v10

    const-string v11, "Bind texture error="

    invoke-direct {v0, v11, v10}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v10, 0x2801

    const/16 v11, 0x2601

    const/16 v12, 0xde1

    .line 257
    invoke-static {v12, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 258
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v10

    const-string v11, "TexParameter MIN_FILTER error="

    invoke-direct {v0, v11, v10}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v10, 0x2800

    const/16 v11, 0x2601

    .line 259
    invoke-static {v12, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 260
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v10

    const-string v11, "TexParameter MAG_FILTER error="

    invoke-direct {v0, v11, v10}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v10, 0x2802

    const v11, 0x47012f00    # 33071.0f

    .line 261
    invoke-static {v12, v10, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 262
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v10

    const-string v11, "TexParameter GL_TEXTURE_WRAP_S error="

    invoke-direct {v0, v11, v10}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/16 v10, 0x2803

    const v11, 0x47012f00    # 33071.0f

    .line 263
    invoke-static {v12, v10, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 264
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v10

    const-string v11, "TexParameter GL_TEXTURE_WRAP_T error="

    invoke-direct {v0, v11, v10}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 265
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 266
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    const-string v10, "set tex2 error="

    invoke-direct {v0, v10, v5}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 267
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 268
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    const-string v10, "a2"

    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_aPos2D:I

    .line 269
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Program1_aPos2D error="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", aPos2D="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_aPos2D:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v12, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v5, v12}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 271
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    const-string v12, "a3"

    invoke-static {v5, v12}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_aPos3D:I

    .line 272
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Program1_aPos3D error="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", aPos3D="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_aPos3D:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v14, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v5, v14}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 274
    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    const-string v14, "MP"

    invoke-static {v5, v14}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_MP:I

    .line 275
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    iput v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Program1_MP error="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", MP="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_MP:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v5}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 277
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    const-string v5, "MT"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_MT:I

    .line 278
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Program1_MT error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", MT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v3

    iget v3, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_MT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 280
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_Size:I

    .line 281
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Program1_Size error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1_Size:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 283
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1:I

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 284
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    iput v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    const-string v7, "Program1_uTex1 error="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v7, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v4, v7}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/4 v4, 0x0

    .line 286
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 287
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    invoke-direct {v0, v8, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 288
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 289
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_aPos2D:I

    .line 290
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program1c_aPos2D error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_aPos2D:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 292
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1, v12}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_aPos3D:I

    .line 293
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program1c_aPos3D error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_aPos3D:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 295
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_MP:I

    .line 296
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program1c_MP error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_MP:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 298
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_MT:I

    .line 299
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program1c_MT error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_MT:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 301
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_Size:I

    .line 302
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program1c_Size error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_Size:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 304
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    move-object/from16 v4, v18

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 305
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v7

    iput v7, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program1c_uTex1 error="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 307
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 308
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    invoke-direct {v0, v8, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 309
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c:I

    const-string v4, "b"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program1c_BackColor:I

    .line 310
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 311
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_aPos2D:I

    .line 312
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program2_aPos2D error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_aPos2D:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 314
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1, v12}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_aPos3D:I

    .line 315
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program2_aPos3D error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_aPos3D:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 317
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_MP:I

    .line 318
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program2_MP error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_MP:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v4}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 320
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_MT:I

    .line 321
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program2_MT error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_MT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v2}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 323
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_Size:I

    .line 324
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    iput v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Program2_Size error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2_Size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->retCode:I

    invoke-direct {v0, v1, v2}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 326
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    move-object/from16 v2, v18

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Program2_uTex1 error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 328
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 329
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    invoke-direct {v0, v8, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 330
    iget v1, v0, Lcom/neverland/viscomp/PageCurlRenderer;->Program2:I

    const-string v2, "t2"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Program2_uTex2 error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tex2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 332
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 333
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    const-string v3, "set tex2 error="

    invoke-direct {v0, v3, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 334
    iput-boolean v2, v0, Lcom/neverland/viscomp/PageCurlRenderer;->created:Z

    .line 335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v1, v16

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setListMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListMode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 2
    iput p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    return-void
.end method

.method public setSinglePage(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1
    :goto_0
    iput v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSinglePage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "), Pages="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 3
    iget p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->width:I

    int-to-double v0, p1

    iget p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->Pages:I

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->pageWidth:D

    .line 4
    sget-object p1, Lcom/neverland/viscomp/PageCurlRenderer;->ArcMult:[F

    iget v2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->mode:I

    aget p1, p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/neverland/viscomp/PageCurlRenderer;->arcLength:D

    return-void
.end method

.method public setUseMirrorBackPage(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iput-boolean v2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->onePageBacksideSwitch:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->onePageBacksideColor:[F

    const/high16 v3, 0xff0000

    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v2, v1

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 3
    aput v1, v2, v0

    const/4 v0, 0x2

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 4
    aput p1, v2, v0

    :cond_1
    return-void
.end method

.method startHorizontal(Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;ZJJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starth("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Lcom/neverland/viscomp/PageCurlRenderer;->getStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    iput-object p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 4
    iput-object p2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 5
    iput-wide p4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1new:J

    .line 6
    iput-wide p6, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2new:J

    goto :goto_0

    .line 7
    :cond_1
    iput-object p2, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 8
    iput-object p1, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 9
    iput-wide p6, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp1new:J

    .line 10
    iput-wide p4, p0, Lcom/neverland/viscomp/PageCurlRenderer;->bmp2new:J

    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/neverland/viscomp/PageCurlRenderer;->clrTexLoaded()V

    .line 12
    invoke-direct {p0}, Lcom/neverland/viscomp/PageCurlRenderer;->setStarted()V

    .line 13
    iput-boolean p3, p0, Lcom/neverland/viscomp/PageCurlRenderer;->dir:Z

    const-string p1, "startedh"

    .line 14
    invoke-direct {p0, p1, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    return-void
.end method

.method startVertical(Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;Lcom/neverland/engbook/forpublic/AlBitmap;JJJ)V
    .locals 0

    return-void
.end method

.method public stop()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/PageCurlRenderer;->clrStarted()V

    const-string v0, "stoped"

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/neverland/viscomp/PageCurlRenderer;->log(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method
