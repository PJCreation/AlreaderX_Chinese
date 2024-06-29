.class public Lokhttp3/a0$a;
.super Ljava/lang/Object;
.source "Request.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private a:Lokhttp3/w;

.field private b:Ljava/lang/String;

.field private c:Lokhttp3/v$a;

.field private d:Lokhttp3/b0;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/a0$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lokhttp3/a0$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lokhttp3/v$a;

    invoke-direct {v0}, Lokhttp3/v$a;-><init>()V

    iput-object v0, p0, Lokhttp3/a0$a;->c:Lokhttp3/v$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/a0;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/a0$a;->e:Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Lokhttp3/a0;->i()Lokhttp3/w;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/a0$a;->a:Lokhttp3/w;

    .line 8
    invoke-virtual {p1}, Lokhttp3/a0;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/a0$a;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lokhttp3/a0;->a()Lokhttp3/b0;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/a0$a;->d:Lokhttp3/b0;

    .line 10
    invoke-virtual {p1}, Lokhttp3/a0;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lokhttp3/a0;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/f0;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 13
    :goto_0
    iput-object v0, p0, Lokhttp3/a0$a;->e:Ljava/util/Map;

    .line 14
    invoke-virtual {p1}, Lokhttp3/a0;->e()Lokhttp3/v;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/v;->e()Lokhttp3/v$a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/a0$a;->c:Lokhttp3/v$a;

    return-void
.end method

.method public static synthetic e(Lokhttp3/a0$a;Lokhttp3/b0;ILjava/lang/Object;)Lokhttp3/a0$a;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lokhttp3/f0/d;->d:Lokhttp3/b0;

    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/a0$a;->d(Lokhttp3/b0;)Lokhttp3/a0$a;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/a0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/a0$a;->g()Lokhttp3/v$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    return-object p0
.end method

.method public b()Lokhttp3/a0;
    .locals 7

    .line 1
    iget-object v1, p0, Lokhttp3/a0$a;->a:Lokhttp3/w;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lokhttp3/a0$a;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lokhttp3/a0$a;->c:Lokhttp3/v$a;

    invoke-virtual {v0}, Lokhttp3/v$a;->d()Lokhttp3/v;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lokhttp3/a0$a;->d:Lokhttp3/b0;

    .line 5
    iget-object v0, p0, Lokhttp3/a0$a;->e:Ljava/util/Map;

    invoke-static {v0}, Lokhttp3/f0/d;->R(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 6
    new-instance v6, Lokhttp3/a0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lokhttp3/a0;-><init>(Lokhttp3/w;Ljava/lang/String;Lokhttp3/v;Lokhttp3/b0;Ljava/util/Map;)V

    return-object v6

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lokhttp3/a0$a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokhttp3/a0$a;->e(Lokhttp3/a0$a;Lokhttp3/b0;ILjava/lang/Object;)Lokhttp3/a0$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lokhttp3/b0;)Lokhttp3/a0$a;
    .locals 1

    const-string v0, "DELETE"

    .line 1
    invoke-virtual {p0, v0, p1}, Lokhttp3/a0$a;->j(Ljava/lang/String;Lokhttp3/b0;)Lokhttp3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public f()Lokhttp3/a0$a;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lokhttp3/a0$a;->j(Ljava/lang/String;Lokhttp3/b0;)Lokhttp3/a0$a;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lokhttp3/v$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/a0$a;->c:Lokhttp3/v$a;

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/a0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/a0$a;->g()Lokhttp3/v$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/v$a;->g(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    return-object p0
.end method

.method public i(Lokhttp3/v;)Lokhttp3/a0$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokhttp3/v;->e()Lokhttp3/v$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/a0$a;->n(Lokhttp3/v$a;)V

    return-object p0
.end method

.method public j(Ljava/lang/String;Lokhttp3/b0;)Lokhttp3/a0$a;
    .locals 3

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v0, "method "

    if-nez p2, :cond_2

    .line 2
    invoke-static {p1}, Lokhttp3/f0/h/f;->e(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_2
    invoke-static {p1}, Lokhttp3/f0/h/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    :goto_1
    invoke-virtual {p0, p1}, Lokhttp3/a0$a;->o(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p2}, Lokhttp3/a0$a;->m(Lokhttp3/b0;)V

    return-object p0

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.isEmpty() == true"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lokhttp3/b0;)Lokhttp3/a0$a;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PUT"

    .line 1
    invoke-virtual {p0, v0, p1}, Lokhttp3/a0$a;->j(Ljava/lang/String;Lokhttp3/b0;)Lokhttp3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Lokhttp3/a0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/a0$a;->g()Lokhttp3/v$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/v$a;->f(Ljava/lang/String;)Lokhttp3/v$a;

    return-object p0
.end method

.method public final m(Lokhttp3/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/a0$a;->d:Lokhttp3/b0;

    return-void
.end method

.method public final n(Lokhttp3/v$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/a0$a;->c:Lokhttp3/v$a;

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/a0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public final p(Lokhttp3/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/a0$a;->a:Lokhttp3/w;

    return-void
.end method

.method public q(Ljava/lang/String;)Lokhttp3/a0$a;
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lkotlin/text/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "this as java.lang.String).substring(startIndex)"

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    .line 3
    invoke-static {p1, v0, v1}, Lkotlin/text/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Lokhttp3/w;->a:Lokhttp3/w$b;

    invoke-virtual {v0, p1}, Lokhttp3/w$b;->d(Ljava/lang/String;)Lokhttp3/w;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/a0$a;->r(Lokhttp3/w;)Lokhttp3/a0$a;

    move-result-object p1

    return-object p1
.end method

.method public r(Lokhttp3/w;)Lokhttp3/a0$a;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/a0$a;->p(Lokhttp3/w;)V

    return-object p0
.end method
