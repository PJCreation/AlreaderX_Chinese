.class public Lcom/neverland/d/a/b0;
.super Lcom/neverland/d/a/k;
.source "AlScanEPUB.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/neverland/d/a/k;-><init>()V

    .line 2
    new-instance v0, Lcom/neverland/engbook/allstyles/b;

    invoke-direct {v0}, Lcom/neverland/engbook/allstyles/b;-><init>()V

    iput-object v0, p0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    return-void
.end method


# virtual methods
.method public I0(Lcom/neverland/engbook/forpublic/a;Lcom/neverland/engbook/level1/AlFiles;Lcom/neverland/engbook/util/AlPreferenceOptions;)V
    .locals 6

    const-wide/16 v0, 0x10

    .line 1
    iput-wide v0, p1, Lcom/neverland/engbook/forpublic/a;->formatOptionsShift:J

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/neverland/d/a/d;->J0(Lcom/neverland/engbook/forpublic/a;Lcom/neverland/engbook/level1/AlFiles;)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/neverland/d/a/a;->L0:Z

    const-string p3, "application/epub"

    .line 4
    iput-object p3, p0, Lcom/neverland/d/a/d;->h0:Ljava/lang/String;

    const-string p3, "EPUB"

    .line 5
    iput-object p3, p0, Lcom/neverland/d/a/d;->g0:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/neverland/d/a/d;->g:Z

    .line 7
    iput-boolean p2, p0, Lcom/neverland/d/a/d;->Q:Z

    const p3, 0xfde9

    .line 8
    invoke-virtual {p0, p3}, Lcom/neverland/d/a/d;->d1(I)V

    const/4 p3, 0x0

    .line 9
    iput-boolean p3, p0, Lcom/neverland/d/a/a;->R0:Z

    .line 10
    iget-wide v0, p1, Lcom/neverland/engbook/forpublic/a;->formatOptions:J

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/neverland/d/a/a;->Q0:Z

    .line 11
    iget-object p1, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    const/16 v0, 0x12

    iput v0, p1, Lcom/neverland/d/a/i0;->a:I

    .line 12
    invoke-virtual {p1}, Lcom/neverland/d/a/i0;->d()V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    const v0, 0xfffff

    .line 14
    iput v0, p0, Lcom/neverland/d/a/a;->H0:I

    .line 15
    iput p3, p0, Lcom/neverland/d/a/k;->a1:I

    .line 16
    iput-object p1, p0, Lcom/neverland/d/a/k;->b1:Ljava/lang/String;

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/neverland/d/a/k;->c1:I

    .line 18
    iget-object v0, p0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    const v2, 0xfde9

    sget-object v3, Lcom/neverland/engbook/allstyles/AlCSSHtml$CSSHTML_SET;->epub:Lcom/neverland/engbook/allstyles/AlCSSHtml$CSSHTML_SET;

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/neverland/engbook/allstyles/c;->h(Lcom/neverland/d/a/d;ILcom/neverland/engbook/allstyles/AlCSSHtml$CSSHTML_SET;J)V

    .line 19
    iget-object v0, p0, Lcom/neverland/d/a/a;->M0:Lcom/neverland/engbook/allstyles/c;

    iput-boolean p2, v0, Lcom/neverland/engbook/allstyles/c;->d:Z

    .line 20
    invoke-virtual {p0, p3, p1}, Lcom/neverland/d/a/a;->x1(II)V

    return-void
.end method

