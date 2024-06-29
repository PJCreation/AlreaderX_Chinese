.class public Lorg/apache/james/mime4j/b/e;
.super Lorg/apache/james/mime4j/b/a;
.source "ContentDispositionFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/e;


# static fields
.field public static final c:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/b/e$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/e$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/e;->c:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/b/a;-><init>(Lorg/apache/james/mime4j/stream/i;Lorg/apache/james/mime4j/codec/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/apache/james/mime4j/b/e;->d:Z

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lorg/apache/james/mime4j/b/e;->e:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/b/e;->f:Ljava/util/Map;

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/b/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;-><init>(Ljava/io/Reader;)V

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->i()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/b/e;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    iput-object v0, p0, Lorg/apache/james/mime4j/b/e;->g:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    .line 6
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/b/e;->e:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lorg/apache/james/mime4j/b/e;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/a;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/apache/james/mime4j/b/e;->d:Z

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "filename"

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/b/e;->n(Ljava/lang/String;)Ljava/lang/String;

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
    iget-boolean v0, p0, Lorg/apache/james/mime4j/b/e;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/james/mime4j/b/e;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/b/e;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
