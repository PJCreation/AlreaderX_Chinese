.class Lcom/caverock/androidsvg/SVG$Style;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$Style$RenderQuality;,
        Lcom/caverock/androidsvg/SVG$Style$VectorEffect;,
        Lcom/caverock/androidsvg/SVG$Style$TextDirection;,
        Lcom/caverock/androidsvg/SVG$Style$TextDecoration;,
        Lcom/caverock/androidsvg/SVG$Style$TextAnchor;,
        Lcom/caverock/androidsvg/SVG$Style$FontStyle;,
        Lcom/caverock/androidsvg/SVG$Style$LineJoin;,
        Lcom/caverock/androidsvg/SVG$Style$LineCap;,
        Lcom/caverock/androidsvg/SVG$Style$FillRule;
    }
.end annotation


# instance fields
.field A:Lcom/caverock/androidsvg/SVG$c;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/Boolean;

.field F:Ljava/lang/Boolean;

.field G:Lcom/caverock/androidsvg/SVG$n0;

.field H:Ljava/lang/Float;

.field I:Ljava/lang/String;

.field J:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field K:Ljava/lang/String;

.field L:Lcom/caverock/androidsvg/SVG$n0;

.field M:Ljava/lang/Float;

.field N:Lcom/caverock/androidsvg/SVG$n0;

.field O:Ljava/lang/Float;

.field P:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field Q:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

.field e:J

.field f:Lcom/caverock/androidsvg/SVG$n0;

.field g:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field h:Ljava/lang/Float;

.field i:Lcom/caverock/androidsvg/SVG$n0;

.field j:Ljava/lang/Float;

.field k:Lcom/caverock/androidsvg/SVG$p;

.field l:Lcom/caverock/androidsvg/SVG$Style$LineCap;

.field m:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

.field n:Ljava/lang/Float;

.field o:[Lcom/caverock/androidsvg/SVG$p;

.field p:Lcom/caverock/androidsvg/SVG$p;

.field q:Ljava/lang/Float;

.field r:Lcom/caverock/androidsvg/SVG$f;

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field t:Lcom/caverock/androidsvg/SVG$p;

.field u:Ljava/lang/Integer;

.field v:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field w:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field x:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field y:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

.field z:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->e:J

    return-void
.end method

.method static a()Lcom/caverock/androidsvg/SVG$Style;
    .locals 8

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    const-wide/16 v1, -0x1

    .line 2
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->e:J

    .line 3
    sget-object v1, Lcom/caverock/androidsvg/SVG$f;->e:Lcom/caverock/androidsvg/SVG$f;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$n0;

    .line 4
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->g:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->h:Ljava/lang/Float;

    const/4 v5, 0x0

    .line 6
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$n0;

    .line 7
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->j:Ljava/lang/Float;

    .line 8
    new-instance v6, Lcom/caverock/androidsvg/SVG$p;

    invoke-direct {v6, v3}, Lcom/caverock/androidsvg/SVG$p;-><init>(F)V

    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->k:Lcom/caverock/androidsvg/SVG$p;

    .line 9
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->l:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 10
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->m:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    const/high16 v3, 0x40800000    # 4.0f

    .line 11
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    .line 12
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->o:[Lcom/caverock/androidsvg/SVG$p;

    .line 13
    new-instance v3, Lcom/caverock/androidsvg/SVG$p;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/caverock/androidsvg/SVG$p;-><init>(F)V

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->p:Lcom/caverock/androidsvg/SVG$p;

    .line 14
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Float;

    .line 15
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$f;

    .line 16
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->s:Ljava/util/List;

    .line 17
    new-instance v3, Lcom/caverock/androidsvg/SVG$p;

    sget-object v6, Lcom/caverock/androidsvg/SVG$c1;->k:Lcom/caverock/androidsvg/SVG$c1;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-direct {v3, v7, v6}, Lcom/caverock/androidsvg/SVG$p;-><init>(FLcom/caverock/androidsvg/SVG$c1;)V

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$p;

    const/16 v3, 0x190

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Ljava/lang/Integer;

    .line 19
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 20
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 21
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 22
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 23
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/Boolean;

    .line 24
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Lcom/caverock/androidsvg/SVG$c;

    .line 25
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/String;

    .line 26
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->C:Ljava/lang/String;

    .line 27
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->D:Ljava/lang/String;

    .line 28
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Boolean;

    .line 29
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/Boolean;

    .line 30
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$n0;

    .line 31
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/Float;

    .line 32
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->I:Ljava/lang/String;

    .line 33
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->J:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 34
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->K:Ljava/lang/String;

    .line 35
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Lcom/caverock/androidsvg/SVG$n0;

    .line 36
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->M:Ljava/lang/Float;

    .line 37
    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$n0;

    .line 38
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->O:Ljava/lang/Float;

    .line 39
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->P:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 40
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->Q:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    return-object v0
.end method


# virtual methods
.method b(Z)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->A:Lcom/caverock/androidsvg/SVG$c;

    .line 4
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->I:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Float;

    .line 6
    sget-object v1, Lcom/caverock/androidsvg/SVG$f;->e:Lcom/caverock/androidsvg/SVG$f;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$n0;

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/Float;

    .line 8
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->K:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->L:Lcom/caverock/androidsvg/SVG$n0;

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->M:Ljava/lang/Float;

    .line 11
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$n0;

    .line 12
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->O:Ljava/lang/Float;

    .line 13
    sget-object p1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->P:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style;

    .line 2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->o:[Lcom/caverock/androidsvg/SVG$p;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, [Lcom/caverock/androidsvg/SVG$p;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/caverock/androidsvg/SVG$p;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->o:[Lcom/caverock/androidsvg/SVG$p;

    :cond_0
    return-object v0
.end method
