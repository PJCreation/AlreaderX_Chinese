.class public Lorg/apache/james/mime4j/f/d;
.super Ljava/lang/Object;
.source "ByteArrayOutputStreamRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/f/d$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/apache/commons/io/output/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/f/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/james/mime4j/f/d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/f/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/output/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/io/output/e;

    invoke-direct {v0}, Lorg/apache/commons/io/output/e;-><init>()V

    .line 3
    :cond_0
    new-instance v1, Lorg/apache/james/mime4j/f/d$a;

    invoke-direct {v1, p0, v0}, Lorg/apache/james/mime4j/f/d$a;-><init>(Lorg/apache/james/mime4j/f/d;Lorg/apache/commons/io/output/e;)V

    return-object v1
.end method
