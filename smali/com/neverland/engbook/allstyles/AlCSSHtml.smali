.class public Lcom/neverland/engbook/allstyles/AlCSSHtml;
.super Lcom/neverland/engbook/allstyles/c;
.source "AlCSSHtml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/engbook/allstyles/AlCSSHtml$CSSHTML_SET;
    }
.end annotation


# static fields
.field public static l:Ljava/lang/String; = "h1, title, .title, .title1, .title2, .book-title {@@title;}\r\nh2, .subtitle, .title3, .title4 {@@subtitle;}\r\nh3, h4, h5, h6 {@@subtitle;}\r\nq, blockquote, cite, .cite {@@cite;}\r\nq q, blockquote blockquote, cite cite, pre pre, tt tt, code code {margin-left:0; margin-right:0; font-size:100%;}\n\npre, tt {@@code; white-space:pre;}\r\ncode {@@code; white-space:pre;}\r\n.author, .text-author, .date {@@author;}\r\n.annotation {@@annotation;}\r\n.epigraph, .epigraf {@@epigraph;}\r\n.poem, .stanza, .v {@@poem;}\r\ntable, tr {text-align:justify;}\r\nth {text-align:center;}"

.field public static m:Ljava/lang/String; = "h1, title, .title, .title1, .title2, .book-title {@@title;}\r\nh2, .subtitle, .title3, .title4 {@@subtitle;}\r\nh3, h4, h5, h6 {@@subtitle;}\r\nq, blockquote, cite, .cite {@@cite;}\r\nq q, blockquote blockquote, cite cite, pre pre, tt tt, code code {margin-left:0; margin-right:0; font-size:100%;}\n\npre, tt {@@code; white-space:pre;}\r\ncode {@@code; white-space:pre;}\r\n.author, .text-author, .date {@@author;}\r\n.annotation {@@annotation;}\r\n.epigraph, .epigraf {@@epigraph;}\r\n.poem, .stanza, .v {@@poem;}\r\ntable, tr {text-align:justify;}\r\nth {text-align:center;}"

.field public static n:Ljava/lang/String; = "h1, title, .title, .title1, .title2, .book-title {@@title;}\r\nh2, .subtitle, .title3, .title4 {@@subtitle;}\r\nh3, h4, h5, h6 {@@subtitle;}\r\nq, blockquote, cite, .cite {@@cite;}\r\nq q, blockquote blockquote, cite cite, pre pre, tt tt, code code {margin-left:0; margin-right:0; font-size:100%;}\n\npre, tt {@@code; white-space:pre;}\r\ncode {@@code; white-space:pre;}\r\n.author, .text-author, .date {@@author;}\r\n.annotation {@@annotation;}\r\n.epigraph, .epigraf {@@epigraph;}\r\n.poem, .stanza, .v {@@poem;}\r\ntable, tr {text-align:justify;}\r\nth {text-align:center;}"

.field public static o:Ljava/lang/String; = "title, book-title {@@title;}\r\nsubtitle {@@subtitle;}\r\nh3, h4, h5, h6 {@@subtitle;}\r\ncite {@@cite;}\r\npre {@@code; white-space:pre;}\r\ncode {@@code; white-space:pre;}\r\nsubscription, author, text-author {@@author;}\r\nannotation {@@annotation;}\r\nepigraph {@@epigrap;h}\r\nstanza+stanza {margin-top:1em;}\r\nstanza {margin-top:0; white-space:pre; }\r\npoem {@@poem;}\r\ntable, tr {text-align:justify;}\r\nth {text-align:center;}\r\nimage {font-size:0.83rem; text-align:center; letter-spacing:1; margin-top:1%; margin-bottom:1%; text-indent:0;}\r\np image, v image {font-size:100%; text-align:justify; letter-spacing:0; text-indent:0; margin-top:0; margin-bottom:0;}\r\n"

.field public static p:Ljava/lang/String; = "title, book-title {@@title;}\r\nsubtitle {@@subtitle;}\r\ncite {@@cite;}\r\npre {@@code; white-space:pre;}\r\ncode {@@code; white-space:pre;}\r\ndate, author, text-author {@@author;}\r\nannotation {@@annotation;}\r\nepigraph {@@epigraph;}\r\npoem {@@poem;}\r\nstanza+stanza {margin-top:1em;}\r\nstanza {margin-top:0; white-space:pre; }\r\nv {font-size:100%; white-space:pre;}\r\ntable, tr {text-align:justify;}\r\nth {text-align:center;}\r\nsequence {@@sequence;}\r\ncite cite, title title, pre pre, author author, poem poem, stanza stanza {margin-left:0;margin-right:0;font-size:100%}image {font-size:0.83rem; text-align:center; letter-spacing:1; margin-top:1%; margin-bottom:1%; text-indent:0;}\r\np image, v image {font-size:100%; text-align:justify; letter-spacing:0; text-indent:0; margin-top:0; margin-bottom:0;}\r\n"


# instance fields
.field public final q:Lcom/neverland/engbook/allstyles/e;

.field final r:Lcom/neverland/engbook/allstyles/a;

.field private final s:Ljava/lang/StringBuilder;

.field private final t:Ljava/lang/StringBuilder;

