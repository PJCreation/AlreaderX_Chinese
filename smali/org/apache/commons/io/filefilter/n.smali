.class public final synthetic Lorg/apache/commons/io/filefilter/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/commons/io/o/c;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/filefilter/SizeFileFilter;

.field public final synthetic b:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/SizeFileFilter;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/n;->a:Lorg/apache/commons/io/filefilter/SizeFileFilter;

    iput-object p2, p0, Lorg/apache/commons/io/filefilter/n;->b:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/n;->a:Lorg/apache/commons/io/filefilter/SizeFileFilter;

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/n;->b:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/filefilter/SizeFileFilter;->i(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method
