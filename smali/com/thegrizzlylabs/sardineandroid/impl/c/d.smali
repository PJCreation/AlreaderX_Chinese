.class public Lcom/thegrizzlylabs/sardineandroid/impl/c/d;
.super Ljava/lang/Object;
.source "ResourcesResponseHandler.java"

# interfaces
.implements Lcom/thegrizzlylabs/sardineandroid/impl/c/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/thegrizzlylabs/sardineandroid/impl/c/e<",
        "Ljava/util/List<",
        "Lcom/thegrizzlylabs/sardineandroid/a;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lokhttp3/c0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/d;->b(Lokhttp3/c0;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Lokhttp3/c0;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/c0;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/c/c;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/c/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/c/c;->d(Lokhttp3/c0;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Response;

    .line 5
    :try_start_0
    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/a;

    invoke-direct {v2, v1}, Lcom/thegrizzlylabs/sardineandroid/a;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/impl/c/d;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getHref()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Ignore resource with invalid URI %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method
