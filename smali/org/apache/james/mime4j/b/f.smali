.class public Lorg/apache/james/mime4j/b/f;
.super Lorg/apache/james/mime4j/b/a;
.source "ContentDispositionFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/e;


# static fields
.field private static final c:Ljava/time/format/DateTimeFormatter;

.field public static final d:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/b/r;->c:Ljava/time/format/DateTimeFormatter;

    sput-object v0, Lorg/apache/james/mime4j/b/f;->c:Ljava/time/format/DateTimeFormatter;

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/b/f$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/f$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/f;->d:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/f;->e:Z

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lorg/apache/james/mime4j/b/f;->f:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/b/f;->g:Ljava/util/Map;

    return-void
.end method

.method private o()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/james/mime4j/b/f;->e:Z

    .line 2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/b/a;->m()Lorg/apache/james/mime4j/stream/r;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/apache/james/mime4j/stream/s;->d:Lorg/apache/james/mime4j/stream/s;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/stream/s;->h(Lorg/apache/james/mime4j/stream/r;)Lorg/apache/james/mime4j/stream/p;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/p;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/b/f;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lorg/apache/james/mime4j/b/f;->f:Ljava/lang/String;

    .line 7
    :goto_0
    new-instance v1, Lorg/apache/james/mime4j/f/j;

    invoke-direct {v1}, Lorg/apache/james/mime4j/f/j;-><init>()V

    .line 8
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/p;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/stream/n;

    .line 9
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/f/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/b/f;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/f/j;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "filename"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/b/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic l()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/james/mime4j/dom/field/d;->a(Lorg/apache/james/mime4j/dom/field/e;)Z

    move-result v0

    return v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/f;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/f;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/f;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
