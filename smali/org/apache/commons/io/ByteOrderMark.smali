.class public Lorg/apache/commons/io/ByteOrderMark;
.super Ljava/lang/Object;
.source "ByteOrderMark.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_8:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_BOM:C = '\ufeff'

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    .line 2
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    .line 3
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    .line 4
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const-string v3, "UTF-32BE"

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

    .line 5
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const-string v2, "UTF-32LE"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

    return-void

    :array_0
    .array-data 4
        0xef
        0xbb
        0xbf
    .end array-data

    :array_1
    .array-data 4
        0xfe
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xfe
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0xfe
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xff
        0xfe
        0x0
        0x0
    .end array-data
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "charsetName"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bytes"

    .line 3
    invoke-static {p2, v0}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 6
    iput-object p1, p0, Lorg/apache/commons/io/ByteOrderMark;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bytes specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No charsetName specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lorg/apache/commons/io/ByteOrderMark;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    array-length v0, v0

    invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 5
    aget v2, v2, v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method public getBytes()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/io/m;->b(I)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget v2, v2, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lorg/apache/commons/io/ByteOrderMark;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "0x"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->f:[I

    aget v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
