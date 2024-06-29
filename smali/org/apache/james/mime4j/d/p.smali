.class public Lorg/apache/james/mime4j/d/p;
.super Lorg/apache/james/mime4j/d/d;
.source "MultipartImpl.java"


# instance fields
.field private e:Lorg/apache/james/mime4j/f/e;

.field private transient f:Ljava/lang/String;

.field private transient g:Z

.field private h:Lorg/apache/james/mime4j/f/e;

.field private transient i:Ljava/lang/String;

.field private transient j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/d/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/stream/n;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/d/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/apache/james/mime4j/d/p;->g:Z

    .line 4
    iput-boolean p1, p0, Lorg/apache/james/mime4j/d/p;->j:Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/james/mime4j/d/p;->e:Lorg/apache/james/mime4j/f/e;

    .line 6
    iput-object p1, p0, Lorg/apache/james/mime4j/d/p;->f:Ljava/lang/String;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lorg/apache/james/mime4j/d/p;->g:Z

    .line 8
    iput-object p1, p0, Lorg/apache/james/mime4j/d/p;->h:Lorg/apache/james/mime4j/f/e;

    .line 9
    iput-object p1, p0, Lorg/apache/james/mime4j/d/p;->i:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lorg/apache/james/mime4j/d/p;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/james/mime4j/f/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/d/p;->h:Lorg/apache/james/mime4j/f/e;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/d/p;->i:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/apache/james/mime4j/d/p;->j:Z

    return-void
.end method

.method public d(Lorg/apache/james/mime4j/f/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/d/p;->e:Lorg/apache/james/mime4j/f/e;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/d/p;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/apache/james/mime4j/d/p;->g:Z

    return-void
.end method
