.class public Lcom/thegrizzlylabs/sardineandroid/impl/c/g;
.super Lcom/thegrizzlylabs/sardineandroid/impl/c/f;
.source "VoidResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thegrizzlylabs/sardineandroid/impl/c/f<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/impl/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lokhttp3/c0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/g;->c(Lokhttp3/c0;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public c(Lokhttp3/c0;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/f;->b(Lokhttp3/c0;)V

    const/4 p1, 0x0

    return-object p1
.end method
