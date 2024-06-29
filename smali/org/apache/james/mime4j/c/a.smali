.class public Lorg/apache/james/mime4j/c/a;
.super Ljava/lang/Object;
.source "ParserStreamContentHandler.java"

# interfaces
.implements Lorg/apache/james/mime4j/e/a;


# instance fields
.field private final a:Lorg/apache/james/mime4j/dom/c;

.field private final b:Lorg/apache/james/mime4j/d/n;

.field private final c:Lorg/apache/james/mime4j/d/f;

.field private final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/dom/c;Lorg/apache/james/mime4j/d/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/c/a;->a:Lorg/apache/james/mime4j/dom/c;

    .line 3
    new-instance p1, Lorg/apache/james/mime4j/d/j;

    invoke-direct {p1}, Lorg/apache/james/mime4j/d/j;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/c/a;->b:Lorg/apache/james/mime4j/d/n;

    .line 4
    iput-object p2, p0, Lorg/apache/james/mime4j/c/a;->c:Lorg/apache/james/mime4j/d/f;

    .line 5
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    return-void
.end method

.method private n(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' found \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    .line 4
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static o(Ljava/io/InputStream;)Lorg/apache/james/mime4j/f/e;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/f/c;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/f/c;-><init>(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/f/c;->b(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/james/mime4j/d/g;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public b(Lorg/apache/james/mime4j/stream/i;)V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/james/mime4j/dom/e;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/e;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/e;->b(Lorg/apache/james/mime4j/stream/i;)V

    return-void
.end method

.method public c(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/james/mime4j/d/p;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    invoke-static {p1}, Lorg/apache/james/mime4j/c/a;->o(Ljava/io/InputStream;)Lorg/apache/james/mime4j/f/e;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/d/p;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/d/p;->a(Lorg/apache/james/mime4j/f/e;)V

    return-void
.end method

.method public d(Lorg/apache/james/mime4j/stream/b;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/james/mime4j/dom/c;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->c:Lorg/apache/james/mime4j/d/f;

    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lorg/apache/james/mime4j/d/f;->b(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/j;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/apache/james/mime4j/c/a;->c:Lorg/apache/james/mime4j/d/f;

    invoke-interface {p1, p2}, Lorg/apache/james/mime4j/d/f;->a(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/a;

    move-result-object p1

    .line 5
    :goto_0
    iget-object p2, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/james/mime4j/dom/c;

    .line 6
    invoke-interface {p2, p1}, Lorg/apache/james/mime4j/dom/c;->h(Lorg/apache/james/mime4j/dom/b;)V

    return-void
.end method

.method public e(Lorg/apache/james/mime4j/stream/b;)V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/james/mime4j/dom/c;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/c;

    .line 3
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/d;->f()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Lorg/apache/james/mime4j/d/p;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/d/p;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/c;->h(Lorg/apache/james/mime4j/dom/b;)V

    .line 6
    iget-object p1, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/james/mime4j/d/p;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    invoke-static {p1}, Lorg/apache/james/mime4j/c/a;->o(Ljava/io/InputStream;)Lorg/apache/james/mime4j/f/e;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/d/p;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/d/p;->d(Lorg/apache/james/mime4j/f/e;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/james/mime4j/dom/f;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/james/mime4j/c/a;->a:Lorg/apache/james/mime4j/dom/c;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Lorg/apache/james/mime4j/dom/c;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->b:Lorg/apache/james/mime4j/d/n;

    invoke-interface {v0}, Lorg/apache/james/mime4j/d/n;->a()Lorg/apache/james/mime4j/d/m;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/c;

    invoke-interface {v1, v0}, Lorg/apache/james/mime4j/dom/c;->h(Lorg/apache/james/mime4j/dom/b;)V

    .line 6
    iget-object v1, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    new-instance v1, Lorg/apache/james/mime4j/d/k;

    invoke-direct {v1}, Lorg/apache/james/mime4j/d/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/james/mime4j/dom/e;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/e;

    .line 3
    const-class v1, Lorg/apache/james/mime4j/dom/c;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/c;

    invoke-interface {v1, v0}, Lorg/apache/james/mime4j/dom/c;->j(Lorg/apache/james/mime4j/dom/e;)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/james/mime4j/dom/h;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/c/a;->n(Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/d/g;

    invoke-direct {v0}, Lorg/apache/james/mime4j/d/g;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/h;

    invoke-interface {v1, v0}, Lorg/apache/james/mime4j/dom/h;->f(Lorg/apache/james/mime4j/dom/c;)V

    .line 4
    iget-object v1, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/c/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method
