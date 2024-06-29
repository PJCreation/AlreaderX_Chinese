.class public Lorg/apache/james/mime4j/f/d$a;
.super Ljava/lang/Object;
.source "ByteArrayOutputStreamRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/apache/james/mime4j/f/d;

.field private final b:Lorg/apache/commons/io/output/e;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/f/d;Lorg/apache/commons/io/output/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/f/d$a;->a:Lorg/apache/james/mime4j/f/d;

    .line 3
    iput-object p2, p0, Lorg/apache/james/mime4j/f/d$a;->b:Lorg/apache/commons/io/output/e;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/io/output/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/f/d$a;->b:Lorg/apache/commons/io/output/e;

    return-object v0
.end method
