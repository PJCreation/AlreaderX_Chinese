.class Lcom/thegrizzlylabs/sardineandroid/a$a;
.super Ljava/lang/Object;
.source "DavResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thegrizzlylabs/sardineandroid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Date;

.field final b:Ljava/util/Date;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/Long;

.field final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final j:Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

.field final k:Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

.field final synthetic l:Lcom/thegrizzlylabs/sardineandroid/a;


# direct methods
.method constructor <init>(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->l:Lcom/thegrizzlylabs/sardineandroid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->a(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/c/c;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->a:Ljava/util/Date;

    .line 3
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->b(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/c/c;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->b:Ljava/util/Date;

    .line 4
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->d(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->e(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->h:Ljava/lang/Long;

    .line 6
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->f(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->g(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->h(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->f:Ljava/util/List;

    .line 9
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->i(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->g:Ljava/lang/String;

    .line 10
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->j(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->i:Ljava/util/Map;

    .line 11
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->k(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->j:Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    .line 12
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/a;->c(Lcom/thegrizzlylabs/sardineandroid/a;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    move-result-object p1

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/a$a;->k:Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    return-void
.end method
