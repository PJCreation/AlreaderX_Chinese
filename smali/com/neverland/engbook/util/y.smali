.class public Lcom/neverland/engbook/util/y;
.super Ljava/lang/Object;
.source "AlProfileOptions.java"


# instance fields
.field public A:Z

.field public B:Lcom/neverland/engbook/forpublic/AlBitmap;

.field public C:Lcom/neverland/engbook/forpublic/AlBitmap;

.field public D:I

.field public E:I

.field public F:Z

.field public final G:Lcom/neverland/engbook/util/i;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:F

.field public M:I

.field public N:Z

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:Z

.field public T:I

.field public U:Z

.field public V:Z

.field public a:Z

.field public b:Z

.field public c:Z

.field public d:F

.field public final e:[F

.field public final f:[I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public final l:[I

.field public final m:[I

.field public final n:[Ljava/lang/String;

.field public final o:[Z

.field public final p:[Z

.field public final q:[I

.field public final r:[I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/neverland/engbook/util/y;->d:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/neverland/engbook/util/y;->e:[F

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/neverland/engbook/util/y;->f:[I

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Lcom/neverland/engbook/util/y;->l:[I

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/neverland/engbook/util/y;->m:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/neverland/engbook/util/y;->n:[Ljava/lang/String;

    new-array v1, v0, [Z

    .line 8
    iput-object v1, p0, Lcom/neverland/engbook/util/y;->o:[Z

    new-array v1, v0, [Z

    .line 9
    iput-object v1, p0, Lcom/neverland/engbook/util/y;->p:[Z

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, Lcom/neverland/engbook/util/y;->q:[I

    new-array v0, v0, [I

    .line 11
    iput-object v0, p0, Lcom/neverland/engbook/util/y;->r:[I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/neverland/engbook/util/y;->B:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 13
    iput-object v0, p0, Lcom/neverland/engbook/util/y;->C:Lcom/neverland/engbook/forpublic/AlBitmap;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/neverland/engbook/util/y;->E:I

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/neverland/engbook/util/y;->F:Z

    .line 16
    new-instance v1, Lcom/neverland/engbook/util/i;

    invoke-direct {v1}, Lcom/neverland/engbook/util/i;-><init>()V

    iput-object v1, p0, Lcom/neverland/engbook/util/y;->G:Lcom/neverland/engbook/util/i;

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/neverland/engbook/util/y;->H:Z

    .line 18
    iput-boolean v0, p0, Lcom/neverland/engbook/util/y;->I:Z

    .line 19
    iput-boolean v1, p0, Lcom/neverland/engbook/util/y;->J:Z

    .line 20
    iput-boolean v0, p0, Lcom/neverland/engbook/util/y;->K:Z

    const/16 v2, 0xa

    .line 21
    iput v2, p0, Lcom/neverland/engbook/util/y;->O:I

    .line 22
    iput v0, p0, Lcom/neverland/engbook/util/y;->P:I

    .line 23
    iput v1, p0, Lcom/neverland/engbook/util/y;->Q:I

    .line 24
    iput v0, p0, Lcom/neverland/engbook/util/y;->R:I

    .line 25
    iput-boolean v0, p0, Lcom/neverland/engbook/util/y;->S:Z

    const/16 v2, 0x64

    .line 26
    iput v2, p0, Lcom/neverland/engbook/util/y;->T:I

    .line 27
    iput-boolean v0, p0, Lcom/neverland/engbook/util/y;->U:Z

    .line 28
    iput-boolean v1, p0, Lcom/neverland/engbook/util/y;->V:Z

    return-void
.end method
