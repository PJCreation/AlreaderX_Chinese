.class public Lorg/apache/james/mime4j/d/l;
.super Ljava/lang/Object;
.source "MaximalBodyDescriptor.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/b;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;


# instance fields
.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->a:Ljava/lang/String;

    const-string v1, "Content-Length"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->b:Ljava/lang/String;

    const-string v1, "Content-Transfer-Encoding"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->c:Ljava/lang/String;

    const-string v1, "Content-Disposition"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->d:Ljava/lang/String;

    const-string v1, "Content-ID"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->e:Ljava/lang/String;

    const-string v1, "Content-MD5"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->f:Ljava/lang/String;

    const-string v1, "Content-Description"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->g:Ljava/lang/String;

    const-string v1, "Content-Language"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->h:Ljava/lang/String;

    const-string v1, "Content-Location"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/d/l;->i:Ljava/lang/String;

    const-string v1, "MIME-Version"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/d/l;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/d/l;->m:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/apache/james/mime4j/d/l;->k:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/apache/james/mime4j/d/l;->l:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/apache/james/mime4j/d/l;->n:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lorg/apache/james/mime4j/d/l;->o:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/d/l;->p:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/l;->p:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/d/l;->c:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/q;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/q;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "7bit"

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/d/l;->l:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mimeType="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/d/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaType="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lorg/apache/james/mime4j/d/l;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subType="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/d/l;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", boundary="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lorg/apache/james/mime4j/d/l;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", charset="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lorg/apache/james/mime4j/d/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
