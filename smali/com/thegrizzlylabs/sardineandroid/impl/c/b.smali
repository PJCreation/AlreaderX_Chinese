.class public Lcom/thegrizzlylabs/sardineandroid/impl/c/b;
.super Lcom/thegrizzlylabs/sardineandroid/impl/c/f;
.source "InputStreamResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thegrizzlylabs/sardineandroid/impl/c/f<",
        "Ljava/io/InputStream;",
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
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/b;->c(Lokhttp3/c0;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public c(Lokhttp3/c0;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/f;->b(Lokhttp3/c0;)V

    .line 2
    invoke-virtual {p1}, Lokhttp3/c0;->a()Lokhttp3/d0;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/d0;->a()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
