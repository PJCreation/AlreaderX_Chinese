.class public Lcom/neverland/d/a/k;
.super Lcom/neverland/d/a/e;
.source "AlFormatEPUB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/d/a/k$e;,
        Lcom/neverland/d/a/k$d;,
        Lcom/neverland/d/a/k$c;,
        Lcom/neverland/d/a/k$b;
    }
.end annotation


# instance fields
.field private final A1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/d/a/k$e;",
            ">;"
        }
    .end annotation
.end field

.field private final B1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/d/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final C1:Ljava/lang/StringBuilder;

.field private D1:Z

.field private E1:I

.field protected a1:I

.field protected b1:Ljava/lang/String;

.field protected c1:I

.field protected final d1:Ljava/lang/StringBuilder;

.field protected e1:Ljava/lang/String;

.field private f1:Ljava/lang/String;

.field private g1:Ljava/lang/String;

.field private final h1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/d/a/k$d;",
            ">;"
        }
    .end annotation
.end field

.field private final i1:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected j1:F

.field protected k1:Ljava/lang/String;

.field protected final l1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/neverland/d/a/k$b;",
            ">;"
        }
    .end annotation
.end field

.field protected final m1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/d/a/k$c;",
            ">;"
        }
    .end annotation
.end field

.field private n1:Z

.field private final o1:I

.field protected p1:Ljava/lang/String;

.field protected q1:Ljava/lang/String;

.field private r1:Ljava/lang/String;

.field private s1:Ljava/lang/String;

.field protected t1:Z

.field private u1:Ljava/lang/String;

.field protected v1:Z

.field protected w1:Ljava/lang/String;

.field protected x1:Z

.field protected y1:Ljava/lang/String;

.field private z1:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/neverland/d/a/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/d/a/k;->a1:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lcom/neverland/d/a/k;->c1:I

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    .line 6
    iput-object v1, p0, Lcom/neverland/d/a/k;->e1:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/neverland/d/a/k;->f1:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/neverland/d/a/k;->g1:Ljava/lang/String;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    .line 10
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/neverland/d/a/k;->i1:Ljava/util/HashSet;

    const/high16 v3, -0x40800000    # -1.0f

    .line 11
    iput v3, p0, Lcom/neverland/d/a/k;->j1:F

    .line 12
    iput-object v1, p0, Lcom/neverland/d/a/k;->k1:Ljava/lang/String;

    .line 13
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    .line 15
    iput-boolean v0, p0, Lcom/neverland/d/a/k;->n1:Z

    .line 16
    iput v2, p0, Lcom/neverland/d/a/k;->o1:I

    .line 17
    iput-object v1, p0, Lcom/neverland/d/a/k;->p1:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/neverland/d/a/k;->q1:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/neverland/d/a/k;->r1:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/neverland/d/a/k;->s1:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/neverland/d/a/k;->u1:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/neverland/d/a/k;->w1:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/neverland/d/a/k;->A1:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/neverland/d/a/k;->B1:Ljava/util/ArrayList;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/neverland/d/a/k;->C1:Ljava/lang/StringBuilder;

    .line 28
    iput-boolean v0, p0, Lcom/neverland/d/a/k;->D1:Z

    .line 29
    iput v0, p0, Lcom/neverland/d/a/k;->E1:I

    .line 30
    new-instance v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;

    invoke-direct {v0}, Lcom/neverland/engbook/allstyles/AlCSSHtml;-><init>()V

    iput-object v0, p0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    return-void
.end method

