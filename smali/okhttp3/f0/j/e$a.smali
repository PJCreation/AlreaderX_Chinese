.class final Lokhttp3/f0/j/e$a;
.super Ljava/lang/Object;
.source "Jdk8WithJettyBootPlatform.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/j/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/f0/j/e$a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/f0/j/e$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/f0/j/e$a;->f:Z

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "method"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    new-array p3, p1, [Ljava/lang/Object;

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "supports"

    .line 3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const-string v2, "unsupported"

    .line 5
    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iput-boolean v4, p0, Lokhttp3/f0/j/e$a;->f:Z

    return-object v3

    :cond_2
    const-string v2, "protocols"

    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    array-length v2, p3

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    iget-object p1, p0, Lokhttp3/f0/j/e$a;->e:Ljava/util/List;

    return-object p1

    :cond_4
    const-string v2, "selectProtocol"

    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    if-nez v2, :cond_5

    const-string v2, "select"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    const-class v2, Ljava/lang/String;

    .line 10
    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    array-length v1, p3

    if-ne v1, v4, :cond_b

    aget-object v1, p3, p1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 11
    aget-object p2, p3, p1

    if-eqz p2, :cond_a

    check-cast p2, Ljava/util/List;

    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ltz p3, :cond_9

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lokhttp3/f0/j/e$a;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    iput-object v2, p0, Lokhttp3/f0/j/e$a;->g:Ljava/lang/String;

    return-object v2

    :cond_6
    if-ne v0, p3, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1

    .line 16
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_9
    :goto_2
    iget-object p2, p0, Lokhttp3/f0/j/e$a;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/f0/j/e$a;->g:Ljava/lang/String;

    return-object p1

    .line 18
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string v1, "protocolSelected"

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "selected"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    array-length v0, p3

    if-ne v0, v4, :cond_e

    .line 20
    aget-object p1, p3, p1

    if-eqz p1, :cond_d

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/f0/j/e$a;->g:Ljava/lang/String;

    return-object v3

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_e
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
