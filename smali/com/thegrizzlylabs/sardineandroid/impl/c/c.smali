.class public Lcom/thegrizzlylabs/sardineandroid/impl/c/c;
.super Lcom/thegrizzlylabs/sardineandroid/impl/c/f;
.source "MultiStatusResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thegrizzlylabs/sardineandroid/impl/c/f<",
        "Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;",
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
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/c;->d(Lokhttp3/c0;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/io/InputStream;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;
    .locals 1

    .line 1
    const-class v0, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    invoke-static {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/c/c;->i(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    return-object p1
.end method

.method public d(Lokhttp3/c0;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/f;->b(Lokhttp3/c0;)V

    .line 2
    invoke-virtual {p1}, Lokhttp3/c0;->a()Lokhttp3/d0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lokhttp3/d0;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/c;->c(Ljava/io/InputStream;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;

    invoke-virtual {p1}, Lokhttp3/c0;->o()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/c0;->E()Ljava/lang/String;

    move-result-object p1

    const-string v2, "No entity found in response"

    invoke-direct {v0, v2, v1, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method
