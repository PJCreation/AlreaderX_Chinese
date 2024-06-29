.class public Lcom/neverland/engbook/util/f0;
.super Ljava/lang/Object;
.source "InternalFunc.java"


# direct methods
.method public static a(II)I
    .locals 2

    and-int/lit16 p1, p0, 0xf00

    shl-int/lit8 v0, p1, 0xc

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    and-int/lit16 v0, p0, 0xf0

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr p1, v0

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    const/high16 p1, -0x1000000

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(I)I
    .locals 3

    and-int/lit16 v0, p0, 0xf00

    shl-int/lit8 v1, v0, 0xc

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xf0

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 v1, p0, 0x4

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/neverland/engbook/util/f0;->j(I)I

    move-result p0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(II)I
    .locals 7

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    if-nez v0, :cond_1

    return p0

    :cond_1
    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    const/high16 v2, 0xff0000

    and-int v3, p0, v2

    shr-int/lit8 v3, v3, 0x10

    const v4, 0xff00

    and-int v5, p0, v4

    shr-int/lit8 v5, v5, 0x8

    and-int/2addr p0, v1

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    and-int/2addr v4, p1

    shr-int/lit8 v4, v4, 0x8

    and-int/2addr p1, v1

    int-to-float v2, v2

    mul-float v2, v2, v0

    int-to-float v3, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v0

    mul-float v3, v3, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v4

    mul-float v3, v3, v0

    int-to-float v4, v5

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 2
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float p0, p0

    mul-float p0, p0, v6

    add-float/2addr p1, p0

    float-to-int p0, p1

    .line 3
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    shl-int/lit8 p1, v2, 0x10

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static g(Ljava/lang/StringBuilder;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/neverland/engbook/util/f0;->f(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;I)J
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static i(Ljava/lang/StringBuilder;I)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/neverland/engbook/util/f0;->h(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j(I)I
    .locals 4

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xff

    and-int/2addr p0, v2

    shl-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v0

    shl-int/lit8 v0, v1, 0x3

    add-int/2addr v3, v0

    shl-int/lit8 v0, v1, 0x1

    add-int/2addr v3, v0

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v3, p0

    shr-int/lit8 p0, v3, 0x4

    if-le p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    return v2
.end method
