.class final Lkotlin/o/d;
.super Ljava/lang/Object;
.source "Ranges.kt"

# interfaces
.implements Lkotlin/o/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final e:D

.field private final f:D


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/o/d;->f:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/o/d;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lkotlin/o/d;->e:D

    iget-wide v2, p0, Lkotlin/o/d;->f:D

    cmpg-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lkotlin/o/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlin/o/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/o/d;

    invoke-virtual {v0}, Lkotlin/o/d;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    :cond_0
    iget-wide v3, p0, Lkotlin/o/d;->e:D

    check-cast p1, Lkotlin/o/d;

    iget-wide v5, p1, Lkotlin/o/d;->e:D

    cmpg-double v0, v3, v5

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-wide v3, p0, Lkotlin/o/d;->f:D

    iget-wide v5, p1, Lkotlin/o/d;->f:D

    cmpg-double p1, v3, v5

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/o/d;->a()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/o/d;->b()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlin/o/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lkotlin/o/d;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lkotlin/o/d;->f:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lkotlin/o/d;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/o/d;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
