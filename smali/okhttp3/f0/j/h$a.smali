.class public final Lokhttp3/f0/j/h$a;
.super Ljava/lang/Object;
.source "Platform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/f0/j/h$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lokhttp3/f0/j/h$a;)Lokhttp3/f0/j/h;
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/f0/j/h$a;->f()Lokhttp3/f0/j/h;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lokhttp3/f0/j/h;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/f0/j/i/c;->a:Lokhttp3/f0/j/i/c;

    invoke-virtual {v0}, Lokhttp3/f0/j/i/c;->b()V

    .line 2
    sget-object v0, Lokhttp3/f0/j/a;->d:Lokhttp3/f0/j/a$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/a$a;->a()Lokhttp3/f0/j/h;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lokhttp3/f0/j/b;->d:Lokhttp3/f0/j/b$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/b$a;->a()Lokhttp3/f0/j/h;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private final e()Lokhttp3/f0/j/h;
    .locals 1

    .line 1
    invoke-direct {p0}, Lokhttp3/f0/j/h$a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lokhttp3/f0/j/d;->d:Lokhttp3/f0/j/d$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/d$a;->b()Lokhttp3/f0/j/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lokhttp3/f0/j/h$a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lokhttp3/f0/j/c;->d:Lokhttp3/f0/j/c$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/c$a;->a()Lokhttp3/f0/j/c;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-direct {p0}, Lokhttp3/f0/j/h$a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lokhttp3/f0/j/g;->d:Lokhttp3/f0/j/g$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/g$a;->a()Lokhttp3/f0/j/g;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Lokhttp3/f0/j/f;->d:Lokhttp3/f0/j/f$a;

    invoke-virtual {v0}, Lokhttp3/f0/j/f$a;->a()Lokhttp3/f0/j/f;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    sget-object v0, Lokhttp3/f0/j/e;->d:Lokhttp3/f0/j/e$b;

    invoke-virtual {v0}, Lokhttp3/f0/j/e$b;->a()Lokhttp3/f0/j/h;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Lokhttp3/f0/j/h;

    invoke-direct {v0}, Lokhttp3/f0/j/h;-><init>()V

    return-object v0
.end method

.method private final f()Lokhttp3/f0/j/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/f0/j/h$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lokhttp3/f0/j/h$a;->d()Lokhttp3/f0/j/h;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lokhttp3/f0/j/h$a;->e()Lokhttp3/f0/j/h;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final i()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final j()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conscrypt"

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final k()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenJSSE"

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lokhttp3/Protocol;

    .line 3
    sget-object v3, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/p;->s(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lokhttp3/Protocol;

    .line 7
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public final c(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokio/b;

    invoke-direct {v0}, Lokio/b;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lokhttp3/f0/j/h$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/b;->U(I)Lokio/b;

    .line 4
    invoke-virtual {v0, v1}, Lokio/b;->Z(Ljava/lang/String;)Lokio/b;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lokio/b;->A()[B

    move-result-object p1

    return-object p1
.end method

.method public final g()Lokhttp3/f0/j/h;
    .locals 1

    .line 1
    invoke-static {}, Lokhttp3/f0/j/h;->a()Lokhttp3/f0/j/h;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    const-string v0, "java.vm.name"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
