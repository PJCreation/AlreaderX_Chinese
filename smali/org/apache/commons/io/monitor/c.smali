.class public final synthetic Lorg/apache/commons/io/monitor/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/commons/io/monitor/FileEntry;

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/monitor/c;->e:Lorg/apache/commons/io/monitor/FileEntry;

    iput-object p2, p0, Lorg/apache/commons/io/monitor/c;->f:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/io/monitor/c;->e:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v1, p0, Lorg/apache/commons/io/monitor/c;->f:Ljava/io/File;

    check-cast p1, Lorg/apache/commons/io/monitor/i;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->q(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;Lorg/apache/commons/io/monitor/i;)V

    return-void
.end method