.field private final u:[Lcom/neverland/engbook/allstyles/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/neverland/engbook/allstyles/c;-><init>()V

    .line 2
    new-instance v0, Lcom/neverland/engbook/allstyles/e;

    invoke-direct {v0}, Lcom/neverland/engbook/allstyles/e;-><init>()V

    iput-object v0, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    .line 3
    new-instance v0, Lcom/neverland/engbook/allstyles/a;

    invoke-direct {v0}, Lcom/neverland/engbook/allstyles/a;-><init>()V

    iput-object v0, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/neverland/engbook/allstyles/d;

    .line 6
    iput-object v0, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    return-void
.end method

.method private s(Ljava/lang/String;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x25

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 3
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neverland/engbook/util/f0;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x40233333    # 2.55f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private t(Ljava/lang/StringBuilder;)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x5

    const-wide/32 v6, 0xf000

    const/16 v8, 0xc

    const-wide/32 v9, 0xf00000

    const/4 v13, 0x1

    const-wide/16 v14, -0x1

    const/4 v2, 0x4

    const/16 v11, 0x23

    if-ne v3, v11, :cond_6

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v11, 0x10

    if-ne v3, v2, :cond_0

    .line 3
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/neverland/engbook/util/f0;->h(Ljava/lang/String;I)J

    move-result-wide v14

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 5
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/neverland/engbook/util/f0;->h(Ljava/lang/String;I)J

    move-result-wide v3

    cmp-long v1, v3, v14

    if-eqz v1, :cond_1

    const-wide/32 v5, 0xfff0

    and-long/2addr v3, v5

    shr-long v14, v3, v2

    goto/16 :goto_4

    :cond_1
    move-wide v14, v3

    goto/16 :goto_4

    .line 6
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_4

    .line 7
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/neverland/engbook/util/f0;->h(Ljava/lang/String;I)J

    move-result-wide v11

    cmp-long v1, v11, v14

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v14, v11

    goto/16 :goto_4

    .line 8
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_e

    .line 9
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/neverland/engbook/util/f0;->h(Ljava/lang/String;I)J

    move-result-wide v1

    cmp-long v3, v1, v14

    if-eqz v3, :cond_5

    const-wide v3, 0xf0000000L

    and-long/2addr v3, v1

    const/16 v5, 0x14

    shr-long/2addr v3, v5

    and-long/2addr v9, v1

    shr-long/2addr v9, v11

    or-long/2addr v3, v9

    and-long/2addr v1, v6

    shr-long/2addr v1, v8

    goto :goto_2

    :cond_5
    :goto_0
    move-wide v14, v1

    goto/16 :goto_4

    .line 10
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "rgb("

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "rgba("

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 12
    :cond_7
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0xffffff

    and-int/2addr v1, v3

    int-to-long v11, v1

    :goto_1
    and-long/2addr v9, v11

    shr-long v8, v9, v8

    and-long/2addr v6, v11

    shr-long v3, v6, v4

    or-long/2addr v3, v8

    const-wide/16 v5, 0xf0

    and-long/2addr v5, v11

    shr-long v1, v5, v2

    :goto_2
    or-long v14, v3, v1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x3

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x28

    if-ne v4, v6, :cond_9

    const/4 v5, 0x4

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "[ ,/]+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 14
    array-length v4, v1

    if-eq v4, v3, :cond_a

    array-length v3, v1

    if-ne v3, v2, :cond_e

    :cond_a
    const/4 v3, 0x0

    .line 15
    aget-object v3, v1, v3

    invoke-direct {v0, v3}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v14

    if-nez v5, :cond_b

    return-wide v3

    :cond_b
    const-wide/16 v5, 0xf0

    and-long/2addr v3, v5

    shl-long/2addr v3, v2

    .line 16
    aget-object v7, v1, v13

    invoke-direct {v0, v7}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v14

    if-nez v9, :cond_c

    return-wide v7

    :cond_c
    and-long/2addr v7, v5

    or-long/2addr v3, v7

    const/4 v7, 0x2

    .line 17
    aget-object v1, v1, v7

    invoke-direct {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v1, v7, v14

    if-nez v1, :cond_d

    return-wide v7

    :cond_d
    and-long/2addr v5, v7

    shr-long v1, v5, v2

    or-long/2addr v1, v3

    goto/16 :goto_0

    :catch_0
    :cond_e
    :goto_4
    return-wide v14
.end method


# virtual methods
.method public A(Lcom/neverland/engbook/allstyles/d;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 4
    :goto_0
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    mul-double v0, v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0xfe

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    move-wide v2, v4

    goto :goto_1

    :cond_3
    move-wide v2, v0

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide v4, 0xff00000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 6
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xff00000001L

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 7
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    return-void
.end method

.method protected B(Lcom/neverland/engbook/allstyles/d;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 4
    :goto_0
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    mul-double v0, v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0xfe

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    move-wide v2, v4

    goto :goto_1

    :cond_3
    move-wide v2, v0

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide v4, 0xff0000000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 6
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide v4, -0xff0000000001L

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 7
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    return-void
.end method

.method protected C(Lcom/neverland/engbook/allstyles/d;)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    if-ne v0, v4, :cond_2

    .line 3
    iget-wide v8, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    div-double/2addr v8, v6

    iput-wide v8, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 4
    iget-wide v8, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    div-double/2addr v8, v6

    iput-wide v8, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 5
    :cond_3
    :goto_0
    iget-wide v6, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-long v6, v6

    const-wide/16 v8, 0xfe

    cmp-long p1, v6, v2

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    cmp-long p1, v6, v8

    if-lez p1, :cond_5

    move-wide v2, v8

    goto :goto_1

    :cond_5
    move-wide v2, v6

    :goto_1
    const-wide/16 v6, -0x100

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_6

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    if-eq v0, v1, :cond_7

    const/4 p1, 0x5

    if-eq v0, p1, :cond_7

    goto :goto_2

    .line 6
    :cond_6
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide/16 v4, 0xff

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 7
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    and-long/2addr v0, v6

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 8
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    goto :goto_2

    .line 9
    :cond_7
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide/32 v4, 0xff0000

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 10
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    and-long/2addr v0, v6

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 11
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    :goto_2
    return-void
.end method

.method protected D(Lcom/neverland/engbook/allstyles/d;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    div-double/2addr v5, v7

    iput-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 4
    :goto_0
    iget-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    mul-double v5, v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-long v5, v5

    const-wide/16 v7, 0xfe

    cmp-long p1, v5, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, v5, v7

    if-lez p1, :cond_3

    move-wide v2, v7

    goto :goto_1

    :cond_3
    move-wide v2, v5

    :goto_1
    if-eq v0, v4, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    if-eq v0, v1, :cond_5

    const/4 p1, 0x5

    if-eq v0, p1, :cond_5

    goto :goto_2

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide/32 v4, 0xff00

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 6
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide/32 v4, -0xff01

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 7
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    goto :goto_2

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide v4, 0xff000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 9
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide v4, -0xff000001L

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    :goto_2
    return-void
.end method

.method protected E(Lcom/neverland/engbook/allstyles/d;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 4
    :goto_0
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    mul-double v0, v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0xfe

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    move-wide v2, v4

    goto :goto_1

    :cond_3
    move-wide v2, v0

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide v4, 0xff00000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 6
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide v4, -0xff00000001L

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 7
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->c:J

    return-void
.end method

.method public h(Lcom/neverland/d/a/d;ILcom/neverland/engbook/allstyles/AlCSSHtml$CSSHTML_SET;J)V
    .locals 9

    const-string v0, "UTF-8"

    .line 1
    iput-object p1, p0, Lcom/neverland/engbook/allstyles/c;->f:Lcom/neverland/d/a/d;

    .line 2
    iput p2, p0, Lcom/neverland/engbook/allstyles/c;->g:I

    .line 3
    new-instance p1, Lcom/neverland/engbook/allstyles/g;

    invoke-direct {p1, p0}, Lcom/neverland/engbook/allstyles/g;-><init>(Lcom/neverland/engbook/allstyles/c;)V

    const-string p2, "::default"

    .line 4
    iput-object p2, p1, Lcom/neverland/engbook/allstyles/g;->a:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p1, 0x40

    and-long/2addr p1, p4

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 6
    iget-wide p1, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v1, -0x41

    and-long/2addr p1, v1

    iput-wide p1, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    :cond_0
    const/4 v2, 0x0

    .line 7
    :try_start_0
    sget-object p1, Lcom/neverland/engbook/allstyles/h;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v6, 0xfde9

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->i(I[BIIILjava/lang/String;I)Lcom/neverland/engbook/allstyles/e;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 9
    :goto_0
    :try_start_1
    sget-object p1, Lcom/neverland/engbook/allstyles/h;->w:Ljava/lang/String;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/neverland/engbook/allstyles/h;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 10
    sget-object p1, Lcom/neverland/engbook/allstyles/h;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v6, 0xfde9

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->i(I[BIIILjava/lang/String;I)Lcom/neverland/engbook/allstyles/e;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 12
    :cond_1
    :goto_1
    sget-object p1, Lcom/neverland/engbook/allstyles/AlCSSHtml$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    const/4 p3, 0x3

    if-eq p1, p3, :cond_4

    const/4 p3, 0x4

    if-eq p1, p3, :cond_3

    const/4 p3, 0x5

    if-eq p1, p3, :cond_2

    goto/16 :goto_2

    .line 13
    :cond_2
    iput-boolean p2, p0, Lcom/neverland/engbook/allstyles/c;->a:Z

    const/4 v2, 0x0

    .line 14
    :try_start_2
    sget-object p1, Lcom/neverland/engbook/allstyles/AlCSSHtml;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v6, 0xfde9

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->i(I[BIIILjava/lang/String;I)Lcom/neverland/engbook/allstyles/e;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 16
    :try_start_3
    sget-object p1, Lcom/neverland/engbook/allstyles/AlCSSHtml;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xfde9

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->i(I[BIIILjava/lang/String;I)Lcom/neverland/engbook/allstyles/e;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 18
    :try_start_4
    sget-object p1, Lcom/neverland/engbook/allstyles/AlCSSHtml;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xfde9

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->i(I[BIIILjava/lang/String;I)Lcom/neverland/engbook/allstyles/e;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 20
    :try_start_5
    sget-object p1, Lcom/neverland/engbook/allstyles/AlCSSHtml;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xfde9

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->i(I[BIIILjava/lang/String;I)Lcom/neverland/engbook/allstyles/e;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 22
    :try_start_6
    sget-object p1, Lcom/neverland/engbook/allstyles/AlCSSHtml;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xfde9

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->i(I[BIIILjava/lang/String;I)Lcom/neverland/engbook/allstyles/e;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    :catch_6
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_2
    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/neverland/engbook/allstyles/c;->i:I

    .line 25
    iput-wide p4, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    .line 26
    iput-boolean p2, p0, Lcom/neverland/engbook/allstyles/c;->c:Z

    return-void
.end method

.method protected i(I[BIIILjava/lang/String;I)Lcom/neverland/engbook/allstyles/e;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    const/4 v5, 0x3

    new-array v6, v5, [C

    .line 1
    new-instance v7, Lcom/neverland/engbook/forpublic/h;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/neverland/engbook/forpublic/h;-><init>(I)V

    .line 2
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v9}, Lcom/neverland/engbook/allstyles/a;->c()V

    const/4 v9, -0x1

    move/from16 v11, p3

    if-ne v11, v9, :cond_0

    .line 3
    array-length v11, v2

    :cond_0
    move/from16 v12, p4

    .line 4
    :goto_0
    iget v13, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    const-wide/16 v16, -0x1

    if-ge v13, v11, :cond_48

    .line 5
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v13

    const v10, 0xfeff

    if-ne v13, v10, :cond_3

    :cond_1
    :goto_1
    move/from16 v8, p7

    move-object/from16 v21, v6

    :cond_2
    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_13

    :cond_3
    and-int/lit16 v10, v12, 0xf00

    const/16 v9, 0x22

    if-nez v10, :cond_43

    if-eq v13, v9, :cond_42

    const/16 v9, 0x2f

    const/4 v14, 0x1

    if-eq v13, v9, :cond_3e

    const/16 v9, 0x40

    const/4 v8, 0x4

    if-eq v13, v9, :cond_38

    const/16 v9, 0x7b

    const/16 v18, 0x5

    const/16 v15, 0x20

    if-eq v13, v9, :cond_34

    const/16 v9, 0x7d

    if-eq v13, v9, :cond_2e

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    packed-switch v13, :pswitch_data_2

    if-gt v13, v15, :cond_9

    and-int/lit16 v9, v12, 0xff

    if-eqz v9, :cond_8

    if-eq v9, v14, :cond_7

    if-eq v9, v5, :cond_6

    if-eq v9, v8, :cond_5

    const/16 v8, 0x64

    if-eq v9, v8, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v15}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_3

    .line 7
    :cond_5
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v15}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_3

    .line 8
    :cond_6
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v15}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_3

    .line 9
    :cond_7
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v10, v9, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/neverland/engbook/allstyles/a;->k:[C

    iget v9, v9, Lcom/neverland/engbook/allstyles/a;->a:I

    const/4 v13, 0x0

    invoke-static {v12, v13, v9}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v9}, Lcom/neverland/engbook/allstyles/a;->d()V

    const/4 v12, 0x4

    goto :goto_3

    .line 11
    :cond_8
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v15}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 12
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v15}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    .line 13
    :goto_3
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v8, v8, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v8, :cond_41

    goto :goto_5

    :cond_9
    and-int/lit16 v9, v12, 0xff

    if-eqz v9, :cond_e

    if-eq v9, v14, :cond_d

    if-eq v9, v5, :cond_c

    if-eq v9, v8, :cond_b

    const/16 v8, 0x64

    if-eq v9, v8, :cond_a

    goto :goto_4

    .line 14
    :cond_a
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 15
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v9, v8, Lcom/neverland/engbook/allstyles/a;->b:I

    mul-int/lit8 v9, v9, 0x1f

    invoke-static {v13}, Lcom/neverland/d/b/a;->U(C)C

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Lcom/neverland/engbook/allstyles/a;->b:I

    goto :goto_4

    .line 16
    :cond_b
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_4

    .line 17
    :cond_c
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_4

    .line 18
    :cond_d
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_4

    .line 19
    :cond_e
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 20
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    .line 21
    :goto_4
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v8, v8, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v8, :cond_1

    :goto_5
    goto/16 :goto_10

    .line 22
    :pswitch_0
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v9, v8, Lcom/neverland/engbook/allstyles/a;->e:I

    sub-int/2addr v9, v14

    iput v9, v8, Lcom/neverland/engbook/allstyles/a;->e:I

    if-gez v9, :cond_f

    const/4 v12, 0x5

    .line 23
    :cond_f
    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 24
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v9, v8, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v9, :cond_10

    const/4 v12, 0x6

    :cond_10
    and-int/lit16 v9, v12, 0xff

    if-nez v9, :cond_41

    .line 25
    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    goto/16 :goto_15

    .line 26
    :pswitch_1
    iget v9, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    add-int/lit8 v10, v11, -0x1

    if-ge v9, v10, :cond_1b

    const/4 v9, 0x7

    new-array v10, v9, [C

    .line 27
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v13

    const/16 v16, 0x0

    aput-char v13, v10, v16

    aput-char v16, v10, v14

    .line 28
    aget-char v17, v10, v16

    invoke-static/range {v17 .. v17}, Lcom/neverland/d/b/a;->D(C)Z

    move-result v16

    if-eqz v16, :cond_14

    const/4 v13, 0x1

    :goto_6
    if-ge v13, v9, :cond_12

    .line 29
    iget v9, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    .line 30
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v8

    .line 31
    invoke-static {v8}, Lcom/neverland/d/b/a;->D(C)Z

    move-result v16

    if-nez v16, :cond_11

    if-le v8, v15, :cond_12

    .line 32
    iput v9, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    goto :goto_7

    :cond_11
    add-int/lit8 v9, v13, 0x1

    .line 33
    aput-char v8, v10, v13

    const/4 v13, 0x0

    .line 34
    aput-char v13, v10, v9

    move v13, v9

    if-gt v8, v15, :cond_13

    :cond_12
    :goto_7
    const/4 v8, 0x0

    goto :goto_8

    :cond_13
    const/4 v8, 0x4

    const/4 v9, 0x7

    goto :goto_6

    .line 35
    :goto_8
    invoke-static {v10, v8, v13}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v9

    const/16 v8, 0x10

    invoke-static {v9, v8}, Lcom/neverland/engbook/util/f0;->f(Ljava/lang/String;I)I

    move-result v8

    int-to-char v13, v8

    :cond_14
    if-gt v13, v15, :cond_15

    goto/16 :goto_1

    :cond_15
    and-int/lit16 v8, v12, 0xff

    if-eqz v8, :cond_1a

    if-eq v8, v14, :cond_19

    if-eq v8, v5, :cond_18

    const/4 v9, 0x4

    if-eq v8, v9, :cond_17

    const/16 v9, 0x64

    if-eq v8, v9, :cond_16

    goto :goto_9

    .line 36
    :cond_16
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 37
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v9, v8, Lcom/neverland/engbook/allstyles/a;->b:I

    mul-int/lit8 v9, v9, 0x1f

    invoke-static {v13}, Lcom/neverland/d/b/a;->U(C)C

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Lcom/neverland/engbook/allstyles/a;->b:I

    goto :goto_9

    .line 38
    :cond_17
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_9

    .line 39
    :cond_18
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_9

    .line 40
    :cond_19
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_9

    .line 41
    :cond_1a
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 42
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    .line 43
    :goto_9
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v8, v8, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v8, :cond_41

    const/4 v12, 0x6

    goto/16 :goto_15

    :cond_1b
    const/4 v1, 0x0

    return-object v1

    .line 44
    :pswitch_2
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v9, v8, Lcom/neverland/engbook/allstyles/a;->e:I

    add-int/2addr v9, v14

    iput v9, v8, Lcom/neverland/engbook/allstyles/a;->e:I

    .line 45
    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 46
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v9, v8, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v9, :cond_1c

    const/4 v12, 0x6

    :cond_1c
    and-int/lit16 v9, v12, 0xff

    if-nez v9, :cond_41

    .line 47
    invoke-virtual {v8, v13}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    goto/16 :goto_15

    :pswitch_3
    if-nez v10, :cond_1

    .line 48
    iget v8, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    add-int/lit8 v9, v11, -0x1

    if-ge v8, v9, :cond_1

    .line 49
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v10

    const/16 v13, 0x21

    if-ne v10, v13, :cond_1e

    .line 50
    iget v10, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    if-ge v10, v9, :cond_1e

    .line 51
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v10

    const/16 v13, 0x2d

    if-ne v10, v13, :cond_1e

    .line 52
    iget v10, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    if-ge v10, v9, :cond_1e

    .line 53
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v10

    if-ne v10, v13, :cond_1e

    .line 54
    iget v10, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    if-ge v10, v9, :cond_1e

    const/4 v8, 0x2

    const/4 v10, 0x0

    aput-char v10, v6, v8

    aput-char v10, v6, v14

    aput-char v10, v6, v10

    .line 55
    :goto_a
    iget v15, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    if-ge v15, v9, :cond_1

    .line 56
    aget-char v15, v6, v14

    aput-char v15, v6, v10

    .line 57
    aget-char v15, v6, v8

    aput-char v15, v6, v14

    .line 58
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v15

    aput-char v15, v6, v8

    .line 59
    aget-char v15, v6, v10

    if-ne v15, v13, :cond_1d

    aget-char v10, v6, v14

    if-ne v10, v13, :cond_1d

    aget-char v10, v6, v8

    const/16 v15, 0x3e

    if-ne v10, v15, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/4 v10, 0x0

    goto :goto_a

    .line 60
    :cond_1e
    iput v8, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    goto/16 :goto_1

    :pswitch_4
    and-int/lit16 v8, v12, 0xff

    if-eq v8, v14, :cond_23

    if-eq v8, v5, :cond_20

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1f

    move/from16 v8, p7

    move-object/from16 v21, v6

    goto/16 :goto_13

    :cond_1f
    move-object/from16 v21, v6

    goto/16 :goto_c

    .line 61
    :cond_20
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v9, v8, Lcom/neverland/engbook/allstyles/a;->b:I

    iget-object v10, v8, Lcom/neverland/engbook/allstyles/a;->k:[C

    iget v8, v8, Lcom/neverland/engbook/allstyles/a;->a:I

    invoke-virtual {v0, v9, v10, v8}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u(I[CI)Lcom/neverland/engbook/allstyles/e;

    move-result-object v8

    .line 62
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v10, v9, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    iget-wide v12, v10, Lcom/neverland/engbook/allstyles/e;->a:J

    iget-wide v14, v8, Lcom/neverland/engbook/allstyles/e;->e:J

    xor-long v19, v14, v16

    and-long v12, v12, v19

    move-object/from16 v21, v6

    iget-wide v5, v8, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v5, v12

    iput-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 63
    iget-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v5, v14

    iput-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 64
    iget-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->b:J

    iget-wide v12, v8, Lcom/neverland/engbook/allstyles/e;->f:J

    xor-long v14, v12, v16

    and-long/2addr v5, v14

    iget-wide v14, v8, Lcom/neverland/engbook/allstyles/e;->b:J

    or-long/2addr v5, v14

    iput-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->b:J

    .line 65
    iget-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->f:J

    or-long/2addr v5, v12

    iput-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 66
    iget-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->c:J

    iget-wide v12, v8, Lcom/neverland/engbook/allstyles/e;->g:J

    xor-long v14, v12, v16

    and-long/2addr v5, v14

    iget-wide v14, v8, Lcom/neverland/engbook/allstyles/e;->c:J

    or-long/2addr v5, v14

    iput-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->c:J

    .line 67
    iget-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->g:J

    or-long/2addr v5, v12

    iput-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 68
    iget-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->d:J

    iget-wide v12, v8, Lcom/neverland/engbook/allstyles/e;->h:J

    xor-long v14, v12, v16

    and-long/2addr v5, v14

    iget-wide v14, v8, Lcom/neverland/engbook/allstyles/e;->d:J

    or-long/2addr v5, v14

    iput-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->d:J

    .line 69
    iget-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->h:J

    or-long/2addr v5, v12

    iput-wide v5, v10, Lcom/neverland/engbook/allstyles/e;->h:J

    .line 70
    iget v5, v8, Lcom/neverland/engbook/allstyles/e;->i:I

    if-eqz v5, :cond_21

    .line 71
    iput v5, v10, Lcom/neverland/engbook/allstyles/e;->i:I

    .line 72
    :cond_21
    iget v5, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    if-ne v5, v11, :cond_22

    .line 73
    invoke-virtual {v0, v9}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->v(Lcom/neverland/engbook/allstyles/a;)V

    .line 74
    :cond_22
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5}, Lcom/neverland/engbook/allstyles/a;->d()V

    .line 75
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    const/4 v6, 0x0

    iput v6, v5, Lcom/neverland/engbook/allstyles/a;->b:I

    move/from16 v8, p7

    :goto_b
    const/16 v12, 0x64

    goto/16 :goto_13

    :cond_23
    move-object/from16 v21, v6

    .line 76
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v6, v5, Lcom/neverland/engbook/allstyles/a;->c:I

    if-nez v6, :cond_25

    .line 77
    invoke-virtual {v5}, Lcom/neverland/engbook/allstyles/a;->c()V

    .line 78
    :goto_c
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v5, v5, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    const-string v6, "@import"

    invoke-virtual {v6, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 79
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v5, v5, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v8, v5, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/neverland/engbook/allstyles/a;->k:[C

    iget v5, v5, Lcom/neverland/engbook/allstyles/a;->a:I

    invoke-virtual {v8, v9, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_24

    .line 81
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v5, v5, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0xfde9

    move/from16 v8, p7

    invoke-virtual {v0, v5, v4, v6, v8}, Lcom/neverland/engbook/allstyles/c;->l(Ljava/lang/String;Ljava/lang/String;II)Z

    goto :goto_d

    :cond_24
    move/from16 v8, p7

    .line 82
    :goto_d
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5}, Lcom/neverland/engbook/allstyles/a;->c()V

    const/4 v12, 0x0

    goto/16 :goto_13

    :cond_25
    move/from16 v8, p7

    goto/16 :goto_13

    :pswitch_5
    move/from16 v8, p7

    move-object/from16 v21, v6

    and-int/lit16 v5, v12, 0xff

    if-eqz v5, :cond_2a

    if-eq v5, v14, :cond_29

    const/4 v6, 0x3

    if-eq v5, v6, :cond_28

    const/4 v6, 0x4

    if-eq v5, v6, :cond_27

    const/16 v6, 0x64

    if-eq v5, v6, :cond_26

    goto :goto_e

    .line 83
    :cond_26
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v6, v5, Lcom/neverland/engbook/allstyles/a;->h:Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/neverland/engbook/allstyles/a;->k:[C

    iget v5, v5, Lcom/neverland/engbook/allstyles/a;->a:I

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 84
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5}, Lcom/neverland/engbook/allstyles/a;->d()V

    const/4 v12, 0x3

    goto :goto_e

    .line 85
    :cond_27
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_e

    .line 86
    :cond_28
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_e

    .line 87
    :cond_29
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_e

    .line 88
    :cond_2a
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 89
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    .line 90
    :goto_e
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v5, v5, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v5, :cond_40

    :goto_f
    move-object/from16 v6, v21

    const/4 v5, 0x3

    :goto_10
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x6

    goto/16 :goto_0

    :pswitch_6
    move/from16 v8, p7

    move-object/from16 v21, v6

    .line 91
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v6, v5, Lcom/neverland/engbook/allstyles/a;->d:I

    sub-int/2addr v6, v14

    iput v6, v5, Lcom/neverland/engbook/allstyles/a;->d:I

    if-gez v6, :cond_2b

    const/4 v12, 0x5

    .line 92
    :cond_2b
    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 93
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v6, v5, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v6, :cond_2c

    const/4 v12, 0x6

    :cond_2c
    and-int/lit16 v6, v12, 0xff

    if-nez v6, :cond_40

    .line 94
    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    goto/16 :goto_13

    :pswitch_7
    move/from16 v8, p7

    move-object/from16 v21, v6

    .line 95
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v6, v5, Lcom/neverland/engbook/allstyles/a;->d:I

    add-int/2addr v6, v14

    iput v6, v5, Lcom/neverland/engbook/allstyles/a;->d:I

    .line 96
    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 97
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v6, v5, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v6, :cond_2d

    const/4 v12, 0x6

    :cond_2d
    and-int/lit16 v6, v12, 0xff

    if-nez v6, :cond_40

    .line 98
    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    goto/16 :goto_13

    :pswitch_8
    move/from16 v8, p7

    move-object/from16 v21, v6

    or-int/lit16 v12, v12, 0x100

    goto/16 :goto_14

    :cond_2e
    move/from16 v8, p7

    move-object/from16 v21, v6

    .line 99
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v6, v5, Lcom/neverland/engbook/allstyles/a;->c:I

    if-gtz v6, :cond_2f

    goto/16 :goto_2

    :cond_2f
    add-int/lit8 v6, v6, -0x1

    .line 100
    iput v6, v5, Lcom/neverland/engbook/allstyles/a;->c:I

    if-nez v6, :cond_2

    and-int/lit16 v6, v12, 0xff

    const/4 v9, 0x3

    if-eq v6, v9, :cond_30

    const/16 v9, 0x64

    if-eq v6, v9, :cond_31

    goto/16 :goto_11

    .line 101
    :cond_30
    iget v6, v5, Lcom/neverland/engbook/allstyles/a;->b:I

    iget-object v9, v5, Lcom/neverland/engbook/allstyles/a;->k:[C

    iget v5, v5, Lcom/neverland/engbook/allstyles/a;->a:I

    invoke-virtual {v0, v6, v9, v5}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u(I[CI)Lcom/neverland/engbook/allstyles/e;

    move-result-object v5

    .line 102
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v6, v6, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->a:J

    iget-wide v12, v5, Lcom/neverland/engbook/allstyles/e;->e:J

    xor-long v14, v12, v16

    and-long/2addr v9, v14

    iget-wide v14, v5, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v9, v14

    iput-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 103
    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v9, v12

    iput-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 104
    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->b:J

    iget-wide v12, v5, Lcom/neverland/engbook/allstyles/e;->f:J

    xor-long v14, v12, v16

    and-long/2addr v9, v14

    iget-wide v14, v5, Lcom/neverland/engbook/allstyles/e;->b:J

    or-long/2addr v9, v14

    iput-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->b:J

    .line 105
    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->f:J

    or-long/2addr v9, v12

    iput-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 106
    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->c:J

    iget-wide v12, v5, Lcom/neverland/engbook/allstyles/e;->g:J

    xor-long v14, v12, v16

    and-long/2addr v9, v14

    iget-wide v14, v5, Lcom/neverland/engbook/allstyles/e;->c:J

    or-long/2addr v9, v14

    iput-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->c:J

    .line 107
    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->g:J

    or-long/2addr v9, v12

    iput-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 108
    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->d:J

    iget-wide v12, v5, Lcom/neverland/engbook/allstyles/e;->h:J

    xor-long v14, v12, v16

    and-long/2addr v9, v14

    iget-wide v14, v5, Lcom/neverland/engbook/allstyles/e;->d:J

    or-long/2addr v9, v14

    iput-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->d:J

    .line 109
    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->h:J

    or-long/2addr v9, v12

    iput-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->h:J

    .line 110
    iget v5, v5, Lcom/neverland/engbook/allstyles/e;->i:I

    if-eqz v5, :cond_31

    .line 111
    iput v5, v6, Lcom/neverland/engbook/allstyles/e;->i:I

    .line 112
    :cond_31
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v6, v5, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-nez v14, :cond_32

    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->f:J

    cmp-long v14, v9, v12

    if-nez v14, :cond_32

    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->g:J

    cmp-long v14, v9, v12

    if-nez v14, :cond_32

    iget-wide v9, v6, Lcom/neverland/engbook/allstyles/e;->h:J

    cmp-long v6, v9, v12

    if-eqz v6, :cond_33

    :cond_32
    const/4 v6, -0x1

    if-eq v1, v6, :cond_33

    .line 113
    invoke-virtual {v0, v1, v5}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r(ILcom/neverland/engbook/allstyles/a;)V

    .line 114
    :cond_33
    :goto_11
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5}, Lcom/neverland/engbook/allstyles/a;->c()V

    move-object/from16 v6, v21

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_34
    move/from16 v8, p7

    move-object/from16 v21, v6

    .line 115
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v6, v5, Lcom/neverland/engbook/allstyles/a;->c:I

    add-int/2addr v6, v14

    iput v6, v5, Lcom/neverland/engbook/allstyles/a;->c:I

    and-int/lit16 v6, v12, 0xff

    if-eqz v6, :cond_37

    if-eq v6, v14, :cond_36

    const/4 v9, 0x4

    if-eq v6, v9, :cond_35

    goto/16 :goto_13

    .line 116
    :cond_35
    iget-object v5, v5, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_36
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v6, v5, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/neverland/engbook/allstyles/a;->k:[C

    iget v5, v5, Lcom/neverland/engbook/allstyles/a;->a:I

    const/4 v10, 0x0

    invoke-static {v9, v10, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5}, Lcom/neverland/engbook/allstyles/a;->d()V

    const/4 v12, 0x5

    goto/16 :goto_13

    :cond_37
    const/4 v10, 0x0

    .line 119
    iget-object v6, v5, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/neverland/engbook/allstyles/a;->k:[C

    iget v5, v5, Lcom/neverland/engbook/allstyles/a;->a:I

    invoke-static {v9, v10, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5}, Lcom/neverland/engbook/allstyles/a;->d()V

    .line 121
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iput v10, v5, Lcom/neverland/engbook/allstyles/a;->b:I

    goto/16 :goto_b

    :cond_38
    move/from16 v8, p7

    move-object/from16 v21, v6

    and-int/lit16 v5, v12, 0xff

    if-eqz v5, :cond_3c

    if-eq v5, v14, :cond_3d

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3b

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3a

    const/16 v6, 0x64

    if-eq v5, v6, :cond_39

    goto :goto_12

    .line 122
    :cond_39
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_12

    .line 123
    :cond_3a
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_12

    .line 124
    :cond_3b
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    goto :goto_12

    .line 125
    :cond_3c
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v5, v5, Lcom/neverland/engbook/allstyles/a;->a:I

    if-nez v5, :cond_3d

    const/4 v12, 0x1

    .line 126
    :cond_3d
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v5, v13}, Lcom/neverland/engbook/allstyles/a;->a(C)V

    .line 127
    :goto_12
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v5, v5, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v5, :cond_40

    goto/16 :goto_f

    :cond_3e
    move/from16 v8, p7

    move-object/from16 v21, v6

    if-nez v10, :cond_2

    .line 128
    iget v5, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    add-int/lit8 v6, v11, -0x1

    if-ge v5, v6, :cond_2

    .line 129
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v5

    const/16 v10, 0x2a

    if-ne v5, v10, :cond_2

    const/4 v5, 0x0

    aput-char v5, v21, v14

    aput-char v5, v21, v5

    .line 130
    :cond_3f
    iget v10, v7, Lcom/neverland/engbook/forpublic/h;->a:I

    if-ge v10, v6, :cond_40

    .line 131
    aget-char v10, v21, v14

    aput-char v10, v21, v5

    .line 132
    invoke-static {v3, v2, v7}, Lcom/neverland/d/b/a;->f(I[BLcom/neverland/engbook/forpublic/h;)C

    move-result v10

    aput-char v10, v21, v14

    .line 133
    aget-char v10, v21, v5

    const/16 v13, 0x2a

    if-ne v10, v13, :cond_3f

    aget-char v10, v21, v14

    if-ne v10, v9, :cond_3f

    :cond_40
    :goto_13
    move-object/from16 v6, v21

    :goto_14
    const/4 v5, 0x3

    :cond_41
    :goto_15
    const/4 v8, 0x0

    const/4 v9, -0x1

    goto/16 :goto_0

    :cond_42
    move/from16 v8, p7

    move-object/from16 v21, v6

    const/4 v5, 0x0

    or-int/lit16 v12, v12, 0x200

    goto :goto_14

    :cond_43
    move/from16 v8, p7

    move-object/from16 v21, v6

    const/4 v5, 0x0

    if-eq v13, v9, :cond_45

    const/16 v6, 0x27

    if-eq v13, v6, :cond_44

    goto :goto_16

    :cond_44
    and-int/lit16 v6, v12, 0x100

    if-eqz v6, :cond_46

    and-int/lit16 v12, v12, -0x101

    goto :goto_13

    :cond_45
    and-int/lit16 v6, v12, 0x200

    if-eqz v6, :cond_46

    and-int/lit16 v12, v12, -0x201

    goto :goto_13

    .line 134
    :cond_46
    :goto_16
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    invoke-virtual {v6, v13}, Lcom/neverland/engbook/allstyles/a;->b(C)V

    .line 135
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-boolean v9, v6, Lcom/neverland/engbook/allstyles/a;->g:Z

    if-eqz v9, :cond_47

    const/4 v12, 0x6

    :cond_47
    and-int/lit16 v9, v12, 0xff

    if-nez v9, :cond_40

    .line 136
    invoke-virtual {v6, v13}, Lcom/neverland/engbook/allstyles/a;->e(C)V

    goto :goto_13

    :cond_48
    const/4 v5, 0x0

    and-int/lit16 v2, v12, 0xff

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4a

    .line 137
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget v3, v2, Lcom/neverland/engbook/allstyles/a;->b:I

    iget-object v4, v2, Lcom/neverland/engbook/allstyles/a;->k:[C

    iget v2, v2, Lcom/neverland/engbook/allstyles/a;->a:I

    invoke-virtual {v0, v3, v4, v2}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u(I[CI)Lcom/neverland/engbook/allstyles/e;

    move-result-object v2

    .line 138
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v4, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    iget-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    iget-wide v8, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    xor-long v10, v8, v16

    and-long/2addr v6, v10

    iget-wide v10, v2, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v6, v10

    iput-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 139
    iget-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v6, v8

    iput-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 140
    iget-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->b:J

    iget-wide v8, v2, Lcom/neverland/engbook/allstyles/e;->f:J

    xor-long v10, v8, v16

    and-long/2addr v6, v10

    iget-wide v10, v2, Lcom/neverland/engbook/allstyles/e;->b:J

    or-long/2addr v6, v10

    iput-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->b:J

    .line 141
    iget-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->f:J

    or-long/2addr v6, v8

    iput-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 142
    iget-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->c:J

    iget-wide v8, v2, Lcom/neverland/engbook/allstyles/e;->g:J

    xor-long v10, v8, v16

    and-long/2addr v6, v10

    iget-wide v10, v2, Lcom/neverland/engbook/allstyles/e;->c:J

    or-long/2addr v6, v10

    iput-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->c:J

    .line 143
    iget-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->g:J

    or-long/2addr v6, v8

    iput-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 144
    iget-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->d:J

    iget-wide v8, v2, Lcom/neverland/engbook/allstyles/e;->h:J

    xor-long v10, v8, v16

    and-long/2addr v6, v10

    iget-wide v10, v2, Lcom/neverland/engbook/allstyles/e;->d:J

    or-long/2addr v6, v10

    iput-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->d:J

    .line 145
    iget-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->h:J

    or-long/2addr v6, v8

    iput-wide v6, v4, Lcom/neverland/engbook/allstyles/e;->h:J

    .line 146
    iget v2, v2, Lcom/neverland/engbook/allstyles/e;->i:I

    if-eqz v2, :cond_49

    .line 147
    iput v2, v4, Lcom/neverland/engbook/allstyles/e;->i:I

    .line 148
    :cond_49
    invoke-virtual {v0, v3}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->v(Lcom/neverland/engbook/allstyles/a;)V

    .line 149
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v2, v2, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    iget-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v6, 0x18

    and-long/2addr v6, v3

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4a

    const-wide v6, -0x1ffff00000000001L    # -2.6920364359337865E154

    and-long/2addr v3, v6

    .line 150
    iput-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 151
    iget-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long/2addr v3, v6

    iput-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->a:J

    :cond_4a
    const/4 v2, -0x1

    if-eq v1, v2, :cond_51

    .line 152
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/engbook/allstyles/g;

    iget-object v2, v2, Lcom/neverland/engbook/allstyles/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const v3, 0x3107ab

    const v4, 0x2e39a2

    if-lez v2, :cond_4d

    const/4 v13, 0x0

    :goto_17
    if-ge v13, v2, :cond_4d

    .line 153
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neverland/engbook/allstyles/g;

    iget-object v6, v6, Lcom/neverland/engbook/allstyles/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neverland/engbook/allstyles/AlOneCSS;

    .line 154
    iget v7, v6, Lcom/neverland/engbook/allstyles/AlOneCSS;->c:I

    if-eq v7, v4, :cond_4b

    if-ne v7, v3, :cond_4c

    .line 155
    :cond_4b
    iget-object v6, v6, Lcom/neverland/engbook/allstyles/AlOneCSS;->g:Lcom/neverland/engbook/allstyles/e;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/neverland/engbook/allstyles/e;->h:J

    :cond_4c
    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 156
    :cond_4d
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neverland/engbook/allstyles/g;

    iget-object v2, v2, Lcom/neverland/engbook/allstyles/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_51

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v2, :cond_51

    .line 157
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/allstyles/g;

    iget-object v5, v5, Lcom/neverland/engbook/allstyles/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neverland/engbook/allstyles/AlOneCSS;

    .line 158
    iget v6, v5, Lcom/neverland/engbook/allstyles/AlOneCSS;->c:I

    if-ne v6, v3, :cond_4e

    iget v7, v5, Lcom/neverland/engbook/allstyles/AlOneCSS;->d:I

    if-eq v7, v4, :cond_4f

    :cond_4e
    if-ne v6, v4, :cond_50

    iget v6, v5, Lcom/neverland/engbook/allstyles/AlOneCSS;->d:I

    if-ne v6, v3, :cond_50

    .line 159
    :cond_4f
    iget-object v5, v5, Lcom/neverland/engbook/allstyles/AlOneCSS;->g:Lcom/neverland/engbook/allstyles/e;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/neverland/engbook/allstyles/e;->h:J

    goto :goto_19

    :cond_50
    const-wide/16 v6, 0x0

    :goto_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 160
    :cond_51
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->r:Lcom/neverland/engbook/allstyles/a;

    iget-object v1, v1, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p(Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/engbook/allstyles/g;

    invoke-virtual {v0, p1, p2}, Lcom/neverland/engbook/allstyles/g;->b(Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;)V

    return-void
.end method

.method protected q(ILjava/lang/String;Lcom/neverland/engbook/allstyles/a;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v3, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    .line 2
    iget-object v8, v3, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 3
    iget-object v9, v3, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    add-int/2addr v4, v7

    invoke-virtual {v9, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v4, v3, Lcom/neverland/engbook/allstyles/a;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 5
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v8, "s:s"

    .line 6
    invoke-virtual {v2, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "p:first-letter"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "p:notes"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 7
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v8, "s"

    .line 9
    invoke-virtual {v8, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v2, 0x0

    .line 10
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_3

    mul-int/lit8 v2, v2, 0x1f

    .line 11
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/neverland/d/b/a;->U(C)C

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/allstyles/g;

    iget-object v3, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    invoke-virtual {v1, v2, v4, v3}, Lcom/neverland/engbook/allstyles/g;->f(ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;)V

    return-void

    :cond_4
    const/16 v8, 0x20

    .line 13
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/16 v10, 0x3e

    const/16 v11, 0x2b

    if-eq v9, v5, :cond_a

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    :goto_2
    if-ltz v2, :cond_9

    .line 16
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v12, 0x7e

    if-ne v9, v8, :cond_6

    add-int/lit8 v9, v2, 0x1

    .line 17
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_5

    if-eq v9, v11, :cond_5

    if-eq v9, v10, :cond_5

    if-eq v9, v12, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_7

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-eq v9, v10, :cond_7

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_8

    :cond_7
    add-int/lit8 v9, v2, 0x1

    .line 20
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v8, :cond_8

    .line 21
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 22
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    const-string v5, "s.s"

    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v9, 0x2e

    if-eqz v5, :cond_c

    .line 24
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v5, v2, :cond_b

    mul-int/lit8 v8, v8, 0x1f

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 26
    :cond_b
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/allstyles/g;

    .line 27
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v2, v7

    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    .line 29
    invoke-virtual {v1, v8, v5, v2, v3}, Lcom/neverland/engbook/allstyles/g;->g(ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;)V

    return-void

    :cond_c
    const-string v5, "*.s"

    .line 30
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    const-string v5, ".s"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_3b

    :cond_d
    const-string v5, "s>s"

    .line 31
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 33
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_f

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-le v7, v8, :cond_e

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 36
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v5, v4, :cond_10

    mul-int/lit8 v8, v8, 0x1f

    .line 38
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/neverland/d/b/a;->U(C)C

    move-result v7

    add-int/2addr v8, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_10
    add-int/lit8 v5, v4, 0x1

    move v7, v5

    const/4 v10, 0x0

    .line 39
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_11

    mul-int/lit8 v10, v10, 0x1f

    .line 40
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 41
    :cond_11
    iget-object v7, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/neverland/engbook/allstyles/g;

    .line 42
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v13, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_M_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 44
    invoke-virtual/range {v7 .. v13}, Lcom/neverland/engbook/allstyles/g;->l(ILjava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_12
    const-string v5, "s+s"

    .line 45
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 47
    :goto_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_14

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-le v7, v8, :cond_13

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 50
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v5, v4, :cond_15

    mul-int/lit8 v8, v8, 0x1f

    .line 52
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/neverland/d/b/a;->U(C)C

    move-result v7

    add-int/2addr v8, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_15
    add-int/lit8 v5, v4, 0x1

    move v7, v5

    const/4 v10, 0x0

    .line 53
    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_16

    mul-int/lit8 v10, v10, 0x1f

    .line 54
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 55
    :cond_16
    iget-object v7, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/neverland/engbook/allstyles/g;

    .line 56
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v13, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_P_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 58
    invoke-virtual/range {v7 .. v13}, Lcom/neverland/engbook/allstyles/g;->l(ILjava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_17
    const-string v5, "s s"

    .line 59
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 60
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_b
    if-ge v5, v2, :cond_18

    mul-int/lit8 v8, v8, 0x1f

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/neverland/d/b/a;->U(C)C

    move-result v7

    add-int/2addr v8, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_18
    add-int/lit8 v5, v2, 0x1

    move v7, v5

    const/4 v10, 0x0

    .line 62
    :goto_c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_19

    mul-int/lit8 v10, v10, 0x1f

    .line 63
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 64
    :cond_19
    iget-object v7, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/neverland/engbook/allstyles/g;

    .line 65
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v13, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 67
    invoke-virtual/range {v7 .. v13}, Lcom/neverland/engbook/allstyles/g;->l(ILjava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_1a
    const-string v5, "s>.s"

    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 70
    :goto_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1c

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-le v7, v8, :cond_1b

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 73
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_e
    if-ge v5, v4, :cond_1d

    mul-int/lit8 v8, v8, 0x1f

    .line 75
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/neverland/d/b/a;->U(C)C

    move-result v7

    add-int/2addr v8, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 76
    :cond_1d
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/neverland/engbook/allstyles/g;

    .line 77
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v4, v4, 0x2

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v12, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_M_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 79
    invoke-virtual/range {v7 .. v12}, Lcom/neverland/engbook/allstyles/g;->k(ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_1e
    const-string v5, "s+.s"

    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 82
    :goto_f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_20

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-le v7, v8, :cond_1f

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 85
    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_10
    if-ge v5, v4, :cond_21

    mul-int/lit8 v8, v8, 0x1f

    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/neverland/d/b/a;->U(C)C

    move-result v7

    add-int/2addr v8, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 88
    :cond_21
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/neverland/engbook/allstyles/g;

    .line 89
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v4, v4, 0x2

    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v12, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_P_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 91
    invoke-virtual/range {v7 .. v12}, Lcom/neverland/engbook/allstyles/g;->k(ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_22
    const-string v5, "s .s"

    .line 92
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 93
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_11
    if-ge v5, v2, :cond_23

    mul-int/lit8 v8, v8, 0x1f

    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/neverland/d/b/a;->U(C)C

    move-result v7

    add-int/2addr v8, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 95
    :cond_23
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/neverland/engbook/allstyles/g;

    .line 96
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v2, v2, 0x2

    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v12, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 98
    invoke-virtual/range {v7 .. v12}, Lcom/neverland/engbook/allstyles/g;->k(ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_24
    const-string v5, "s>s.s"

    .line 99
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 101
    :goto_12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_26

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v8, :cond_25

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 104
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 106
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_13
    if-ge v8, v4, :cond_27

    mul-int/lit8 v10, v10, 0x1f

    .line 107
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_27
    add-int/lit8 v8, v4, 0x1

    move v9, v8

    const/4 v12, 0x0

    :goto_14
    if-ge v9, v5, :cond_28

    mul-int/lit8 v12, v12, 0x1f

    .line 108
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/neverland/d/b/a;->U(C)C

    move-result v11

    add-int/2addr v12, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 109
    :cond_28
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 110
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 111
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v5, v7

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v16, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_M_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 113
    invoke-virtual/range {v9 .. v16}, Lcom/neverland/engbook/allstyles/g;->m(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_29
    const-string v5, "s+s.s"

    .line 114
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 116
    :goto_15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_2b

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-le v10, v8, :cond_2a

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 119
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 121
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_16
    if-ge v8, v4, :cond_2c

    mul-int/lit8 v10, v10, 0x1f

    .line 122
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_2c
    add-int/lit8 v8, v4, 0x1

    move v9, v8

    const/4 v12, 0x0

    :goto_17
    if-ge v9, v5, :cond_2d

    mul-int/lit8 v12, v12, 0x1f

    .line 123
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/neverland/d/b/a;->U(C)C

    move-result v11

    add-int/2addr v12, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 124
    :cond_2d
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 125
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 126
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v5, v7

    .line 127
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v16, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_P_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 128
    invoke-virtual/range {v9 .. v16}, Lcom/neverland/engbook/allstyles/g;->m(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_2e
    const-string v5, "s s.s"

    .line 129
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 130
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 131
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_18
    if-ge v8, v2, :cond_2f

    mul-int/lit8 v10, v10, 0x1f

    .line 132
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_2f
    add-int/lit8 v8, v2, 0x1

    move v9, v8

    const/4 v12, 0x0

    :goto_19
    if-ge v9, v5, :cond_30

    mul-int/lit8 v12, v12, 0x1f

    .line 133
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/neverland/d/b/a;->U(C)C

    move-result v11

    add-int/2addr v12, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 134
    :cond_30
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 135
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 136
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v5, v7

    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v16, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_T_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 138
    invoke-virtual/range {v9 .. v16}, Lcom/neverland/engbook/allstyles/g;->m(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_31
    const-string v5, ".s s"

    .line 139
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 140
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    move v6, v5

    const/4 v10, 0x0

    .line 141
    :goto_1a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_32

    mul-int/lit8 v10, v10, 0x1f

    .line 142
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/neverland/d/b/a;->U(C)C

    move-result v8

    add-int/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 143
    :cond_32
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/neverland/engbook/allstyles/g;

    .line 144
    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v13, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 146
    invoke-virtual/range {v8 .. v13}, Lcom/neverland/engbook/allstyles/g;->d(Ljava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_33
    const-string v5, ".s>s"

    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 149
    :goto_1b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_35

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-le v9, v8, :cond_34

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 152
    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    move v6, v5

    const/4 v10, 0x0

    .line 154
    :goto_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_36

    mul-int/lit8 v10, v10, 0x1f

    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/neverland/d/b/a;->U(C)C

    move-result v8

    add-int/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 156
    :cond_36
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/neverland/engbook/allstyles/g;

    .line 157
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 158
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v13, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_M_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 159
    invoke-virtual/range {v8 .. v13}, Lcom/neverland/engbook/allstyles/g;->d(Ljava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_37
    const-string v5, ".s+s"

    .line 160
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 162
    :goto_1d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_39

    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-le v9, v8, :cond_38

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 165
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    move v6, v5

    const/4 v10, 0x0

    .line 167
    :goto_1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_3a

    mul-int/lit8 v10, v10, 0x1f

    .line 168
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/neverland/d/b/a;->U(C)C

    move-result v8

    add-int/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 169
    :cond_3a
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/neverland/engbook/allstyles/g;

    .line 170
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 171
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v13, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_P_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 172
    invoke-virtual/range {v8 .. v13}, Lcom/neverland/engbook/allstyles/g;->d(Ljava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_3b
    const-string v5, ".s .s s"

    .line 173
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 174
    iget-object v2, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    iget-wide v9, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/32 v11, 0x8000000

    and-long/2addr v9, v11

    const-wide/16 v13, 0x0

    cmp-long v5, v9, v13

    if-eqz v5, :cond_3c

    iget-wide v9, v2, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long/2addr v9, v11

    cmp-long v5, v9, v13

    if-eqz v5, :cond_3c

    .line 175
    iput-wide v11, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 176
    iput-wide v13, v2, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 177
    iput-wide v13, v2, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 178
    iput-wide v13, v2, Lcom/neverland/engbook/allstyles/e;->h:J

    .line 179
    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 180
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 182
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/allstyles/g;

    .line 183
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    .line 184
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v4, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 185
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/neverland/engbook/allstyles/g;->c(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    :cond_3c
    return-void

    :cond_3d
    const-string v5, ".s .s"

    .line 186
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 187
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 188
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/allstyles/g;

    .line 189
    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    .line 190
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v4, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 191
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/neverland/engbook/allstyles/g;->c(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_3e
    const-string v5, ".s>.s"

    .line 192
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    :goto_1f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_40

    .line 195
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v8, :cond_3f

    .line 196
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 197
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 199
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/allstyles/g;

    .line 200
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    .line 201
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v4, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_M_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 202
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/neverland/engbook/allstyles/g;->c(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_41
    const-string v5, ".s+.s"

    .line 203
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    :goto_20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_43

    .line 206
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v8, :cond_42

    .line 207
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 208
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 210
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/allstyles/g;

    .line 211
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    .line 212
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v4, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_P_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 213
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/neverland/engbook/allstyles/g;->c(Ljava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_44
    const-string v5, ".s s.s"

    .line 214
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 215
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 216
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v8, v2, 0x1

    move v6, v8

    const/4 v11, 0x0

    :goto_21
    if-ge v6, v5, :cond_45

    mul-int/lit8 v11, v11, 0x1f

    .line 217
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 218
    :cond_45
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 219
    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 220
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v5, v7

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v15, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 222
    invoke-virtual/range {v9 .. v15}, Lcom/neverland/engbook/allstyles/g;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_46
    const-string v5, ".s>s.s"

    .line 223
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 225
    :goto_22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_48

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v8, :cond_47

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 228
    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 230
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v8, v4, 0x1

    move v6, v8

    const/4 v11, 0x0

    :goto_23
    if-ge v6, v5, :cond_49

    mul-int/lit8 v11, v11, 0x1f

    .line 231
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 232
    :cond_49
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 233
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 234
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v5, v7

    .line 235
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v15, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_M_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 236
    invoke-virtual/range {v9 .. v15}, Lcom/neverland/engbook/allstyles/g;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_4a
    const-string v5, ".s+s.s"

    .line 237
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 239
    :goto_24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_4c

    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-le v10, v8, :cond_4b

    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 242
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 244
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v8, v4, 0x1

    move v6, v8

    const/4 v11, 0x0

    :goto_25
    if-ge v6, v5, :cond_4d

    mul-int/lit8 v11, v11, 0x1f

    .line 245
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v11, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 246
    :cond_4d
    iget-object v6, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 247
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 248
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v5, v7

    .line 249
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v15, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_C_P_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 250
    invoke-virtual/range {v9 .. v15}, Lcom/neverland/engbook/allstyles/g;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_4e
    const-string v5, "s.s s"

    .line 251
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 252
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 253
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_26
    if-ge v8, v5, :cond_4f

    mul-int/lit8 v10, v10, 0x1f

    .line 254
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_4f
    add-int/lit8 v8, v2, 0x1

    move v9, v8

    const/4 v13, 0x0

    .line 255
    :goto_27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_50

    mul-int/lit8 v13, v13, 0x1f

    .line 256
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/neverland/d/b/a;->U(C)C

    move-result v11

    add-int/2addr v13, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 257
    :cond_50
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 258
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v5, v7

    .line 259
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 260
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v16, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 261
    invoke-virtual/range {v9 .. v16}, Lcom/neverland/engbook/allstyles/g;->i(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_51
    const-string v5, "s.s>s"

    .line 262
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 264
    :goto_28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_53

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v8, :cond_52

    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 267
    :cond_53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 269
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_29
    if-ge v8, v5, :cond_54

    mul-int/lit8 v10, v10, 0x1f

    .line 270
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_54
    add-int/lit8 v8, v4, 0x1

    move v9, v8

    const/4 v13, 0x0

    .line 271
    :goto_2a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_55

    mul-int/lit8 v13, v13, 0x1f

    .line 272
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/neverland/d/b/a;->U(C)C

    move-result v11

    add-int/2addr v13, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 273
    :cond_55
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 274
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v5, v7

    .line 275
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 276
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v16, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_M_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 277
    invoke-virtual/range {v9 .. v16}, Lcom/neverland/engbook/allstyles/g;->i(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_56
    const-string v5, "s.s+s"

    .line 278
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 280
    :goto_2b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_58

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-le v10, v8, :cond_57

    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 283
    :cond_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 285
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2c
    if-ge v8, v5, :cond_59

    mul-int/lit8 v10, v10, 0x1f

    .line 286
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_59
    add-int/lit8 v8, v4, 0x1

    move v9, v8

    const/4 v13, 0x0

    .line 287
    :goto_2d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_5a

    mul-int/lit8 v13, v13, 0x1f

    .line 288
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/neverland/d/b/a;->U(C)C

    move-result v11

    add-int/2addr v13, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 289
    :cond_5a
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 290
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v5, v7

    .line 291
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 292
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v16, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_P_T:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 293
    invoke-virtual/range {v9 .. v16}, Lcom/neverland/engbook/allstyles/g;->i(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_5b
    const-string v5, "s.s .s"

    .line 294
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 295
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 296
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2e
    if-ge v8, v5, :cond_5c

    mul-int/lit8 v10, v10, 0x1f

    .line 297
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 298
    :cond_5c
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 299
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v5, v7

    .line 300
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v2, v2, 0x2

    .line 301
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v15, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 302
    invoke-virtual/range {v9 .. v15}, Lcom/neverland/engbook/allstyles/g;->h(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_5d
    const-string v5, "s.s>.s"

    .line 303
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 305
    :goto_2f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_5f

    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v8, :cond_5e

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 308
    :cond_5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 310
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_30
    if-ge v8, v5, :cond_60

    mul-int/lit8 v10, v10, 0x1f

    .line 311
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 312
    :cond_60
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 313
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v5, v7

    .line 314
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v4, v4, 0x2

    .line 315
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v15, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_M_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 316
    invoke-virtual/range {v9 .. v15}, Lcom/neverland/engbook/allstyles/g;->h(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_61
    const-string v5, "s.s+.s"

    .line 317
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 319
    :goto_31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_63

    .line 320
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-le v10, v8, :cond_62

    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 322
    :cond_63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 324
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_32
    if-ge v8, v5, :cond_64

    mul-int/lit8 v10, v10, 0x1f

    .line 325
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/neverland/d/b/a;->U(C)C

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 326
    :cond_64
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/neverland/engbook/allstyles/g;

    .line 327
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v5, v7

    .line 328
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v4, v4, 0x2

    .line 329
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v15, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_P_C:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    .line 330
    invoke-virtual/range {v9 .. v15}, Lcom/neverland/engbook/allstyles/g;->h(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_65
    const-string v5, "s.s s.s"

    .line 331
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 332
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 333
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 334
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_33
    if-ge v9, v5, :cond_66

    mul-int/lit8 v11, v11, 0x1f

    .line 335
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/neverland/d/b/a;->U(C)C

    move-result v10

    add-int/2addr v11, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_66
    add-int/lit8 v9, v2, 0x1

    move v10, v9

    const/4 v14, 0x0

    :goto_34
    if-ge v10, v8, :cond_67

    mul-int/lit8 v14, v14, 0x1f

    .line 336
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/neverland/d/b/a;->U(C)C

    move-result v12

    add-int/2addr v14, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    .line 337
    :cond_67
    iget-object v10, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/neverland/engbook/allstyles/g;

    .line 338
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v5, v7

    .line 339
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 340
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/2addr v8, v7

    .line 341
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v18, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    move-object/from16 v17, v1

    .line 342
    invoke-virtual/range {v10 .. v18}, Lcom/neverland/engbook/allstyles/g;->j(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_68
    const-string v5, "s.s+s.s"

    .line 343
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 345
    :goto_35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_6a

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-le v10, v8, :cond_69

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 348
    :cond_6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 350
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 351
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_36
    if-ge v9, v5, :cond_6b

    mul-int/lit8 v11, v11, 0x1f

    .line 352
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/neverland/d/b/a;->U(C)C

    move-result v10

    add-int/2addr v11, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    :cond_6b
    add-int/lit8 v9, v4, 0x1

    move v10, v9

    const/4 v14, 0x0

    :goto_37
    if-ge v10, v8, :cond_6c

    mul-int/lit8 v14, v14, 0x1f

    .line 353
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/neverland/d/b/a;->U(C)C

    move-result v12

    add-int/2addr v14, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    .line 354
    :cond_6c
    iget-object v10, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/neverland/engbook/allstyles/g;

    .line 355
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v5, v7

    .line 356
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 357
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/2addr v8, v7

    .line 358
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v18, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_P_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    move-object/from16 v17, v1

    .line 359
    invoke-virtual/range {v10 .. v18}, Lcom/neverland/engbook/allstyles/g;->j(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    return-void

    :cond_6d
    const-string v5, "s.s>s.s"

    .line 360
    invoke-virtual {v5, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 362
    :goto_38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_6f

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v8, :cond_6e

    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 365
    :cond_6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 367
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 368
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_39
    if-ge v9, v5, :cond_70

    mul-int/lit8 v11, v11, 0x1f

    .line 369
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/neverland/d/b/a;->U(C)C

    move-result v10

    add-int/2addr v11, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_39

    :cond_70
    add-int/lit8 v9, v4, 0x1

    move v10, v9

    const/4 v14, 0x0

    :goto_3a
    if-ge v10, v8, :cond_71

    mul-int/lit8 v14, v14, 0x1f

    .line 370
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/neverland/d/b/a;->U(C)C

    move-result v12

    add-int/2addr v14, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 371
    :cond_71
    iget-object v10, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/neverland/engbook/allstyles/g;

    .line 372
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v5, v7

    .line 373
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 374
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/2addr v8, v7

    .line 375
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    sget-object v18, Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;->TYPE_TC_M_TC:Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;

    move-object/from16 v17, v1

    .line 376
    invoke-virtual/range {v10 .. v18}, Lcom/neverland/engbook/allstyles/g;->j(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;Lcom/neverland/engbook/allstyles/AlOneCSS$CSS_TYPE;)V

    :cond_72
    return-void

    .line 377
    :cond_73
    :goto_3b
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 378
    iget-object v5, v0, Lcom/neverland/engbook/allstyles/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neverland/engbook/allstyles/g;

    add-int/2addr v2, v7

    .line 379
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    .line 380
    invoke-virtual {v1, v2, v3}, Lcom/neverland/engbook/allstyles/g;->b(Ljava/lang/String;Lcom/neverland/engbook/allstyles/e;)V

    return-void
.end method

.method protected r(ILcom/neverland/engbook/allstyles/a;)V
    .locals 9

    .line 1
    iget-object v0, p2, Lcom/neverland/engbook/allstyles/a;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p2, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x18

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    const-wide v4, -0x1ffff00000000001L    # -2.6920364359337865E154

    and-long/2addr v2, v4

    .line 3
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 4
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->v(Lcom/neverland/engbook/allstyles/a;)V

    .line 6
    array-length v1, v0

    if-lez v1, :cond_1

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p2}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q(ILjava/lang/String;Lcom/neverland/engbook/allstyles/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p2, Lcom/neverland/engbook/allstyles/a;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q(ILjava/lang/String;Lcom/neverland/engbook/allstyles/a;)V

    :cond_2
    return-void
.end method

.method protected u(I[CI)Lcom/neverland/engbook/allstyles/e;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    invoke-virtual {v2}, Lcom/neverland/engbook/allstyles/e;->a()V

    .line 2
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez v4, :cond_0

    .line 3
    new-instance v4, Lcom/neverland/engbook/allstyles/d;

    invoke-direct {v4}, Lcom/neverland/engbook/allstyles/d;-><init>()V

    aput-object v4, v2, v3

    .line 4
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    new-instance v4, Lcom/neverland/engbook/allstyles/d;

    invoke-direct {v4}, Lcom/neverland/engbook/allstyles/d;-><init>()V

    aput-object v4, v2, v7

    .line 5
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    new-instance v4, Lcom/neverland/engbook/allstyles/d;

    invoke-direct {v4}, Lcom/neverland/engbook/allstyles/d;-><init>()V

    aput-object v4, v2, v5

    .line 6
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    new-instance v4, Lcom/neverland/engbook/allstyles/d;

    invoke-direct {v4}, Lcom/neverland/engbook/allstyles/d;-><init>()V

    aput-object v4, v2, v6

    :cond_0
    move/from16 v2, p3

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    .line 7
    aget-char v2, v1, v4

    const/16 v8, 0x20

    if-ne v2, v8, :cond_1

    .line 8
    aput-char v3, v1, v4

    move v2, v4

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    add-int/2addr v4, v7

    invoke-static {v1, v3, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "!important"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 12
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    add-int/lit8 v8, v1, 0xa

    invoke-virtual {v4, v1, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 13
    :goto_1
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v7, :cond_2

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_2

    .line 14
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x8

    const-wide/16 v10, 0x40

    const-wide/16 v12, 0x1

    const-wide/16 v16, 0x0

    const-wide/16 v18, -0x1

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    const-wide/32 v22, 0x7000000

    const-wide v24, -0x1ffff00000000001L    # -2.6920364359337865E154

    const-wide v26, 0x1ffff00000000000L

    const-string v1, "inherit"

    const-wide/32 v28, -0x7000001

    const-wide/16 v14, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_31

    .line 15
    :sswitch_0
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v4, 0x4

    and-long/2addr v1, v4

    cmp-long v4, v1, v14

    if-eqz v4, :cond_aa

    .line 16
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 17
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 19
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->w(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 20
    :sswitch_1
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v4, 0x4

    and-long/2addr v1, v4

    cmp-long v4, v1, v14

    if-eqz v4, :cond_aa

    .line 21
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 22
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 24
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->A(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 25
    :sswitch_2
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, -0x201

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 27
    :cond_3
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 28
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "hidden"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "collapse"

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 30
    :cond_4
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x201

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 31
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 32
    :sswitch_3
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v4, 0x10

    and-long/2addr v1, v4

    cmp-long v4, v1, v14

    if-eqz v4, :cond_aa

    .line 33
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 34
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 36
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->x(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 37
    :sswitch_4
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 38
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x201

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 39
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 40
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 41
    :cond_6
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "block"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 42
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, -0x201

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 43
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 44
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 45
    :sswitch_5
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v1, v8

    cmp-long v4, v1, v14

    if-eqz v4, :cond_aa

    .line 46
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 49
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->y(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 50
    :sswitch_6
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    const-wide/16 v3, 0x800

    iput-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 51
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 52
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, -0x801

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 53
    :cond_7
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "0"

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "off"

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 56
    :cond_8
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x801

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 57
    :cond_9
    :goto_3
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    const-wide/16 v2, 0x800

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 58
    :sswitch_7
    iget-wide v2, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v4, v2, v14

    if-eqz v4, :cond_aa

    .line 59
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 60
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide v4, -0xc000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    goto/16 :goto_31

    .line 61
    :cond_a
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "center"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 62
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0xc000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 63
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xc000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/high16 v4, 0xc000000000000L

    or-long/2addr v2, v4

    .line 64
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 65
    :cond_b
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "start"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    .line 66
    :cond_c
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "end"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    .line 67
    :cond_d
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0xc000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 68
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xc000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    or-long/2addr v2, v14

    .line 69
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 70
    :cond_e
    :goto_4
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0xc000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 71
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xc000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/high16 v4, 0x8000000000000L

    or-long/2addr v2, v4

    .line 72
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 73
    :cond_f
    :goto_5
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0xc000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 74
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xc000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/high16 v4, 0x4000000000000L

    or-long/2addr v2, v4

    .line 75
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 76
    :sswitch_8
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v1, v8

    cmp-long v4, v1, v14

    if-eqz v4, :cond_aa

    .line 77
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 80
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->C(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 81
    :sswitch_9
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "avoid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 82
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0x20000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 83
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0x20000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 84
    :cond_10
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "always"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 85
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0x20000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 86
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 87
    :cond_11
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide v4, -0x20000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 88
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 89
    :sswitch_a
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v1, v10

    cmp-long v3, v1, v14

    if-nez v3, :cond_aa

    .line 90
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t(Ljava/lang/StringBuilder;)J

    move-result-wide v1

    cmp-long v3, v1, v18

    if-nez v3, :cond_12

    goto/16 :goto_31

    .line 91
    :cond_12
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide/32 v6, 0xfff000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->h:J

    const/16 v4, 0xc

    shl-long/2addr v1, v4

    const-wide/32 v4, 0xfff000

    and-long/2addr v1, v4

    .line 92
    iput-wide v1, v3, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 93
    :sswitch_b
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v3, v12

    iput-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 94
    iget-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v5, -0x2

    and-long/2addr v3, v5

    iput-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 95
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 96
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, -0x2

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 97
    :cond_13
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "bold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "700"

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "800"

    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "900"

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 101
    :cond_14
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v2, v12

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 102
    :sswitch_c
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "avoid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 103
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0x2000000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 104
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0x2000000000000001L    # -2.681561585988519E154

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 105
    :cond_15
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "always"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 106
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0x2000000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 107
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 108
    :cond_16
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide v4, -0x2000000000000001L    # -2.681561585988519E154

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 109
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 110
    :sswitch_d
    iget-wide v4, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v4, v10

    cmp-long v2, v4, v14

    if-nez v2, :cond_aa

    .line 111
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 112
    array-length v4, v2

    if-ne v4, v7, :cond_17

    aget-object v4, v2, v3

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 113
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v4, -0xffff000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    goto/16 :goto_31

    .line 114
    :cond_17
    array-length v4, v2

    if-lez v4, :cond_aa

    move-wide/from16 v5, v18

    const/4 v4, 0x0

    .line 115
    :goto_6
    array-length v8, v2

    if-ge v4, v8, :cond_1c

    .line 116
    aget-object v8, v2, v4

    const-string v9, "none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 117
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v7, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v9, 0xffff000000L

    or-long/2addr v7, v9

    iput-wide v7, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    .line 118
    iput-wide v14, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto :goto_8

    .line 119
    :cond_18
    aget-object v8, v2, v4

    invoke-virtual {v8, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b

    aget-object v8, v2, v4

    const-string v9, "transparent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_19

    goto :goto_7

    :cond_19
    cmp-long v8, v5, v18

    if-nez v8, :cond_1a

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v2, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t(Ljava/lang/StringBuilder;)J

    move-result-wide v5

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 121
    :cond_1b
    :goto_7
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v7, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v9, -0xffff000001L

    and-long/2addr v7, v9

    iput-wide v7, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    goto :goto_8

    :cond_1c
    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_aa

    cmp-long v1, v5, v18

    if-nez v1, :cond_1d

    const-wide/16 v5, 0x888

    .line 122
    :cond_1d
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v7, 0xfff000000L

    or-long/2addr v2, v7

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const/16 v4, 0x18

    shl-long v4, v5, v4

    const-wide v6, 0xffff000000L

    and-long/2addr v4, v6

    .line 123
    iput-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_31

    :sswitch_e
    const-wide v6, 0x1000000000L

    or-long/2addr v2, v6

    .line 124
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v2, 0x1000000000L

    or-long/2addr v2, v4

    .line 125
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    :sswitch_f
    const-wide v6, 0x2000000000L

    or-long/2addr v2, v6

    .line 126
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v2, 0x2000000000L

    or-long/2addr v2, v4

    .line 127
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    :sswitch_10
    const-wide v6, 0x8000000000L

    or-long/2addr v2, v6

    .line 128
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v2, 0x8000000000L

    or-long/2addr v2, v4

    .line 129
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    :sswitch_11
    const-wide v6, 0x4000000000L

    or-long/2addr v2, v6

    .line 130
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v2, 0x4000000000L

    or-long/2addr v2, v4

    .line 131
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 132
    :sswitch_12
    iget-wide v2, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v4, v2, v14

    if-eqz v4, :cond_aa

    .line 133
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 134
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide v4, -0xc0000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    goto/16 :goto_31

    .line 135
    :cond_1e
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "center"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 136
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0xc0000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 137
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xc0000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/high16 v4, 0xc0000000000000L

    or-long/2addr v2, v4

    .line 138
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 139
    :cond_1f
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "start"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_a

    .line 140
    :cond_20
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "end"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_9

    .line 141
    :cond_21
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0xc0000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 142
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xc0000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    or-long/2addr v2, v14

    .line 143
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 144
    :cond_22
    :goto_9
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0xc0000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 145
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xc0000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/high16 v4, 0x80000000000000L

    or-long/2addr v2, v4

    .line 146
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 147
    :cond_23
    :goto_a
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/high16 v4, 0xc0000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 148
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xc0000000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/high16 v4, 0x40000000000000L

    or-long/2addr v2, v4

    .line 149
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto/16 :goto_31

    .line 150
    :sswitch_13
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v4, 0x4

    and-long/2addr v1, v4

    cmp-long v4, v1, v14

    if-eqz v4, :cond_aa

    .line 151
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 154
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->B(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 155
    :sswitch_14
    iget-wide v3, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long v5, v3, v14

    if-eqz v5, :cond_aa

    .line 156
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 157
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 158
    :cond_24
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "mono"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2d

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "Courier"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2d

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "\u0441ourier"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_25

    goto/16 :goto_c

    .line 159
    :cond_25
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "fantasy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2c

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "title"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_26

    goto/16 :goto_b

    .line 160
    :cond_26
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "firstletter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_27

    .line 161
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 162
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x3000000

    or-long/2addr v2, v4

    .line 163
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 164
    :cond_27
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "custom1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_28

    .line 165
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 166
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x4000000

    or-long/2addr v2, v4

    .line 167
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 168
    :cond_28
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "custom2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_29

    .line 169
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 170
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x5000000

    or-long/2addr v2, v4

    .line 171
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 172
    :cond_29
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "custom3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2a

    .line 173
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 174
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x6000000

    or-long/2addr v2, v4

    .line 175
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 176
    :cond_2a
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "custom4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2b

    .line 177
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 178
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long v2, v2, v22

    .line 179
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 180
    :cond_2b
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 181
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 182
    :cond_2c
    :goto_b
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 183
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x2000000

    or-long/2addr v2, v4

    .line 184
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 185
    :cond_2d
    :goto_c
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 186
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x1000000

    or-long/2addr v2, v4

    .line 187
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 188
    :sswitch_15
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v1, v10

    cmp-long v4, v1, v14

    if-nez v4, :cond_aa

    .line 189
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t(Ljava/lang/StringBuilder;)J

    move-result-wide v1

    cmp-long v4, v1, v18

    if-nez v4, :cond_2e

    goto/16 :goto_31

    .line 190
    :cond_2e
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide/16 v7, 0xfff

    or-long/2addr v5, v7

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->h:J

    shl-long/2addr v1, v3

    const-wide/16 v5, 0xfff

    and-long/2addr v1, v5

    .line 191
    iput-wide v1, v4, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 192
    :sswitch_16
    iget-object v8, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 193
    iget-object v9, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v10, v9, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v18, 0x3

    or-long v10, v10, v18

    iput-wide v10, v9, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 194
    iget-wide v4, v9, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v18, -0x4

    and-long v4, v4, v18

    iput-wide v4, v9, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 195
    iget-wide v2, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long v18, v2, v12

    cmp-long v30, v18, v14

    if-eqz v30, :cond_2f

    or-long v10, v10, v26

    .line 196
    iput-wide v10, v9, Lcom/neverland/engbook/allstyles/e;->e:J

    and-long v4, v4, v24

    .line 197
    iput-wide v4, v9, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v10, 0x271000000000000L

    or-long/2addr v4, v10

    .line 198
    iput-wide v4, v9, Lcom/neverland/engbook/allstyles/e;->a:J

    :cond_2f
    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v4, v2, v14

    if-eqz v4, :cond_30

    .line 199
    iget-wide v2, v9, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v22

    iput-wide v2, v9, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 200
    iget-wide v2, v9, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v28

    iput-wide v2, v9, Lcom/neverland/engbook/allstyles/e;->a:J

    :cond_30
    if-eqz v8, :cond_aa

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 201
    :goto_d
    array-length v4, v8

    if-ge v2, v4, :cond_aa

    .line 202
    aget-object v4, v8, v2

    if-eqz v4, :cond_50

    aget-object v4, v8, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_31

    goto/16 :goto_18

    :cond_31
    if-nez v3, :cond_46

    .line 203
    aget-object v4, v8, v2

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    aget-object v4, v8, v2

    const-string v5, "100"

    .line 204
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    aget-object v4, v8, v2

    const-string v5, "200"

    .line 205
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    aget-object v4, v8, v2

    const-string v5, "300"

    .line 206
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    aget-object v4, v8, v2

    const-string v5, "400"

    .line 207
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    aget-object v4, v8, v2

    const-string v5, "500"

    .line 208
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    aget-object v4, v8, v2

    const-string v5, "600"

    .line 209
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto/16 :goto_15

    .line 210
    :cond_32
    aget-object v4, v8, v2

    const-string v5, "bold"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    aget-object v4, v8, v2

    const-string v5, "700"

    .line 211
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    aget-object v4, v8, v2

    const-string v5, "800"

    .line 212
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    aget-object v4, v8, v2

    const-string v5, "900"

    .line 213
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto/16 :goto_14

    .line 214
    :cond_33
    aget-object v4, v8, v2

    const-string v5, "italic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    aget-object v4, v8, v2

    const-string v5, "oblique"

    .line 215
    invoke-virtual {v5, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto/16 :goto_13

    .line 216
    :cond_34
    aget-object v4, v8, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/neverland/d/b/a;->C(C)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 217
    iget-wide v3, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v3, v12

    cmp-long v5, v3, v14

    if-eqz v5, :cond_42

    .line 218
    aget-object v3, v8, v2

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 219
    aget-object v3, v8, v2

    aget-object v4, v8, v2

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 220
    :cond_35
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 221
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    aget-object v5, v8, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v3, v3, v4

    iget-object v5, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 223
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v5, v3, v4

    iget v4, v5, Lcom/neverland/engbook/allstyles/d;->a:I

    const/16 v5, 0x14

    if-eq v4, v7, :cond_3f

    const/4 v9, 0x2

    if-eq v4, v9, :cond_3c

    if-eq v4, v6, :cond_39

    const/4 v9, 0x4

    if-eq v4, v9, :cond_39

    const/4 v9, 0x5

    if-eq v4, v9, :cond_36

    goto/16 :goto_12

    :cond_36
    const/4 v4, 0x0

    .line 224
    aget-object v9, v3, v4

    iget-wide v9, v9, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v11, v9, v16

    if-lez v11, :cond_42

    .line 225
    aget-object v2, v3, v4

    iget-wide v2, v2, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v9

    add-double v2, v2, v20

    double-to-int v2, v2

    if-ge v2, v5, :cond_37

    const/16 v2, 0x14

    goto :goto_e

    :cond_37
    const/16 v3, 0x1ff

    if-le v2, v3, :cond_38

    const/16 v2, 0x1ff

    .line 226
    :cond_38
    :goto_e
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v9, 0x1000000000000000L

    int-to-long v6, v2

    const-wide/16 v18, 0x64

    mul-long v6, v6, v18

    const/16 v11, 0x2c

    shl-long/2addr v6, v11

    or-long/2addr v6, v9

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_12

    :cond_39
    const/4 v4, 0x0

    .line 227
    aget-object v6, v3, v4

    iget-wide v6, v6, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v9, v6, v16

    if-lez v9, :cond_42

    .line 228
    aget-object v2, v3, v4

    iget-wide v2, v2, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v6

    add-double v2, v2, v20

    double-to-int v2, v2

    if-ge v2, v5, :cond_3a

    const/16 v2, 0x14

    goto :goto_f

    :cond_3a
    const/16 v3, 0x1ff

    if-le v2, v3, :cond_3b

    const/16 v2, 0x1ff

    .line 229
    :cond_3b
    :goto_f
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->a:J

    int-to-long v6, v2

    const-wide/16 v9, 0x64

    mul-long v6, v6, v9

    const/16 v9, 0x2c

    shl-long/2addr v6, v9

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_12

    :cond_3c
    const/4 v4, 0x0

    .line 230
    aget-object v6, v3, v4

    iget-wide v6, v6, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v9, v6, v16

    if-lez v9, :cond_42

    .line 231
    aget-object v2, v3, v4

    iget-wide v2, v2, Lcom/neverland/engbook/allstyles/d;->b:D

    add-double v2, v2, v20

    double-to-int v2, v2

    if-ge v2, v5, :cond_3d

    const/16 v2, 0x14

    goto :goto_10

    :cond_3d
    const/16 v3, 0x1ff

    if-le v2, v3, :cond_3e

    const/16 v2, 0x1ff

    .line 232
    :cond_3e
    :goto_10
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->a:J

    int-to-long v6, v2

    const-wide/16 v9, 0x64

    mul-long v6, v6, v9

    const/16 v9, 0x2c

    shl-long/2addr v6, v9

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_12

    :cond_3f
    const/4 v4, 0x0

    .line 233
    aget-object v6, v3, v4

    iget-wide v6, v6, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v9, v6, v16

    if-lez v9, :cond_42

    .line 234
    aget-object v2, v3, v4

    iget-wide v2, v2, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v6

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v2, v6

    add-double v2, v2, v20

    double-to-int v2, v2

    if-ge v2, v5, :cond_40

    const/16 v2, 0x14

    goto :goto_11

    :cond_40
    const/16 v3, 0x1ff

    if-le v2, v3, :cond_41

    const/16 v2, 0x1ff

    .line 235
    :cond_41
    :goto_11
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v6, 0x1000000000000000L

    int-to-long v9, v2

    const-wide/16 v18, 0x64

    mul-long v9, v9, v18

    const/16 v11, 0x2c

    shl-long/2addr v9, v11

    or-long/2addr v6, v9

    or-long/2addr v4, v6

    iput-wide v4, v3, Lcom/neverland/engbook/allstyles/e;->a:J

    :cond_42
    :goto_12
    const/4 v3, 0x1

    goto/16 :goto_18

    .line 236
    :cond_43
    :goto_13
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v9, 0x2

    or-long/2addr v5, v9

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_18

    .line 237
    :cond_44
    :goto_14
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v5, v12

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_18

    .line 238
    :cond_45
    :goto_15
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v9, -0x2

    and-long/2addr v5, v9

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_18

    .line 239
    :cond_46
    iget-wide v4, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v6, v4, v14

    if-eqz v6, :cond_50

    .line 240
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 241
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->e:J

    and-long v5, v5, v28

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_18

    .line 242
    :cond_47
    aget-object v4, v8, v2

    const-string v5, "mono"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4f

    aget-object v4, v8, v2

    const-string v6, "Courier"

    .line 243
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4f

    aget-object v4, v8, v2

    const-string v6, "courier"

    .line 244
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_48

    goto/16 :goto_17

    .line 245
    :cond_48
    aget-object v4, v8, v2

    const-string v6, "fantasy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4e

    aget-object v4, v8, v2

    const-string v6, "title"

    .line 246
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_49

    goto/16 :goto_16

    .line 247
    :cond_49
    aget-object v4, v8, v2

    const-string v6, "firstletter"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_4a

    .line 248
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v5, v5, v28

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v9, 0x3000000

    or-long/2addr v5, v9

    .line 249
    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_18

    .line 250
    :cond_4a
    aget-object v4, v8, v2

    const-string v5, "custom1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4b

    .line 251
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v5, v5, v28

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v9, 0x4000000

    or-long/2addr v5, v9

    .line 252
    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_18

    .line 253
    :cond_4b
    aget-object v4, v8, v2

    const-string v5, "custom2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4c

    .line 254
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v5, v5, v28

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v9, 0x5000000

    or-long/2addr v5, v9

    .line 255
    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_18

    .line 256
    :cond_4c
    aget-object v4, v8, v2

    const-string v5, "custom3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4d

    .line 257
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v5, v5, v28

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v9, 0x6000000

    or-long/2addr v5, v9

    .line 258
    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_18

    .line 259
    :cond_4d
    aget-object v4, v8, v2

    const-string v5, "custom4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_50

    .line 260
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v5, v5, v28

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long v5, v5, v22

    .line 261
    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_18

    .line 262
    :cond_4e
    :goto_16
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v5, v5, v28

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v9, 0x2000000

    or-long/2addr v5, v9

    .line 263
    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_18

    .line 264
    :cond_4f
    :goto_17
    iget-object v4, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v5, v5, v28

    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v9, 0x1000000

    or-long/2addr v5, v9

    .line 265
    iput-wide v5, v4, Lcom/neverland/engbook/allstyles/e;->a:J

    :cond_50
    :goto_18
    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_d

    .line 266
    :sswitch_17
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v1, v8

    cmp-long v3, v1, v14

    if-eqz v3, :cond_aa

    .line 267
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v2

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 270
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->D(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 271
    :sswitch_18
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 272
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v4, -0x1c0000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    goto/16 :goto_31

    .line 273
    :cond_51
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v4, 0x1c0000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    .line 274
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, -0x1c0000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    .line 275
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "disc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_52

    .line 276
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, 0x40000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 277
    :cond_52
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "circle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_53

    .line 278
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, 0x80000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 279
    :cond_53
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "square"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_54

    .line 280
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, 0xc0000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 281
    :cond_54
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "upper-roman"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_55

    .line 282
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, 0x180000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 283
    :cond_55
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "lower-roman"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_56

    .line 284
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, 0x1c0000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 285
    :cond_56
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "upper-alpha"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_5a

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "upper-latin"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_57

    goto :goto_1a

    .line 286
    :cond_57
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "lower-alpha"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_59

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v3, "lower-latin"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_58

    goto :goto_19

    .line 287
    :cond_58
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, -0x1c0000000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 288
    :cond_59
    :goto_19
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, 0x140000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 289
    :cond_5a
    :goto_1a
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    const-wide v4, 0x100000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 290
    :sswitch_19
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v3, 0xc

    and-long/2addr v1, v3

    cmp-long v3, v1, v14

    if-eqz v3, :cond_aa

    .line 291
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 292
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 293
    :goto_1b
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_5b

    move v2, v1

    const/4 v1, 0x3

    goto :goto_1c

    .line 294
    :cond_5b
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v2, v2, v1

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    move-result v2

    .line 295
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    add-int/lit8 v4, v1, 0x1

    aget-object v1, v3, v1

    iget v1, v1, Lcom/neverland/engbook/allstyles/d;->a:I

    if-nez v1, :cond_5c

    const/4 v1, 0x3

    const/4 v2, 0x0

    goto :goto_1c

    :cond_5c
    const/4 v1, 0x3

    if-le v4, v1, :cond_5d

    const/4 v2, 0x4

    goto :goto_1c

    .line 296
    :cond_5d
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v2, v3, :cond_61

    move v2, v4

    :goto_1c
    const/4 v3, 0x1

    if-eq v2, v3, :cond_60

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5f

    if-eq v2, v1, :cond_5e

    :goto_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 297
    :cond_5e
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v5, v2, v1

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    goto :goto_1d

    .line 298
    :cond_5f
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v5, v2, v4

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v5, v2}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    .line 299
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v5, v2, v1

    aget-object v1, v2, v3

    invoke-virtual {v5, v1}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    goto :goto_1e

    :cond_60
    const/4 v4, 0x0

    .line 300
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v2, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    .line 301
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x2

    aget-object v3, v1, v2

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    .line 302
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x3

    aget-object v3, v1, v2

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    .line 303
    :goto_1e
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->E(Lcom/neverland/engbook/allstyles/d;)V

    .line 304
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->D(Lcom/neverland/engbook/allstyles/d;)V

    .line 305
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->B(Lcom/neverland/engbook/allstyles/d;)V

    .line 306
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->C(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 307
    :cond_61
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v1, v4

    goto/16 :goto_1b

    .line 308
    :sswitch_1a
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v1, v8

    cmp-long v4, v1, v14

    if-eqz v4, :cond_aa

    .line 309
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 312
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->z(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 313
    :sswitch_1b
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v4, 0xc

    and-long/2addr v1, v4

    cmp-long v4, v1, v14

    if-eqz v4, :cond_aa

    .line 314
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 315
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 316
    :goto_1f
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_62

    move v2, v1

    const/4 v1, 0x3

    goto :goto_20

    .line 317
    :cond_62
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v2, v2, v1

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    move-result v2

    .line 318
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    add-int/lit8 v4, v1, 0x1

    aget-object v1, v3, v1

    iget v1, v1, Lcom/neverland/engbook/allstyles/d;->a:I

    if-nez v1, :cond_63

    const/4 v1, 0x3

    const/4 v2, 0x0

    goto :goto_20

    :cond_63
    const/4 v1, 0x3

    if-le v4, v1, :cond_64

    const/4 v2, 0x4

    goto :goto_20

    .line 319
    :cond_64
    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v2, v3, :cond_68

    move v2, v4

    :goto_20
    const/4 v3, 0x1

    if-eq v2, v3, :cond_67

    const/4 v4, 0x2

    if-eq v2, v4, :cond_66

    if-eq v2, v1, :cond_65

    :goto_21
    const/4 v4, 0x0

    goto :goto_22

    .line 320
    :cond_65
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v5, v2, v1

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    goto :goto_21

    .line 321
    :cond_66
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v5, v2, v4

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v5, v2}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    .line 322
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v5, v2, v1

    aget-object v1, v2, v3

    invoke-virtual {v5, v1}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    goto :goto_22

    :cond_67
    const/4 v4, 0x0

    .line 323
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v2, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    .line 324
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x2

    aget-object v3, v1, v2

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    .line 325
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x3

    aget-object v3, v1, v2

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Lcom/neverland/engbook/allstyles/d;->a(Lcom/neverland/engbook/allstyles/d;)V

    .line 326
    :goto_22
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->A(Lcom/neverland/engbook/allstyles/d;)V

    .line 327
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->z(Lcom/neverland/engbook/allstyles/d;)V

    .line 328
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->w(Lcom/neverland/engbook/allstyles/d;)V

    .line 329
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->y(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 330
    :cond_68
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v1, v4

    goto/16 :goto_1f

    .line 331
    :sswitch_1c
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 332
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->g:J

    goto/16 :goto_31

    .line 333
    :cond_69
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 334
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->c:J

    .line 335
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "uppercase"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 336
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->c:J

    goto/16 :goto_31

    .line 337
    :cond_6a
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "lowercase"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 338
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->c:J

    goto/16 :goto_31

    .line 339
    :cond_6b
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "capitalize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 340
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->c:J

    goto/16 :goto_31

    .line 341
    :sswitch_1d
    iget-wide v2, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v2, v10

    cmp-long v4, v2, v14

    if-nez v4, :cond_aa

    .line 342
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 343
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6c

    const/4 v3, 0x0

    aget-object v4, v2, v3

    const-string v3, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 344
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v4, -0xffff000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    goto/16 :goto_31

    .line 345
    :cond_6c
    array-length v3, v2

    if-lez v3, :cond_aa

    move-wide/from16 v4, v18

    const/4 v3, 0x0

    .line 346
    :goto_23
    array-length v6, v2

    if-ge v3, v6, :cond_71

    .line 347
    aget-object v6, v2, v3

    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 348
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v6, 0xffff000000L

    or-long/2addr v2, v6

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    .line 349
    iput-wide v14, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    :goto_24
    const/4 v3, 0x0

    goto :goto_26

    .line 350
    :cond_6d
    aget-object v6, v2, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_70

    aget-object v6, v2, v3

    const-string v7, "transparent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6e

    goto :goto_25

    :cond_6e
    cmp-long v6, v4, v18

    if-nez v6, :cond_6f

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t(Ljava/lang/StringBuilder;)J

    move-result-wide v4

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 352
    :cond_70
    :goto_25
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v6, -0xffff000001L

    and-long/2addr v2, v6

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    goto :goto_24

    :cond_71
    const/4 v3, 0x1

    :goto_26
    if-eqz v3, :cond_aa

    cmp-long v1, v4, v18

    if-nez v1, :cond_72

    const-wide/16 v4, 0x888

    .line 353
    :cond_72
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v6, 0xffff000000L

    or-long/2addr v2, v6

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->h:J

    const-wide v2, 0xf000000000L

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide v4, 0xffff000000L

    and-long/2addr v2, v4

    .line 354
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->d:J

    goto/16 :goto_31

    .line 355
    :sswitch_1e
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v3, 0x4

    and-long/2addr v1, v3

    cmp-long v3, v1, v14

    if-eqz v3, :cond_aa

    .line 356
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 357
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v2

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 359
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neverland/engbook/allstyles/AlCSSHtml;->E(Lcom/neverland/engbook/allstyles/d;)V

    goto/16 :goto_31

    .line 360
    :sswitch_1f
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 361
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, -0x19

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 362
    :cond_73
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "sub"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 363
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 364
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x19

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    .line 365
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 366
    :cond_74
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "super"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 367
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v2, v8

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 368
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x19

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v2, v8

    .line 369
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 370
    :sswitch_20
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/c;->e:J

    and-long/2addr v1, v12

    cmp-long v3, v1, v14

    if-eqz v3, :cond_aa

    .line 371
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "xx-small"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 372
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 373
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, 0x1169b00000000000L    # 8.674712434456729E-225

    or-long/2addr v2, v4

    .line 374
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 375
    :cond_75
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "x-small"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 376
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 377
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v4, 0x11b2000000000000L

    or-long/2addr v2, v4

    .line 378
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 379
    :cond_76
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "small"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 380
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 381
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, 0x1208d00000000000L    # 8.580324809135828E-222

    or-long/2addr v2, v4

    .line 382
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 383
    :cond_77
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "medium"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 384
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 385
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v4, 0x1271000000000000L    # 7.524750341432569E-220

    or-long/2addr v2, v4

    .line 386
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 387
    :cond_78
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "large"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 388
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 389
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v4, 0x12ee000000000000L

    or-long/2addr v2, v4

    .line 390
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 391
    :cond_79
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "x-large"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 392
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 393
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v4, 0x1384000000000000L

    or-long/2addr v2, v4

    .line 394
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 395
    :cond_7a
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "xx-large"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 396
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 397
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v4, 0x1438000000000000L

    or-long/2addr v2, v4

    .line 398
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 399
    :cond_7b
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "larger"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 400
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 401
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v4, 0x2ee000000000000L

    or-long/2addr v2, v4

    .line 402
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 403
    :cond_7c
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "smaller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 404
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 405
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, 0x208d00000000000L

    or-long/2addr v2, v4

    .line 406
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 407
    :cond_7d
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 408
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v2

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 410
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v3, v1, v2

    iget v3, v3, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_86

    const/4 v4, 0x3

    if-eq v3, v4, :cond_82

    const/4 v4, 0x4

    if-eq v3, v4, :cond_82

    const/4 v4, 0x5

    if-eq v3, v4, :cond_7e

    goto/16 :goto_31

    .line 411
    :cond_7e
    aget-object v3, v1, v2

    iget-wide v3, v3, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v5, v3, v16

    if-lez v5, :cond_81

    .line 412
    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    add-double v1, v1, v20

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_7f

    const/4 v7, 0x1

    goto :goto_27

    :cond_7f
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_80

    const/16 v7, 0x1ff

    goto :goto_27

    :cond_80
    move v7, v1

    .line 413
    :goto_27
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 414
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v4, 0x1000000000000000L

    int-to-long v6, v7

    const-wide/16 v8, 0x64

    mul-long v6, v6, v8

    const/16 v8, 0x2c

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 415
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 416
    :cond_81
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    return-object v1

    .line 417
    :cond_82
    aget-object v3, v1, v2

    iget-wide v3, v3, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v5, v3, v16

    if-lez v5, :cond_85

    .line 418
    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    add-double v1, v1, v20

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_83

    const/4 v7, 0x1

    goto :goto_28

    :cond_83
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_84

    const/16 v7, 0x1ff

    goto :goto_28

    :cond_84
    move v7, v1

    .line 419
    :goto_28
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 420
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    int-to-long v4, v7

    const-wide/16 v6, 0x64

    mul-long v4, v4, v6

    const/16 v6, 0x2c

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 421
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 422
    :cond_85
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    return-object v1

    .line 423
    :cond_86
    aget-object v3, v1, v2

    iget-wide v3, v3, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v5, v3, v16

    if-lez v5, :cond_89

    .line 424
    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/neverland/engbook/allstyles/d;->b:D

    add-double v1, v1, v20

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_87

    const/4 v7, 0x1

    goto :goto_29

    :cond_87
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_88

    const/16 v7, 0x1ff

    goto :goto_29

    :cond_88
    move v7, v1

    .line 425
    :goto_29
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 426
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    int-to-long v4, v7

    const-wide/16 v6, 0x64

    mul-long v4, v4, v6

    const/16 v6, 0x2c

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 427
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 428
    :cond_89
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    return-object v1

    .line 429
    :cond_8a
    aget-object v3, v1, v2

    iget-wide v3, v3, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v5, v3, v16

    if-lez v5, :cond_8d

    .line 430
    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    div-double/2addr v1, v3

    add-double v1, v1, v20

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_8b

    const/4 v7, 0x1

    goto :goto_2a

    :cond_8b
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_8c

    const/16 v7, 0x1ff

    goto :goto_2a

    :cond_8c
    move v7, v1

    .line 431
    :goto_2a
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long v2, v2, v26

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 432
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    and-long v2, v2, v24

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/high16 v4, 0x1000000000000000L

    int-to-long v6, v7

    const-wide/16 v8, 0x64

    mul-long v6, v6, v8

    const/16 v8, 0x2c

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 433
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 434
    :cond_8d
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    return-object v1

    .line 435
    :sswitch_21
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 436
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, -0x61

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 437
    :cond_8e
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 438
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x60

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 439
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x61

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 440
    :cond_8f
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "line-through"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "strike"

    .line 441
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    goto :goto_2b

    .line 442
    :cond_90
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "underline"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 443
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 444
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 445
    :cond_91
    :goto_2b
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v2, v10

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 446
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v2, v10

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 447
    :sswitch_22
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 448
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, -0x3

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 449
    :cond_92
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 450
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x3

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 451
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "italic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "oblique"

    .line 452
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 453
    :cond_93
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 454
    :sswitch_23
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 455
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, -0x101

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 456
    :cond_94
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 457
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 458
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x101

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 459
    :cond_95
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 460
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, -0x101

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 461
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 462
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v2

    iget-object v3, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->t:Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lcom/neverland/engbook/allstyles/d;->b(Lcom/neverland/engbook/allstyles/d;Ljava/lang/StringBuilder;)I

    .line 464
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->u:[Lcom/neverland/engbook/allstyles/d;

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/neverland/engbook/allstyles/d;->b:D

    cmpl-double v3, v1, v20

    if-ltz v3, :cond_aa

    .line 465
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 466
    :sswitch_24
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide v2, 0x4008000000L

    if-eqz v1, :cond_96

    .line 467
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 468
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, -0x4008000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 469
    :cond_96
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v4, "nowrap"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 470
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 471
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, -0x4008000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 472
    :cond_97
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v4, "pre-line"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 473
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 474
    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, -0x8000001

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, 0x4000000000L

    or-long/2addr v2, v4

    .line 475
    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 476
    :cond_98
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v4, "pre"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 477
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v4, v2

    iput-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 478
    iget-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 479
    :cond_99
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v4, "pre-wrap"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 480
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    or-long/2addr v4, v2

    iput-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 481
    iget-wide v4, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 482
    :sswitch_25
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide v5, 0xf0000000L

    or-long/2addr v3, v5

    iput-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 483
    iget-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v5, -0xf0000001L

    and-long/2addr v3, v5

    iput-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 484
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 485
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide v4, -0xf0000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto/16 :goto_31

    .line 486
    :cond_9a
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "text"

    .line 487
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9b

    goto/16 :goto_31

    .line 488
    :cond_9b
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "link"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 489
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x10000000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 490
    :cond_9c
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "bold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "custom1"

    .line 491
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9d

    goto/16 :goto_30

    .line 492
    :cond_9d
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "italic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "custom2"

    .line 493
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9e

    goto/16 :goto_2f

    .line 494
    :cond_9e
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "bolditalic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "custom3"

    .line 495
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9f

    goto :goto_2e

    .line 496
    :cond_9f
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "code"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a3

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "custom4"

    .line 497
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a0

    goto :goto_2d

    .line 498
    :cond_a0
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "fantasy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "title"

    .line 499
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a1

    goto :goto_2c

    .line 500
    :cond_a1
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "firstletter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 501
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x70000000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 502
    :cond_a2
    :goto_2c
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x60000000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 503
    :cond_a3
    :goto_2d
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x50000000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 504
    :cond_a4
    :goto_2e
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x40000000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto/16 :goto_31

    .line 505
    :cond_a5
    :goto_2f
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x30000000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_31

    .line 506
    :cond_a6
    :goto_30
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide/32 v4, 0x20000000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_31

    .line 507
    :sswitch_26
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide v5, 0x400000000L

    or-long/2addr v3, v5

    iput-wide v3, v2, Lcom/neverland/engbook/allstyles/e;->e:J

    .line 508
    iget-object v2, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 509
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    const-wide v4, -0x400000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->e:J

    goto :goto_31

    .line 510
    :cond_a7
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 511
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, 0x400000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_31

    .line 512
    :cond_a8
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->s:Ljava/lang/StringBuilder;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 513
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, 0x400000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    goto :goto_31

    .line 514
    :cond_a9
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    const-wide v4, -0x400000001L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/neverland/engbook/allstyles/e;->a:J

    .line 515
    :cond_aa
    :goto_31
    iget-object v1, v0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7eac1e40 -> :sswitch_26
        -0x7d4c4227 -> :sswitch_25
        -0x7798b19e -> :sswitch_24
        -0x76849a64 -> :sswitch_23
        -0x72a7794d -> :sswitch_22
        -0x6f4cadaf -> :sswitch_21
        -0x5e89b141 -> :sswitch_20
        -0x5cf9de12 -> :sswitch_1f
        -0x5987fe67 -> :sswitch_1e
        -0x52738bd4 -> :sswitch_1d
        -0x4b414134 -> :sswitch_1c
        -0x40737a52 -> :sswitch_1b
        -0x34ed1ec3 -> :sswitch_1a
        -0x300fc3ef -> :sswitch_19
        -0x2b238c3e -> :sswitch_18
        -0x17a0fea0 -> :sswitch_17
        0x300c4f -> :sswitch_16
        0x5a72f63 -> :sswitch_15
        0x67812a2 -> :sswitch_14
        0x88e4367 -> :sswitch_13
        0x91bd0fe -> :sswitch_12
        0x1239793b -> :sswitch_d
        0x19b7d150 -> :sswitch_21
        0x1a02c6ec -> :sswitch_d
        0x223a8d50 -> :sswitch_c
        0x23b0f9b6 -> :sswitch_b
        0x24147e04 -> :sswitch_a
        0x26b7a68b -> :sswitch_9
        0x28846843 -> :sswitch_8
        0x29de0908 -> :sswitch_d
        0x2c7a9a65 -> :sswitch_7
        0x312ffc20 -> :sswitch_6
        0x381698c6 -> :sswitch_5
        0x525d8d81 -> :sswitch_6
        0x63a518c2 -> :sswitch_4
        0x6cb4b434 -> :sswitch_d
        0x7099594c -> :sswitch_3
        0x73b66312 -> :sswitch_2
        0x756c34b6 -> :sswitch_1
        0x7c565f2a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1239793b -> :sswitch_11
        0x1a02c6ec -> :sswitch_10
        0x29de0908 -> :sswitch_f
        0x6cb4b434 -> :sswitch_e
    .end sparse-switch
.end method

.method public v(Lcom/neverland/engbook/allstyles/a;)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    iget-object v0, v0, Lcom/neverland/engbook/allstyles/a;->f:Lcom/neverland/engbook/allstyles/e;

    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/16 v3, 0xff

    and-long v5, v1, v3

    const/4 v7, 0x0

    shr-long/2addr v5, v7

    long-to-int v6, v5

    const-wide/32 v8, 0xff00

    and-long/2addr v8, v1

    const/16 v5, 0x8

    shr-long/2addr v8, v5

    long-to-int v9, v8

    int-to-long v10, v6

    cmp-long v8, v10, v3

    if-eqz v8, :cond_0

    int-to-long v12, v9

    cmp-long v8, v12, v3

    if-nez v8, :cond_6

    .line 2
    :cond_0
    iget v8, v0, Lcom/neverland/engbook/allstyles/e;->i:I

    const-wide v12, -0xff00ff01L

    const-wide/32 v14, -0xff0100

    if-nez v8, :cond_3

    if-eqz v6, :cond_1

    .line 3
    iget-wide v3, v0, Lcom/neverland/engbook/allstyles/e;->f:J

    and-long/2addr v3, v14

    iput-wide v3, v0, Lcom/neverland/engbook/allstyles/e;->f:J

    and-long/2addr v1, v14

    .line 4
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    :cond_1
    if-eqz v9, :cond_2

    .line 5
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->f:J

    and-long/2addr v1, v12

    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 6
    iget-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    and-long/2addr v1, v12

    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    :cond_2
    return-void

    :cond_3
    rsub-int/lit8 v6, v8, 0x64

    cmp-long v8, v10, v3

    if-nez v8, :cond_4

    int-to-long v7, v9

    cmp-long v16, v7, v3

    if-nez v16, :cond_4

    and-long/2addr v1, v14

    .line 7
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    and-long/2addr v1, v12

    .line 8
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    shr-int/lit8 v3, v6, 0x1

    int-to-long v3, v3

    const/4 v6, 0x0

    shl-long v6, v3, v6

    or-long/2addr v1, v6

    .line 9
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 10
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    goto :goto_0

    :cond_4
    cmp-long v7, v10, v3

    if-nez v7, :cond_5

    and-long/2addr v1, v14

    .line 11
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    const/4 v3, 0x0

    shl-int/lit8 v3, v6, 0x0

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 12
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    goto :goto_0

    :cond_5
    int-to-long v7, v9

    cmp-long v9, v7, v3

    if-nez v9, :cond_6

    and-long/2addr v1, v12

    .line 13
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    int-to-long v3, v6

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 14
    iput-wide v1, v0, Lcom/neverland/engbook/allstyles/e;->b:J

    :cond_6
    :goto_0
    return-void
.end method

.method public w(Lcom/neverland/engbook/allstyles/d;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 4
    :goto_0
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    mul-double v0, v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0xfe

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    move-wide v2, v4

    goto :goto_1

    :cond_3
    move-wide v2, v0

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide v4, 0xff0000000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 6
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xff0000000001L

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 7
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    return-void
.end method

.method public x(Lcom/neverland/engbook/allstyles/d;)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v3, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    div-double/2addr v3, v5

    iput-wide v3, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 4
    :goto_0
    iget-wide v3, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double v3, v3, v5

    iput-wide v3, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const/4 p1, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, v3, v5

    if-gez v9, :cond_2

    sub-double/2addr v3, v7

    double-to-long v3, v3

    const-wide/16 v5, -0x1

    mul-long v3, v3, v5

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    add-double/2addr v3, v7

    double-to-long v3, v3

    :goto_1
    const-wide/16 v5, 0x3f

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    move-wide v3, v5

    .line 5
    :cond_3
    iget-object v5, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v6, v5, Lcom/neverland/engbook/allstyles/e;->g:J

    const-wide/high16 v8, 0xff000000000000L

    or-long/2addr v6, v8

    iput-wide v6, v5, Lcom/neverland/engbook/allstyles/e;->g:J

    .line 6
    iget-wide v6, v5, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide v8, -0xff000000000001L

    and-long/2addr v6, v8

    iput-wide v6, v5, Lcom/neverland/engbook/allstyles/e;->c:J

    const/16 v8, 0x30

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_4
    shl-long v0, v3, v8

    or-long/2addr v0, v6

    .line 7
    iput-wide v0, v5, Lcom/neverland/engbook/allstyles/e;->c:J

    goto :goto_2

    :cond_5
    shl-long v0, v3, v8

    const-wide/high16 v2, 0x80000000000000L

    or-long/2addr v0, v2

    or-long/2addr v0, v6

    .line 8
    iput-wide v0, v5, Lcom/neverland/engbook/allstyles/e;->c:J

    :goto_2
    if-eqz p1, :cond_6

    .line 9
    iget-wide v0, v5, Lcom/neverland/engbook/allstyles/e;->c:J

    const-wide/high16 v2, 0x40000000000000L

    or-long/2addr v0, v2

    iput-wide v0, v5, Lcom/neverland/engbook/allstyles/e;->c:J

    :cond_6
    return-void
.end method

.method public y(Lcom/neverland/engbook/allstyles/d;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    div-double/2addr v5, v7

    iput-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 4
    :goto_0
    iget-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    mul-double v5, v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-long v5, v5

    const-wide/16 v7, 0xfe

    cmp-long p1, v5, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, v5, v7

    if-lez p1, :cond_3

    move-wide v2, v7

    goto :goto_1

    :cond_3
    move-wide v2, v5

    :goto_1
    if-eq v0, v4, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    if-eq v0, v1, :cond_5

    const/4 p1, 0x5

    if-eq v0, p1, :cond_5

    goto :goto_2

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/16 v4, 0xff

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 6
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/16 v4, -0x100

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 7
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto :goto_2

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/32 v4, 0xff0000

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 9
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/32 v4, -0xff0001

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    :goto_2
    return-void
.end method

.method public z(Lcom/neverland/engbook/allstyles/d;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/neverland/engbook/allstyles/c;->e:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/neverland/engbook/allstyles/d;->a:I

    const/4 v1, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    div-double/2addr v5, v7

    iput-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    .line 4
    :goto_0
    iget-wide v5, p1, Lcom/neverland/engbook/allstyles/d;->b:D

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    mul-double v5, v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-long v5, v5

    const-wide/16 v7, 0xfe

    cmp-long p1, v5, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, v5, v7

    if-lez p1, :cond_3

    move-wide v2, v7

    goto :goto_1

    :cond_3
    move-wide v2, v5

    :goto_1
    if-eq v0, v4, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    if-eq v0, v1, :cond_5

    const/4 p1, 0x5

    if-eq v0, p1, :cond_5

    goto :goto_2

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide/32 v4, 0xff00

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 6
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide/32 v4, -0xff01

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 7
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    goto :goto_2

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/neverland/engbook/allstyles/AlCSSHtml;->q:Lcom/neverland/engbook/allstyles/e;

    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    const-wide v4, 0xff000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->f:J

    .line 9
    iget-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const-wide v4, -0xff000001L

    and-long/2addr v0, v4

    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Lcom/neverland/engbook/allstyles/e;->b:J

    :goto_2
    return-void
.end method
