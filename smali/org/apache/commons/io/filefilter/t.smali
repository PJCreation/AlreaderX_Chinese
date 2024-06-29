.class public final synthetic Lorg/apache/commons/io/filefilter/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/commons/io/filefilter/OrFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/OrFileFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/t;->e:Lorg/apache/commons/io/filefilter/OrFileFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/t;->e:Lorg/apache/commons/io/filefilter/OrFileFilter;

    check-cast p1, Lorg/apache/commons/io/filefilter/w;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/w;)V

    return-void
.end method
