.class public final synthetic Lorg/apache/commons/io/monitor/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/monitor/i;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/monitor/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/monitor/f;->a:Lorg/apache/commons/io/monitor/i;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/monitor/f;->a:Lorg/apache/commons/io/monitor/i;

    check-cast p1, Lorg/apache/commons/io/monitor/i;

    invoke-static {v0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->h(Lorg/apache/commons/io/monitor/i;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
