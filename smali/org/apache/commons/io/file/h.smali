.class public abstract Lorg/apache/commons/io/file/h;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SimplePathVisitor.java"

# interfaces
.implements Ljava/nio/file/FileVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lorg/apache/commons/io/o/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/o/a<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/io/file/a;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/file/a;-><init>(Lorg/apache/commons/io/file/h;)V

    iput-object v0, p0, Lorg/apache/commons/io/file/h;->e:Lorg/apache/commons/io/o/a;

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/file/h;->a(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/h;->e:Lorg/apache/commons/io/o/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/o/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public bridge synthetic visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/h;->c(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
