.class public final synthetic Lorg/apache/commons/io/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/FileSystem;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/FileSystem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/c;->a:Lorg/apache/commons/io/FileSystem;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/c;->a:Lorg/apache/commons/io/FileSystem;

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileSystem;->g(Lorg/apache/commons/io/FileSystem;I)Z

    move-result p1

    return p1
.end method
