.class public Lorg/apache/james/mime4j/codec/c;
.super Ljava/lang/Object;
.source "DecodeMonitor.java"


# static fields
.field public static final a:Lorg/apache/james/mime4j/codec/c;

.field public static final b:Lorg/apache/james/mime4j/codec/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/codec/c$a;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/c$a;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/c;->a:Lorg/apache/james/mime4j/codec/c;

    .line 2
    new-instance v0, Lorg/apache/james/mime4j/codec/c;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/c;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/c;->b:Lorg/apache/james/mime4j/codec/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
