.class public Lcom/neverland/d/a/o;
.super Lcom/neverland/d/a/d;
.source "AlFormatMD.java"


# instance fields
.field private G0:Lcom/neverland/engbook/util/q;

.field private H0:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/neverland/d/a/d;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static r1(Lcom/neverland/engbook/level1/AlFiles;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, ".md"

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private t1(I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    const-string v2, "["

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 2
    iget-object v4, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    const-string v5, "]("

    invoke-virtual {v4, v5, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 3
    iget-object v5, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x2

    const-string v7, ")"

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 4
    iget-object v7, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    add-int/2addr v0, v8

    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v5, v3, :cond_3

    if-eq v0, v3, :cond_0

    if-le v0, v5, :cond_3

    :cond_0
    const/4 v0, 0x2

    add-int/2addr p1, v0

    if-ne p1, v4, :cond_1

    const-string p1, "<image>"

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v6, 0x4

    .line 8
    invoke-virtual {p0, v6, v7}, Lcom/neverland/d/a/d;->l1(J)V

    .line 9
    invoke-virtual {p0, v8, v3}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 10
    invoke-virtual {p0, v1, v3}, Lcom/neverland/d/a/d;->m(Ljava/lang/String;Z)V

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p0, v0, v3}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 12
    invoke-virtual {p0, p1, v3}, Lcom/neverland/d/a/d;->m(Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {p0, v6, v7}, Lcom/neverland/d/a/d;->z(J)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 15
    invoke-virtual {p0, v1, v3}, Lcom/neverland/d/a/d;->m(Ljava/lang/String;Z)V

    const/4 p1, 0x3

    .line 16
    invoke-virtual {p0, p1, v3}, Lcom/neverland/d/a/d;->g(CZ)V

    :goto_1
    add-int/2addr v5, v8

    return v5

    :cond_3
    return v1
.end method

.method private u1(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    const-string v2, "]("

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    .line 2
    iget-object v4, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x2

    const-string v6, ")"

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 3
    iget-object v6, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v6, v7, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v4, v2, :cond_3

    if-eq v6, v2, :cond_0

    if-le v6, v4, :cond_3

    :cond_0
    if-ne v1, v0, :cond_1

    const-string p1, "<link>"

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    const-wide/16 v5, 0x4

    .line 7
    invoke-virtual {p0, v5, v6}, Lcom/neverland/d/a/d;->l1(J)V

    .line 8
    invoke-virtual {p0, v2, v3}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 9
    invoke-virtual {p0, v0, v3}, Lcom/neverland/d/a/d;->m(Ljava/lang/String;Z)V

    const/4 v0, 0x4

    .line 10
    invoke-virtual {p0, v0, v3}, Lcom/neverland/d/a/d;->g(CZ)V

    .line 11
    invoke-virtual {p0, p1, v3}, Lcom/neverland/d/a/d;->m(Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {p0, v5, v6}, Lcom/neverland/d/a/d;->z(J)V

    :cond_2
    add-int/2addr v4, v2

    return v4

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/neverland/d/a/o;->J(CZ)V

    return v1
.end method

.method private v1()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/neverland/d/a/d;->V0()V

    .line 2
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 3
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    const-string v1, "```"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "~~~"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x23

    if-ge v1, v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v4, 0x1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/neverland/d/a/d;->U0()V

    .line 9
    invoke-virtual {p0, v4, v5}, Lcom/neverland/d/a/d;->l1(J)V

    :cond_4
    move v2, v1

    .line 10
    :goto_2
    iget-object v6, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 11
    iget-object v6, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x21

    if-eq v6, v7, :cond_9

    const/16 v8, 0x5b

    if-eq v6, v8, :cond_8

    const/16 v8, 0x5c

    if-eq v6, v8, :cond_5

    .line 12
    invoke-virtual {p0, v6, v0}, Lcom/neverland/d/a/o;->J(CZ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v2, 0x1

    .line 13
    iget-object v9, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 14
    iget-object v9, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-eq v9, v7, :cond_6

    if-eq v9, v3, :cond_6

    const/16 v7, 0x3c

    if-eq v9, v7, :cond_6

    const/16 v7, 0x3e

    if-eq v9, v7, :cond_6

    const/16 v7, 0x2d

    if-eq v9, v7, :cond_6

    const/16 v7, 0x2e

    if-eq v9, v7, :cond_6

    const/16 v7, 0x5f

    if-eq v9, v7, :cond_6

    const/16 v7, 0x60

    if-eq v9, v7, :cond_6

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    .line 15
    invoke-virtual {p0, v6, v0}, Lcom/neverland/d/a/o;->J(CZ)V

    goto :goto_3

    .line 16
    :cond_6
    :pswitch_0
    invoke-virtual {p0, v9, v0}, Lcom/neverland/d/a/o;->J(CZ)V

    move v2, v8

    goto :goto_3

    .line 17
    :cond_7
    invoke-virtual {p0, v6, v0}, Lcom/neverland/d/a/o;->J(CZ)V

    goto :goto_3

    .line 18
    :cond_8
    invoke-direct {p0, v2}, Lcom/neverland/d/a/o;->u1(I)I

    move-result v2

    goto :goto_2

    .line 19
    :cond_9
    invoke-direct {p0, v2}, Lcom/neverland/d/a/o;->t1(I)I

    move-result v2

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    .line 20
    invoke-virtual {p0, v4, v5}, Lcom/neverland/d/a/d;->z(J)V

    .line 21
    :cond_b
    iget-object v1, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget v2, v1, Lcom/neverland/d/a/i0;->b:I

    iput v2, v1, Lcom/neverland/d/a/i0;->c:I

    .line 22
    iget-object v1, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public I0(Lcom/neverland/engbook/forpublic/a;Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/util/AlPreferenceOptions;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p1, Lcom/neverland/engbook/forpublic/a;->formatOptionsShift:J

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/neverland/d/a/d;->I0(Lcom/neverland/engbook/forpublic/a;Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/util/AlPreferenceOptions;)V

    const-string p1, "MD"

    .line 3
    iput-object p1, p0, Lcom/neverland/d/a/d;->g0:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/neverland/d/a/d;->g:Z

    .line 5
    iput-boolean p1, p0, Lcom/neverland/d/a/d;->i:Z

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/neverland/d/a/d;->h:Z

    .line 7
    iput-boolean p1, p0, Lcom/neverland/d/a/d;->Q:Z

    const p1, 0xfde9

    .line 8
    invoke-virtual {p0, p1}, Lcom/neverland/d/a/d;->d1(I)V

    .line 9
    iget-object p1, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iput p2, p1, Lcom/neverland/d/a/i0;->a:I

    .line 10
    iget-object p1, p0, Lcom/neverland/d/a/d;->R:Lcom/neverland/engbook/util/z;

    iget-object p1, p1, Lcom/neverland/engbook/util/z;->b:[Lcom/neverland/engbook/util/q;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/neverland/d/a/o;->G0:Lcom/neverland/engbook/util/q;

    .line 11
    iget-object p1, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {p1}, Lcom/neverland/engbook/level1/AlFiles;->getSize()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/neverland/d/a/o;->s1(II)V

    .line 12
    invoke-virtual {p0}, Lcom/neverland/d/a/d;->V0()V

    return-void
.end method

.method protected J(CZ)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/neverland/d/a/d;->X:Lcom/neverland/d/a/y;

    iget v0, p2, Lcom/neverland/d/a/y;->c:I

    const/4 v1, 0x0

    const/16 v2, 0xa0

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-lez v0, :cond_3

    const/16 v0, 0xad

    if-ne p1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/neverland/d/a/d;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/neverland/d/a/d;->e:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget v5, v0, Lcom/neverland/d/a/z;->h:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/neverland/d/a/z;->h:I

    .line 4
    invoke-virtual {p2, p1}, Lcom/neverland/d/a/y;->a(C)V

    .line 5
    iget-object p2, p0, Lcom/neverland/d/a/d;->X:Lcom/neverland/d/a/y;

    iget-object v0, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget v0, v0, Lcom/neverland/d/a/i0;->b:I

    iput v0, p2, Lcom/neverland/d/a/y;->e:I

    .line 6
    iget-boolean v0, p2, Lcom/neverland/d/a/y;->n:Z

    if-nez v0, :cond_1

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p2, Lcom/neverland/d/a/y;->n:Z

    .line 7
    iget p2, p2, Lcom/neverland/d/a/y;->c:I

    const/16 v0, 0x4000

    if-le p2, v0, :cond_5

    .line 8
    invoke-static {p1}, Lcom/neverland/d/b/a;->I(C)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-boolean p2, p1, Lcom/neverland/d/a/i0;->i:Z

    if-nez p2, :cond_5

    iget p1, p1, Lcom/neverland/d/a/i0;->a:I

    if-nez p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/neverland/d/a/d;->V0()V

    goto :goto_0

    :cond_3
    if-eq p1, v3, :cond_5

    .line 10
    iget-object v0, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget v0, v0, Lcom/neverland/d/a/i0;->c:I

    iput v0, p2, Lcom/neverland/d/a/y;->e:I

    iput v0, p2, Lcom/neverland/d/a/y;->d:I

    .line 11
    iget-object v0, p0, Lcom/neverland/d/a/o;->G0:Lcom/neverland/engbook/util/q;

    iget-wide v5, v0, Lcom/neverland/engbook/util/q;->e:J

    iput-wide v5, p2, Lcom/neverland/d/a/y;->g:J

    .line 12
    iget-wide v5, v0, Lcom/neverland/engbook/util/q;->f:J

    iput-wide v5, p2, Lcom/neverland/d/a/y;->h:J

    .line 13
    iget-wide v5, v0, Lcom/neverland/engbook/util/q;->g:J

    iput-wide v5, p2, Lcom/neverland/d/a/y;->i:J

    .line 14
    iget-wide v5, v0, Lcom/neverland/engbook/util/q;->h:J

    iput-wide v5, p2, Lcom/neverland/d/a/y;->j:J

    .line 15
    iget-object v0, p0, Lcom/neverland/d/a/d;->D:Lcom/neverland/d/a/z;

    iget v3, v0, Lcom/neverland/d/a/z;->h:I

    iput v3, p2, Lcom/neverland/d/a/y;->f:I

    if-eq p1, v2, :cond_4

    const/4 v1, 0x1

    .line 16
    :cond_4
    iput-boolean v1, p2, Lcom/neverland/d/a/y;->n:Z

    add-int/2addr v3, v4

    .line 17
    iput v3, v0, Lcom/neverland/d/a/z;->h:I

    .line 18
    invoke-virtual {p2, p1}, Lcom/neverland/d/a/y;->a(C)V

    :cond_5
    :goto_0
    return-void
.end method

.method public T0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    const/4 v1, 0x0

    iput v1, v0, Lcom/neverland/d/a/i0;->a:I

    .line 2
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

    invoke-virtual {p0, v0, v1}, Lcom/neverland/d/a/o;->s1(II)V

    return-void
.end method

.method protected s1(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_f

    add-int/lit16 v2, p1, 0x4000

    if-le v2, p2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    int-to-long v3, p1

    iget-object v5, p0, Lcom/neverland/d/a/d;->i0:[B

    sub-int v6, p2, p1

    add-int/lit8 v7, v6, 0x4

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/neverland/engbook/level1/AlFiles;->getByteBuffer(J[BI)I

    move-result v2

    if-le v2, v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v2

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    int-to-long v3, p1

    iget-object v5, p0, Lcom/neverland/d/a/d;->i0:[B

    const/16 v6, 0x4004

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/neverland/engbook/level1/AlFiles;->getByteBuffer(J[BI)I

    move-result v2

    add-int/lit8 v6, v2, -0x4

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_e

    .line 4
    iget-object v3, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    add-int v4, p1, v2

    iput v4, v3, Lcom/neverland/d/a/i0;->b:I

    .line 5
    iget-object v3, p0, Lcom/neverland/d/a/d;->i0:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    int-to-char v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    and-int/lit16 v5, v2, 0x80

    const/16 v7, 0x3f

    const/4 v8, 0x1

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_3

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    int-to-char v2, v2

    add-int/lit8 v5, v4, 0x1

    .line 6
    aget-byte v3, v3, v4

    int-to-char v3, v3

    and-int/2addr v3, v7

    int-to-char v3, v3

    :goto_3
    add-int/2addr v2, v3

    int-to-char v2, v2

    move v4, v5

    goto :goto_5

    :cond_3
    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_4

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    int-to-char v2, v2

    add-int/lit8 v5, v4, 0x1

    .line 7
    aget-byte v4, v3, v4

    int-to-char v4, v4

    and-int/2addr v4, v7

    int-to-char v4, v4

    add-int/2addr v2, v4

    int-to-char v2, v2

    shl-int/lit8 v2, v2, 0x6

    int-to-char v2, v2

    add-int/lit8 v4, v5, 0x1

    .line 8
    aget-byte v3, v3, v5

    int-to-char v3, v3

    and-int/2addr v3, v7

    int-to-char v3, v3

    add-int/2addr v2, v3

    int-to-char v2, v2

    goto :goto_5

    :cond_4
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_5

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x6

    int-to-char v2, v2

    add-int/lit8 v5, v4, 0x1

    .line 9
    aget-byte v4, v3, v4

    int-to-char v4, v4

    and-int/2addr v4, v7

    int-to-char v4, v4

    add-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v4, v5, 0x1

    .line 10
    aget-byte v5, v3, v5

    int-to-char v5, v5

    and-int/2addr v5, v7

    int-to-char v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v5, v4, 0x1

    .line 11
    aget-byte v3, v3, v4

    int-to-char v3, v3

    and-int/2addr v3, v7

    int-to-char v3, v3

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    sub-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 12
    invoke-virtual {p0, v3, v8}, Lcom/neverland/d/a/o;->J(CZ)V

    and-int/lit16 v2, v2, 0x3ff

    const v3, 0xdc00

    goto :goto_3

    :cond_5
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_6

    add-int/lit8 v4, v4, 0x4

    goto :goto_4

    :cond_6
    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    add-int/lit8 v4, v4, 0x5

    :cond_7
    :goto_4
    const/16 v2, 0x3f

    :goto_5
    const v3, 0xe000

    if-lt v2, v3, :cond_8

    const v3, 0xf7ff

    if-gt v2, v3, :cond_8

    :goto_6
    move v2, v4

    goto/16 :goto_2

    :cond_8
    const/16 v3, 0xa

    const/16 v5, 0x20

    if-ge v2, v5, :cond_d

    const/16 v7, 0x9

    if-eq v2, v7, :cond_c

    if-eq v2, v3, :cond_9

    goto :goto_8

    :cond_9
    if-ne v0, v3, :cond_b

    .line 13
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 14
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 15
    :cond_a
    invoke-direct {p0}, Lcom/neverland/d/a/o;->v1()V

    goto :goto_7

    .line 16
    :cond_b
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    const/16 v0, 0xa

    goto :goto_6

    .line 17
    :cond_c
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 18
    :cond_d
    iget-object v0, p0, Lcom/neverland/d/a/o;->H0:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    move v0, v2

    goto :goto_6

    :cond_e
    add-int/2addr p1, v2

    goto/16 :goto_0

    .line 19
    :cond_f
    invoke-direct {p0}, Lcom/neverland/d/a/o;->v1()V

    return-void
.end method
