.class Lcom/google/android/material/progressindicator/f$a;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "DeterminateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/progressindicator/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/progressindicator/f;)F
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/material/progressindicator/f;->q(Lcom/google/android/material/progressindicator/f;)F

    move-result p1

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public b(Lcom/google/android/material/progressindicator/f;F)V
    .locals 1

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p2, v0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/material/progressindicator/f;->r(Lcom/google/android/material/progressindicator/f;F)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/progressindicator/f;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/f$a;->a(Lcom/google/android/material/progressindicator/f;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/progressindicator/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/f$a;->b(Lcom/google/android/material/progressindicator/f;F)V

    return-void
.end method
