.class public Lorg/apache/james/mime4j/d/g;
.super Lorg/apache/james/mime4j/d/a;
.source "BodyPart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected k(Lorg/apache/james/mime4j/dom/field/s;Lorg/apache/james/mime4j/dom/field/s;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/b/o;->n(Lorg/apache/james/mime4j/dom/field/s;Lorg/apache/james/mime4j/dom/field/s;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