.method private G1()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v1, 0x368f3a

    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v3, 0x30ff2b

    invoke-virtual {v2, v3}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/neverland/d/a/k;->B1:Ljava/util/ArrayList;

    new-instance v5, Lcom/neverland/d/a/c;

    iget-object v6, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/neverland/d/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/neverland/d/a/k;->B1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/neverland/d/a/d;->p0:I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x3f

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v5, p0, Lcom/neverland/d/a/k;->B1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0, v3, v4}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/neverland/d/a/d;->m(Ljava/lang/String;Z)V

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p0, v1, v4}, Lcom/neverland/d/a/d;->g(CZ)V

    if-eqz v0, :cond_0

    const-string v1, "noteref"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/neverland/d/a/k;->i1:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return v3

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x337a8b

    invoke-virtual {v0, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    invoke-virtual {v2, v1}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "footnote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/neverland/d/a/k;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_3
    return v4
.end method

.method public static J1(Lcom/neverland/engbook/level1/AlFiles;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/neverland/engbook/level1/AlFiles;->getIdentStr()Ljava/lang/String;

    move-result-object p0

    const-string v0, "epub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private L1()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/neverland/d/a/d;->p0:I

    if-ltz v0, :cond_7

    .line 2
    iget v0, p0, Lcom/neverland/d/a/d;->o0:I

    iget-object v1, p0, Lcom/neverland/d/a/d;->X:Lcom/neverland/d/a/y;

    iget v1, v1, Lcom/neverland/d/a/y;->f:I

    sub-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget v2, v2, Lcom/neverland/d/a/z;->h:I

    sub-int/2addr v2, v1

    if-lez v0, :cond_7

    if-le v2, v0, :cond_7

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 v3, 0x2a

    const/16 v4, 0x7d

    const/16 v5, 0x5d

    if-ge v0, v2, :cond_4

    .line 5
    iget-object v6, p0, Lcom/neverland/d/a/d;->X:Lcom/neverland/d/a/y;

    iget-object v6, v6, Lcom/neverland/d/a/y;->a:[C

    aget-char v6, v6, v0

    const v7, 0xe000

    if-lt v6, v7, :cond_0

    const v7, 0xf7ff

    if-gt v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    if-eq v6, v3, :cond_3

    const/16 v3, 0x5b

    if-eq v6, v3, :cond_2

    if-eq v6, v5, :cond_3

    const/16 v3, 0x7b

    if-eq v6, v3, :cond_2

    if-eq v6, v4, :cond_3

    packed-switch v6, :pswitch_data_0

    return-void

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    return-void

    .line 7
    :cond_3
    :pswitch_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/4 v6, 0x0

    if-eq v0, v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7

    .line 10
    :cond_5
    iget v0, p0, Lcom/neverland/d/a/d;->p0:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/neverland/d/a/k;->U(I)Lcom/neverland/d/a/c;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11
    iget-object v1, v0, Lcom/neverland/d/a/c;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_6

    .line 13
    iget-object v0, v0, Lcom/neverland/d/a/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/neverland/d/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_2
    iget-object v1, p0, Lcom/neverland/d/a/d;->n0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public D1(Z)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iput-boolean v0, p1, Lcom/neverland/d/a/i0;->f:Z

    .line 2
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    invoke-virtual {p1}, Lcom/neverland/d/a/h0;->b()V

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    iget-object p1, p0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v0, v0, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->o:Z

    goto/16 :goto_5

    .line 7
    :cond_1
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->i:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/neverland/d/a/d;->m:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->i:Z

    goto/16 :goto_5

    .line 10
    :cond_2
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->h:Z

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v1, :cond_6

    .line 11
    iget-object p1, p1, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_5

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 14
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const/16 v0, 0xa

    .line 15
    invoke-static {p1, v0}, Lcom/neverland/engbook/util/f0;->f(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 16
    iget-object v0, p0, Lcom/neverland/d/a/d;->t:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 17
    iput-object p1, p0, Lcom/neverland/d/a/d;->t:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/neverland/d/a/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/d/a/d;->t:Ljava/lang/String;

    .line 20
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->h:Z

    goto/16 :goto_5

    .line 21
    :cond_6
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->g:Z

    if-eqz v1, :cond_7

    .line 22
    iget-object p1, p1, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/d/a/d;->s:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->g:Z

    goto/16 :goto_5

    .line 24
    :cond_7
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->f:Z

    if-eqz v1, :cond_b

    .line 25
    iget-object p1, p1, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neverland/d/b/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/16 v0, 0x2f

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "/"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 29
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_a

    aget-object v3, p1, v1

    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 32
    iget-object v4, p0, Lcom/neverland/d/a/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_9
    iget-object v0, p0, Lcom/neverland/d/a/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_a
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->f:Z

    goto/16 :goto_5

    .line 35
    :cond_b
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->b:Z

    if-eqz v1, :cond_c

    .line 36
    iget-object p1, p1, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/d/a/d;->u:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->b:Z

    goto/16 :goto_5

    .line 38
    :cond_c
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->d:Z

    if-eqz v1, :cond_d

    .line 39
    iget-object v0, p0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    iget-object p1, p1, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/neverland/engbook/allstyles/c;->j(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    .line 40
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->d:Z

    goto/16 :goto_5

    .line 41
    :cond_d
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->u:Z

    if-eqz v1, :cond_e

    .line 42
    iget-object p1, p1, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/d/a/d;->v:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->u:Z

    goto/16 :goto_5

    .line 44
    :cond_e
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->s:Z

    if-eqz v1, :cond_14

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    .line 47
    :goto_2
    iget-object v3, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v3, v3, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_f

    .line 48
    iget-object v3, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v3, v3, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_2

    .line 49
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v0, v0, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 50
    iget-object v0, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v0, v0, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_10

    iget-object v0, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v0, v0, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/neverland/d/b/a;->D(C)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 51
    :cond_10
    iget-object v0, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v0, v0, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 52
    :cond_12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_13

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/d/a/d;->w:Ljava/lang/String;

    .line 54
    :cond_13
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->s:Z

    goto/16 :goto_5

    .line 55
    :cond_14
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->v:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_16

    .line 56
    iget-object p1, p0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 57
    iget-object p1, p0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v0, v0, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object p1, p0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_15

    iget-object p1, p0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_15

    .line 59
    iget-object p1, p0, Lcom/neverland/d/a/d;->R:Lcom/neverland/engbook/util/z;

    iget-object v0, p1, Lcom/neverland/engbook/util/z;->b:[Lcom/neverland/engbook/util/q;

    iget p1, p1, Lcom/neverland/engbook/util/z;->c:I

    aget-object p1, v0, p1

    iget-wide v0, p1, Lcom/neverland/engbook/util/q;->h:J

    const-wide/high16 v5, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v0, v5

    const/16 p1, 0x3c

    shr-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/neverland/d/a/k;->c1:I

    .line 60
    new-instance p1, Lcom/neverland/d/a/k$d;

    invoke-direct {p1}, Lcom/neverland/d/a/k$d;-><init>()V

    .line 61
    iget-object v0, p0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    iput-object v0, p1, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/neverland/d/a/k$d;->b:Ljava/lang/String;

    .line 63
    iget v0, p0, Lcom/neverland/d/a/k;->c1:I

    iput v0, p1, Lcom/neverland/d/a/k$d;->c:I

    .line 64
    iput-object v4, p0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 66
    iget-object v0, p0, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_15
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->v:Z

    goto/16 :goto_5

    .line 68
    :cond_16
    iget-boolean v1, p1, Lcom/neverland/d/a/h0;->w:Z

    if-eqz v1, :cond_18

    .line 69
    iget-object p1, p0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_17

    .line 70
    new-instance p1, Lcom/neverland/d/a/k$e;

    invoke-direct {p1, v4}, Lcom/neverland/d/a/k$e;-><init>(Lcom/neverland/d/a/k$a;)V

    .line 71
    iget-object v1, p0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/neverland/d/a/k$e;->a:Ljava/lang/String;

    .line 72
    iput v0, p1, Lcom/neverland/d/a/k$e;->b:I

    .line 73
    iget-object v0, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v0, v0, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/neverland/d/a/k$e;->c:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/neverland/d/a/k;->A1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_17
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->w:Z

    goto :goto_5

    .line 76
    :cond_18
    iget-boolean p1, p1, Lcom/neverland/d/a/h0;->x:Z

    if-eqz p1, :cond_1b

    .line 77
    iget-object p1, p0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1a

    .line 78
    new-instance p1, Lcom/neverland/d/a/k$e;

    invoke-direct {p1, v4}, Lcom/neverland/d/a/k$e;-><init>(Lcom/neverland/d/a/k$a;)V

    .line 79
    iget-object v1, p0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v4, 0x23

    if-ne v1, v4, :cond_19

    .line 80
    iget-object v1, p0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/neverland/d/a/k$e;->a:Ljava/lang/String;

    goto :goto_4

    .line 81
    :cond_19
    iget-object v0, p0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/neverland/d/a/k$e;->a:Ljava/lang/String;

    .line 82
    :goto_4
    iput v3, p1, Lcom/neverland/d/a/k$e;->b:I

    .line 83
    iget-object v0, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iget-object v0, v0, Lcom/neverland/d/a/h0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/neverland/utils/finit;->customStringToFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lcom/neverland/d/a/k$e;->d:F

    .line 84
    iget-object v0, p0, Lcom/neverland/d/a/k;->A1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1a
    iget-object p1, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v2, p1, Lcom/neverland/d/a/h0;->x:Z

    .line 86
    :cond_1b
    :goto_5
    iget-object p1, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iput-boolean v2, p1, Lcom/neverland/d/a/i0;->f:Z

    :goto_6
    return-void
.end method

.method protected E1(Ljava/lang/String;I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object p1, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-boolean p1, p1, Lcom/neverland/d/a/z;->c:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {p1}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v0

    long-to-int p1, v0

    move v5, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    check-cast p1, Lcom/neverland/engbook/level1/AlFilesEPUB;

    invoke-virtual {p1, v2, p2}, Lcom/neverland/engbook/level1/AlFilesZIPRecord;->addFilesToRecord(Ljava/lang/String;I)I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-boolean p2, v1, Lcom/neverland/d/a/z;->c:Z

    if-eqz p2, :cond_1

    .line 6
    iget-boolean p2, p0, Lcom/neverland/d/a/a;->N0:Z

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {p2}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v0

    long-to-int p2, v0

    iput p2, p0, Lcom/neverland/d/a/a;->O0:I

    goto :goto_1

    .line 8
    :cond_1
    iget v3, v1, Lcom/neverland/d/a/z;->h:I

    iget-object p2, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    check-cast p2, Lcom/neverland/engbook/level1/AlFilesEPUB;

    .line 9
    invoke-virtual {p2, p1}, Lcom/neverland/engbook/level1/AlFilesZIPRecord;->getRecordItem(I)Lcom/neverland/engbook/level1/AlOneZIPRecord;

    move-result-object p2

    iget v4, p2, Lcom/neverland/engbook/level1/AlOneZIPRecord;->outSize:I

    const/4 v7, 0x0

    move v6, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/neverland/d/a/z;->a(Ljava/lang/String;IIIIZ)V

    :cond_2
    :goto_1
    return p1
.end method

.method protected F1()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/d;->R:Lcom/neverland/engbook/util/z;

    iget-object v1, v0, Lcom/neverland/engbook/util/z;->b:[Lcom/neverland/engbook/util/q;

    iget v0, v0, Lcom/neverland/engbook/util/z;->c:I

    aget-object v0, v1, v0

    iget-wide v0, v0, Lcom/neverland/engbook/util/q;->e:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v1, 0x1bde4

    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v1, 0x30ff2b

    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 4
    iget-object v1, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {v1, v0}, Lcom/neverland/engbook/level1/AlFiles;->getExternalFileNum(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v3}, Lcom/neverland/d/a/z;->r()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/neverland/d/a/k;->p1:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 8
    iget-object v3, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {v3, v1}, Lcom/neverland/engbook/level1/AlFiles;->getExternalAbsoluteFileName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/neverland/d/a/k;->p1:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-boolean v3, v1, Lcom/neverland/d/a/i0;->m:Z

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->b()V

    :cond_3
    const/4 v1, 0x2

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 12
    invoke-virtual {p0, v0, v2}, Lcom/neverland/d/a/d;->m(Ljava/lang/String;Z)V

    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0, v2}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 14
    iget-object v0, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-boolean v1, v0, Lcom/neverland/d/a/i0;->m:Z

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/neverland/d/a/i0;->e()V

    :cond_4
    return v2
.end method

.method protected H1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/k;->k1:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/neverland/d/a/k;->j1:F

    invoke-virtual {p0, v0, v1}, Lcom/neverland/d/a/d;->i(Ljava/lang/String;F)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/neverland/d/a/k;->k1:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcom/neverland/d/a/k;->j1:F

    :cond_0
    return-void
.end method

.method public I0(Lcom/neverland/engbook/forpublic/a;Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/util/AlPreferenceOptions;)V
    .locals 10

    const-wide/16 v0, 0x10

    .line 1
    iput-wide v0, p1, Lcom/neverland/engbook/forpublic/a;->formatOptionsShift:J

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/neverland/d/a/d;->I0(Lcom/neverland/engbook/forpublic/a;Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/util/AlPreferenceOptions;)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/neverland/d/a/a;->L0:Z

    const-string p3, "application/epub+zip"

    .line 4
    iput-object p3, p0, Lcom/neverland/d/a/d;->h0:Ljava/lang/String;

    const-string p3, "EPUB"

    .line 5
    iput-object p3, p0, Lcom/neverland/d/a/d;->g0:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/neverland/d/a/d;->g:Z

    .line 7
    iget-wide v0, p1, Lcom/neverland/engbook/forpublic/a;->formatOptions:J

    const-wide/high16 v2, 0x2000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    .line 8
    iput-boolean p2, p0, Lcom/neverland/d/a/k;->n1:Z

    .line 9
    :cond_0
    iget-boolean p3, p1, Lcom/neverland/engbook/forpublic/a;->noUseCover:Z

    iput-boolean p3, p0, Lcom/neverland/d/a/a;->R0:Z

    .line 10
    iput-boolean p2, p0, Lcom/neverland/d/a/d;->Q:Z

    const p3, 0xfde9

    .line 11
    invoke-virtual {p0, p3}, Lcom/neverland/d/a/d;->d1(I)V

    .line 12
    iget-object p3, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    const/16 v0, 0x12

    iput v0, p3, Lcom/neverland/d/a/i0;->a:I

    .line 13
    invoke-virtual {p3}, Lcom/neverland/d/a/i0;->d()V

    const/4 p3, 0x0

    .line 14
    iput-object p3, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    const v0, 0xfffff

    .line 15
    iput v0, p0, Lcom/neverland/d/a/a;->H0:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/neverland/d/a/k;->a1:I

    .line 17
    iput-object p3, p0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    const/4 p3, -0x1

    .line 18
    iput p3, p0, Lcom/neverland/d/a/k;->c1:I

    .line 19
    iget-object v4, p0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    const v6, 0xfde9

    sget-object v7, Lcom/neverland/engbook/allstyles/AlCSSHtml$CSSHTML_SET;->epub:Lcom/neverland/engbook/allstyles/AlCSSHtml$CSSHTML_SET;

    iget-wide v8, p0, Lcom/neverland/d/a/d;->c0:J

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/neverland/engbook/allstyles/c;->h(Lcom/neverland/d/a/d;ILcom/neverland/engbook/allstyles/AlCSSHtml$CSSHTML_SET;J)V

    .line 20
    iget-wide v4, p1, Lcom/neverland/engbook/forpublic/a;->formatOptions:J

    const-wide v6, 0xffffffffffffL

    and-long/2addr v6, v4

    cmp-long v1, v6, v2

    if-nez v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    iput-boolean p2, v1, Lcom/neverland/engbook/allstyles/c;->d:Z

    :cond_1
    const-wide/high16 v6, 0x4000000000000L

    and-long/2addr v6, v4

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 22
    :goto_0
    iput-boolean v1, p0, Lcom/neverland/d/a/a;->P0:Z

    const-wide/16 v6, 0x80

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 23
    :goto_1
    iput-boolean v1, p0, Lcom/neverland/d/a/a;->S0:Z

    .line 24
    invoke-virtual {p0, v0, p3}, Lcom/neverland/d/a/a;->x1(II)V

    .line 25
    iget-object p3, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-boolean v1, p3, Lcom/neverland/d/a/z;->c:Z

    if-nez v1, :cond_7

    .line 26
    iget-object p3, p3, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neverland/d/a/x;

    iget p3, p3, Lcom/neverland/d/a/x;->g:I

    .line 27
    iget-object v1, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-object v1, v1, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_2
    const/16 v3, 0x4000

    if-ge v2, v1, :cond_5

    if-le p3, v3, :cond_4

    goto :goto_3

    .line 28
    :cond_4
    iget-object v3, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v3, v2, v0}, Lcom/neverland/d/a/z;->x(IZ)V

    .line 29
    iget-object v3, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-object v3, v3, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/d/a/x;

    iget v3, v3, Lcom/neverland/d/a/x;->g:I

    add-int/2addr p3, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 30
    :cond_5
    iget-object p3, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget p1, p1, Lcom/neverland/engbook/forpublic/a;->readPosition:I

    and-int/lit16 p1, p1, -0x4000

    invoke-virtual {p3, p1}, Lcom/neverland/d/a/z;->t(I)I

    move-result p1

    if-ltz p1, :cond_7

    :goto_4
    if-ge p1, v1, :cond_7

    if-le v0, v3, :cond_6

    goto :goto_5

    .line 31
    :cond_6
    iget-object p3, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {p3, p1, p2}, Lcom/neverland/d/a/z;->x(IZ)V

    .line 32
    iget-object p3, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-object p3, p3, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neverland/d/a/x;

    iget p3, p3, Lcom/neverland/d/a/x;->g:I

    add-int/2addr v0, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method I1(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/k;->C1:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget-object v0, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/neverland/d/a/k;->C1:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Lcom/neverland/d/a/k;->C1:Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/neverland/d/a/k;->C1:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lcom/neverland/d/a/d;->R:Lcom/neverland/engbook/util/z;

    iget p1, p1, Lcom/neverland/engbook/util/z;->c:I

    iget-object v0, p0, Lcom/neverland/d/a/k;->C1:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p2}, Lcom/neverland/d/a/d;->q(ILjava/lang/String;I)V

    .line 7
    iget-object p1, p0, Lcom/neverland/d/a/k;->C1:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected K1()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/neverland/d/a/k;->A1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/neverland/d/a/k;->A1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/d/a/k$e;

    .line 3
    iget v3, v2, Lcom/neverland/d/a/k$e;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 4
    iget-object v5, p0, Lcom/neverland/d/a/k;->A1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 5
    iget-object v4, p0, Lcom/neverland/d/a/k;->A1:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/d/a/k$e;

    .line 6
    iget v5, v4, Lcom/neverland/d/a/k$e;->b:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/neverland/d/a/k$e;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/neverland/d/a/k$e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_1
    :goto_2
    iget-object v2, v2, Lcom/neverland/d/a/k$e;->c:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget v3, v4, Lcom/neverland/d/a/k$e;->d:F

    goto :goto_3

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/neverland/d/a/d;->i(Ljava/lang/String;F)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public T0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    const/16 v1, 0x12

    iput v1, v0, Lcom/neverland/d/a/i0;->a:I

    .line 2
    invoke-virtual {v0}, Lcom/neverland/d/a/i0;->b()V

    .line 3
    iget-object v0, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v0}, Lcom/neverland/d/a/i0;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    const v0, 0xfffff

    .line 5
    iput v0, p0, Lcom/neverland/d/a/a;->H0:I

    .line 6
    iget-object v0, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-object v0, v0, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/d/a/x;

    iget v0, v0, Lcom/neverland/d/a/x;->d:I

    iget-object v1, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-object v1, v1, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/d/a/x;

    iget v1, v1, Lcom/neverland/d/a/x;->d:I

    iget-object v2, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-object v2, v2, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/d/a/x;

    iget p1, p1, Lcom/neverland/d/a/x;->g:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/neverland/d/a/a;->x1(II)V

    return-void
.end method

.method public U(I)Lcom/neverland/d/a/c;
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/k;->B1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/neverland/d/a/k;->B1:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neverland/d/a/c;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected Y0()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/k;->H1()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/k;->K1()V

    .line 3
    iget-object v0, v1, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x23

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lez v0, :cond_1e

    .line 4
    new-instance v6, Lcom/neverland/engbook/forpublic/h;

    invoke-direct {v6, v4}, Lcom/neverland/engbook/forpublic/h;-><init>(I)V

    .line 5
    iget-object v0, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-boolean v0, v0, Lcom/neverland/d/a/z;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v6, v1, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1e

    .line 7
    iget-object v6, v1, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neverland/d/a/k$d;

    .line 8
    iget-object v7, v6, Lcom/neverland/d/a/k$d;->b:Ljava/lang/String;

    iget v6, v6, Lcom/neverland/d/a/k$d;->c:I

    invoke-static {v7, v3, v6, v0}, Lcom/neverland/engbook/forpublic/j;->b(Ljava/lang/String;III)Lcom/neverland/engbook/forpublic/j;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/neverland/d/a/d;->h(Lcom/neverland/engbook/forpublic/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 9
    :goto_1
    iget-object v6, v1, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1e

    .line 10
    iget-object v6, v1, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neverland/d/a/k$d;

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v8, v6, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v3, :cond_1

    .line 14
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 15
    :cond_1
    iget-object v10, v1, Lcom/neverland/d/a/k;->e1:Ljava/lang/String;

    invoke-static {v10, v8}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v8, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/neverland/d/a/z;->s(Ljava/lang/String;)I

    move-result v8

    if-eq v9, v3, :cond_2

    .line 17
    iget-object v10, v6, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_2
    iget-object v7, v6, Lcom/neverland/d/a/k$d;->b:Ljava/lang/String;

    if-ltz v8, :cond_3

    iget-object v9, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-object v9, v9, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/neverland/d/a/x;

    iget v8, v8, Lcom/neverland/d/a/x;->e:I

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget v6, v6, Lcom/neverland/d/a/k$d;->c:I

    invoke-static {v7, v8, v6, v0}, Lcom/neverland/engbook/forpublic/j;->b(Ljava/lang/String;III)Lcom/neverland/engbook/forpublic/j;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/neverland/d/a/d;->h(Lcom/neverland/engbook/forpublic/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 19
    :goto_3
    iget-object v8, v1, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1e

    .line 20
    iget-object v8, v1, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/neverland/d/a/k$d;

    .line 21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v10, v8, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    :goto_4
    if-eq v11, v3, :cond_5

    .line 24
    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 25
    :cond_5
    iget-object v12, v1, Lcom/neverland/d/a/k;->e1:Ljava/lang/String;

    invoke-static {v12, v10}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v11, v3, :cond_6

    .line 26
    iget-object v12, v8, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    move v12, v0

    const/4 v0, 0x0

    const/4 v13, -0x1

    :goto_5
    const-wide/high16 v14, 0x20000000000000L

    const/4 v2, 0x2

    if-ne v13, v3, :cond_c

    if-ge v0, v2, :cond_c

    if-nez v0, :cond_7

    move v2, v12

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    if-nez v0, :cond_8

    .line 27
    iget-object v5, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_7

    :cond_8
    move v5, v12

    :goto_7
    if-ge v2, v5, :cond_b

    .line 28
    iget-object v5, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/util/n;

    iget-object v5, v5, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 29
    iget-object v5, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/util/n;

    iget v13, v5, Lcom/neverland/engbook/util/n;->b:I

    if-nez v0, :cond_9

    move v12, v2

    .line 30
    :cond_9
    iget-object v2, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v2, v13}, Lcom/neverland/d/a/z;->h(I)I

    move-result v2

    iput v2, v6, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 31
    iget-object v2, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v2, v6}, Lcom/neverland/d/a/z;->q(Lcom/neverland/engbook/forpublic/h;)Lcom/neverland/d/a/w;

    move-result-object v2

    iget v2, v2, Lcom/neverland/d/a/w;->c:I

    if-ne v2, v13, :cond_b

    .line 32
    iget-object v2, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v2, v6}, Lcom/neverland/d/a/z;->q(Lcom/neverland/engbook/forpublic/h;)Lcom/neverland/d/a/w;

    move-result-object v2

    iget-wide v4, v2, Lcom/neverland/d/a/w;->f:J

    or-long/2addr v4, v14

    iput-wide v4, v2, Lcom/neverland/d/a/w;->f:J

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    :goto_8
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x23

    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    if-ne v13, v3, :cond_13

    .line 33
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_12

    .line 35
    invoke-virtual {v0, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v5, 0x0

    :goto_a
    if-ne v13, v3, :cond_12

    if-ge v5, v2, :cond_12

    if-nez v5, :cond_d

    move/from16 v16, v12

    goto :goto_b

    :cond_d
    const/16 v16, 0x0

    :goto_b
    move/from16 v4, v16

    :goto_c
    if-nez v5, :cond_e

    .line 36
    iget-object v2, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_d

    :cond_e
    move v2, v12

    :goto_d
    if-ge v4, v2, :cond_11

    .line 37
    iget-object v2, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/engbook/util/n;

    iget-object v2, v2, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 38
    iget-object v2, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/engbook/util/n;

    iget v13, v2, Lcom/neverland/engbook/util/n;->b:I

    if-nez v5, :cond_f

    add-int/lit8 v12, v4, 0x1

    .line 39
    :cond_f
    iget-object v2, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v2, v13}, Lcom/neverland/d/a/z;->h(I)I

    move-result v2

    iput v2, v6, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 40
    iget-object v2, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v2, v6}, Lcom/neverland/d/a/z;->q(Lcom/neverland/engbook/forpublic/h;)Lcom/neverland/d/a/w;

    move-result-object v2

    iget v2, v2, Lcom/neverland/d/a/w;->c:I

    if-ne v2, v13, :cond_11

    .line 41
    iget-object v2, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v2, v6}, Lcom/neverland/d/a/z;->q(Lcom/neverland/engbook/forpublic/h;)Lcom/neverland/d/a/w;

    move-result-object v2

    iget-wide v3, v2, Lcom/neverland/d/a/w;->f:J

    or-long/2addr v3, v14

    iput-wide v3, v2, Lcom/neverland/d/a/w;->f:J

    goto :goto_e

    :cond_10
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x2

    const/4 v3, -0x1

    goto :goto_c

    :cond_11
    :goto_e
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x2

    const/4 v3, -0x1

    goto :goto_a

    :cond_12
    move-object v2, v0

    const/4 v3, -0x1

    goto :goto_f

    :cond_13
    const/4 v2, 0x0

    :goto_f
    if-ne v13, v3, :cond_1a

    .line 42
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/neverland/d/a/d;->q0:I

    invoke-static {v3}, Lcom/neverland/d/b/a;->R(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_1a

    .line 44
    invoke-virtual {v4, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v2, :cond_14

    invoke-virtual {v4, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_14
    const/4 v0, 0x0

    :goto_11
    const/4 v2, -0x1

    if-ne v13, v2, :cond_1a

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1a

    if-nez v0, :cond_15

    move v3, v12

    goto :goto_12

    :cond_15
    const/4 v3, 0x0

    :goto_12
    if-nez v0, :cond_16

    .line 45
    iget-object v5, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_13

    :cond_16
    move v5, v12

    :goto_13
    if-ge v3, v5, :cond_19

    .line 46
    iget-object v5, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/util/n;

    iget-object v5, v5, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 47
    iget-object v5, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/util/n;

    iget v13, v5, Lcom/neverland/engbook/util/n;->b:I

    if-nez v0, :cond_17

    add-int/lit8 v12, v3, 0x1

    .line 48
    :cond_17
    iget-object v3, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v3, v13}, Lcom/neverland/d/a/z;->h(I)I

    move-result v3

    iput v3, v6, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 49
    iget-object v3, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v3, v6}, Lcom/neverland/d/a/z;->q(Lcom/neverland/engbook/forpublic/h;)Lcom/neverland/d/a/w;

    move-result-object v3

    iget v3, v3, Lcom/neverland/d/a/w;->c:I

    if-ne v3, v13, :cond_19

    .line 50
    iget-object v3, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v3, v6}, Lcom/neverland/d/a/z;->q(Lcom/neverland/engbook/forpublic/h;)Lcom/neverland/d/a/w;

    move-result-object v3

    move-object/from16 v16, v4

    iget-wide v4, v3, Lcom/neverland/d/a/w;->f:J

    or-long/2addr v4, v14

    iput-wide v4, v3, Lcom/neverland/d/a/w;->f:J

    goto :goto_14

    :cond_18
    move-object/from16 v16, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_19
    move-object/from16 v16, v4

    :goto_14
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v16

    goto :goto_11

    :cond_1a
    move v0, v12

    const/4 v2, -0x1

    if-ne v13, v2, :cond_1c

    if-ne v11, v2, :cond_1b

    goto :goto_15

    :cond_1b
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x23

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v11, -0x1

    goto/16 :goto_4

    .line 52
    :cond_1c
    :goto_15
    iget-object v2, v1, Lcom/neverland/d/a/d;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, v1, Lcom/neverland/d/a/d;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/engbook/forpublic/j;

    iget v2, v2, Lcom/neverland/engbook/forpublic/j;->b:I

    if-le v2, v13, :cond_1d

    .line 53
    iget-object v2, v1, Lcom/neverland/d/a/d;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/engbook/forpublic/j;

    iget v13, v2, Lcom/neverland/engbook/forpublic/j;->b:I

    .line 54
    :cond_1d
    iget-object v2, v8, Lcom/neverland/d/a/k$d;->b:Ljava/lang/String;

    iget v3, v8, Lcom/neverland/d/a/k$d;->c:I

    invoke-static {v2, v13, v3}, Lcom/neverland/engbook/forpublic/j;->a(Ljava/lang/String;II)Lcom/neverland/engbook/forpublic/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/d;->h(Lcom/neverland/engbook/forpublic/j;)V

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x23

    const/4 v3, -0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 55
    :cond_1e
    iget-object v0, v1, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 56
    iput-object v0, v1, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    goto :goto_16

    .line 57
    :cond_1f
    iget-object v0, v1, Lcom/neverland/d/a/k;->q1:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 58
    iput-object v0, v1, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    .line 59
    :cond_20
    :goto_16
    iget-boolean v0, v1, Lcom/neverland/d/a/a;->R0:Z

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v2, v1, Lcom/neverland/d/a/k;->p1:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 60
    :cond_21
    new-instance v0, Lcom/neverland/engbook/forpublic/h;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/neverland/engbook/forpublic/h;-><init>(I)V

    .line 61
    iget-object v3, v1, Lcom/neverland/d/a/k;->p1:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v3}, Lcom/neverland/d/a/z;->r()I

    move-result v3

    if-le v3, v2, :cond_22

    .line 62
    iget-object v2, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v2, v0}, Lcom/neverland/d/a/z;->q(Lcom/neverland/engbook/forpublic/h;)Lcom/neverland/d/a/w;

    move-result-object v0

    iget-wide v2, v0, Lcom/neverland/d/a/w;->e:J

    const-wide v4, 0x100000000L

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/neverland/d/a/w;->e:J

    .line 63
    :cond_22
    iget-object v0, v1, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v0}, Lcom/neverland/d/a/z;->y()V

    .line 64
    :cond_23
    iget-object v0, v1, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    if-nez v0, :cond_24

    iget-object v0, v1, Lcom/neverland/d/a/k;->p1:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 65
    iput-object v0, v1, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    .line 66
    :cond_24
    invoke-super/range {p0 .. p0}, Lcom/neverland/d/a/d;->Y0()V

    .line 67
    iget-boolean v0, v1, Lcom/neverland/d/a/d;->u0:Z

    if-eqz v0, :cond_2b

    const/4 v2, 0x0

    .line 68
    :goto_17
    iget-object v0, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2b

    .line 69
    iget-object v0, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/util/n;

    .line 70
    iget v3, v0, Lcom/neverland/engbook/util/n;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 71
    iget-object v3, v0, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_25

    .line 72
    iget-object v3, v0, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 73
    :cond_25
    iget-object v4, v0, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 74
    :goto_18
    iget-object v5, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_29

    .line 75
    iget-object v5, v1, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/util/n;

    .line 76
    iget-object v6, v5, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_26

    .line 77
    iget-object v6, v5, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    goto :goto_19

    :cond_26
    const/4 v9, 0x1

    .line 78
    :goto_19
    iget-object v10, v5, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v6, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    iget v6, v5, Lcom/neverland/engbook/util/n;->d:I

    if-ne v6, v9, :cond_27

    goto :goto_1a

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 80
    :cond_28
    :goto_1a
    iget v3, v0, Lcom/neverland/engbook/util/n;->c:I

    iget v4, v5, Lcom/neverland/engbook/util/n;->b:I

    if-ge v3, v4, :cond_2a

    .line 81
    iput v4, v0, Lcom/neverland/engbook/util/n;->c:I

    goto :goto_1b

    :cond_29
    const/16 v7, 0x23

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    :cond_2a
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2b
    return-void
