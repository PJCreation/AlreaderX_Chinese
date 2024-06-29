.class public abstract Lorg/apache/james/mime4j/d/d;
.super Ljava/lang/Object;
.source "AbstractMultipart.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/h;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/apache/james/mime4j/dom/c;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/stream/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/stream/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/d/d;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/james/mime4j/d/d;->b:Lorg/apache/james/mime4j/dom/c;

    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/d/d;->c:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lorg/apache/james/mime4j/d/d;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b(Lorg/apache/james/mime4j/dom/c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/d/d;->b:Lorg/apache/james/mime4j/dom/c;

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/d/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/c;

    .line 3
    invoke-interface {v1, p1}, Lorg/apache/james/mime4j/dom/c;->b(Lorg/apache/james/mime4j/dom/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/d;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(Lorg/apache/james/mime4j/dom/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/d/d;->b:Lorg/apache/james/mime4j/dom/c;

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/dom/c;->b(Lorg/apache/james/mime4j/dom/c;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