.method protected J(CZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-boolean v0, v0, Lcom/neverland/d/a/i0;->f:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/neverland/d/a/d;->Z:Lcom/neverland/d/a/h0;

    invoke-virtual {p2, p1}, Lcom/neverland/d/a/h0;->a(C)V

    :cond_0
    return-void
.end method

.method U0()V
    .locals 0

    return-void
.end method

.method V0()V
    .locals 0

    return-void
.end method

.method public X0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/d;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "\r"

    const-string v2, " "

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/d/a/d;->v:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "<p>"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/d/a/d;->v:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/neverland/d/a/b0;->Y0()V

    return-void
.end method

.method protected Y0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/neverland/d/a/k;->H1()V

    .line 2
    iget-object v0, p0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/neverland/d/a/k;->q1:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    iput-object v0, p0, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/neverland/d/a/k;->p1:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7
    iput-object v0, p0, Lcom/neverland/d/a/d;->S:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected t1()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    iget v1, v0, Lcom/neverland/d/a/k0;->a:I

    const v2, -0x4dd278e3

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x20000000000000L

    const/4 v8, 0x1

    if-eq v1, v2, :cond_5

    const v2, -0x3724c0b5

    if-eq v1, v2, :cond_2

    const v0, 0x7e2300a0

    if-eq v1, v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/neverland/d/a/a;->Q0:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    return v8

    .line 3
    :cond_2
    iget-boolean v1, v0, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v1, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    iget-object v1, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v1, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v6

    cmp-long v6, v1, v4

    if-eqz v6, :cond_4

    const v1, 0x30ff2b

    .line 5
    invoke-virtual {v0, v1}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/neverland/d/a/a;->J0:Lcom/neverland/d/a/k0;

    const v2, 0x368f3a

    invoke-virtual {v1, v2}, Lcom/neverland/d/a/k0;->l(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const-string v2, "cover"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/neverland/d/a/e;->W0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/neverland/engbook/level1/AlFiles;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/neverland/d/a/d;->x:Lcom/neverland/engbook/level1/AlFiles;

    invoke-virtual {v1, v0}, Lcom/neverland/engbook/level1/AlFiles;->getExternalFileNum(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 10
    iput-object v0, p0, Lcom/neverland/d/a/k;->w1:Ljava/lang/String;

    :cond_4
    :goto_0
    return v8

    .line 11
    :cond_5
    iget-boolean v0, v0, Lcom/neverland/d/a/k0;->b:Z

    if-eqz v0, :cond_a

    .line 12
    iget-object v0, p0, Lcom/neverland/d/a/d;->W:Lcom/neverland/d/a/i0;

    iget-wide v1, v0, Lcom/neverland/d/a/i0;->k:J

    and-long/2addr v1, v6

    cmp-long v6, v1, v4

    if-eqz v6, :cond_a

    .line 13
    iget v0, v0, Lcom/neverland/d/a/i0;->c:I

    iput v0, p0, Lcom/neverland/d/a/d;->z:I

    iput v0, p0, Lcom/neverland/d/a/a;->O0:I

    .line 14
    iget-boolean v0, p0, Lcom/neverland/d/a/a;->Q0:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 16
    iget-object v2, p0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/d/a/k$c;

    iget-object v2, v2, Lcom/neverland/d/a/k$c;->b:Ljava/lang/String;

    const-string v4, "image/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 17
    iget-object v2, p0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/d/a/k$c;

    iget-object v2, v2, Lcom/neverland/d/a/k$c;->a:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/neverland/d/a/k;->E1(Ljava/lang/String;I)I

    goto :goto_3

    .line 18
    :cond_6
    iget-object v2, p0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/d/a/k$c;

    iget-object v2, v2, Lcom/neverland/d/a/k$c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/neverland/d/a/k;->m1:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neverland/d/a/k$c;

    iget-boolean v4, v4, Lcom/neverland/d/a/k$c;->c:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x5

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v2, v4}, Lcom/neverland/d/a/k;->E1(Ljava/lang/String;I)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 20
    iget-object v1, p0, Lcom/neverland/d/a/k;->l1:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/d/a/k$b;

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 22
    iget-object v1, v0, Lcom/neverland/d/a/k$b;->b:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    iget-object v0, v0, Lcom/neverland/d/a/k$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/neverland/d/a/k;->y1:Ljava/lang/String;

    :cond_9
    return v8

    .line 24
    :cond_a
    :goto_4
    invoke-super {p0}, Lcom/neverland/d/a/k;->t1()Z

    move-result v0

    return v0
.end method

.method protected y1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/neverland/d/a/d;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/neverland/d/a/b0;->t1()Z

    return-void
.end method

.method protected z1(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
