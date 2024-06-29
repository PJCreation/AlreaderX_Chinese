.class public Lorg/apache/commons/io/n/a$a;
.super Lorg/apache/commons/io/n/a;
.source "AbstractOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/n/a<",
        "[B",
        "Lorg/apache/commons/io/n/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/n/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/n/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
