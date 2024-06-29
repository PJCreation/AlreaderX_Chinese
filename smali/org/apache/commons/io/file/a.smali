.class public final synthetic Lorg/apache/commons/io/file/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/commons/io/o/a;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/file/h;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/file/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/a;->a:Lorg/apache/commons/io/file/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/file/a;->a:Lorg/apache/commons/io/file/h;

    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/io/file/h;->b(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
