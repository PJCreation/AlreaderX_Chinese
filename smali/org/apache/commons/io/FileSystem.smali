.class public final enum Lorg/apache/commons/io/FileSystem;
.super Ljava/lang/Enum;
.source "FileSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/FileSystem;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GENERIC:Lorg/apache/commons/io/FileSystem;

.field public static final enum LINUX:Lorg/apache/commons/io/FileSystem;

.field public static final enum MAC_OSX:Lorg/apache/commons/io/FileSystem;

.field public static final enum WINDOWS:Lorg/apache/commons/io/FileSystem;

.field private static final e:Z

.field private static final f:Z

.field private static final g:Z

.field private static final h:Lorg/apache/commons/io/FileSystem;

.field private static final synthetic i:[Lorg/apache/commons/io/FileSystem;


# instance fields
.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:[I

.field private final n:I

.field private final o:I

.field private final p:[Ljava/lang/String;

.field private final q:Z

.field private final r:Z

.field private final s:C

.field private final t:C


# direct methods
.method static constructor <clinit>()V
    .locals 42

    .line 1
    new-instance v13, Lorg/apache/commons/io/FileSystem;

    const/4 v14, 0x1

    new-array v8, v14, [I

    const/4 v15, 0x0

    aput v15, v8, v15

    new-array v9, v15, [Ljava/lang/String;

    const-string v1, "GENERIC"

    const/4 v2, 0x0

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x2f

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v13, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    .line 2
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v3, v15, [Ljava/lang/String;

    const-string v17, "LINUX"

    const/16 v18, 0x1

    const/16 v19, 0x2000

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0xff

    const/16 v23, 0x1000

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x2f

    move-object/from16 v16, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-direct/range {v16 .. v28}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    .line 3
    new-instance v2, Lorg/apache/commons/io/FileSystem;

    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    new-array v5, v15, [Ljava/lang/String;

    const-string v30, "MAC_OSX"

    const/16 v31, 0x2

    const/16 v32, 0x1000

    const/16 v33, 0x1

    const/16 v34, 0x1

    const/16 v35, 0xff

    const/16 v36, 0x400

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x2f

    move-object/from16 v29, v2

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    invoke-direct/range {v29 .. v41}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v2, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    .line 4
    new-instance v4, Lorg/apache/commons/io/FileSystem;

    const/16 v5, 0x29

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    const/16 v6, 0x18

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "AUX"

    aput-object v7, v6, v15

    const-string v7, "COM1"

    aput-object v7, v6, v14

    const-string v7, "COM2"

    aput-object v7, v6, v1

    const-string v7, "COM3"

    aput-object v7, v6, v3

    const-string v7, "COM4"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    const/4 v7, 0x5

    const-string v9, "COM5"

    aput-object v9, v6, v7

    const/4 v7, 0x6

    const-string v9, "COM6"

    aput-object v9, v6, v7

    const/4 v7, 0x7

    const-string v9, "COM7"

    aput-object v9, v6, v7

    const/16 v7, 0x8

    const-string v9, "COM8"

    aput-object v9, v6, v7

    const/16 v7, 0x9

    const-string v9, "COM9"

    aput-object v9, v6, v7

    const/16 v7, 0xa

    const-string v9, "CON"

    aput-object v9, v6, v7

    const/16 v7, 0xb

    const-string v9, "CONIN$"

    aput-object v9, v6, v7

    const/16 v7, 0xc

    const-string v9, "CONOUT$"

    aput-object v9, v6, v7

    const/16 v7, 0xd

    const-string v9, "LPT1"

    aput-object v9, v6, v7

    const/16 v7, 0xe

    const-string v9, "LPT2"

    aput-object v9, v6, v7

    const/16 v7, 0xf

    const-string v9, "LPT3"

    aput-object v9, v6, v7

    const/16 v7, 0x10

    const-string v9, "LPT4"

    aput-object v9, v6, v7

    const/16 v7, 0x11

    const-string v9, "LPT5"

    aput-object v9, v6, v7

    const/16 v7, 0x12

    const-string v9, "LPT6"

    aput-object v9, v6, v7

    const/16 v7, 0x13

    const-string v9, "LPT7"

    aput-object v9, v6, v7

    const/16 v7, 0x14

    const-string v9, "LPT8"

    aput-object v9, v6, v7

    const/16 v7, 0x15

    const-string v9, "LPT9"

    aput-object v9, v6, v7

    const/16 v7, 0x16

    const-string v9, "NUL"

    aput-object v9, v6, v7

    const/16 v7, 0x17

    const-string v9, "PRN"

    aput-object v9, v6, v7

    const-string v17, "WINDOWS"

    const/16 v18, 0x3

    const/16 v19, 0x1000

    const/16 v20, 0x0

    const/16 v23, 0x7d00

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x5c

    move-object/from16 v16, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    invoke-direct/range {v16 .. v28}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v4, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    new-array v5, v8, [Lorg/apache/commons/io/FileSystem;

    aput-object v13, v5, v15

    aput-object v0, v5, v14

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    .line 5
    sput-object v5, Lorg/apache/commons/io/FileSystem;->i:[Lorg/apache/commons/io/FileSystem;

    const-string v0, "Linux"

    .line 6
    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->e:Z

    const-string v0, "Mac"

    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->f:Z

    const-string v0, "Windows"

    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->g:Z

    .line 9
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->a()Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileSystem;->h:Lorg/apache/commons/io/FileSystem;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2f
        0x3a
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x22
        0x2a
        0x2f
        0x3a
        0x3c
        0x3e
        0x3f
        0x5c
        0x7c
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZII[I[",
            "Ljava/lang/String;",
            "ZZC)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/apache/commons/io/FileSystem;->j:I

    .line 3
    iput p6, p0, Lorg/apache/commons/io/FileSystem;->n:I

    .line 4
    iput p7, p0, Lorg/apache/commons/io/FileSystem;->o:I

    const-string p1, "illegalFileNameChars"

    .line 5
    invoke-static {p8, p1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p8, [I

    iput-object p8, p0, Lorg/apache/commons/io/FileSystem;->m:[I

    const-string p1, "reservedFileNames"

    .line 6
    invoke-static {p9, p1}, Lorg/apache/commons/io/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p9, [Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/commons/io/FileSystem;->p:[Ljava/lang/String;

    .line 7
    iput-boolean p10, p0, Lorg/apache/commons/io/FileSystem;->q:Z

    .line 8
    iput-boolean p4, p0, Lorg/apache/commons/io/FileSystem;->l:Z

    .line 9
    iput-boolean p5, p0, Lorg/apache/commons/io/FileSystem;->k:Z

    .line 10
    iput-boolean p11, p0, Lorg/apache/commons/io/FileSystem;->r:Z

    .line 11
    iput-char p12, p0, Lorg/apache/commons/io/FileSystem;->s:C

    .line 12
    invoke-static {p12}, Lorg/apache/commons/io/l;->a(C)C

    move-result p1

    iput-char p1, p0, Lorg/apache/commons/io/FileSystem;->t:C

    return-void
.end method

.method private static a()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 1
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->e:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 3
    :cond_0
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->f:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 5
    :cond_1
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->g:Z

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "os.name"

    .line 1
    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/FileSystem;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/CharSequence;II)I
    .locals 8

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-ge p1, v2, :cond_4

    :goto_0
    if-ge p2, v0, :cond_3

    .line 4
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    const v2, 0x10ffff

    if-gt p1, v2, :cond_6

    .line 5
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    :goto_1
    const/4 v2, 0x1

    add-int/lit8 v4, v0, -0x1

    if-ge p2, v4, :cond_6

    .line 6
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v5, p2, 0x1

    .line 7
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 8
    aget-char v7, p1, v1

    if-ne v4, v7, :cond_5

    aget-char v2, p1, v2

    if-ne v6, v2, :cond_5

    return p2

    :cond_5
    move p2, v5

    goto :goto_1

    :cond_6
    return v3
.end method

.method private e(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->m:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lorg/apache/commons/io/FileSystem;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/FileSystem;->e(I)Z

    move-result p0

    return p0
.end method

.method public static getCurrent()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/FileSystem;->h:Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method private synthetic h(CI)I
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method private static j(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/io/FileSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/FileSystem;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/FileSystem;->i:[Lorg/apache/commons/io/FileSystem;

    invoke-virtual {v0}, [Lorg/apache/commons/io/FileSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->j:I

    return v0
.end method

.method public getIllegalFileNameChars()[C
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->m:[I

    array-length v0, v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/FileSystem;->m:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIllegalFileNameCodePoints()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->m:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getMaxFileNameLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->n:I

    return v0
.end method

.method public getMaxPathLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->o:I

    return v0
.end method

.method public getNameSeparator()C
    .locals 1

    .line 1
    iget-char v0, p0, Lorg/apache/commons/io/FileSystem;->s:C

    return v0
.end method

.method public getReservedFileNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->p:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public synthetic i(CI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/FileSystem;->h(CI)I

    move-result p1

    return p1
.end method

.method public isCasePreserving()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->k:Z

    return v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->l:Z

    return v0
.end method

.method public isLegalFileName(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/io/FileSystem;->n:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->isReservedFileName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/io/c;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/c;-><init>(Lorg/apache/commons/io/FileSystem;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public isReservedFileName(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->k(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->p:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method k(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/16 v0, 0x2e

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileSystem;->d(Ljava/lang/CharSequence;II)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-char v0, p0, Lorg/apache/commons/io/FileSystem;->t:C

    iget-char v1, p0, Lorg/apache/commons/io/FileSystem;->s:C

    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileSystem;->j(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supportsDriveLetter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->r:Z

    return v0
.end method

.method public toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->e(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, "\\0"

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :goto_0
    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    const/4 p2, 0x2

    iget-object v1, p0, Lorg/apache/commons/io/FileSystem;->m:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    const-string p2, "The replacement character \'%s\' cannot be one of the %s illegal characters: %s"

    .line 4
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/apache/commons/io/FileSystem;->n:I

    if-le v0, v2, :cond_2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/io/b;

    invoke-direct {v0, p0, p2}, Lorg/apache/commons/io/b;-><init>(Lorg/apache/commons/io/FileSystem;C)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/String;

    array-length v0, p1

    invoke-direct {p2, p1, v1, v0}, Ljava/lang/String;-><init>([III)V

    return-object p2
.end method
