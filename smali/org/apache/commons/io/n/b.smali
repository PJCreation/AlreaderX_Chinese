.class public abstract Lorg/apache/commons/io/n/b;
.super Lorg/apache/commons/io/n/d;
.source "AbstractOriginSupplier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/n/b<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/n/d<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field private a:Lorg/apache/commons/io/n/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/n/a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/n/d;-><init>()V

    return-void
.end method

.method protected static c([B)Lorg/apache/commons/io/n/a$a;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/n/a$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/n/a$a;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method protected b()Lorg/apache/commons/io/n/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/n/a<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/n/b;->a:Lorg/apache/commons/io/n/a;

    return-object v0
.end method

.method public d([B)Lorg/apache/commons/io/n/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/n/b;->c([B)Lorg/apache/commons/io/n/a$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/n/b;->e(Lorg/apache/commons/io/n/a;)Lorg/apache/commons/io/n/b;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lorg/apache/commons/io/n/a;)Lorg/apache/commons/io/n/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/n/a<",
            "**>;)TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/n/b;->a:Lorg/apache/commons/io/n/a;

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/io/n/d;->a()Lorg/apache/commons/io/n/d;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/n/b;

    return-object p1
.end method
