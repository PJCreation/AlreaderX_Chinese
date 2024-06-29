.class public Lorg/apache/james/mime4j/d/i;
.super Ljava/lang/Object;
.source "DefaultMessageBuilder.java"


# instance fields
.field private a:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/apache/james/mime4j/d/n;

.field private c:Lorg/apache/james/mime4j/d/f;

.field private d:Lorg/apache/james/mime4j/stream/k;

.field private e:Lorg/apache/james/mime4j/stream/c;

.field private f:Z

.field private g:Z

.field private h:Lorg/apache/james/mime4j/codec/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/james/mime4j/d/i;->a:Lorg/apache/james/mime4j/dom/d;

    .line 3
    iput-object v0, p0, Lorg/apache/james/mime4j/d/i;->b:Lorg/apache/james/mime4j/d/n;

    .line 4
    iput-object v0, p0, Lorg/apache/james/mime4j/d/i;->c:Lorg/apache/james/mime4j/d/f;

    .line 5
    iput-object v0, p0, Lorg/apache/james/mime4j/d/i;->d:Lorg/apache/james/mime4j/stream/k;

    .line 6
    iput-object v0, p0, Lorg/apache/james/mime4j/d/i;->e:Lorg/apache/james/mime4j/stream/c;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lorg/apache/james/mime4j/d/i;->f:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lorg/apache/james/mime4j/d/i;->g:Z

    .line 9
    iput-object v0, p0, Lorg/apache/james/mime4j/d/i;->h:Lorg/apache/james/mime4j/codec/c;

    return-void
.end method

.method private a()Lorg/apache/james/mime4j/d/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/i;->b:Lorg/apache/james/mime4j/d/n;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/d/j;

    invoke-direct {v0}, Lorg/apache/james/mime4j/d/j;-><init>()V

    .line 2
    :goto_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/d/n;->a()Lorg/apache/james/mime4j/d/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/f;
    .locals 7

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/d/i;->a()Lorg/apache/james/mime4j/d/m;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/d/i;->d:Lorg/apache/james/mime4j/stream/k;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/james/mime4j/stream/k;->b:Lorg/apache/james/mime4j/stream/k;

    .line 3
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/k;->i()Z

    move-result v2

    .line 4
    iget-object v3, p0, Lorg/apache/james/mime4j/d/i;->h:Lorg/apache/james/mime4j/codec/c;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    sget-object v3, Lorg/apache/james/mime4j/codec/c;->a:Lorg/apache/james/mime4j/codec/c;

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/apache/james/mime4j/codec/c;->b:Lorg/apache/james/mime4j/codec/c;

    .line 6
    :goto_1
    iget-object v4, p0, Lorg/apache/james/mime4j/d/i;->e:Lorg/apache/james/mime4j/stream/c;

    if-eqz v4, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    new-instance v4, Lorg/apache/james/mime4j/d/h;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/james/mime4j/d/i;->a:Lorg/apache/james/mime4j/dom/d;

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 8
    invoke-static {}, Lorg/apache/james/mime4j/b/s;->d()Lorg/apache/james/mime4j/dom/d;

    move-result-object v6

    goto :goto_2

    :cond_5
    invoke-static {}, Lorg/apache/james/mime4j/b/u;->d()Lorg/apache/james/mime4j/dom/d;

    move-result-object v6

    :goto_2
    invoke-direct {v4, v5, v6, v3}, Lorg/apache/james/mime4j/d/h;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;Lorg/apache/james/mime4j/codec/c;)V

    .line 9
    :goto_3
    iget-object v5, p0, Lorg/apache/james/mime4j/d/i;->c:Lorg/apache/james/mime4j/d/f;

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    new-instance v5, Lorg/apache/james/mime4j/d/e;

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    invoke-direct {v5, v2}, Lorg/apache/james/mime4j/d/e;-><init>(Z)V

    .line 10
    :goto_5
    new-instance v2, Lorg/apache/james/mime4j/e/b;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/james/mime4j/e/b;-><init>(Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/c;)V

    .line 11
    new-instance v1, Lorg/apache/james/mime4j/c/a;

    invoke-direct {v1, v0, v5}, Lorg/apache/james/mime4j/c/a;-><init>(Lorg/apache/james/mime4j/dom/c;Lorg/apache/james/mime4j/d/f;)V

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/e/b;->c(Lorg/apache/james/mime4j/e/a;)V

    .line 12
    iget-boolean v1, p0, Lorg/apache/james/mime4j/d/i;->f:Z

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/e/b;->b(Z)V

    .line 13
    iget-boolean v1, p0, Lorg/apache/james/mime4j/d/i;->g:Z

    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {v2}, Lorg/apache/james/mime4j/e/b;->d()V

    goto :goto_6

    .line 15
    :cond_8
    invoke-virtual {v2}, Lorg/apache/james/mime4j/e/b;->e()V

    .line 16
    :goto_6
    invoke-virtual {v2, p1}, Lorg/apache/james/mime4j/e/b;->a(Ljava/io/InputStream;)V

    .line 17
    invoke-virtual {v2}, Lorg/apache/james/mime4j/e/b;->f()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v0
.end method

.method public c(Lorg/apache/james/mime4j/stream/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/d/i;->d:Lorg/apache/james/mime4j/stream/k;

    return-void
.end method
