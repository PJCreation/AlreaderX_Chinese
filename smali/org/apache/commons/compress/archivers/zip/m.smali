.class public Lorg/apache/commons/compress/archivers/zip/m;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "X0016_CertificateIdForCentralDirectory.java"


# instance fields
.field private h:I

.field private i:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    return-void
.end method


# virtual methods
.method public parseFromCentralDirectoryData([BII)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    .line 2
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/m;->h:I

    add-int/lit8 p2, p2, 0x2

    .line 3
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/m;->i:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-void
.end method
