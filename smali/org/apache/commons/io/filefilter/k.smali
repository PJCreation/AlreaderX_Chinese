.class public final synthetic Lorg/apache/commons/io/filefilter/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/k;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/k;->a:Ljava/io/File;

    check-cast p1, Lorg/apache/commons/io/filefilter/w;

    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->g(Ljava/io/File;Lorg/apache/commons/io/filefilter/w;)Z

    move-result p1

    return p1
.end method
