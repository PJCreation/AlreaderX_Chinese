.class public final synthetic Lorg/apache/commons/io/monitor/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/commons/io/monitor/FileAlterationObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/monitor/d;->e:Lorg/apache/commons/io/monitor/FileAlterationObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/monitor/d;->e:Lorg/apache/commons/io/monitor/FileAlterationObserver;

    check-cast p1, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-static {v0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->g(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method