.end method

.method public c0(Ljava/lang/String;ZLcom/neverland/engbook/forpublic/h;)Lcom/neverland/engbook/util/n;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/neverland/d/a/d;->c0(Ljava/lang/String;ZLcom/neverland/engbook/forpublic/h;)Lcom/neverland/engbook/util/n;

    move-result-object p1

    return-object p1
.end method

.method public p1(Lcom/neverland/engbook/forpublic/j;)I
    .locals 8

    .line 1
    iget v0, p1, Lcom/neverland/engbook/forpublic/j;->e:I

    const/4 v1, -0x1

    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_4

    .line 2
    iget-object v0, p0, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    iget v2, p1, Lcom/neverland/engbook/forpublic/j;->e:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/d/a/k$d;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v3, v0, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    const/16 v4, 0x23

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    if-eq v4, v1, :cond_0

    .line 6
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 7
    :cond_0
    iget-object v6, p0, Lcom/neverland/d/a/k;->e1:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v3, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/neverland/d/a/z;->s(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    .line 9
    iget-object v6, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/neverland/d/a/z;->x(IZ)V

    .line 10
    iget-object v6, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-object v6, v6, Lcom/neverland/d/a/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/d/a/x;

    iget v3, v3, Lcom/neverland/d/a/x;->e:I

    iput v3, p1, Lcom/neverland/engbook/forpublic/j;->b:I

    if-eq v4, v1, :cond_1

    .line 11
    iget-object v0, v0, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    :goto_0
    if-ltz v0, :cond_3

    .line 13
    iget-object v1, p0, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/util/n;

    iget-object v1, v1, Lcom/neverland/engbook/util/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/neverland/d/a/d;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/util/n;

    iget v0, v0, Lcom/neverland/engbook/util/n;->b:I

    iput v0, p1, Lcom/neverland/engbook/forpublic/j;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v5

    :cond_4
    return v1
.end method

.method protected t1()Z
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    const-wide/high16 v3, 0xf0000000000000L

    and-long/2addr v1, v3

    const-string v3, "footnote"

    const-wide v4, 0x40000000000L

    const/16 v6, 0xd1b

    const v7, 0x368f3a

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    cmp-long v12, v1, v9

    if-nez v12, :cond_6

    .line 2
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    invoke-virtual {v1, v6}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v12, v2, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v12, v4

    cmp-long v2, v12, v9

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v12, "note"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_5

    .line 7
    iget-object v12, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    invoke-virtual {v12, v7}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "rearnote"

    .line 10
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "endnote"

    .line 11
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v12, 0x1

    :goto_3
    or-int/2addr v2, v12

    :cond_4
    if-nez v2, :cond_5

    .line 12
    iget-object v12, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x23

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 14
    iget-object v13, v0, Lcom/neverland/d/a/k;->i1:Ljava/util/HashSet;

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v2, 0x1

    .line 15
    :cond_5
    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/k;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    :cond_6
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    iget v2, v1, Lcom/neverland/d/a/k0;->a:I

    const-string v13, "cover"

    const/4 v14, 0x2

    const-string v15, "toc"

    move-object/from16 v16, v13

    const-wide v12, 0x3000000000L

    const-wide/high16 v17, 0x80000000000000L

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x3

    const-wide/high16 v19, 0x40000000000000L

    const-wide/high16 v7, 0x20000000000000L

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_11

    .line 17
    :pswitch_0
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->V0()V

    goto :goto_4

    .line 19
    :cond_7
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_8

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->V0()V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->t0()J

    move-result-wide v1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/neverland/d/a/d;->t(JJ)V

    goto :goto_4

    .line 22
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->V0()V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->U0()V

    :goto_4
    return v11

    .line 24
    :pswitch_1
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_9

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->V0()V

    goto :goto_5

    .line 26
    :cond_9
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_a

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->V0()V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->t0()J

    move-result-wide v1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/neverland/d/a/d;->t(JJ)V

    const-wide v1, 0x200000000L

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/d;->g1(J)V

    .line 30
    iput-boolean v11, v0, Lcom/neverland/d/a/d;->d0:Z

    :cond_a
    :goto_5
    return v11

    .line 31
    :sswitch_0
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    .line 32
    iget-object v2, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v2, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v2, v7

    cmp-long v4, v2, v9

    if-eqz v4, :cond_c

    const v2, 0x5f6d198

    .line 33
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 34
    iget-object v2, v0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/d/a/k$b;

    if-eqz v2, :cond_c

    .line 35
    new-instance v3, Lcom/neverland/d/a/k$c;

    invoke-direct {v3}, Lcom/neverland/d/a/k$c;-><init>()V

    const-string v4, "contentnotes"

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 37
    iput-boolean v11, v3, Lcom/neverland/d/a/k$c;->c:Z

    .line 38
    :cond_b
    iget-object v1, v2, Lcom/neverland/d/a/k$b;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/neverland/d/a/k$c;->a:Ljava/lang/String;

    .line 39
    iget-object v1, v2, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    iput-object v1, v3, Lcom/neverland/d/a/k$c;->b:Ljava/lang/String;

    .line 40
    iget-object v1, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return v11

    .line 41
    :sswitch_1
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_e

    .line 42
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v19

    cmp-long v3, v1, v9

    if-eqz v3, :cond_11

    .line 43
    iget v1, v0, Lcom/neverland/d/a/k;->a1:I

    if-ne v1, v5, :cond_11

    .line 44
    iget v2, v0, Lcom/neverland/d/a/k;->c1:I

    if-lez v2, :cond_d

    sub-int/2addr v2, v11

    .line 45
    iput v2, v0, Lcom/neverland/d/a/k;->c1:I

    goto :goto_6

    :cond_d
    if-nez v2, :cond_11

    sub-int/2addr v2, v11

    .line 46
    iput v2, v0, Lcom/neverland/d/a/k;->c1:I

    and-int/lit8 v1, v1, -0x3

    .line 47
    iput v1, v0, Lcom/neverland/d/a/k;->a1:I

    goto :goto_6

    .line 48
    :cond_e
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_11

    .line 49
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v19

    cmp-long v3, v1, v9

    if-eqz v3, :cond_11

    .line 50
    iget v1, v0, Lcom/neverland/d/a/k;->a1:I

    if-eq v1, v11, :cond_f

    if-ne v1, v5, :cond_11

    .line 51
    :cond_f
    iget v2, v0, Lcom/neverland/d/a/k;->c1:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/neverland/d/a/k;->c1:I

    if-nez v2, :cond_10

    or-int/2addr v1, v14

    .line 52
    iput v1, v0, Lcom/neverland/d/a/k;->a1:I

    goto :goto_6

    .line 53
    :cond_10
    iget-object v1, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, v0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 54
    new-instance v1, Lcom/neverland/d/a/k$d;

    invoke-direct {v1}, Lcom/neverland/d/a/k$d;-><init>()V

    .line 55
    iget-object v2, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    iput-object v2, v1, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    .line 56
    iget-object v2, v0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/neverland/d/a/k$d;->b:Ljava/lang/String;

    .line 57
    iget v2, v0, Lcom/neverland/d/a/k;->c1:I

    iput v2, v1, Lcom/neverland/d/a/k$d;->c:I

    .line 58
    iput-object v6, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    .line 59
    iget-object v2, v0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 60
    iget-object v2, v0, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_6
    return v11

    .line 61
    :sswitch_2
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_12

    .line 62
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v19

    cmp-long v3, v1, v9

    if-eqz v3, :cond_13

    .line 63
    iget v1, v0, Lcom/neverland/d/a/k;->a1:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_13

    and-int/lit8 v1, v1, -0x5

    .line 64
    iput v1, v0, Lcom/neverland/d/a/k;->a1:I

    goto :goto_7

    .line 65
    :cond_12
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_13

    .line 66
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v19

    cmp-long v3, v1, v9

    if-eqz v3, :cond_13

    .line 67
    iget v1, v0, Lcom/neverland/d/a/k;->a1:I

    if-ne v1, v5, :cond_13

    or-int/lit8 v1, v1, 0x4

    .line 68
    iput v1, v0, Lcom/neverland/d/a/k;->a1:I

    :cond_13
    :goto_7
    return v11

    .line 69
    :sswitch_3
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_14

    goto :goto_8

    .line 70
    :cond_14
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v2, :cond_16

    const v2, 0x368f3a

    .line 71
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v2, "rearnotes"

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide v1, 0x40000000000L

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/d;->k1(J)V

    .line 74
    :cond_15
    invoke-virtual {v0, v7, v8}, Lcom/neverland/d/a/d;->h1(J)V

    :cond_16
    :goto_8
    return v11

    .line 75
    :sswitch_4
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_17

    goto :goto_9

    .line 76
    :cond_17
    iget-object v2, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v2, Lcom/neverland/d/a/i0;->k:J

    and-long v2, v2, v19

    cmp-long v4, v2, v9

    if-eqz v4, :cond_19

    .line 77
    iget v2, v0, Lcom/neverland/d/a/k;->a1:I

    if-ne v2, v5, :cond_19

    .line 78
    iput-object v6, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    const v2, 0x1bde4

    .line 79
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    .line 81
    :cond_18
    iget-object v1, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    iget-object v1, v0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 82
    new-instance v1, Lcom/neverland/d/a/k$d;

    invoke-direct {v1}, Lcom/neverland/d/a/k$d;-><init>()V

    .line 83
    iget-object v2, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    iput-object v2, v1, Lcom/neverland/d/a/k$d;->a:Ljava/lang/String;

    .line 84
    iget-object v2, v0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/neverland/d/a/k$d;->b:Ljava/lang/String;

    .line 85
    iget v2, v0, Lcom/neverland/d/a/k;->c1:I

    iput v2, v1, Lcom/neverland/d/a/k$d;->c:I

    .line 86
    iput-object v6, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    .line 87
    iget-object v2, v0, Lcom/neverland/d/a/k;->d1:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 88
    iget-object v2, v0, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_9
    return v11

    .line 89
    :sswitch_5
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_1a

    goto :goto_a

    .line 90
    :cond_1a
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v2, :cond_1d

    .line 91
    iget-object v2, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v2, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v2, v7

    cmp-long v4, v2, v9

    if-eqz v4, :cond_1d

    const v2, 0x1c148

    .line 92
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 93
    iget-object v2, v0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/d/a/k$b;

    if-eqz v2, :cond_1d

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/k;->g1:Ljava/lang/String;

    .line 95
    iget-object v1, v2, Lcom/neverland/d/a/k$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/neverland/d/a/k;->E1(Ljava/lang/String;I)I

    goto :goto_a

    .line 96
    :cond_1b
    iget-object v1, v0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/d/a/k$b;

    if-eqz v1, :cond_1c

    .line 97
    iget-object v2, v1, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    const-string v3, "application/xhtml+xml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 98
    iput-object v15, v0, Lcom/neverland/d/a/k;->f1:Ljava/lang/String;

    .line 99
    iget-object v1, v1, Lcom/neverland/d/a/k$b;->a:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/k;->E1(Ljava/lang/String;I)I

    goto :goto_a

    :cond_1c
    const/16 v2, 0xa

    .line 100
    iget-object v1, v0, Lcom/neverland/d/a/k;->f1:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 101
    iget-object v3, v0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/d/a/k$b;

    if-eqz v1, :cond_1d

    .line 102
    iget-object v1, v1, Lcom/neverland/d/a/k$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/k;->E1(Ljava/lang/String;I)I

    :cond_1d
    :goto_a
    return v11

    .line 103
    :sswitch_6
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->b:Z

    return v11

    .line 104
    :sswitch_7
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    const-wide/16 v4, 0x200

    if-eqz v2, :cond_1e

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->D()V

    .line 106
    iget-wide v1, v0, Lcom/neverland/d/a/d;->c0:J

    const-wide/high16 v6, 0x8000000000000L

    and-long/2addr v1, v6

    cmp-long v3, v1, v9

    if-eqz v3, :cond_1f

    .line 107
    iget-object v1, v0, Lcom/neverland/d/a/d;->R:Lcom/neverland/engbook/util/z;

    iget-object v2, v1, Lcom/neverland/engbook/util/z;->b:[Lcom/neverland/engbook/util/q;

    iget v1, v1, Lcom/neverland/engbook/util/z;->c:I

    aget-object v1, v2, v1

    iget-wide v1, v1, Lcom/neverland/engbook/util/q;->e:J

    and-long/2addr v1, v4

    cmp-long v3, v1, v9

    if-eqz v3, :cond_1f

    .line 108
    invoke-virtual {v0, v4, v5}, Lcom/neverland/d/a/d;->z(J)V

    goto :goto_b

    .line 109
    :cond_1e
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v2, :cond_1f

    const v2, 0x368f3a

    .line 110
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    iget-wide v6, v0, Lcom/neverland/d/a/d;->c0:J

    const-wide/high16 v12, 0x8000000000000L

    and-long/2addr v6, v12

    cmp-long v2, v6, v9

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 112
    invoke-virtual {v0, v4, v5}, Lcom/neverland/d/a/d;->l1(J)V

    :cond_1f
    :goto_b
    return v11

    .line 113
    :sswitch_8
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_20

    .line 114
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v19

    cmp-long v3, v1, v9

    if-eqz v3, :cond_21

    .line 115
    iget v1, v0, Lcom/neverland/d/a/k;->a1:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_21

    and-int/lit8 v1, v1, -0x9

    .line 116
    iput v1, v0, Lcom/neverland/d/a/k;->a1:I

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k;->D1(Z)V

    goto :goto_c

    .line 118
    :cond_20
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_21

    .line 119
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v19

    cmp-long v3, v1, v9

    if-eqz v3, :cond_21

    .line 120
    iget v1, v0, Lcom/neverland/d/a/k;->a1:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_21

    or-int/lit8 v1, v1, 0x8

    .line 121
    iput v1, v0, Lcom/neverland/d/a/k;->a1:I

    .line 122
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v11, v1, Lcom/neverland/d/a/h0;->o:Z

    .line 123
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    :cond_21
    :goto_c
    return v11

    .line 124
    :sswitch_9
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_22

    .line 125
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_28

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k;->D1(Z)V

    goto/16 :goto_d

    .line 127
    :cond_22
    iget-object v2, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v2, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v2, v7

    cmp-long v4, v2, v9

    if-eqz v4, :cond_28

    const v2, -0x3b32222b

    .line 128
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_24

    const-string v2, "belongs-to-collection"

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 130
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const/16 v2, 0xd1b

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_28

    .line 131
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v11, v1, Lcom/neverland/d/a/h0;->w:Z

    .line 132
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    goto/16 :goto_d

    :cond_23
    const-string v2, "group-position"

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 134
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x40ae9ba6    # 5.4565f

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/k;->z1:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_28

    .line 135
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v11, v1, Lcom/neverland/d/a/h0;->x:Z

    .line 136
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    goto/16 :goto_d

    .line 137
    :cond_24
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x337a8b

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_25

    move-object/from16 v2, v16

    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 139
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x38b73479

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    goto :goto_d

    :cond_25
    if-eqz v1, :cond_27

    const-string v2, "calibre:series"

    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 142
    iget-object v1, v0, Lcom/neverland/d/a/k;->k1:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/k;->H1()V

    .line 144
    :cond_26
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x38b73479

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_28

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/k;->k1:Ljava/lang/String;

    goto :goto_d

    :cond_27
    if-eqz v1, :cond_28

    const-string v2, "calibre:series_index"

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 148
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x38b73479

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lcom/neverland/utils/finit;->customStringToFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/neverland/d/a/k;->j1:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_28

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/k;->H1()V

    :cond_28
    :goto_d
    return v11

    .line 151
    :sswitch_a
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_29

    goto :goto_e

    :cond_29
    const v2, 0x368f3a

    .line 152
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    iget-object v2, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v3, 0x1b899

    invoke-virtual {v2, v3}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_2a

    const-string v3, "text/css"

    .line 154
    invoke-virtual {v3, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    :cond_2a
    if-eqz v2, :cond_2c

    const-string v1, "stylesheet"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 156
    :cond_2b
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x30ff2b

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 157
    iget-object v2, v0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    const v4, 0xfde9

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/neverland/engbook/allstyles/c;->l(Ljava/lang/String;Ljava/lang/String;II)Z

    :cond_2c
    :goto_e
    return v11

    :sswitch_b
    move-object/from16 v2, v16

    .line 158
    iget-boolean v3, v1, Lcom/neverland/d/a/k0;->b:Z

    .line 159
    iget-object v3, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v12, v3, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v7, v12

    cmp-long v3, v7, v9

    if-eqz v3, :cond_31

    const/16 v3, 0xd1b

    .line 160
    invoke-virtual {v1, v3}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 161
    iget-object v3, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v6, -0x373272cd

    invoke-virtual {v3, v6}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    iget-object v6, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v7, 0x30ff2b

    invoke-virtual {v6, v7}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 163
    iget-object v7, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v8, 0x70df8f83

    invoke-virtual {v7, v8}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v6, :cond_31

    if-eqz v7, :cond_31

    .line 164
    iget-object v8, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 165
    iget-object v9, v0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {v9, v8}, Lcom/neverland/engbook/level1/AlFiles;->getExternalFileNum(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v4, :cond_31

    .line 166
    new-instance v9, Lcom/neverland/d/a/k$b;

    invoke-direct {v9}, Lcom/neverland/d/a/k$b;-><init>()V

    .line 167
    iput-object v8, v9, Lcom/neverland/d/a/k$b;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    .line 169
    iget-object v7, v0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2d

    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v7, v5, :cond_2d

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "nav"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/neverland/d/a/k;->f1:Ljava/lang/String;

    .line 172
    :cond_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2f

    .line 173
    iget-object v1, v9, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    const-string v3, "image/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 174
    iput-object v8, v0, Lcom/neverland/d/a/k;->r1:Ljava/lang/String;

    goto :goto_f

    .line 175
    :cond_2e
    iget-object v1, v9, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    const-string v3, "application/xhtml+xml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 176
    iput-object v8, v0, Lcom/neverland/d/a/k;->u1:Ljava/lang/String;

    .line 177
    :cond_2f
    :goto_f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_31

    .line 178
    iget-object v1, v9, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 179
    iput-object v8, v0, Lcom/neverland/d/a/k;->q1:Ljava/lang/String;

    goto :goto_10

    .line 180
    :cond_30
    iget-object v1, v9, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 181
    iput-object v8, v0, Lcom/neverland/d/a/k;->s1:Ljava/lang/String;

    :cond_31
    :goto_10
    return v11

    .line 182
    :sswitch_c
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v1, :cond_32

    const v1, 0xfde9

    .line 183
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/d;->d1(I)V

    :cond_32
    return v11

    .line 184
    :sswitch_d
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_33

    .line 185
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->c()V

    goto :goto_11

    .line 186
    :cond_33
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_36

    .line 187
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->d()V

    goto :goto_11

    .line 188
    :sswitch_e
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_34

    .line 189
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_36

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k;->D1(Z)V

    goto :goto_11

    .line 191
    :cond_34
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v2, :cond_36

    .line 192
    iget-object v2, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v2, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v2, v7

    cmp-long v4, v2, v9

    if-eqz v4, :cond_36

    const v2, 0x5c6729a

    .line 193
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_35

    const-string v2, "modification"

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 195
    :cond_35
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v11, v1, Lcom/neverland/d/a/h0;->h:Z

    .line 196
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    .line 197
    :cond_36
    :goto_11
    invoke-super/range {p0 .. p0}, Lcom/neverland/d/a/e;->t1()Z

    move-result v1

    return v1

    .line 198
    :sswitch_f
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_37

    goto :goto_12

    .line 199
    :cond_37
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_38

    .line 200
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->b()V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->V0()V

    const-wide/high16 v1, 0x1000000000000L

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/d;->h1(J)V

    .line 203
    invoke-virtual {v0, v7, v8}, Lcom/neverland/d/a/d;->h1(J)V

    .line 204
    iget-object v1, v0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/neverland/engbook/allstyles/c;->c:Z

    .line 205
    invoke-virtual {v1}, Lcom/neverland/engbook/allstyles/c;->g()I

    :cond_38
    :goto_12
    return v11

    :sswitch_10
    const/4 v2, 0x0

    .line 206
    iget-boolean v3, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v3, :cond_39

    .line 207
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->c()V

    .line 208
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iput-boolean v2, v1, Lcom/neverland/d/a/i0;->m:Z

    goto :goto_13

    .line 209
    :cond_39
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_3a

    .line 210
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->d()V

    .line 211
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iput-boolean v11, v1, Lcom/neverland/d/a/i0;->m:Z

    :cond_3a
    :goto_13
    return v11

    :sswitch_11
    const/4 v2, 0x0

    .line 212
    iput-boolean v2, v0, Lcom/neverland/d/a/k;->D1:Z

    .line 213
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_3b

    .line 214
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->b()V

    goto :goto_14

    .line 215
    :cond_3b
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v2, :cond_3d

    const v2, 0x368f3a

    .line 216
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 218
    iput-boolean v11, v0, Lcom/neverland/d/a/k;->D1:Z

    goto :goto_14

    .line 219
    :cond_3c
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->d()V

    :cond_3d
    :goto_14
    return v11

    .line 220
    :sswitch_12
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_3e

    goto :goto_15

    .line 221
    :cond_3e
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_3f

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/k;->F1()Z

    goto :goto_15

    .line 223
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/k;->F1()Z

    :goto_15
    return v11

    .line 224
    :sswitch_13
    iget-boolean v3, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v3, :cond_40

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->I()V

    goto :goto_18

    .line 226
    :cond_40
    iget-boolean v3, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v3, :cond_43

    .line 227
    iget-boolean v3, v0, Lcom/neverland/d/a/k;->D1:Z

    if-nez v3, :cond_42

    const/16 v3, 0xe97

    if-ne v2, v3, :cond_41

    goto :goto_16

    :cond_41
    const v2, 0x368f3a

    const/4 v8, 0x0

    goto :goto_17

    :cond_42
    :goto_16
    const v2, 0x368f3a

    const/4 v8, 0x1

    .line 228
    :goto_17
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v3, 0x68ac462

    .line 229
    invoke-virtual {v2, v3}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    invoke-virtual {v0, v8, v1, v2}, Lcom/neverland/d/a/d;->H0(ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    :cond_43
    :goto_18
    return v11

    .line 231
    :sswitch_14
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_44

    const/4 v2, 0x0

    .line 232
    invoke-virtual {v0, v2}, Lcom/neverland/d/a/d;->f1(Z)V

    goto :goto_19

    .line 233
    :cond_44
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_45

    .line 234
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/d;->f1(Z)V

    goto :goto_19

    .line 235
    :cond_45
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/d;->f1(Z)V

    :goto_19
    return v11

    .line 236
    :sswitch_15
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    const-wide/16 v7, 0x4

    if-eqz v2, :cond_48

    .line 237
    iget v1, v0, Lcom/neverland/d/a/d;->o0:I

    if-lez v1, :cond_46

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/neverland/d/a/k;->L1()V

    .line 239
    :cond_46
    iput v4, v0, Lcom/neverland/d/a/d;->p0:I

    iput v4, v0, Lcom/neverland/d/a/d;->o0:I

    .line 240
    iget-object v1, v0, Lcom/neverland/d/a/d;->R:Lcom/neverland/engbook/util/z;

    iget-object v2, v1, Lcom/neverland/engbook/util/z;->b:[Lcom/neverland/engbook/util/q;

    iget v1, v1, Lcom/neverland/engbook/util/z;->c:I

    aget-object v1, v2, v1

    iget-wide v1, v1, Lcom/neverland/engbook/util/q;->e:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_47

    .line 241
    invoke-virtual {v0, v7, v8}, Lcom/neverland/d/a/d;->z(J)V

    .line 242
    :cond_47
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v2, v2, v17

    cmp-long v4, v2, v9

    if-eqz v4, :cond_4b

    iget v1, v1, Lcom/neverland/d/a/i0;->e:I

    if-nez v1, :cond_4b

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k;->D1(Z)V

    goto :goto_1a

    .line 244
    :cond_48
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_4b

    .line 245
    iput v4, v0, Lcom/neverland/d/a/d;->o0:I

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/neverland/d/a/k;->G1()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 247
    invoke-virtual {v0, v7, v8}, Lcom/neverland/d/a/d;->l1(J)V

    const/4 v1, -0x2

    .line 248
    iput v1, v0, Lcom/neverland/d/a/d;->o0:I

    .line 249
    :cond_49
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v17

    cmp-long v3, v1, v9

    if-eqz v3, :cond_4a

    .line 250
    iput-object v6, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    .line 251
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x30ff2b

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    .line 253
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v11, v1, Lcom/neverland/d/a/h0;->v:Z

    .line 254
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    goto :goto_1a

    .line 255
    :cond_4a
    iget v1, v0, Lcom/neverland/d/a/d;->o0:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_4b

    .line 256
    iget-object v1, v0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget v1, v1, Lcom/neverland/d/a/z;->h:I

    iput v1, v0, Lcom/neverland/d/a/d;->o0:I

    :cond_4b
    :goto_1a
    return v11

    .line 257
    :sswitch_16
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_4c

    goto :goto_1c

    .line 258
    :cond_4c
    iget-object v2, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v2, Lcom/neverland/d/a/i0;->k:J

    const-wide/high16 v4, 0x10000000000000L

    and-long/2addr v2, v4

    cmp-long v4, v2, v9

    if-eqz v4, :cond_4e

    const v2, 0x70df8f83

    .line 259
    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v2, "application/oebps-package+xml"

    .line 260
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 261
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, -0x66b75b5d

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 262
    iget-object v2, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    const-string v3, "/META-INF/container.xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v2, v1}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 264
    :cond_4d
    iget-object v2, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "../"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_1b
    invoke-virtual {v0, v1, v14}, Lcom/neverland/d/a/k;->E1(Ljava/lang/String;I)I

    :cond_4e
    :goto_1c
    return v11

    :sswitch_17
    move-object/from16 v2, v16

    .line 266
    iget-boolean v3, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v3, :cond_4f

    goto/16 :goto_1e

    .line 267
    :cond_4f
    iget-object v3, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v5, v3, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v5, v7

    cmp-long v3, v5, v9

    if-eqz v3, :cond_52

    const v3, 0x30ff2b

    .line 268
    invoke-virtual {v1, v3}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    iget-object v3, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v5, 0x368f3a

    invoke-virtual {v3, v5}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v3, :cond_52

    if-eqz v1, :cond_52

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 271
    iget-object v2, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    iget-object v5, v0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {v5, v2}, Lcom/neverland/engbook/level1/AlFiles;->getExternalFileNum(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_50

    .line 273
    iput-object v2, v0, Lcom/neverland/d/a/k;->w1:Ljava/lang/String;

    :cond_50
    const-string v2, "note"

    .line 274
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_52

    .line 275
    iget-object v2, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v2, v0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {v2, v1}, Lcom/neverland/engbook/level1/AlFiles;->getExternalFileNum(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_52

    const/4 v8, 0x0

    .line 277
    :goto_1d
    iget-object v2, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_52

    .line 278
    iget-object v2, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/d/a/k$c;

    iget-object v2, v2, Lcom/neverland/d/a/k$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 279
    iget-object v1, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/d/a/k$c;

    iput-boolean v11, v1, Lcom/neverland/d/a/k$c;->c:Z

    goto :goto_1e

    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_52
    :goto_1e
    return v11

    .line 280
    :sswitch_18
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_53

    .line 281
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v19

    cmp-long v3, v1, v9

    if-eqz v3, :cond_54

    .line 282
    iget v1, v0, Lcom/neverland/d/a/k;->a1:I

    const/4 v2, -0x2

    and-int/2addr v1, v2

    iput v1, v0, Lcom/neverland/d/a/k;->a1:I

    goto :goto_1f

    .line 283
    :cond_53
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_54

    .line 284
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v1, v1, v19

    cmp-long v3, v1, v9

    if-eqz v3, :cond_54

    .line 285
    iget v1, v0, Lcom/neverland/d/a/k;->a1:I

    or-int/2addr v1, v11

    iput v1, v0, Lcom/neverland/d/a/k;->a1:I

    :cond_54
    :goto_1f
    return v11

    .line 286
    :sswitch_19
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v1, :cond_5f

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/a;->r1()V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->B()V

    .line 289
    iget-object v1, v0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    invoke-virtual {v1}, Lcom/neverland/engbook/allstyles/c;->f()V

    .line 290
    iget-object v1, v0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    iput-boolean v11, v1, Lcom/neverland/engbook/allstyles/c;->c:Z

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->V0()V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->D()V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->Z0()V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->n1()V

    .line 295
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v2, v2, v17

    cmp-long v5, v2, v9

    if-eqz v5, :cond_55

    .line 296
    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->c()V

    .line 297
    :cond_55
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    and-long v12, v2, v7

    cmp-long v5, v12, v9

    if-eqz v5, :cond_56

    .line 298
    iget v1, v1, Lcom/neverland/d/a/i0;->c:I

    iput v1, v0, Lcom/neverland/d/a/d;->z:I

    :cond_56
    and-long/2addr v2, v7

    cmp-long v1, v2, v9

    if-eqz v1, :cond_5d

    .line 299
    iget-object v1, v0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    invoke-virtual {v1}, Lcom/neverland/d/a/z;->A()V

    .line 300
    iget-object v1, v0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, v0, Lcom/neverland/d/a/k;->f1:Ljava/lang/String;

    if-eqz v1, :cond_57

    .line 302
    iget-object v2, v0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/d/a/k$b;

    goto :goto_20

    :cond_57
    move-object v1, v6

    :goto_20
    const/4 v2, 0x0

    .line 303
    :goto_21
    iget-object v3, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 304
    iget-object v3, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/d/a/k$c;

    iget-object v3, v3, Lcom/neverland/d/a/k$c;->b:Ljava/lang/String;

    const-string v5, "image/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_58

    .line 305
    iget-object v3, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/d/a/k$c;

    iget-object v3, v3, Lcom/neverland/d/a/k$c;->a:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v5}, Lcom/neverland/d/a/k;->E1(Ljava/lang/String;I)I

    goto :goto_23

    .line 306
    :cond_58
    iget-object v3, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/d/a/k$c;

    iget-object v3, v3, Lcom/neverland/d/a/k$c;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/d/a/k$c;

    iget-boolean v5, v5, Lcom/neverland/d/a/k$c;->c:Z

    if-eqz v5, :cond_59

    const/4 v5, 0x5

    goto :goto_22

    :cond_59
    if-eqz v1, :cond_5a

    .line 307
    iget-object v5, v1, Lcom/neverland/d/a/k$b;->a:Ljava/lang/String;

    iget-object v12, v0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neverland/d/a/k$c;

    iget-object v12, v12, Lcom/neverland/d/a/k$c;->a:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5a

    const/16 v5, 0xa

    goto :goto_22

    :cond_5a
    const/4 v5, 0x0

    .line 308
    :goto_22
    invoke-virtual {v0, v3, v5}, Lcom/neverland/d/a/k;->E1(Ljava/lang/String;I)I

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 309
    :cond_5b
    iget-object v1, v0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 310
    iget-object v2, v0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/d/a/k$b;

    .line 311
    iput-object v6, v0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 312
    iget-object v2, v1, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 313
    iget-object v1, v1, Lcom/neverland/d/a/k$b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    :cond_5c
    const/4 v1, 0x0

    .line 314
    iput-boolean v1, v0, Lcom/neverland/d/a/k;->x1:Z

    iput-boolean v1, v0, Lcom/neverland/d/a/k;->v1:Z

    iput-boolean v1, v0, Lcom/neverland/d/a/k;->t1:Z

    .line 315
    iget-object v1, v0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget-boolean v1, v1, Lcom/neverland/d/a/z;->c:Z

    if-eqz v1, :cond_5d

    .line 316
    iget-boolean v1, v0, Lcom/neverland/d/a/k;->n1:Z

    if-eqz v1, :cond_5d

    .line 317
    iget-object v1, v0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {v1}, Lcom/neverland/engbook/level1/AlFiles;->needUnpackData1()V

    .line 318
    :cond_5d
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    const-wide v3, 0xf0040000000000L

    and-long/2addr v1, v3

    cmp-long v3, v1, v9

    if-eqz v3, :cond_5e

    .line 319
    invoke-virtual {v0, v7, v8}, Lcom/neverland/d/a/d;->h1(J)V

    .line 320
    :cond_5e
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    const-wide v4, -0xf0040000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    const v2, 0xfffff

    .line 321
    iput v2, v0, Lcom/neverland/d/a/a;->H0:I

    .line 322
    iput-object v6, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    .line 323
    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->d()V

    goto/16 :goto_24

    .line 324
    :cond_5f
    iget-object v1, v0, Lcom/neverland/d/a/d;->R:Lcom/neverland/engbook/util/z;

    invoke-virtual {v1}, Lcom/neverland/engbook/util/z;->b()V

    .line 325
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, -0x7036ad4f

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_60

    const/16 v2, 0xa

    .line 326
    invoke-static {v1, v2}, Lcom/neverland/engbook/util/f0;->g(Ljava/lang/StringBuilder;I)I

    move-result v1

    iput v1, v0, Lcom/neverland/d/a/a;->H0:I

    .line 327
    :cond_60
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const/16 v2, 0xd1b

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neverland/d/b/a;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    .line 329
    :cond_61
    iget-object v1, v0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x5f6d198

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_68

    const/16 v2, 0xa

    .line 330
    invoke-static {v1, v2}, Lcom/neverland/engbook/util/f0;->g(Ljava/lang/StringBuilder;I)I

    move-result v1

    if-eq v1, v11, :cond_67

    if-eq v1, v14, :cond_66

    if-eq v1, v5, :cond_65

    const/4 v3, 0x4

    if-eq v1, v3, :cond_64

    const/4 v3, 0x5

    if-eq v1, v3, :cond_63

    if-eq v1, v2, :cond_62

    goto/16 :goto_24

    .line 331
    :cond_62
    iget-object v1, v0, Lcom/neverland/d/a/k;->h1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v1, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    iput-object v1, v0, Lcom/neverland/d/a/k;->e1:Ljava/lang/String;

    .line 333
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    or-long v2, v2, v17

    iput-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    .line 334
    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->d()V

    goto :goto_24

    :cond_63
    const-wide v1, 0x40000000000L

    .line 335
    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/d;->k1(J)V

    .line 336
    invoke-virtual {v0, v7, v8}, Lcom/neverland/d/a/d;->h1(J)V

    goto :goto_24

    .line 337
    :cond_64
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->b()V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/d;->t0()J

    move-result-wide v1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/neverland/d/a/d;->t(JJ)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/d/a/k;->F1()Z

    .line 340
    invoke-virtual {v0, v12, v13}, Lcom/neverland/d/a/d;->u(J)V

    .line 341
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->e()V

    goto :goto_24

    .line 342
    :cond_65
    iget-object v1, v0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    iput-object v1, v0, Lcom/neverland/d/a/k;->e1:Ljava/lang/String;

    .line 343
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    or-long v2, v2, v19

    iput-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    goto :goto_24

    .line 344
    :cond_66
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    or-long/2addr v2, v7

    iput-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    .line 345
    iget v2, v1, Lcom/neverland/d/a/i0;->b:I

    iput v2, v0, Lcom/neverland/d/a/d;->y:I

    .line 346
    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->b()V

    const-wide v1, 0x100000000L

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/d;->g1(J)V

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v0, v14, v1}, Lcom/neverland/d/a/d;->g(CZ)V

    const/16 v2, 0x2a

    .line 349
    invoke-virtual {v0, v2, v1}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 350
    invoke-virtual {v0, v5, v1}, Lcom/neverland/d/a/d;->g(CZ)V

    const-wide v1, 0x100000000L

    .line 351
    invoke-virtual {v0, v1, v2}, Lcom/neverland/d/a/d;->u(J)V

    .line 352
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    invoke-virtual {v1}, Lcom/neverland/d/a/i0;->e()V

    goto :goto_24

    .line 353
    :cond_67
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    const-wide/high16 v4, 0x10000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/d/a/i0;->k:J

    :cond_68
    :goto_24
    return v11

    .line 354
    :sswitch_1a
    iget-boolean v3, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v3, :cond_69

    .line 355
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_6d

    const/4 v1, 0x0

    .line 356
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k;->D1(Z)V

    goto :goto_28

    .line 357
    :cond_69
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_6d

    .line 358
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v3, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v3, v7

    cmp-long v1, v3, v9

    if-eqz v1, :cond_6d

    .line 359
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    const v3, -0x602d6ca8

    if-ne v2, v3, :cond_6a

    const/4 v3, 0x1

    goto :goto_25

    :cond_6a
    const/4 v3, 0x0

    :goto_25
    iput-boolean v3, v1, Lcom/neverland/d/a/h0;->g:Z

    const v3, 0x6942258

    if-ne v2, v3, :cond_6b

    const/4 v3, 0x1

    goto :goto_26

    :cond_6b
    const/4 v3, 0x0

    .line 360
    :goto_26
    iput-boolean v3, v1, Lcom/neverland/d/a/h0;->b:Z

    const v3, 0x3d4e802c

    if-ne v2, v3, :cond_6c

    const/4 v8, 0x1

    goto :goto_27

    :cond_6c
    const/4 v8, 0x0

    .line 361
    :goto_27
    iput-boolean v8, v1, Lcom/neverland/d/a/h0;->i:Z

    .line 362
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    :cond_6d
    :goto_28
    return v11

    .line 363
    :sswitch_1b
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_6e

    .line 364
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_6f

    const/4 v1, 0x0

    .line 365
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k;->D1(Z)V

    goto :goto_29

    .line 366
    :cond_6e
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_6f

    .line 367
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_6f

    .line 368
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v11, v1, Lcom/neverland/d/a/h0;->s:Z

    .line 369
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    :cond_6f
    :goto_29
    return v11

    .line 370
    :sswitch_1c
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_70

    .line 371
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_71

    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k;->D1(Z)V

    goto :goto_2a

    .line 373
    :cond_70
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_71

    .line 374
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_71

    .line 375
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v11, v1, Lcom/neverland/d/a/h0;->u:Z

    .line 376
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    :cond_71
    :goto_2a
    return v11

    .line 377
    :sswitch_1d
    iget-boolean v2, v1, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v2, :cond_72

    .line 378
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_73

    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k;->D1(Z)V

    goto :goto_2b

    .line 380
    :cond_72
    iget-boolean v1, v1, Lcom/neverland/d/a/k0;->c:Z

    if-nez v1, :cond_73

    .line 381
    iget-object v1, v0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_73

    .line 382
    iget-object v1, v0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    iput-boolean v11, v1, Lcom/neverland/d/a/h0;->f:Z

    .line 383
    invoke-virtual {v0, v11}, Lcom/neverland/d/a/k;->D1(Z)V

    :cond_73
    :goto_2b
    return v11

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f55aad4 -> :sswitch_1d
        -0x66ca7c04 -> :sswitch_1c
        -0x60775357 -> :sswitch_1b
        -0x602d6ca8 -> :sswitch_1a
        -0x4dd278e3 -> :sswitch_19
        -0x3ebcbaa7 -> :sswitch_18
        -0x3724c0b5 -> :sswitch_17
        -0x9e9caa2 -> :sswitch_16
        0x61 -> :sswitch_15
        0xd7d -> :sswitch_14
        0xddd -> :sswitch_13
        0xe97 -> :sswitch_13
        0x197c3 -> :sswitch_12
        0x1a923 -> :sswitch_11
        0x1be64 -> :sswitch_10
        0x2e39a2 -> :sswitch_f
        0x2eefae -> :sswitch_e
        0x30cde0 -> :sswitch_d
        0x3107ab -> :sswitch_c
        0x317b13 -> :sswitch_b
        0x32affa -> :sswitch_a
        0x331605 -> :sswitch_9
        0x36452d -> :sswitch_8
        0x58cc538 -> :sswitch_7
        0x5e23afc -> :sswitch_6
        0x5faa95b -> :sswitch_12
        0x6891063 -> :sswitch_5
        0x6942258 -> :sswitch_1a
        0x38b73479 -> :sswitch_4
        0x3d4e802c -> :sswitch_1a
        0x756f7ee5 -> :sswitch_3
        0x7d7913b1 -> :sswitch_2
        0x7db7ea4d -> :sswitch_1
        0x7e2300a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xcc9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public w1(I)Z
    .locals 0

    sparse-switch p1, :sswitch_data_0

    .line 1
    invoke-super {p0, p1}, Lcom/neverland/d/a/a;->w1(I)Z

    move-result p1

    return p1

    :sswitch_0
    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7036ad4f -> :sswitch_0
        -0x66b75b5d -> :sswitch_0
        -0x3da724b7 -> :sswitch_0
        -0x3b32222b -> :sswitch_0
        -0x373272cd -> :sswitch_0
        0xd1b -> :sswitch_0
        0x1b899 -> :sswitch_0
        0x1c148 -> :sswitch_0
        0x33aff2 -> :sswitch_0
        0x6942258 -> :sswitch_0
        0x2ed4600e -> :sswitch_0
        0x38b73479 -> :sswitch_0
        0x40ae9ba6 -> :sswitch_0
        0x70df8f83 -> :sswitch_0
    .end sparse-switch
.end method
