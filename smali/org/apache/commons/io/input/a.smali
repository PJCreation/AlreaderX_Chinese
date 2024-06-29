.class public Lorg/apache/commons/io/input/a;
.super Ljava/io/InputStream;
.source "ClosedInputStream.java"


# static fields
.field public static final e:Lorg/apache/commons/io/input/a;

.field public static final f:Lorg/apache/commons/io/input/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/a;

    invoke-direct {v0}, Lorg/apache/commons/io/input/a;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/a;->e:Lorg/apache/commons/io/input/a;

    .line 2
    sput-object v0, Lorg/apache/commons/io/input/a;->f:Lorg/apache/commons/io/input/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
