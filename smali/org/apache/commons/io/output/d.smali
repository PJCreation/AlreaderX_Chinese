.class public Lorg/apache/commons/io/output/d;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# static fields
.field public static final e:Lorg/apache/commons/io/output/d;

.field public static final f:Lorg/apache/commons/io/output/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/d;

    invoke-direct {v0}, Lorg/apache/commons/io/output/d;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/d;->e:Lorg/apache/commons/io/output/d;

    .line 2
    sput-object v0, Lorg/apache/commons/io/output/d;->f:Lorg/apache/commons/io/output/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    return-void
.end method

.method public write([B)V
    .locals 0

    return-void
.end method

.method public write([BII)V
    .locals 0

    return-void
.end method
