.class public final synthetic Lorg/apache/commons/io/filefilter/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/r;->a:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/r;->a:Ljava/nio/file/Path;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/WildcardFilter;->i(Ljava/nio/file/Path;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
