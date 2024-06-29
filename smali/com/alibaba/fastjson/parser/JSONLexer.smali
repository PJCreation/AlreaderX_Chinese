.class public final Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected fieldHash:J

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_1
    sput-boolean v1, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    .line 5
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    const/16 v1, 0x67

    new-array v1, v1, [I

    .line 6
    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    const/16 v1, 0x30

    const/16 v2, 0x30

    :goto_2
    const/16 v5, 0x39

    if-gt v2, v5, :cond_1

    .line 7
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v6, v2, -0x30

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/16 v2, 0x61

    const/16 v6, 0x61

    :goto_3
    const/16 v7, 0x66

    if-gt v6, v7, :cond_2

    .line 8
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v8, v6, -0x61

    add-int/lit8 v8, v8, 0xa

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/16 v6, 0x41

    const/16 v7, 0x41

    :goto_4
    const/16 v8, 0x46

    if-gt v7, v8, :cond_3

    .line 9
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v7, -0x41

    add-int/lit8 v9, v9, 0xa

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 10
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    sput-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    const/16 v8, 0x100

    new-array v9, v8, [I

    .line 11
    sput-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    .line 12
    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    .line 13
    array-length v0, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v0, :cond_4

    .line 14
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v10, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    aget-char v10, v10, v7

    aput v7, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 15
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/16 v7, 0x3d

    aput v3, v0, v7

    new-array v0, v8, [Z

    .line 16
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    const/4 v0, 0x0

    .line 17
    :goto_6
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v9, v7

    const/16 v10, 0x7a

    const/16 v11, 0x5f

    const/16 v12, 0x5a

    if-ge v0, v9, :cond_8

    if-lt v0, v6, :cond_5

    if-gt v0, v12, :cond_5

    .line 18
    aput-boolean v4, v7, v0

    goto :goto_7

    :cond_5
    if-lt v0, v2, :cond_6

    if-gt v0, v10, :cond_6

    .line 19
    aput-boolean v4, v7, v0

    goto :goto_7

    :cond_6
    if-ne v0, v11, :cond_7

    .line 20
    aput-boolean v4, v7, v0

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_8
    new-array v0, v8, [Z

    .line 21
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    .line 22
    :goto_8
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v7, v0

    if-ge v3, v7, :cond_d

    if-lt v3, v6, :cond_9

    if-gt v3, v12, :cond_9

    .line 23
    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_9
    if-lt v3, v2, :cond_a

    if-gt v3, v10, :cond_a

    .line 24
    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_a
    if-ne v3, v11, :cond_b

    .line 25
    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_b
    if-lt v3, v1, :cond_c

    if-gt v3, v5, :cond_c

    .line 26
    aput-boolean v4, v0, v3

    :cond_c
    :goto_9
    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_8

    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 8
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    .line 9
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 11
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 12
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [C

    .line 13
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 14
    :cond_0
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v3, -0x1

    .line 17
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 18
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    if-lt v3, v2, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const v2, 0xfeff

    if-ne p1, v2, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 21
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const-string v1, ""

    :cond_3
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 22
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 2
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 4

    const/16 v0, 0x31

    const/4 v1, 0x0

    if-lt p0, v0, :cond_d

    const/16 v2, 0x33

    if-le p0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_d

    const/16 v3, 0x39

    if-le p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, p0, :cond_d

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, p0, :cond_d

    if-le p3, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x32

    if-ne p4, p0, :cond_5

    if-lt p5, v0, :cond_4

    if-le p5, v3, :cond_6

    :cond_4
    return v1

    :cond_5
    if-ne p4, v0, :cond_d

    if-eq p5, p0, :cond_6

    if-eq p5, v0, :cond_6

    if-eq p5, p1, :cond_6

    return v1

    :cond_6
    if-ne p6, p0, :cond_8

    if-lt p7, v0, :cond_7

    if-le p7, v3, :cond_c

    :cond_7
    return v1

    :cond_8
    if-eq p6, v0, :cond_b

    if-ne p6, p1, :cond_9

    goto :goto_0

    :cond_9
    if-ne p6, v2, :cond_a

    if-eq p7, p0, :cond_c

    if-eq p7, v0, :cond_c

    :cond_a
    return v1

    :cond_b
    :goto_0
    if-lt p7, p0, :cond_d

    if-le p7, v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v1
.end method

.method static checkTime(CCCCCC)Z
    .locals 4

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    if-lt p1, v2, :cond_0

    if-le p1, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p0, v3, :cond_3

    if-lt p1, v2, :cond_2

    if-le p1, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p0, v3, :cond_b

    if-lt p1, v2, :cond_b

    const/16 p0, 0x34

    if-le p1, p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0x35

    const/16 p1, 0x36

    if-lt p2, v2, :cond_6

    if-gt p2, p0, :cond_6

    if-lt p3, v2, :cond_5

    if-le p3, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p2, p1, :cond_b

    if-eq p3, v2, :cond_7

    return v1

    :cond_7
    if-lt p4, v2, :cond_9

    if-gt p4, p0, :cond_9

    if-lt p5, v2, :cond_8

    if-le p5, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p4, p1, :cond_b

    if-eq p5, v2, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_0
    return v1
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ge p1, v1, :cond_1

    .line 1
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 2
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_6

    .line 4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0xd

    if-ne p2, v5, :cond_5

    div-int/lit8 p2, v4, 0x4e

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    shl-int/2addr p2, v2

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 5
    new-array v5, v4, [B

    .line 6
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v7, v6, :cond_8

    .line 7
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v9, p1

    shl-int/lit8 p1, p1, 0x12

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v10, v9, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr p1, v10

    add-int/lit8 v10, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr p1, v11

    add-int/lit8 v11, v10, 0x1

    .line 8
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    or-int/2addr p1, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, p1, 0x10

    int-to-byte v10, v10

    .line 9
    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, p1, 0x8

    int-to-byte v10, v10

    .line 10
    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte p1, p1

    .line 11
    aput-byte p1, v5, v7

    if-lez p2, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_7

    add-int/lit8 v11, v11, 0x2

    move p1, v11

    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    move p1, v11

    :goto_6
    move v7, v9

    goto :goto_5

    :cond_8
    if-ge v7, v4, :cond_a

    const/4 p2, 0x0

    :goto_7
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_9

    .line 12
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_7

    :cond_9
    const/16 p0, 0x10

    :goto_8
    if-ge v7, v4, :cond_a

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 13
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_8

    :cond_a
    return-object v5
.end method

.method private matchFieldHash(J)I
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x22

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/16 v9, 0x9

    const/16 v10, 0xd

    const/16 v11, 0xa

    const/16 v13, 0x20

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x27

    if-ne v1, v4, :cond_9

    :goto_1
    const-wide v14, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v3

    :goto_2
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v4, v12, :cond_2

    .line 3
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v1, :cond_1

    .line 4
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    add-int/2addr v3, v4

    goto :goto_3

    :cond_1
    int-to-long v5, v12

    xor-long/2addr v5, v14

    const-wide v14, 0x100000001b3L

    mul-long v14, v14, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    cmp-long v1, v14, p1

    if-eqz v1, :cond_3

    .line 5
    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 6
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v7

    .line 7
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 8
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_5

    add-int/2addr v3, v2

    return v3

    :cond_5
    if-gt v1, v13, :cond_8

    if-eq v1, v13, :cond_6

    if-eq v1, v11, :cond_6

    if-eq v1, v10, :cond_6

    if-eq v1, v9, :cond_6

    const/16 v4, 0xc

    if-eq v1, v4, :cond_6

    const/16 v4, 0x8

    if-ne v1, v4, :cond_8

    .line 10
    :cond_6
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    .line 11
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_7

    const/16 v1, 0x1a

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_5
    move v3, v4

    goto :goto_4

    .line 13
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "match feild error expect \':\'"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eq v1, v13, :cond_b

    if-eq v1, v11, :cond_b

    if-eq v1, v10, :cond_b

    if-eq v1, v9, :cond_b

    const/16 v4, 0xc

    if-eq v1, v4, :cond_b

    const/16 v4, 0x8

    if-ne v1, v4, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 15
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v7

    .line 16
    :cond_b
    :goto_6
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    .line 17
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_c

    const/16 v1, 0x1a

    goto :goto_7

    :cond_c
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_7
    move v3, v4

    goto/16 :goto_0
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 12

    .line 1
    new-array v0, p1, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_9

    .line 2
    aget-char v4, p0, v2

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 3
    aput-char v4, v0, v3

    move v3, v5

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 4
    aget-char v4, p0, v2

    const/16 v7, 0x22

    if-eq v4, v7, :cond_8

    const/16 v7, 0x27

    if-eq v4, v7, :cond_7

    const/16 v7, 0x46

    if-eq v4, v7, :cond_6

    if-eq v4, v5, :cond_5

    const/16 v5, 0x62

    if-eq v4, v5, :cond_4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x72

    if-eq v4, v5, :cond_2

    const/16 v5, 0x78

    const/16 v7, 0x10

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 5
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "unclosed.str.lit"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    .line 6
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v4, v3, 0x1

    .line 7
    new-instance v10, Ljava/lang/String;

    new-array v5, v5, [C

    add-int/lit8 v2, v2, 0x1

    aget-char v11, p0, v2

    aput-char v11, v5, v1

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v6

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v9

    add-int/2addr v2, v6

    aget-char v9, p0, v2

    aput-char v9, v5, v8

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    .line 8
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    .line 9
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    .line 10
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x5

    .line 11
    aput-char v5, v0, v3

    goto :goto_1

    :pswitch_6
    add-int/lit8 v4, v3, 0x1

    .line 12
    aput-char v5, v0, v3

    goto :goto_1

    :pswitch_7
    add-int/lit8 v4, v3, 0x1

    .line 13
    aput-char v8, v0, v3

    goto :goto_1

    :pswitch_8
    add-int/lit8 v4, v3, 0x1

    .line 14
    aput-char v9, v0, v3

    goto :goto_1

    :pswitch_9
    add-int/lit8 v4, v3, 0x1

    .line 15
    aput-char v6, v0, v3

    goto :goto_1

    :pswitch_a
    add-int/lit8 v4, v3, 0x1

    .line 16
    aput-char v1, v0, v3

    goto :goto_1

    :pswitch_b
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2f

    .line 17
    aput-char v5, v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 18
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v2, 0x1

    aget-char v8, p0, v2

    aget v8, v5, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/2addr v2, v6

    aget-char v7, p0, v2

    aget v5, v5, v7

    add-int/2addr v8, v5

    int-to-char v5, v8

    aput-char v5, v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    .line 19
    aput-char v5, v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    .line 20
    aput-char v5, v0, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    .line 21
    aput-char v5, v0, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x1

    .line 22
    aput-char v5, v0, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    .line 23
    aput-char v5, v0, v3

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v3, 0x1

    .line 24
    aput-char v7, v0, v3

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v3, 0x1

    .line 25
    aput-char v7, v0, v3

    :goto_1
    move v3, v4

    :goto_2
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 26
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanIdent()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 3
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 8
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_1
    const-string v1, "true"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    .line 10
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_2
    const-string v1, "false"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    .line 12
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_3
    const-string v1, "new"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    .line 14
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_4
    const-string v1, "undefined"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x17

    .line 16
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_5
    const-string v1, "Set"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    .line 18
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_6
    const-string v1, "TreeSet"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    .line 20
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_7
    const/16 v0, 0x12

    .line 21
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_1
    return-void
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 2
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 3
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {p1, v0, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 4
    :cond_0
    new-array v0, p2, [C

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected charAt(I)C
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    return p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/16 v2, 0x2004

    if-gt v1, v2, :cond_0

    .line 2
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 3
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 5
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget p2, p2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 8

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const/16 v3, 0x44

    if-ne v0, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 9
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v4, 0x4c

    if-eq p1, v4, :cond_4

    const/16 v4, 0x53

    if-eq p1, v4, :cond_4

    const/16 v4, 0x42

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 10
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 11
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_6

    .line 12
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, p1, v0

    invoke-virtual {v3, p1, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 13
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_1

    .line 14
    :cond_6
    new-array v2, v0, [C

    .line 15
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, p1, v0

    invoke-virtual {v3, p1, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    move-object p1, v2

    :goto_1
    const/16 v2, 0x9

    if-gt v0, v2, :cond_d

    .line 16
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    if-nez v2, :cond_d

    .line 17
    aget-char v2, p1, v4

    const/16 v3, 0x2d

    const/4 v5, 0x2

    if-ne v2, v3, :cond_7

    .line 18
    aget-char v2, p1, v1

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_8

    .line 19
    aget-char v2, p1, v1

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, -0x30

    :goto_3
    if-ge v5, v0, :cond_b

    .line 20
    aget-char v6, p1, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    if-eqz v4, :cond_a

    mul-int/lit8 v4, v4, 0xa

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    int-to-double v0, v2

    int-to-double v4, v4

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    if-eqz v3, :cond_c

    neg-double v0, v0

    .line 22
    :cond_c
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 23
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v4, v0}, Ljava/lang/String;-><init>([CII)V

    .line 24
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 25
    :goto_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 6

    .line 26
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 27
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 28
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 29
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 30
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 31
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v3, v0, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 32
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v0, v2, v4, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 33
    :cond_2
    new-array v2, v1, [C

    .line 34
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr v1, v0

    invoke-virtual {v3, v0, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 35
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final intValue()I
    .locals 10

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v0

    .line 2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v3, 0x1a

    if-lt v0, v2, :cond_0

    const/16 v2, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x2d

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    const/high16 v2, -0x80000000

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const v2, -0x7fffffff

    const/4 v4, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    add-int/lit8 v5, v0, 0x1

    .line 4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_2

    const/16 v0, 0x1a

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    move v9, v5

    move v5, v0

    move v0, v9

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_9

    add-int/lit8 v7, v0, 0x1

    .line 6
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_4

    const/16 v0, 0x1a

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 7
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    const/16 v8, 0x4c

    if-eq v0, v8, :cond_8

    const/16 v8, 0x53

    if-eq v0, v8, :cond_8

    const/16 v8, 0x42

    if-ne v0, v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, -0x30

    const v8, -0xccccccc

    if-lt v5, v8, :cond_7

    mul-int/lit8 v5, v5, 0xa

    add-int v8, v2, v0

    if-lt v5, v8, :cond_6

    sub-int/2addr v5, v0

    move v0, v7

    goto :goto_3

    .line 8
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    move v0, v7

    :cond_9
    if-eqz v4, :cond_b

    .line 10
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v6

    if-le v0, v1, :cond_a

    return v5

    .line 11
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    neg-int v0, v5

    return v0
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, -0x1

    .line 2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    const/16 v4, 0x53

    const/16 v6, 0x4c

    const/16 v7, 0x42

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x53

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x4c

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x42

    .line 4
    :goto_1
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_4

    const/16 v8, 0x1a

    goto :goto_2

    :cond_4
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_2
    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-ne v8, v9, :cond_5

    const-wide/high16 v8, -0x8000000000000000L

    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    add-int/lit8 v12, v1, 0x1

    .line 6
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v13, :cond_6

    const/16 v1, 0x1a

    goto :goto_4

    :cond_6
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 7
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v13, v1

    move v1, v12

    goto :goto_5

    :cond_7
    const-wide/16 v13, 0x0

    :goto_5
    if-ge v1, v2, :cond_b

    add-int/lit8 v12, v1, 0x1

    .line 8
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v15, :cond_8

    const/16 v1, 0x1a

    goto :goto_6

    :cond_8
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    add-int/lit8 v1, v1, -0x30

    const-wide v15, -0xcccccccccccccccL

    cmp-long v17, v13, v15

    if-gez v17, :cond_9

    .line 10
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_9
    const-wide/16 v15, 0xa

    mul-long v13, v13, v15

    int-to-long v4, v1

    add-long v17, v8, v4

    cmp-long v1, v13, v17

    if-gez v1, :cond_a

    .line 11
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_a
    sub-long/2addr v13, v4

    move v1, v12

    const/16 v4, 0x53

    goto :goto_5

    :cond_b
    if-eqz v11, :cond_10

    .line 12
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v2, v10

    if-le v1, v2, :cond_f

    const-wide/32 v1, -0x80000000

    cmp-long v4, v13, v1

    if-ltz v4, :cond_e

    if-eq v3, v6, :cond_e

    const/16 v1, 0x53

    if-ne v3, v1, :cond_c

    long-to-int v1, v13

    int-to-short v1, v1

    .line 13
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_c
    if-ne v3, v7, :cond_d

    long-to-int v1, v13

    int-to-byte v1, v1

    .line 14
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_d
    long-to-int v1, v13

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 16
    :cond_e
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 17
    :cond_f
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    neg-long v1, v13

    const-wide/32 v4, 0x7fffffff

    cmp-long v8, v1, v4

    if-gtz v8, :cond_13

    if-eq v3, v6, :cond_13

    const/16 v4, 0x53

    if-ne v3, v4, :cond_11

    long-to-int v2, v1

    int-to-short v1, v2

    .line 18
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_11
    if-ne v3, v7, :cond_12

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 19
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_12
    long-to-int v2, v1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 21
    :cond_13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public final isBlankInput()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0x20

    if-gt v2, v3, :cond_1

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final longValue()J
    .locals 13

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v6, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v7, v0

    :goto_1
    move v0, v6

    goto :goto_2

    :cond_1
    const-wide/16 v7, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    add-int/lit8 v6, v0, 0x1

    .line 4
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v9, :cond_2

    const/16 v0, 0x1a

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6

    const/16 v9, 0x42

    if-ne v0, v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x30

    const-wide v9, -0xcccccccccccccccL

    cmp-long v11, v7, v9

    if-ltz v11, :cond_5

    const-wide/16 v9, 0xa

    mul-long v7, v7, v9

    int-to-long v9, v0

    add-long v11, v4, v9

    cmp-long v0, v7, v11

    if-ltz v0, :cond_4

    sub-long/2addr v7, v9

    goto :goto_1

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    move v0, v6

    :cond_7
    if-eqz v2, :cond_9

    .line 8
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v3

    if-le v0, v1, :cond_8

    return-wide v7

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-long v0, v7

    return-wide v0
.end method

.method public matchField(J)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0x22

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/16 v12, 0xc

    const/16 v13, 0x20

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x27

    if-ne v1, v5, :cond_f

    :goto_1
    const-wide v15, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move v5, v2

    move-wide v14, v15

    .line 3
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v6, :cond_2

    .line 4
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_1

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    goto :goto_3

    :cond_1
    int-to-long v7, v6

    xor-long/2addr v7, v14

    const-wide v14, 0x100000001b3L

    mul-long v14, v14, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    cmp-long v1, v14, p1

    if-eqz v1, :cond_3

    .line 5
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 6
    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    return v10

    .line 7
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    .line 8
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_b

    .line 10
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    .line 11
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_5

    const/16 v2, 0x1a

    goto :goto_5

    :cond_5
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    const/16 v4, 0x7b

    if-ne v2, v4, :cond_7

    add-int/2addr v1, v3

    .line 13
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 14
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_6

    const/16 v14, 0x1a

    goto :goto_6

    :cond_6
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_6
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 16
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_9

    :cond_7
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_9

    add-int/2addr v1, v3

    .line 17
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 18
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_8

    const/16 v14, 0x1a

    goto :goto_7

    :cond_8
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_7
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xe

    .line 20
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_9

    .line 21
    :cond_9
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 22
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_a

    const/16 v14, 0x1a

    goto :goto_8

    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_8
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_9
    return v3

    :cond_b
    if-gt v1, v13, :cond_e

    if-eq v1, v13, :cond_c

    if-eq v1, v9, :cond_c

    const/16 v4, 0xd

    if-eq v1, v4, :cond_c

    const/16 v4, 0x9

    if-eq v1, v4, :cond_c

    if-eq v1, v12, :cond_c

    const/16 v4, 0x8

    if-ne v1, v4, :cond_e

    .line 25
    :cond_c
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v2

    .line 26
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_d

    const/16 v1, 0x1a

    goto :goto_a

    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_a
    move v2, v4

    goto/16 :goto_4

    .line 28
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "match feild error expect \':\'"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-gt v1, v13, :cond_12

    if-eq v1, v13, :cond_10

    if-eq v1, v9, :cond_10

    const/16 v5, 0xd

    if-eq v1, v5, :cond_10

    const/16 v5, 0x9

    if-eq v1, v5, :cond_10

    if-eq v1, v12, :cond_10

    const/16 v5, 0x8

    if-ne v1, v5, :cond_12

    .line 29
    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v4

    .line 30
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_11

    const/16 v1, 0x1a

    goto :goto_b

    :cond_11
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_b
    move v4, v5

    goto/16 :goto_0

    :cond_12
    const-wide/16 v1, 0x0

    .line 32
    iput-wide v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 33
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v10
.end method

.method public next()C
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v0
.end method

.method public final nextIdent()V
    .locals 2

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 4
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    :goto_3
    return-void

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public final nextToken()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2
    :goto_0
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 3
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    :cond_0
    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 6
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_4
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_5

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0x10

    .line 8
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_5
    const/16 v5, 0xc

    if-eq v3, v5, :cond_20

    const/16 v6, 0xd

    if-eq v3, v6, :cond_20

    const/16 v7, 0x20

    if-eq v3, v7, :cond_20

    const/16 v8, 0x3a

    if-eq v3, v8, :cond_1f

    const/16 v9, 0x5b

    const/4 v10, 0x1

    const/16 v11, 0x1a

    if-eq v3, v9, :cond_1d

    const/16 v9, 0x5d

    if-eq v3, v9, :cond_1c

    const/16 v12, 0x66

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/16 v15, 0xa

    const/16 v1, 0x7d

    if-eq v3, v12, :cond_19

    const/16 v12, 0x6e

    if-eq v3, v12, :cond_14

    const/16 v12, 0x7b

    if-eq v3, v12, :cond_12

    if-eq v3, v1, :cond_10

    const/16 v12, 0x53

    if-eq v3, v12, :cond_f

    const/16 v12, 0x54

    if-eq v3, v12, :cond_f

    const/16 v12, 0x74

    if-eq v3, v12, :cond_c

    const/16 v1, 0x75

    if-eq v3, v1, :cond_f

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 9
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-eq v2, v1, :cond_7

    if-ne v3, v11, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_9

    .line 10
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_8

    .line 11
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 12
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    goto :goto_3

    .line 13
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "EOF error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/16 v1, 0x1f

    if-le v3, v1, :cond_b

    const/16 v1, 0x7f

    if-ne v3, v1, :cond_a

    goto :goto_4

    .line 14
    :cond_a
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_3
    return-void

    .line 16
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_9

    .line 17
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0xb

    .line 18
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 19
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 20
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 21
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    .line 22
    :cond_c
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 23
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 24
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v7, :cond_d

    if-eq v2, v4, :cond_d

    if-eq v2, v1, :cond_d

    if-eq v2, v9, :cond_d

    if-eq v2, v15, :cond_d

    if-eq v2, v6, :cond_d

    if-eq v2, v13, :cond_d

    if-eq v2, v11, :cond_d

    if-eq v2, v5, :cond_d

    if-eq v2, v14, :cond_d

    if-ne v2, v8, :cond_e

    :cond_d
    const/4 v1, 0x6

    .line 25
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 26
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scan true error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    return-void

    :cond_10
    add-int/2addr v2, v10

    .line 28
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 29
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_11

    goto :goto_5

    :cond_11
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_5
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 31
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_12
    add-int/2addr v2, v10

    .line 32
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 33
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_13

    goto :goto_6

    :cond_13
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 35
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 36
    :cond_14
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 37
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0x8

    goto :goto_7

    .line 38
    :cond_15
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v8, "new"

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 39
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0x9

    goto :goto_7

    :cond_16
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_18

    .line 40
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v7, :cond_17

    if-eq v3, v4, :cond_17

    if-eq v3, v1, :cond_17

    if-eq v3, v9, :cond_17

    if-eq v3, v15, :cond_17

    if-eq v3, v6, :cond_17

    if-eq v3, v13, :cond_17

    if-eq v3, v11, :cond_17

    if-eq v3, v5, :cond_17

    if-ne v3, v14, :cond_18

    .line 41
    :cond_17
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 42
    :cond_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scan null/new error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_19
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v10, "false"

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 44
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 45
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v7, :cond_1a

    if-eq v2, v4, :cond_1a

    if-eq v2, v1, :cond_1a

    if-eq v2, v9, :cond_1a

    if-eq v2, v15, :cond_1a

    if-eq v2, v6, :cond_1a

    if-eq v2, v13, :cond_1a

    if-eq v2, v11, :cond_1a

    if-eq v2, v5, :cond_1a

    if-eq v2, v14, :cond_1a

    if-ne v2, v8, :cond_1b

    :cond_1a
    const/4 v1, 0x7

    .line 46
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 47
    :cond_1b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scan false error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0xf

    .line 49
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_1d
    add-int/2addr v2, v10

    .line 50
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 51
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_1e

    goto :goto_8

    :cond_1e
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_8
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xe

    .line 53
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 54
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0x11

    .line 55
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 56
    :cond_20
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextToken(I)V
    .locals 10

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    const/4 v0, 0x2

    const/16 v1, 0xd

    const/16 v2, 0x39

    const/16 v3, 0x22

    const/16 v4, 0x30

    const/16 v5, 0xe

    const/16 v6, 0x5b

    const/16 v7, 0x7b

    const/16 v8, 0xc

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    const/16 v9, 0x1a

    if-eq p1, v0, :cond_d

    if-eq p1, v8, :cond_9

    const/16 v0, 0x12

    if-eq p1, v0, :cond_8

    const/16 v0, 0x14

    if-eq p1, v0, :cond_7

    const/16 v2, 0xf

    const/16 v3, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 58
    :pswitch_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    const/16 p1, 0x10

    .line 59
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 60
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 61
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_1
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_1
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_3

    .line 63
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 64
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 65
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_2
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_3
    if-ne v4, v3, :cond_5

    .line 67
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 68
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 69
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_5
    if-ne v4, v9, :cond_15

    .line 71
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 72
    :pswitch_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v3, :cond_7

    .line 73
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 75
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v6, :cond_6

    .line 76
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_6
    if-ne v0, v7, :cond_15

    .line 78
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 80
    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v9, :cond_15

    .line 81
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 82
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    return-void

    .line 83
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v7, :cond_b

    .line 84
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 85
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 86
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_b
    if-ne v0, v6, :cond_15

    .line 88
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 89
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 90
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_5
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    .line 92
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_e

    .line 93
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_e
    if-lt v0, v4, :cond_f

    if-gt v0, v2, :cond_f

    .line 95
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_f
    if-ne v0, v7, :cond_15

    .line 97
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 98
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 99
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    .line 101
    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v4, :cond_12

    if-gt v0, v2, :cond_12

    .line 102
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_12
    if-ne v0, v3, :cond_13

    .line 104
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_13
    if-ne v0, v6, :cond_14

    .line 106
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_14
    if-ne v0, v7, :cond_15

    .line 108
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 110
    :cond_15
    :goto_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_17

    const/16 v2, 0xa

    if-eq v0, v2, :cond_17

    if-eq v0, v1, :cond_17

    const/16 v1, 0x9

    if-eq v0, v1, :cond_17

    if-eq v0, v8, :cond_17

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    goto :goto_8

    .line 111
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    .line 112
    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, p1, :cond_1

    .line 3
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_1
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    :cond_1
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 4
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanBoolean()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v2, "false"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v4, "true"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x4

    goto :goto_0

    .line 3
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x31

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    .line 4
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v1

    :cond_3
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1
.end method

.method public scanFieldBoolean(J)Z
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, p1

    const-string v2, "false"

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x5

    :goto_0
    const/4 p2, 0x0

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "true"

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/2addr p1, v1

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"false\""

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"true\""

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x6

    goto :goto_1

    .line 7
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0x31

    if-ne p2, v5, :cond_5

    add-int/2addr p1, v4

    goto :goto_1

    .line 8
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0x30

    if-ne p2, v5, :cond_6

    add-int/2addr p1, v4

    goto :goto_0

    .line 9
    :cond_6
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"1\""

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/2addr p1, v3

    goto :goto_1

    .line 10
    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"0\""

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_16

    add-int/2addr p1, v3

    goto :goto_0

    .line 11
    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, p1, 0x1

    add-int/2addr v5, p1

    .line 12
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v7, 0x1a

    if-lt v5, p1, :cond_8

    const/16 p1, 0x1a

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v5, 0x10

    const/16 v8, 0x2c

    if-ne p1, v8, :cond_a

    .line 14
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v4

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v4

    .line 15
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 16
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_4
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 18
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 19
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return p2

    :cond_a
    const/16 v9, 0xd

    const/16 v10, 0x7d

    if-eq p1, v10, :cond_d

    const/16 v11, 0x20

    if-eq p1, v11, :cond_b

    const/16 v11, 0xa

    if-eq p1, v11, :cond_b

    if-eq p1, v9, :cond_b

    const/16 v11, 0x9

    if-eq p1, v11, :cond_b

    const/16 v11, 0xc

    if-eq p1, v11, :cond_b

    const/16 v11, 0x8

    if-ne p1, v11, :cond_d

    .line 20
    :cond_b
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr p1, v6

    .line 21
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v6, :cond_c

    const/16 p1, 0x1a

    goto :goto_5

    :cond_c
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 22
    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_5
    move v6, v5

    goto :goto_3

    :cond_d
    if-ne p1, v10, :cond_15

    .line 23
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result p1

    if-ne p1, v8, :cond_f

    .line 24
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 25
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v4

    .line 26
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 27
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_e

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_6
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_f
    const/16 v5, 0x5d

    if-ne p1, v5, :cond_11

    const/16 p1, 0xf

    .line 29
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 30
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v4

    .line 31
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 32
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_10

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_11
    if-ne p1, v10, :cond_13

    .line 34
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 35
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v4

    .line 36
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 37
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_12

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_13
    if-ne p1, v7, :cond_14

    const/16 p1, 0x14

    .line 39
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 40
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 41
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 42
    :goto_9
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return p2

    .line 43
    :cond_14
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 44
    :cond_15
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 45
    :cond_16
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public scanFieldDate(J)Ljava/util/Date;
    .locals 13

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, v1

    .line 5
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v5, 0x1a

    if-lt p1, v4, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    const/16 v4, 0x22

    const/4 v6, -0x1

    if-ne p1, v4, :cond_5

    .line 7
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, p1, v3

    add-int/lit8 v8, v3, 0x1

    add-int/2addr p1, v3

    .line 8
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v8

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-eq p1, v6, :cond_4

    sub-int/2addr p1, v7

    .line 11
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    add-int/2addr v8, p1

    add-int/lit8 p1, v8, 0x1

    add-int/2addr v8, v1

    .line 14
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 15
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    goto/16 :goto_6

    .line 16
    :cond_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 17
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 18
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/16 v0, 0x30

    if-lt p1, v0, :cond_16

    const/16 v7, 0x39

    if-gt p1, v7, :cond_16

    sub-int/2addr p1, v0

    int-to-long v8, p1

    .line 19
    :goto_2
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v3, 0x1

    add-int/2addr p1, v3

    .line 20
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v3, :cond_6

    const/16 p1, 0x1a

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    if-lt p1, v0, :cond_7

    if-gt p1, v7, :cond_7

    const-wide/16 v11, 0xa

    mul-long v8, v8, v11

    add-int/lit8 p1, p1, -0x30

    int-to-long v11, p1

    add-long/2addr v8, v11

    move v3, v10

    goto :goto_2

    :cond_7
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_8

    .line 22
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    :cond_8
    if-ne p1, v4, :cond_a

    .line 23
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v10, 0x1

    add-int/2addr p1, v10

    .line 24
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v3, :cond_9

    const/16 p1, 0x1a

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    move v3, p1

    move p1, v0

    goto :goto_5

    :cond_a
    move v3, p1

    move p1, v10

    :goto_5
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gez v0, :cond_b

    .line 26
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 27
    :cond_b
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_6
    const/16 v4, 0x10

    const/16 v7, 0x2c

    if-ne v3, v7, :cond_d

    .line 28
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, p2, 0x1

    .line 29
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 30
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, p1, :cond_c

    goto :goto_7

    :cond_c
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_7
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 32
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 33
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v0

    :cond_d
    const/16 v8, 0x7d

    if-ne v3, v8, :cond_15

    .line 34
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, p1, 0x1

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result p1

    if-ne p1, v7, :cond_f

    .line 35
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 36
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 37
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 38
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_e

    goto :goto_8

    :cond_e
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_f
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_11

    const/16 p1, 0xf

    .line 40
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 41
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 42
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 43
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_10

    goto :goto_9

    :cond_10
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_9
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_11
    if-ne p1, v8, :cond_13

    const/16 p1, 0xd

    .line 45
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 46
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 47
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 48
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_12

    goto :goto_a

    :cond_12
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_a
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_13
    if-ne p1, v5, :cond_14

    const/16 p1, 0x14

    .line 50
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 51
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 52
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 p1, 0x4

    .line 53
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v0

    .line 54
    :cond_14
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 55
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 56
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 57
    :cond_15
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 58
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 59
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 60
    :cond_16
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2
.end method

.method public final scanFieldDouble(J)D
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    .line 3
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, v5, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/16 v9, 0x2d

    if-ne v2, v9, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_2

    add-int/lit8 v2, v6, 0x1

    add-int/2addr v5, v6

    .line 5
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    move v6, v2

    move v2, v5

    :cond_2
    const/4 v5, -0x1

    const/16 v11, 0x30

    if-lt v2, v11, :cond_15

    const/16 v12, 0x39

    if-gt v2, v12, :cond_15

    sub-int/2addr v2, v11

    .line 6
    :goto_1
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v13, v6

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_3

    if-gt v6, v12, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v2, v6

    move v6, v14

    goto :goto_1

    :cond_3
    const/16 v13, 0x2e

    if-ne v6, v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    const/16 v15, 0xa

    if-eqz v13, :cond_7

    .line 7
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_6

    if-gt v6, v12, :cond_6

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v6, v11

    add-int/2addr v2, v6

    const/16 v6, 0xa

    .line 8
    :goto_3
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v13, 0x1

    add-int/2addr v14, v13

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    if-lt v13, v11, :cond_5

    if-gt v13, v12, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v2, v13

    mul-int/lit8 v6, v6, 0xa

    move/from16 v13, v16

    goto :goto_3

    :cond_5
    move/from16 v14, v16

    move/from16 v17, v13

    move v13, v6

    move/from16 v6, v17

    goto :goto_4

    .line 9
    :cond_6
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_7
    const/4 v13, 0x1

    :goto_4
    const/16 v1, 0x65

    if-eq v6, v1, :cond_9

    const/16 v1, 0x45

    if-ne v6, v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_c

    .line 10
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    const/16 v14, 0x2b

    if-eq v6, v14, :cond_b

    if-ne v6, v9, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v14, v16

    goto :goto_9

    .line 11
    :cond_b
    :goto_7
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v16, 0x1

    add-int v6, v6, v16

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    :goto_8
    move v14, v9

    :goto_9
    if-lt v6, v11, :cond_c

    if-gt v6, v12, :cond_c

    .line 12
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    goto :goto_8

    .line 13
    :cond_c
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v9, v14

    sub-int/2addr v9, v7

    sub-int/2addr v9, v8

    if-nez v1, :cond_d

    if-ge v9, v15, :cond_d

    int-to-double v1, v2

    int-to-double v11, v13

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v11

    if-eqz v10, :cond_e

    neg-double v1, v1

    goto :goto_a

    .line 15
    :cond_d
    invoke-direct {v0, v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_e
    :goto_a
    const/16 v7, 0x10

    const/16 v9, 0x2c

    if-ne v6, v9, :cond_f

    .line 17
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v14, v8

    add-int/2addr v3, v14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v3, 0x3

    .line 19
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 20
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-wide v1

    :cond_f
    const/16 v10, 0x7d

    if-ne v6, v10, :cond_14

    .line 21
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_10

    .line 22
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 23
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_10
    const/16 v7, 0x5d

    if-ne v6, v7, :cond_11

    const/16 v3, 0xf

    .line 25
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 26
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_11
    if-ne v6, v10, :cond_12

    const/16 v3, 0xd

    .line 28
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 29
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_12
    const/16 v7, 0x1a

    if-ne v6, v7, :cond_13

    .line 31
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v3, 0x14

    .line 32
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 33
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 v3, 0x4

    .line 34
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v1

    .line 35
    :cond_13
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 36
    :cond_14
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 37
    :cond_15
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 6
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 7
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 8
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [D

    const/4 v9, 0x0

    .line 10
    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v11, v10, v4

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_6

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v10, v4

    .line 11
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v4, :cond_5

    const/16 v4, 0x1a

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    :cond_6
    const/16 v10, 0x30

    if-lt v2, v10, :cond_26

    const/16 v15, 0x39

    if-gt v2, v15, :cond_26

    add-int/lit8 v2, v2, -0x30

    .line 13
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v6, v4

    .line 14
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v4, :cond_7

    const/16 v4, 0x1a

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    if-lt v4, v10, :cond_8

    if-gt v4, v15, :cond_8

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_8
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    const/16 v5, 0xa

    if-eqz v6, :cond_d

    .line 16
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 17
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_8

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_8
    if-lt v1, v10, :cond_c

    if-gt v1, v15, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 19
    :goto_9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v4, v6

    .line 20
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_b

    const/16 v4, 0x1a

    goto :goto_a

    :cond_b
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 21
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_a
    if-lt v4, v10, :cond_e

    if-gt v4, v15, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    mul-int/lit8 v1, v1, 0xa

    move/from16 v6, v16

    goto :goto_9

    .line 22
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    const/4 v1, 0x1

    :cond_e
    const/16 v6, 0x65

    if-eq v4, v6, :cond_10

    const/16 v6, 0x45

    if-ne v4, v6, :cond_f

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v6, 0x1

    :goto_c
    if-eqz v6, :cond_16

    .line 23
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v4, v4, v16

    .line 24
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_d

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_13

    if-ne v3, v13, :cond_12

    goto :goto_e

    :cond_12
    move v4, v3

    move/from16 v16, v17

    goto :goto_11

    .line 26
    :cond_13
    :goto_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 27
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_14

    :goto_f
    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 28
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move/from16 v16, v4

    move v4, v3

    :goto_11
    if-lt v4, v10, :cond_16

    if-gt v4, v15, :cond_16

    .line 29
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 30
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_15

    goto :goto_f

    :cond_15
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 31
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 32
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v16

    sub-int/2addr v3, v11

    sub-int/2addr v3, v12

    if-nez v6, :cond_17

    if-ge v3, v5, :cond_17

    int-to-double v2, v2

    int-to-double v5, v1

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v5

    if-eqz v14, :cond_18

    neg-double v2, v2

    goto :goto_12

    .line 34
    :cond_17
    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 36
    :cond_18
    :goto_12
    array-length v1, v8

    const/4 v5, 0x3

    if-lt v9, v1, :cond_19

    .line 37
    array-length v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    const/4 v6, 0x0

    .line 38
    invoke-static {v8, v6, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v6, v9, 0x1

    .line 39
    aput-wide v2, v8, v9

    const/16 v1, 0x2c

    if-ne v4, v1, :cond_1b

    .line 40
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    .line 41
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_1a

    const/16 v1, 0x1a

    goto :goto_13

    :cond_1a
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_13
    move v4, v1

    move/from16 v16, v2

    goto/16 :goto_17

    :cond_1b
    const/16 v2, 0x5d

    if-ne v4, v2, :cond_25

    .line 43
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 44
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v9, :cond_1c

    const/16 v3, 0x1a

    goto :goto_14

    :cond_1c
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 45
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 46
    :goto_14
    array-length v9, v8

    if-eq v6, v9, :cond_1d

    .line 47
    new-array v9, v6, [D

    const/4 v10, 0x0

    .line 48
    invoke-static {v8, v10, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_1d
    if-ne v3, v1, :cond_1e

    .line 49
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v4, v12

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 51
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v1, 0x10

    .line 52
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_1e
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_24

    .line 53
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v3, v4

    .line 54
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_1f

    const/16 v3, 0x1a

    goto :goto_15

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_15
    if-ne v3, v1, :cond_20

    const/16 v1, 0x10

    .line 56
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 57
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_20
    if-ne v3, v2, :cond_21

    const/16 v1, 0xf

    .line 59
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 60
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_21
    if-ne v3, v5, :cond_22

    const/16 v1, 0xd

    .line 62
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 63
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_22
    const/16 v2, 0x1a

    if-ne v3, v2, :cond_23

    .line 65
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 66
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 67
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_16
    const/4 v1, 0x4

    .line 68
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    .line 69
    :cond_23
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    return-object v3

    :cond_24
    const/4 v3, 0x0

    .line 70
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_25
    :goto_17
    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v2, v4

    move v9, v6

    move/from16 v4, v16

    const/4 v1, 0x0

    const/16 v5, 0x10

    goto/16 :goto_2

    .line 71
    :cond_26
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 6
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 7
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v2, v5

    .line 8
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [[D

    const/4 v10, 0x0

    :goto_2
    if-ne v2, v4, :cond_2c

    .line 10
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v8, 0x1

    add-int/2addr v2, v8

    .line 11
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    new-array v8, v5, [D

    const/4 v12, 0x0

    .line 13
    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v14, v13, v11

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_7

    add-int/lit8 v2, v11, 0x1

    add-int/2addr v13, v11

    .line 14
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v11, :cond_6

    const/16 v11, 0x1a

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 15
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    move/from16 v19, v11

    move v11, v2

    move/from16 v2, v19

    :cond_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    add-int/lit8 v2, v2, -0x30

    .line 16
    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    .line 17
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_8

    const/16 v5, 0x1a

    goto :goto_8

    :cond_8
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 18
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    if-lt v5, v13, :cond_9

    if-gt v5, v6, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move/from16 v11, v17

    goto :goto_7

    :cond_9
    const/16 v11, 0x2e

    if-ne v5, v11, :cond_d

    .line 19
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v17, 0x1

    add-int v5, v5, v17

    .line 20
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_9

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9
    if-lt v1, v13, :cond_c

    if-gt v1, v6, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 22
    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    .line 23
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_b

    const/16 v5, 0x1a

    goto :goto_b

    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 24
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    if-lt v5, v13, :cond_e

    if-gt v5, v6, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0xa

    move/from16 v11, v17

    goto :goto_a

    .line 25
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    const/4 v1, 0x1

    :cond_e
    const/16 v11, 0x65

    if-eq v5, v11, :cond_10

    const/16 v11, 0x45

    if-ne v5, v11, :cond_f

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v11, 0x1

    :goto_d
    if-eqz v11, :cond_16

    .line 26
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v17, 0x1

    add-int v5, v5, v17

    .line 27
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_e

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_13

    if-ne v3, v4, :cond_12

    goto :goto_f

    :cond_12
    move v5, v3

    move/from16 v17, v18

    goto :goto_12

    .line 29
    :cond_13
    :goto_f
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v3, v3, v18

    .line 30
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_14

    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 31
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move v5, v3

    :goto_11
    move/from16 v17, v4

    :goto_12
    if-lt v5, v13, :cond_16

    if-gt v5, v6, :cond_16

    .line 32
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 33
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_15

    const/16 v5, 0x1a

    goto :goto_11

    :cond_15
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 34
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 35
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v17

    sub-int/2addr v3, v14

    sub-int/2addr v3, v15

    if-nez v11, :cond_17

    const/16 v4, 0xa

    if-ge v3, v4, :cond_17

    int-to-double v2, v2

    int-to-double v13, v1

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v13

    if-eqz v16, :cond_18

    neg-double v2, v2

    goto :goto_13

    .line 37
    :cond_17
    invoke-direct {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 39
    :cond_18
    :goto_13
    array-length v1, v8

    const/4 v4, 0x3

    if-lt v12, v1, :cond_19

    .line 40
    array-length v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    const/4 v6, 0x0

    .line 41
    invoke-static {v8, v6, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v1, v12, 0x1

    .line 42
    aput-wide v2, v8, v12

    const/16 v2, 0x2c

    if-ne v5, v2, :cond_1b

    .line 43
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    .line 44
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1a

    const/16 v2, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_14
    move/from16 v17, v3

    const/16 v3, 0x1a

    const/16 v4, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1b

    :cond_1b
    const/16 v3, 0x5d

    if-ne v5, v3, :cond_2a

    .line 46
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v5, v5, v17

    .line 47
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_1c

    const/16 v5, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 48
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 49
    :goto_15
    array-length v11, v8

    if-eq v1, v11, :cond_1d

    .line 50
    new-array v11, v1, [D

    const/4 v12, 0x0

    .line 51
    invoke-static {v8, v12, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v11

    goto :goto_16

    :cond_1d
    const/4 v12, 0x0

    .line 52
    :goto_16
    array-length v11, v9

    if-lt v10, v11, :cond_1e

    .line 53
    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [[D

    .line 54
    invoke-static {v8, v12, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    add-int/lit8 v1, v10, 0x1

    .line 55
    aput-object v8, v9, v10

    if-ne v5, v2, :cond_20

    .line 56
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    .line 57
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1f

    const/16 v2, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_17
    move v8, v3

    const/16 v3, 0x1a

    const/16 v4, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_20
    if-ne v5, v3, :cond_29

    .line 59
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v5, v6

    .line 60
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_21

    const/16 v5, 0x1a

    goto :goto_18

    :cond_21
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 61
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 62
    :goto_18
    array-length v6, v9

    if-eq v1, v6, :cond_22

    .line 63
    new-array v6, v1, [[D

    const/4 v11, 0x0

    .line 64
    invoke-static {v9, v11, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v6

    :cond_22
    if-ne v5, v2, :cond_23

    .line 65
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v15

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 67
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v4, 0x10

    .line 68
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_23
    const/16 v4, 0x10

    const/16 v1, 0x7d

    if-ne v5, v1, :cond_28

    .line 69
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_24

    .line 70
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 71
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_24
    if-ne v5, v3, :cond_25

    const/16 v1, 0xf

    .line 73
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 74
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_25
    if-ne v5, v1, :cond_26

    const/16 v1, 0xd

    .line 76
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 77
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_26
    const/16 v3, 0x1a

    if-ne v5, v3, :cond_27

    .line 79
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 80
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 81
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_19
    const/4 v1, 0x4

    .line 82
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    .line 83
    :cond_27
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v12, 0x0

    return-object v12

    :cond_28
    const/4 v12, 0x0

    .line 84
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v12

    :cond_29
    const/16 v3, 0x1a

    const/16 v4, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    move v8, v6

    :goto_1a
    move v10, v1

    move-object v3, v12

    const/4 v1, 0x0

    const/16 v4, 0x5b

    const/16 v5, 0x10

    goto/16 :goto_2

    :cond_2a
    const/16 v3, 0x1a

    const/16 v4, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    :goto_1b
    move-object v3, v12

    move/from16 v11, v17

    const/16 v4, 0x5b

    const/16 v5, 0x10

    move v12, v1

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_2b
    move-object v12, v3

    .line 85
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v12

    :cond_2c
    move-object v12, v3

    goto/16 :goto_2
.end method

.method public final scanFieldFloat(J)F
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v4, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/16 v8, 0x2d

    if-ne v2, v8, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v4, v5

    .line 5
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v5, v2

    move v2, v4

    :cond_2
    const/4 v4, -0x1

    const/16 v10, 0x30

    if-lt v2, v10, :cond_15

    const/16 v11, 0x39

    if-gt v2, v11, :cond_15

    sub-int/2addr v2, v10

    .line 6
    :goto_1
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v5, 0x1

    add-int/2addr v12, v5

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-lt v5, v10, :cond_3

    if-gt v5, v11, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move v5, v13

    goto :goto_1

    :cond_3
    const/16 v12, 0x2e

    if-ne v5, v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    const/16 v14, 0xa

    if-eqz v12, :cond_7

    .line 7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v12, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-lt v5, v10, :cond_6

    if-gt v5, v11, :cond_6

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v5, v10

    add-int/2addr v2, v5

    const/16 v5, 0xa

    .line 8
    :goto_3
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v12, 0x1

    add-int/2addr v13, v12

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    if-lt v12, v10, :cond_5

    if-gt v12, v11, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v12, v12, -0x30

    add-int/2addr v2, v12

    mul-int/lit8 v5, v5, 0xa

    move v12, v15

    goto :goto_3

    :cond_5
    move v13, v15

    move/from16 v16, v12

    move v12, v5

    move/from16 v5, v16

    goto :goto_4

    .line 9
    :cond_6
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    :cond_7
    const/4 v12, 0x1

    :goto_4
    const/16 v15, 0x65

    if-eq v5, v15, :cond_8

    const/16 v15, 0x45

    if-ne v5, v15, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_c

    .line 10
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_b

    if-ne v5, v8, :cond_a

    goto :goto_5

    :cond_a
    move v13, v15

    goto :goto_7

    .line 11
    :cond_b
    :goto_5
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v15, 0x1

    add-int/2addr v5, v15

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    :goto_6
    move v13, v8

    :goto_7
    if-lt v5, v10, :cond_c

    if-gt v5, v11, :cond_c

    .line 12
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    goto :goto_6

    .line 13
    :cond_c
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v13

    sub-int/2addr v8, v6

    sub-int/2addr v8, v7

    if-nez v1, :cond_d

    if-ge v8, v14, :cond_d

    int-to-float v1, v2

    int-to-float v2, v12

    div-float/2addr v1, v2

    if-eqz v9, :cond_e

    neg-float v1, v1

    goto :goto_8

    .line 14
    :cond_d
    invoke-direct {v0, v6, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_e
    :goto_8
    const/16 v2, 0x10

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_f

    .line 16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v13, v7

    add-int/2addr v3, v13

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v3, 0x3

    .line 18
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 19
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v1

    :cond_f
    const/16 v8, 0x7d

    if-ne v5, v8, :cond_14

    .line 20
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_10

    .line 21
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 22
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v7

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_10
    const/16 v2, 0x5d

    if-ne v5, v2, :cond_11

    const/16 v2, 0xf

    .line 24
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 25
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v7

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_11
    if-ne v5, v8, :cond_12

    const/16 v2, 0xd

    .line 27
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 28
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v7

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_12
    const/16 v2, 0x1a

    if-ne v5, v2, :cond_13

    .line 30
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v7

    add-int/2addr v3, v9

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v3, 0x14

    .line 31
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 32
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_9
    const/4 v2, 0x4

    .line 33
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1

    .line 34
    :cond_13
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    .line 35
    :cond_14
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    .line 36
    :cond_15
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 6
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 7
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 8
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [F

    const/4 v9, 0x0

    .line 10
    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v11, v10, v4

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_6

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v10, v4

    .line 11
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v4, :cond_5

    const/16 v4, 0x1a

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    :cond_6
    const/16 v10, 0x30

    if-lt v2, v10, :cond_26

    const/16 v15, 0x39

    if-gt v2, v15, :cond_26

    add-int/lit8 v2, v2, -0x30

    .line 13
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v6, v4

    .line 14
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v4, :cond_7

    const/16 v4, 0x1a

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    if-lt v4, v10, :cond_8

    if-gt v4, v15, :cond_8

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_8
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    const/16 v5, 0xa

    if-eqz v6, :cond_d

    .line 16
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 17
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_8

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_8
    if-lt v1, v10, :cond_c

    if-gt v1, v15, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 19
    :goto_9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v4, v6

    .line 20
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_b

    const/16 v4, 0x1a

    goto :goto_a

    :cond_b
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 21
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_a
    if-lt v4, v10, :cond_e

    if-gt v4, v15, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    mul-int/lit8 v1, v1, 0xa

    move/from16 v6, v16

    goto :goto_9

    .line 22
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    const/4 v1, 0x1

    :cond_e
    const/16 v6, 0x65

    if-eq v4, v6, :cond_10

    const/16 v6, 0x45

    if-ne v4, v6, :cond_f

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v6, 0x1

    :goto_c
    if-eqz v6, :cond_16

    .line 23
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v4, v4, v16

    .line 24
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_d

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_13

    if-ne v3, v13, :cond_12

    goto :goto_e

    :cond_12
    move v4, v3

    move/from16 v16, v17

    goto :goto_11

    .line 26
    :cond_13
    :goto_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 27
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_14

    :goto_f
    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 28
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move/from16 v16, v4

    move v4, v3

    :goto_11
    if-lt v4, v10, :cond_16

    if-gt v4, v15, :cond_16

    .line 29
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 30
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_15

    goto :goto_f

    :cond_15
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 31
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 32
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v16

    sub-int/2addr v3, v11

    sub-int/2addr v3, v12

    if-nez v6, :cond_17

    if-ge v3, v5, :cond_17

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    if-eqz v14, :cond_18

    neg-float v2, v2

    goto :goto_12

    .line 33
    :cond_17
    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 35
    :cond_18
    :goto_12
    array-length v1, v8

    const/4 v3, 0x3

    if-lt v9, v1, :cond_19

    .line 36
    array-length v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v5, 0x0

    .line 37
    invoke-static {v8, v5, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v5, v9, 0x1

    .line 38
    aput v2, v8, v9

    const/16 v1, 0x2c

    if-ne v4, v1, :cond_1b

    .line 39
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    .line 40
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_1a

    const/16 v1, 0x1a

    goto :goto_13

    :cond_1a
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_13
    move v4, v1

    move/from16 v16, v2

    goto/16 :goto_17

    :cond_1b
    const/16 v2, 0x5d

    if-ne v4, v2, :cond_25

    .line 42
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 43
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v9, :cond_1c

    const/16 v4, 0x1a

    goto :goto_14

    :cond_1c
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 44
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 45
    :goto_14
    array-length v9, v8

    if-eq v5, v9, :cond_1d

    .line 46
    new-array v9, v5, [F

    const/4 v10, 0x0

    .line 47
    invoke-static {v8, v10, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_1d
    if-ne v4, v1, :cond_1e

    .line 48
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 50
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v1, 0x10

    .line 51
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_1e
    const/16 v3, 0x7d

    if-ne v4, v3, :cond_24

    .line 52
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v4, v6

    .line 53
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_1f

    const/16 v4, 0x1a

    goto :goto_15

    :cond_1f
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 54
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_15
    if-ne v4, v1, :cond_20

    const/16 v1, 0x10

    .line 55
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 56
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_20
    if-ne v4, v2, :cond_21

    const/16 v1, 0xf

    .line 58
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 59
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_21
    if-ne v4, v3, :cond_22

    const/16 v1, 0xd

    .line 61
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 62
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_22
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_23

    .line 64
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 65
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 66
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_16
    const/4 v1, 0x4

    .line 67
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    .line 68
    :cond_23
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    return-object v3

    :cond_24
    const/4 v3, 0x0

    .line 69
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_25
    :goto_17
    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v2, v4

    move v9, v5

    move/from16 v4, v16

    const/4 v1, 0x0

    const/16 v5, 0x10

    goto/16 :goto_2

    .line 70
    :cond_26
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3
    check-cast v3, [[F

    return-object v3

    .line 4
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 5
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 7
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 8
    check-cast v3, [[F

    return-object v3

    .line 9
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v2, v5

    .line 10
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 11
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [[F

    const/4 v10, 0x0

    :goto_2
    if-ne v2, v4, :cond_2c

    .line 12
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v8, 0x1

    add-int/2addr v2, v8

    .line 13
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 14
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    new-array v8, v5, [F

    const/4 v12, 0x0

    .line 15
    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v14, v13, v11

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_7

    add-int/lit8 v2, v11, 0x1

    add-int/2addr v13, v11

    .line 16
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v11, :cond_6

    const/16 v11, 0x1a

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 17
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    move/from16 v19, v11

    move v11, v2

    move/from16 v2, v19

    :cond_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    add-int/lit8 v2, v2, -0x30

    .line 18
    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    .line 19
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_8

    const/16 v5, 0x1a

    goto :goto_8

    :cond_8
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 20
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    if-lt v5, v13, :cond_9

    if-gt v5, v6, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move/from16 v11, v17

    goto :goto_7

    :cond_9
    const/16 v11, 0x2e

    if-ne v5, v11, :cond_d

    .line 21
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v17, 0x1

    add-int v5, v5, v17

    .line 22
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_9

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9
    if-lt v1, v13, :cond_c

    if-gt v1, v6, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 24
    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    .line 25
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_b

    const/16 v5, 0x1a

    goto :goto_b

    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 26
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    if-lt v5, v13, :cond_e

    if-gt v5, v6, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0xa

    move/from16 v11, v17

    goto :goto_a

    .line 27
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 28
    check-cast v3, [[F

    return-object v3

    :cond_d
    const/4 v1, 0x1

    :cond_e
    const/16 v11, 0x65

    if-eq v5, v11, :cond_10

    const/16 v11, 0x45

    if-ne v5, v11, :cond_f

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v11, 0x1

    :goto_d
    if-eqz v11, :cond_16

    .line 29
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v17, 0x1

    add-int v5, v5, v17

    .line 30
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_e

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_13

    if-ne v3, v4, :cond_12

    goto :goto_f

    :cond_12
    move v5, v3

    move/from16 v17, v18

    goto :goto_12

    .line 32
    :cond_13
    :goto_f
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v3, v3, v18

    .line 33
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_14

    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 34
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move v5, v3

    :goto_11
    move/from16 v17, v4

    :goto_12
    if-lt v5, v13, :cond_16

    if-gt v5, v6, :cond_16

    .line 35
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 36
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_15

    const/16 v5, 0x1a

    goto :goto_11

    :cond_15
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 38
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v17

    sub-int/2addr v3, v14

    sub-int/2addr v3, v15

    if-nez v11, :cond_17

    const/16 v4, 0xa

    if-ge v3, v4, :cond_17

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    if-eqz v16, :cond_18

    neg-float v2, v2

    goto :goto_13

    .line 39
    :cond_17
    invoke-direct {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 41
    :cond_18
    :goto_13
    array-length v1, v8

    const/4 v3, 0x3

    if-lt v12, v1, :cond_19

    .line 42
    array-length v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v4, 0x0

    .line 43
    invoke-static {v8, v4, v1, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v1, v12, 0x1

    .line 44
    aput v2, v8, v12

    const/16 v2, 0x2c

    if-ne v5, v2, :cond_1b

    .line 45
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    .line 46
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1a

    const/16 v2, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_14
    move/from16 v17, v3

    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1b

    :cond_1b
    const/16 v4, 0x5d

    if-ne v5, v4, :cond_2a

    .line 48
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v5, v5, v17

    .line 49
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_1c

    const/16 v5, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 50
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 51
    :goto_15
    array-length v11, v8

    if-eq v1, v11, :cond_1d

    .line 52
    new-array v11, v1, [F

    const/4 v12, 0x0

    .line 53
    invoke-static {v8, v12, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v11

    goto :goto_16

    :cond_1d
    const/4 v12, 0x0

    .line 54
    :goto_16
    array-length v11, v9

    if-lt v10, v11, :cond_1e

    .line 55
    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [[F

    .line 56
    invoke-static {v8, v12, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    add-int/lit8 v1, v10, 0x1

    .line 57
    aput-object v8, v9, v10

    if-ne v5, v2, :cond_20

    .line 58
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    .line 59
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1f

    const/16 v2, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_17
    move v8, v3

    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_20
    if-ne v5, v4, :cond_29

    .line 61
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v5, v6

    .line 62
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_21

    const/16 v5, 0x1a

    goto :goto_18

    :cond_21
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 64
    :goto_18
    array-length v6, v9

    if-eq v1, v6, :cond_22

    .line 65
    new-array v6, v1, [[F

    const/4 v11, 0x0

    .line 66
    invoke-static {v9, v11, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v6

    :cond_22
    if-ne v5, v2, :cond_23

    .line 67
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v15

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 69
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v3, 0x10

    .line 70
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_23
    const/16 v3, 0x10

    const/16 v1, 0x7d

    if-ne v5, v1, :cond_28

    .line 71
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_24

    .line 72
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 73
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_24
    if-ne v5, v4, :cond_25

    const/16 v1, 0xf

    .line 75
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 76
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_25
    if-ne v5, v1, :cond_26

    const/16 v1, 0xd

    .line 78
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 79
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_26
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_27

    .line 81
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 82
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 83
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_19
    const/4 v1, 0x4

    .line 84
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    .line 85
    :cond_27
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v12, 0x0

    .line 86
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_28
    const/4 v12, 0x0

    .line 87
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 88
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_29
    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    move v8, v6

    :goto_1a
    move v10, v1

    move-object v3, v12

    const/4 v1, 0x0

    const/16 v4, 0x5b

    const/16 v5, 0x10

    goto/16 :goto_2

    :cond_2a
    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    :goto_1b
    move-object v3, v12

    move/from16 v11, v17

    const/16 v4, 0x5b

    const/16 v5, 0x10

    move v12, v1

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_2b
    move-object v12, v3

    .line 89
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 90
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_2c
    move-object v12, v3

    goto/16 :goto_2
.end method

.method public scanFieldInt(J)I
    .locals 11

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p2, p1

    .line 4
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v2, 0x1a

    if-lt p2, p1, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    const/16 p2, 0x22

    const/4 v3, 0x1

    if-ne p1, p2, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 6
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr p1, v1

    .line 7
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v1, :cond_3

    const/16 p1, 0x1a

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_2
    move v1, v4

    const/4 v4, 0x1

    :cond_4
    const/16 v5, 0x2d

    if-ne p1, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    .line 9
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr p1, v1

    .line 10
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v1, :cond_6

    const/16 p1, 0x1a

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    move v1, v6

    :cond_7
    const/16 v6, 0x30

    const/4 v7, -0x1

    if-lt p1, v6, :cond_1e

    const/16 v8, 0x39

    if-gt p1, v8, :cond_1e

    sub-int/2addr p1, v6

    .line 12
    :goto_5
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v1, 0x1

    add-int/2addr v9, v1

    .line 13
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v1, :cond_8

    const/16 v1, 0x1a

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    if-lt v1, v6, :cond_9

    if-gt v1, v8, :cond_9

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr p1, v1

    move v1, v10

    goto :goto_5

    :cond_9
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_a

    .line 15
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_a
    if-ne v1, p2, :cond_d

    if-nez v4, :cond_b

    .line 16
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 17
    :cond_b
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v10, 0x1

    add-int/2addr p2, v10

    .line 18
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v4, :cond_c

    const/16 p2, 0x1a

    goto :goto_7

    :cond_c
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_7
    move v10, v1

    move v1, p2

    :cond_d
    if-gez p1, :cond_e

    .line 20
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_e
    :goto_8
    const/16 p2, 0x10

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_11

    .line 21
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v10, v3

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v3

    .line 22
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 23
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_f

    goto :goto_9

    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_9
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x3

    .line 25
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 26
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eqz v5, :cond_10

    neg-int p1, p1

    :cond_10
    return p1

    :cond_11
    const/16 v6, 0xd

    const/16 v8, 0x20

    if-gt v1, v8, :cond_14

    if-eq v1, v8, :cond_12

    const/16 v8, 0xa

    if-eq v1, v8, :cond_12

    if-eq v1, v6, :cond_12

    const/16 v8, 0x9

    if-eq v1, v8, :cond_12

    const/16 v8, 0xc

    if-eq v1, v8, :cond_12

    const/16 v8, 0x8

    if-ne v1, v8, :cond_14

    .line 27
    :cond_12
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v10, 0x1

    add-int/2addr p2, v10

    .line 28
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v4, :cond_13

    const/16 p2, 0x1a

    goto :goto_a

    :cond_13
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 29
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_a
    move v10, v1

    move v1, p2

    goto :goto_8

    :cond_14
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_1d

    .line 30
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_16

    .line 31
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 32
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p2, v9

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 33
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 34
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_15

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_b
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_16
    const/16 p2, 0x5d

    if-ne v1, p2, :cond_18

    const/16 p2, 0xf

    .line 36
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 37
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p2, v9

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 38
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 39
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_17

    goto :goto_c

    :cond_17
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_c
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_18
    if-ne v1, v8, :cond_1a

    .line 41
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 42
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p2, v9

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 43
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 44
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_19

    goto :goto_d

    :cond_19
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_d
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_1a
    if-ne v1, v2, :cond_1c

    const/16 p2, 0x14

    .line 46
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 47
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p2, v9

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 48
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_e
    const/4 p2, 0x4

    .line 49
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-eqz v5, :cond_1b

    neg-int p1, p1

    :cond_1b
    return p1

    .line 50
    :cond_1c
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 51
    :cond_1d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 52
    :cond_1e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public final scanFieldIntArray(J)[I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v6, 0x1a

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 6
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 7
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 8
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [I

    const/4 v9, 0x3

    const/16 v10, 0x2c

    const/16 v11, 0x5d

    const/4 v12, 0x1

    if-ne v2, v11, :cond_5

    .line 10
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v4, 0x1

    add-int/2addr v2, v4

    .line 11
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_4

    const/16 v2, 0x1a

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_5
    const/4 v13, 0x0

    :goto_3
    const/16 v14, 0x2d

    if-ne v2, v14, :cond_7

    .line 13
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v4, 0x1

    add-int/2addr v2, v4

    .line 14
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_6

    const/16 v2, 0x1a

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_4
    move v4, v14

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    const/16 v15, 0x30

    if-lt v2, v15, :cond_18

    const/16 v3, 0x39

    if-gt v2, v3, :cond_17

    add-int/lit8 v2, v2, -0x30

    .line 16
    :goto_6
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v7, v4

    .line 17
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_8

    const/16 v4, 0x1a

    goto :goto_7

    :cond_8
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_7
    if-lt v4, v15, :cond_9

    if-gt v4, v3, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_6

    .line 19
    :cond_9
    array-length v3, v8

    if-lt v13, v3, :cond_a

    .line 20
    array-length v3, v8

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 21
    invoke-static {v8, v1, v3, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v3

    :cond_a
    add-int/lit8 v3, v13, 0x1

    if-eqz v14, :cond_b

    neg-int v2, v2

    .line 22
    :cond_b
    aput v2, v8, v13

    if-ne v4, v10, :cond_d

    .line 23
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v2, v2, v16

    .line 24
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v7, :cond_c

    const/16 v2, 0x1a

    goto :goto_8

    :cond_c
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 25
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_8
    move/from16 v16, v4

    const/4 v7, 0x0

    move v4, v2

    const/4 v2, -0x1

    goto/16 :goto_b

    :cond_d
    if-ne v4, v11, :cond_16

    .line 26
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v16, 0x1

    add-int v2, v2, v16

    .line 27
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_e

    const/16 v2, 0x1a

    goto :goto_9

    :cond_e
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 29
    :goto_9
    array-length v4, v8

    if-eq v3, v4, :cond_f

    .line 30
    new-array v4, v3, [I

    .line 31
    invoke-static {v8, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v4

    :cond_f
    if-ne v2, v10, :cond_10

    .line 32
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v13, v12

    add-int/2addr v1, v13

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 34
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 35
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_10
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_15

    .line 36
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v13, 0x1

    add-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_11

    .line 37
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 38
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_11
    if-ne v2, v11, :cond_12

    const/16 v1, 0xf

    .line 40
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 41
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_12
    if-ne v2, v1, :cond_13

    const/16 v1, 0xd

    .line 43
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 44
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_13
    if-ne v2, v6, :cond_14

    .line 46
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 47
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 48
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_a
    const/4 v1, 0x4

    .line 49
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    :cond_14
    const/4 v2, -0x1

    .line 50
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    return-object v7

    :cond_15
    const/4 v2, -0x1

    const/4 v7, 0x0

    .line 51
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v7

    :cond_16
    const/4 v2, -0x1

    const/4 v7, 0x0

    :goto_b
    move v13, v3

    move v2, v4

    move-object v3, v7

    move/from16 v4, v16

    const/4 v7, -0x1

    goto/16 :goto_3

    :cond_17
    const/4 v2, -0x1

    const/4 v7, 0x0

    goto :goto_c

    :cond_18
    move-object v7, v3

    const/4 v2, -0x1

    .line 52
    :goto_c
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v7
.end method

.method public scanFieldLong(J)J
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    .line 3
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    .line 4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v5, 0x22

    if-ne v2, v5, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_4

    .line 6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v2, v6

    .line 7
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_3

    const/16 v2, 0x1a

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 8
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_2
    move v6, v10

    :cond_4
    const/16 v10, 0x2d

    if-ne v2, v10, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    .line 9
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v2, v6

    .line 10
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_6

    const/16 v2, 0x1a

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 11
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    move v6, v10

    :cond_7
    const/16 v10, 0x30

    const/4 v11, -0x1

    if-lt v2, v10, :cond_1b

    const/16 v12, 0x39

    if-gt v2, v12, :cond_1b

    sub-int/2addr v2, v10

    int-to-long v13, v2

    .line 12
    :goto_4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v6, 0x1

    add-int/2addr v2, v6

    .line 13
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_8

    const/16 v2, 0x1a

    goto :goto_5

    :cond_8
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 14
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    if-lt v2, v10, :cond_9

    if-gt v2, v12, :cond_9

    const-wide/16 v16, 0xa

    mul-long v13, v13, v16

    add-int/lit8 v2, v2, -0x30

    int-to-long v7, v2

    add-long/2addr v13, v7

    move v6, v15

    goto :goto_4

    :cond_9
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_a

    .line 15
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_a
    if-ne v2, v5, :cond_d

    if-nez v9, :cond_b

    .line 16
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 17
    :cond_b
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    add-int/2addr v2, v15

    .line 18
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_c

    const/16 v2, 0x1a

    goto :goto_6

    :cond_c
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 19
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_6
    move v15, v5

    :cond_d
    cmp-long v5, v13, v3

    if-gez v5, :cond_e

    .line 20
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_e
    const/16 v5, 0x10

    const/16 v6, 0x2c

    if-ne v2, v6, :cond_11

    .line 21
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v15, v3

    add-int/2addr v2, v15

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 22
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 23
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_f

    const/16 v7, 0x1a

    goto :goto_7

    :cond_f
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x3

    .line 25
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 26
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eqz v1, :cond_10

    neg-long v13, v13

    :cond_10
    return-wide v13

    :cond_11
    const/16 v7, 0x7d

    if-ne v2, v7, :cond_1a

    .line 27
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v15, 0x1

    add-int/2addr v2, v15

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_13

    .line 28
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 29
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 30
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 31
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_12

    const/16 v7, 0x1a

    goto :goto_8

    :cond_12
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_13
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_15

    const/16 v2, 0xf

    .line 33
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 34
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 35
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 36
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_14

    const/16 v7, 0x1a

    goto :goto_9

    :cond_14
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_9
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_15
    if-ne v2, v7, :cond_17

    const/16 v2, 0xd

    .line 38
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 39
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 40
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 41
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_16

    const/16 v7, 0x1a

    goto :goto_a

    :cond_16
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_a
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_17
    const/16 v5, 0x1a

    if-ne v2, v5, :cond_19

    const/16 v2, 0x14

    .line 43
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 44
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 45
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 v2, 0x4

    .line 46
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-eqz v1, :cond_18

    neg-long v13, v13

    :cond_18
    return-wide v13

    .line 47
    :cond_19
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 48
    :cond_1a
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 49
    :cond_1b
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p2, p1

    .line 4
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const-string v2, "unclosed str, "

    if-ge p2, p1, :cond_11

    .line 5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    const/4 v3, -0x1

    if-eq p1, p2, :cond_1

    .line 6
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 7
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 8
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v1

    .line 9
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_10

    .line 10
    sget-boolean v2, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v2, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    sub-int v2, v4, p1

    .line 12
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 13
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v0, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v6

    :goto_0
    const/16 v5, 0x5c

    .line 14
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v3, :cond_6

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v6, v4, -0x1

    const/4 v8, 0x0

    :goto_2
    if-ltz v6, :cond_3

    .line 15
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 16
    :cond_3
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_5

    sub-int p1, v4, p1

    .line 17
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object p2

    if-eqz v2, :cond_4

    .line 18
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 19
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    .line 20
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 21
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 22
    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, p2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_6
    :goto_3
    add-int/2addr v4, v7

    .line 23
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 p2, 0x1a

    if-lt v4, p1, :cond_7

    const/16 p1, 0x1a

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    const/16 v0, 0x10

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_9

    .line 25
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v7

    .line 26
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 27
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_5
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 29
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 30
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v2

    :cond_9
    const/16 v5, 0x7d

    if-ne p1, v5, :cond_f

    add-int/2addr v4, v7

    .line 31
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, p1, :cond_a

    const/16 p1, 0x1a

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_6
    if-ne p1, v1, :cond_b

    .line 33
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 34
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_b
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_c

    const/16 p1, 0xf

    .line 36
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 37
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_c
    if-ne p1, v5, :cond_d

    const/16 p1, 0xd

    .line 39
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 40
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_d
    if-ne p1, p2, :cond_e

    const/16 p1, 0x14

    .line 42
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 43
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 44
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_7
    const/4 p1, 0x4

    .line 45
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v2

    .line 46
    :cond_e
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 47
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 48
    :cond_f
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 49
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 50
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public scanFieldSymbol(J)J
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, p1, 0x1

    add-int/2addr p2, p1

    .line 4
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v3, 0x1a

    if-lt p2, p1, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    const/16 p2, 0x22

    const/4 v4, -0x1

    if-eq p1, p2, :cond_2

    .line 6
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_2
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 7
    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v2, 0x1

    add-int/2addr p1, v2

    .line 8
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v2, :cond_3

    const/16 p1, 0x1a

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_2
    if-ne p1, p2, :cond_d

    .line 10
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, v7, 0x1

    add-int/2addr p1, v7

    .line 11
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v2, :cond_4

    const/16 p1, 0x1a

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_6

    .line 13
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 14
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 15
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_5

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_4
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 17
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v5

    :cond_6
    const/16 v7, 0x7d

    if-ne p1, v7, :cond_c

    .line 18
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p1, p2

    .line 19
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_7

    const/16 p1, 0x1a

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_5
    if-ne p1, v2, :cond_8

    const/16 p1, 0x10

    .line 21
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 22
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_8
    const/16 p2, 0x5d

    if-ne p1, p2, :cond_9

    const/16 p1, 0xf

    .line 24
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 25
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_9
    if-ne p1, v7, :cond_a

    const/16 p1, 0xd

    .line 27
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 28
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_a
    if-ne p1, v3, :cond_b

    const/16 p1, 0x14

    .line 30
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 31
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 32
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_6
    const/4 p1, 0x4

    .line 33
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v5

    .line 34
    :cond_b
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    .line 35
    :cond_c
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_d
    int-to-long v8, p1

    xor-long/2addr v5, v8

    const-wide v8, 0x100000001b3L

    mul-long v5, v5, v8

    const/16 v2, 0x5c

    if-ne p1, v2, :cond_e

    .line 36
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_e
    move v2, v7

    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result p1

    return p1
.end method

.method public scanISO8601DateIfMatch(ZI)Z
    .locals 35

    move-object/from16 v9, p0

    move/from16 v10, p2

    const/16 v0, 0x2f

    const/16 v11, 0xd

    const/16 v12, 0x39

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v8, 0x5

    const/16 v16, 0x1

    const/16 v7, 0x30

    const/4 v6, 0x0

    if-nez p1, :cond_4

    if-le v10, v11, :cond_4

    .line 2
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 3
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v15

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 5
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v14

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 6
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 7
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v8

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 8
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v10

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 9
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v10

    sub-int/2addr v8, v15

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    if-ne v1, v0, :cond_4

    const/16 v1, 0x44

    if-ne v2, v1, :cond_4

    const/16 v1, 0x61

    if-ne v3, v1, :cond_4

    const/16 v1, 0x74

    if-ne v4, v1, :cond_4

    const/16 v1, 0x65

    if-ne v5, v1, :cond_4

    const/16 v1, 0x28

    if-ne v11, v1, :cond_4

    if-ne v14, v0, :cond_4

    const/16 v1, 0x29

    if-ne v8, v1, :cond_4

    const/4 v0, -0x1

    const/4 v1, 0x6

    :goto_0
    if-ge v1, v10, :cond_2

    .line 10
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    if-lt v2, v7, :cond_2

    if-le v2, v12, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v6

    .line 11
    :cond_3
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    sub-int/2addr v0, v1

    .line 12
    invoke-direct {v9, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 14
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 15
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 16
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_4
    const/16 v11, 0x54

    const/16 v14, 0x10

    const/16 v4, 0x8

    const/16 v3, 0x9

    const/16 v2, 0xe

    const/16 v1, 0x2d

    const/16 v20, 0xa

    if-eq v10, v4, :cond_3e

    if-eq v10, v2, :cond_3e

    if-ne v10, v14, :cond_5

    .line 17
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0xa

    .line 18
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v11, :cond_3e

    const/16 v5, 0x20

    if-eq v2, v5, :cond_3e

    :cond_5
    const/16 v2, 0x11

    if-ne v10, v2, :cond_6

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    .line 19
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_6

    goto/16 :goto_17

    :cond_6
    if-ge v10, v3, :cond_7

    return v6

    .line 20
    :cond_7
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 21
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 22
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v15

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 23
    iget v7, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v18, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 24
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 25
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v19, 0x5

    add-int/lit8 v12, v12, 0x5

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    .line 26
    iget v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v13

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    .line 27
    iget v13, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x7

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    .line 28
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v4

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 29
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v3

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    const/16 v6, 0x65e5

    if-ne v8, v1, :cond_8

    if-eq v13, v1, :cond_9

    :cond_8
    if-ne v8, v0, :cond_a

    if-ne v13, v0, :cond_a

    :cond_9
    const v8, 0xc77c

    const/16 v13, 0xa

    :goto_3
    move/from16 v34, v11

    move v11, v4

    move v4, v7

    move/from16 v7, v34

    goto/16 :goto_d

    :cond_a
    if-ne v8, v1, :cond_c

    if-ne v15, v1, :cond_c

    const/16 v0, 0x20

    if-ne v11, v0, :cond_b

    move v4, v7

    move v15, v12

    move v11, v13

    const/16 v7, 0x30

    const v8, 0xc77c

    const/16 v12, 0x30

    const/16 v13, 0x8

    goto/16 :goto_d

    :cond_b
    move v4, v7

    move v15, v12

    move v7, v13

    const v8, 0xc77c

    const/16 v12, 0x30

    const/16 v13, 0x9

    goto/16 :goto_d

    :cond_c
    const/16 v0, 0x2e

    if-ne v14, v0, :cond_d

    const/16 v0, 0x2e

    if-eq v12, v0, :cond_e

    :cond_d
    if-ne v14, v1, :cond_f

    if-ne v12, v1, :cond_f

    :cond_e
    move v12, v7

    move v14, v11

    move v7, v2

    move v11, v5

    move v5, v13

    move v2, v15

    const/16 v13, 0xa

    move v15, v8

    const v8, 0xc77c

    goto/16 :goto_d

    :cond_f
    const/16 v0, 0x5e74

    if-eq v8, v0, :cond_11

    const v0, 0xb144

    if-ne v8, v0, :cond_10

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_4
    const/16 v0, 0x6708

    if-eq v13, v0, :cond_19

    const v0, 0xc6d4

    if-ne v13, v0, :cond_12

    goto :goto_9

    :cond_12
    const/16 v0, 0x6708

    if-eq v15, v0, :cond_14

    const v0, 0xc6d4

    if-ne v15, v0, :cond_13

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_5
    const/4 v0, 0x0

    const v8, 0xc77c

    if-eq v11, v6, :cond_18

    if-ne v11, v8, :cond_15

    goto :goto_7

    :cond_15
    if-eq v4, v6, :cond_17

    if-ne v4, v8, :cond_16

    goto :goto_6

    :cond_16
    return v0

    :cond_17
    :goto_6
    move v4, v7

    move v15, v12

    move v7, v13

    goto :goto_8

    :cond_18
    :goto_7
    move v4, v7

    move v15, v12

    move v11, v13

    const/16 v7, 0x30

    :goto_8
    const/16 v12, 0x30

    goto :goto_c

    :cond_19
    :goto_9
    const v8, 0xc77c

    if-eq v4, v6, :cond_1d

    if-ne v4, v8, :cond_1a

    goto :goto_b

    .line 30
    :cond_1a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1c

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    return v0

    :cond_1c
    :goto_a
    const/16 v13, 0xb

    goto/16 :goto_3

    :cond_1d
    :goto_b
    move v4, v7

    const/16 v7, 0x30

    :goto_c
    const/16 v13, 0xa

    :goto_d
    move/from16 v26, v2

    move/from16 v27, v5

    move/from16 v28, v14

    move/from16 v29, v4

    move/from16 v30, v12

    move/from16 v31, v15

    move/from16 v32, v7

    move/from16 v33, v11

    .line 31
    invoke-static/range {v26 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v25, 0x0

    return v25

    :cond_1e
    const/16 v25, 0x0

    move-object/from16 v0, p0

    const/16 v10, 0x2d

    move v1, v2

    move v2, v5

    const/16 v21, 0x9

    move v3, v14

    const/16 v14, 0x8

    const/16 v14, 0x3a

    move v5, v12

    const/4 v12, 0x0

    const/16 v14, 0x65e5

    move v6, v15

    const/16 v15, 0x30

    const v15, 0xc77c

    move v8, v11

    .line 32
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 33
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    const/16 v0, 0x54

    if-eq v7, v0, :cond_26

    const/16 v0, 0x20

    if-ne v7, v0, :cond_1f

    if-nez p1, :cond_1f

    goto/16 :goto_11

    :cond_1f
    const/16 v0, 0x22

    if-eq v7, v0, :cond_25

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_25

    if-eq v7, v14, :cond_25

    if-ne v7, v15, :cond_20

    goto :goto_10

    :cond_20
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_22

    if-ne v7, v10, :cond_21

    goto :goto_e

    :cond_21
    return v12

    .line 34
    :cond_22
    :goto_e
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    add-int/lit8 v1, v13, 0x6

    if-ne v0, v1, :cond_24

    .line 35
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_24

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    .line 36
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_24

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v11, 0x5

    add-int/2addr v0, v11

    .line 37
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_23

    goto :goto_f

    :cond_23
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    .line 38
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    .line 39
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v14, 0xe

    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 40
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v7, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    return v16

    :cond_24
    :goto_f
    return v12

    :cond_25
    :goto_10
    const/4 v11, 0x5

    const/16 v14, 0xe

    .line 41
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v15, 0xb

    invoke-virtual {v0, v15, v12}, Ljava/util/Calendar;->set(II)V

    .line 42
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 43
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 44
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 45
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 46
    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_26
    :goto_11
    const/4 v11, 0x5

    const/16 v14, 0xe

    const/16 v15, 0xb

    add-int/lit8 v7, v13, 0x9

    move/from16 v10, p2

    const/16 v8, 0x2d

    if-ge v10, v7, :cond_27

    return v12

    .line 47
    :cond_27
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_28

    return v12

    .line 48
    :cond_28
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v2, 0x6

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_29

    return v12

    .line 49
    :cond_29
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    .line 50
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v19

    .line 51
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v22

    .line 52
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v23

    .line 53
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v25

    .line 54
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v24

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, v24

    .line 55
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_2a

    return v12

    :cond_2a
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, v24

    .line 56
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    .line 57
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3c

    add-int/lit8 v0, v13, 0xb

    if-ge v10, v0, :cond_2b

    return v12

    .line 58
    :cond_2b
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3b

    const/16 v3, 0x39

    if-le v1, v3, :cond_2c

    goto/16 :goto_16

    :cond_2c
    sub-int/2addr v1, v2

    if-le v10, v0, :cond_2d

    .line 59
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_2d

    if-gt v0, v3, :cond_2d

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    const/4 v0, 0x2

    goto :goto_12

    :cond_2d
    const/4 v0, 0x1

    :goto_12
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2e

    .line 60
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2e

    const/16 v4, 0x39

    if-gt v2, v4, :cond_2e

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v0, 0x3

    .line 61
    :cond_2e
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 62
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_32

    if-ne v1, v8, :cond_2f

    goto :goto_13

    :cond_2f
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_31

    .line 63
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_30

    .line 64
    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 65
    array-length v2, v1

    if-lez v2, :cond_30

    .line 66
    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 67
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_30
    const/4 v6, 0x1

    goto/16 :goto_15

    :cond_31
    const/4 v6, 0x0

    goto/16 :goto_15

    .line 68
    :cond_32
    :goto_13
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3b

    const/16 v4, 0x31

    if-le v2, v4, :cond_33

    goto/16 :goto_16

    .line 69
    :cond_33
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    const/4 v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_3b

    const/16 v3, 0x39

    if-le v4, v3, :cond_34

    goto/16 :goto_16

    .line 70
    :cond_34
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    const/4 v5, 0x3

    add-int/2addr v3, v5

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_37

    .line 71
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_35

    return v12

    .line 72
    :cond_35
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/2addr v3, v11

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_36

    return v12

    :cond_36
    const/16 v18, 0x6

    goto :goto_14

    :cond_37
    const/16 v5, 0x30

    if-ne v3, v5, :cond_39

    .line 73
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_38

    return v12

    :cond_38
    const/16 v18, 0x5

    goto :goto_14

    :cond_39
    const/16 v18, 0x3

    .line 74
    :goto_14
    invoke-virtual {v9, v1, v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    move/from16 v6, v18

    .line 75
    :goto_15
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v0

    add-int/2addr v13, v6

    add-int/2addr v1, v13

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3a

    return v12

    .line 76
    :cond_3a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 77
    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_3b
    :goto_16
    return v12

    .line 78
    :cond_3c
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 79
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v7

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 80
    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3d

    .line 81
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 82
    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 83
    array-length v1, v0

    if-lez v1, :cond_3d

    .line 84
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 85
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3d
    return v16

    :cond_3e
    :goto_17
    const/16 v7, 0x8

    const/16 v8, 0x2d

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/16 v14, 0xe

    const/16 v15, 0xb

    const/16 v21, 0x9

    if-eqz p1, :cond_3f

    return v12

    .line 86
    :cond_3f
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 87
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 88
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 89
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v4, 0x3

    add-int/2addr v0, v4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 90
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 91
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v11

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 92
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v18, 0x6

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    .line 93
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x7

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 94
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v7

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    if-ne v0, v8, :cond_40

    if-ne v11, v8, :cond_40

    const/4 v8, 0x1

    goto :goto_18

    :cond_40
    const/4 v8, 0x0

    :goto_18
    if-eqz v8, :cond_41

    if-ne v10, v13, :cond_41

    const/16 v18, 0x1

    goto :goto_19

    :cond_41
    const/16 v18, 0x0

    :goto_19
    if-eqz v8, :cond_42

    const/16 v8, 0x11

    if-ne v10, v8, :cond_42

    const/16 v19, 0x1

    goto :goto_1a

    :cond_42
    const/16 v19, 0x0

    :goto_1a
    if-nez v19, :cond_44

    if-eqz v18, :cond_43

    goto :goto_1b

    :cond_43
    move v8, v6

    move v6, v5

    move v5, v0

    goto :goto_1c

    .line 95
    :cond_44
    :goto_1b
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v11, v0

    move v8, v14

    :goto_1c
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v11

    .line 96
    invoke-static/range {v24 .. v31}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_45

    return v12

    :cond_45
    move-object/from16 v0, p0

    const/16 v12, 0x8

    move v7, v8

    move v8, v11

    .line 97
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    if-eq v10, v12, :cond_52

    .line 98
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 99
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 100
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v15

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 101
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 102
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v4, 0xd

    add-int/2addr v3, v4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eqz v19, :cond_46

    const/16 v4, 0x54

    if-ne v1, v4, :cond_46

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_46

    .line 103
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v13

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_48

    :cond_46
    if-eqz v18, :cond_49

    const/16 v4, 0x20

    if-eq v1, v4, :cond_47

    const/16 v4, 0x54

    if-ne v1, v4, :cond_49

    :cond_47
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_49

    .line 104
    :cond_48
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 105
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v14, v2

    const/16 v3, 0x30

    move v2, v0

    move v0, v7

    const/16 v7, 0x30

    :cond_49
    move/from16 v26, v14

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v7

    move/from16 v31, v3

    .line 106
    invoke-static/range {v26 .. v31}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v4

    if-nez v4, :cond_4a

    const/4 v4, 0x0

    return v4

    :cond_4a
    const/16 v4, 0x11

    if-ne v10, v4, :cond_51

    if-nez v19, :cond_51

    .line 107
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v5, 0xe

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 108
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0xf

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 109
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v6, v13

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    if-lt v4, v8, :cond_50

    const/16 v10, 0x39

    if-le v4, v10, :cond_4b

    goto :goto_1f

    :cond_4b
    if-lt v5, v8, :cond_4f

    if-le v5, v10, :cond_4c

    goto :goto_1e

    :cond_4c
    if-lt v6, v8, :cond_4e

    if-le v6, v10, :cond_4d

    goto :goto_1d

    :cond_4d
    sub-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x64

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    move v6, v4

    const/16 v4, 0x30

    goto :goto_20

    :cond_4e
    :goto_1d
    const/4 v4, 0x0

    return v4

    :cond_4f
    :goto_1e
    const/4 v4, 0x0

    return v4

    :cond_50
    :goto_1f
    const/4 v4, 0x0

    return v4

    :cond_51
    const/4 v4, 0x0

    const/16 v4, 0x30

    const/4 v6, 0x0

    :goto_20
    sub-int/2addr v14, v4

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v4

    add-int/2addr v0, v14

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v3, v4

    add-int v2, v7, v3

    move v4, v6

    move v6, v0

    goto :goto_21

    :cond_52
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 110
    :goto_21
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v15, v6}, Ljava/util/Calendar;->set(II)V

    .line 111
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 112
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 113
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 114
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16
.end method

.method public final scanLongValue()J
    .locals 13

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v3, 0x0

    add-int/2addr v3, v2

    .line 3
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 4
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 5
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v3, v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move-wide v3, v0

    const/4 v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const-wide/16 v5, 0x0

    .line 8
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0x30

    if-lt v1, v7, :cond_5

    const/16 v7, 0x39

    if-gt v1, v7, :cond_5

    add-int/lit8 v1, v1, -0x30

    const-wide v7, -0xcccccccccccccccL

    const-string v9, ", "

    const-string v10, "error long value, "

    cmp-long v11, v5, v7

    if-ltz v11, :cond_4

    const-wide/16 v7, 0xa

    mul-long v5, v5, v7

    int-to-long v7, v1

    add-long v11, v3, v7

    cmp-long v1, v5, v11

    if-ltz v1, :cond_3

    sub-long/2addr v5, v7

    .line 9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 10
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 11
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_2

    const/16 v1, 0x1a

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_2
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 13
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v0, :cond_6

    neg-long v5, v5

    :cond_6
    return-wide v5
.end method

.method public final scanNumber()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    const/16 v4, 0x1a

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 6
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 8
    :cond_1
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x39

    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    if-gt v0, v2, :cond_3

    .line 9
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 10
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 11
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    const/16 v0, 0x1a

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 13
    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    .line 14
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 15
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 16
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    const/16 v0, 0x1a

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 18
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 19
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_6

    if-gt v0, v2, :cond_6

    .line 20
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 21
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 22
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_5

    const/16 v0, 0x1a

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_5
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    .line 24
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    .line 25
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_7
    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    .line 27
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_8
    const/16 v1, 0x42

    if-ne v0, v1, :cond_9

    .line 29
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_9
    const/16 v1, 0x46

    if-ne v0, v1, :cond_a

    .line 31
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 33
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    :cond_a
    const/16 v7, 0x44

    if-ne v0, v7, :cond_b

    .line 34
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 36
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    :cond_b
    const/16 v8, 0x65

    if-eq v0, v8, :cond_c

    const/16 v8, 0x45

    if-ne v0, v8, :cond_15

    .line 37
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 38
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 39
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_d

    const/16 v0, 0x1a

    goto :goto_6

    :cond_d
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 40
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_6
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_e

    if-ne v0, v3, :cond_10

    .line 41
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 42
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 43
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v3, :cond_f

    const/16 v0, 0x1a

    goto :goto_7

    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_7
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 45
    :cond_10
    :goto_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_12

    if-gt v0, v2, :cond_12

    .line 46
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 47
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 48
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v3, :cond_11

    const/16 v0, 0x1a

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_9
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    :cond_12
    if-eq v0, v7, :cond_13

    if-ne v0, v1, :cond_14

    .line 50
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 52
    :cond_14
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 53
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 54
    :cond_15
    :goto_a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_b

    :cond_16
    const/4 v0, 0x2

    .line 56
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_b
    return-void
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x0

    .line 2
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 3
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x2d

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v3, 0x0

    add-int/2addr v3, v6

    .line 4
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v3, v0, 0x1

    .line 5
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 6
    iget v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v9, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 7
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 8
    :goto_2
    iget-char v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-lt v12, v14, :cond_5

    if-gt v12, v13, :cond_5

    add-int/lit8 v12, v12, -0x30

    const-wide v13, -0xcccccccccccccccL

    cmp-long v15, v9, v13

    if-gez v15, :cond_2

    const/4 v11, 0x1

    :cond_2
    const-wide/16 v13, 0xa

    mul-long v9, v9, v13

    int-to-long v12, v12

    add-long v14, v7, v12

    cmp-long v16, v9, v14

    if-gez v16, :cond_3

    const/4 v11, 0x1

    :cond_3
    sub-long/2addr v9, v12

    .line 9
    iget v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v12, v6

    iput v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 10
    iget v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v6

    iput v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 11
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_4

    const/16 v12, 0x1a

    goto :goto_3

    :cond_4
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 12
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_3
    iput-char v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    neg-long v9, v9

    :cond_6
    const/16 v7, 0x4c

    const/16 v8, 0x44

    const/16 v15, 0x46

    if-ne v12, v7, :cond_7

    .line 13
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 15
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_4
    move v12, v3

    move-object v2, v7

    goto :goto_5

    :cond_7
    const/16 v7, 0x53

    if-ne v12, v7, :cond_8

    .line 16
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-int v7, v9

    int-to-short v7, v7

    .line 18
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    goto :goto_4

    :cond_8
    const/16 v7, 0x42

    if-ne v12, v7, :cond_9

    .line 19
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 21
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    goto :goto_4

    :cond_9
    if-ne v12, v15, :cond_a

    .line 22
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-float v7, v9

    .line 24
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_4

    :cond_a
    if-ne v12, v8, :cond_b

    .line 25
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move v12, v3

    long-to-double v2, v9

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_5

    :cond_b
    move v12, v3

    const/4 v2, 0x0

    .line 28
    :goto_5
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_f

    .line 29
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 30
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 31
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v7, :cond_c

    const/16 v3, 0x1a

    goto :goto_6

    :cond_c
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 32
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_6
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 33
    :goto_7
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v3, v14, :cond_e

    if-gt v3, v13, :cond_e

    .line 34
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 35
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 36
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v7, :cond_d

    const/16 v3, 0x1a

    goto :goto_8

    :cond_d
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 37
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_8
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_7

    :cond_e
    const/4 v7, 0x1

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    .line 38
    :goto_9
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x65

    const/16 v15, 0x2b

    if-eq v3, v5, :cond_11

    const/16 v5, 0x45

    if-ne v3, v5, :cond_10

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_11

    .line 39
    :cond_11
    :goto_a
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 40
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 41
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_12

    const/16 v3, 0x1a

    goto :goto_b

    :cond_12
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_b
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v15, :cond_13

    if-ne v3, v4, :cond_15

    .line 43
    :cond_13
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 44
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 45
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_14

    const/16 v3, 0x1a

    goto :goto_c

    :cond_14
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_c
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 47
    :cond_15
    :goto_d
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v3, v14, :cond_17

    if-gt v3, v13, :cond_17

    .line 48
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 49
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 50
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_16

    const/16 v3, 0x1a

    goto :goto_e

    :cond_16
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 51
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_d

    :cond_17
    if-eq v3, v8, :cond_19

    const/16 v5, 0x46

    if-ne v3, v5, :cond_18

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    goto :goto_10

    .line 52
    :cond_19
    :goto_f
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_10
    const/4 v5, 0x1

    :goto_11
    if-nez v7, :cond_1d

    if-nez v5, :cond_1d

    if-eqz v11, :cond_1a

    .line 54
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v3, v2, v0

    .line 55
    new-array v3, v3, [C

    .line 56
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 58
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_1a
    if-nez v2, :cond_1c

    const-wide/32 v2, -0x80000000

    cmp-long v0, v9, v2

    if-lez v0, :cond_1b

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v9, v2

    if-gez v0, :cond_1b

    long-to-int v0, v9

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_12

    .line 60
    :cond_1b
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_1c
    :goto_12
    return-object v2

    .line 61
    :cond_1d
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v2, v0

    if-eqz v3, :cond_1e

    add-int/lit8 v2, v2, -0x1

    .line 62
    :cond_1e
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v9, v8

    if-ge v2, v9, :cond_1f

    .line 63
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v10, v0, v2

    const/4 v7, 0x0

    invoke-virtual {v9, v0, v10, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 64
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_13

    :cond_1f
    const/4 v7, 0x0

    .line 65
    new-array v8, v2, [C

    .line 66
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v10, v0, v2

    invoke-virtual {v9, v0, v10, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    move-object v0, v8

    :goto_13
    if-nez v5, :cond_20

    .line 67
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_20

    .line 68
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v7, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_19

    :cond_20
    const/16 v8, 0x9

    if-gt v2, v8, :cond_29

    if-nez v5, :cond_29

    .line 69
    :try_start_0
    aget-char v5, v0, v7

    if-eq v5, v4, :cond_22

    if-ne v5, v15, :cond_21

    goto :goto_14

    :cond_21
    const/4 v4, 0x1

    goto :goto_15

    :cond_22
    :goto_14
    const/4 v4, 0x2

    .line 70
    aget-char v5, v0, v6

    :goto_15
    sub-int/2addr v5, v14

    const/4 v7, 0x0

    :goto_16
    if-ge v4, v2, :cond_25

    .line 71
    aget-char v8, v0, v4

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_23

    const/4 v7, 0x1

    goto :goto_17

    :cond_23
    add-int/lit8 v8, v8, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    if-eqz v7, :cond_24

    mul-int/lit8 v7, v7, 0xa

    :cond_24
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_25
    const/16 v0, 0x46

    if-ne v3, v0, :cond_27

    int-to-float v0, v5

    int-to-float v2, v7

    div-float/2addr v0, v2

    if-eqz v12, :cond_26

    neg-float v0, v0

    .line 72
    :cond_26
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_27
    int-to-double v2, v5

    int-to-double v4, v7

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    if-eqz v12, :cond_28

    neg-double v2, v2

    .line 74
    :cond_28
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 75
    :cond_29
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    const/16 v0, 0x46

    if-ne v3, v0, :cond_2a

    .line 76
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    :goto_18
    move-object v3, v0

    goto :goto_19

    .line 77
    :cond_2a
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_18

    :goto_19
    return-object v3

    :catch_0
    move-exception v0

    .line 78
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :goto_1a
    throw v2

    :goto_1b
    goto :goto_1a
.end method

.method public final scanString()V
    .locals 11

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    sub-int v1, v3, v1

    .line 4
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x5c

    if-lez v1, :cond_4

    add-int/lit8 v8, v1, -0x1

    .line 5
    aget-char v8, v4, v8

    if-ne v8, v7, :cond_4

    add-int/lit8 v8, v1, -0x2

    const/4 v9, 0x1

    :goto_1
    if-ltz v8, :cond_0

    .line 6
    aget-char v10, v4, v8

    if-ne v10, v7, :cond_0

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 7
    :cond_0
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    sub-int v7, v6, v3

    add-int/2addr v7, v1

    .line 9
    array-length v8, v4

    if-lt v7, v8, :cond_3

    .line 10
    array-length v8, v4

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    if-ge v8, v7, :cond_2

    move v8, v7

    .line 11
    :cond_2
    new-array v8, v8, [C

    .line 12
    array-length v9, v4

    invoke-static {v4, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    .line 13
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v3, v6, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v6

    move v1, v7

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v6, :cond_6

    :goto_3
    if-ge v5, v1, :cond_6

    .line 14
    aget-char v0, v4, v5

    if-ne v0, v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 15
    :cond_6
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 16
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 17
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 18
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    add-int/2addr v3, v2

    .line 19
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 20
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v0, :cond_7

    const/16 v0, 0x1a

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x4

    .line 22
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 23
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 3
    sget-boolean v3, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sub-int v3, v1, v0

    .line 5
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    :goto_0
    const/16 v5, 0x5c

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v2, :cond_3

    :goto_1
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    :goto_2
    if-ltz v2, :cond_1

    .line 8
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 9
    :cond_1
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    sub-int p1, v1, v0

    .line 10
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 13
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 14
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, p1, :cond_4

    const/16 p1, 0x1a

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object v3

    .line 16
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unclosed str, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 3
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 5
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    :cond_3
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 p1, 0x10

    .line 7
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    :cond_4
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    const/16 p1, 0x14

    .line 8
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    .line 9
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 10

    .line 11
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v2, p2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    sub-int v0, v2, v0

    .line 13
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x5c

    if-lez v0, :cond_4

    add-int/lit8 v7, v0, -0x1

    .line 14
    aget-char v7, v3, v7

    if-ne v7, v6, :cond_4

    add-int/lit8 v7, v0, -0x2

    const/4 v8, 0x1

    :goto_1
    if-ltz v7, :cond_0

    .line 15
    aget-char v9, v3, v7

    if-ne v9, v6, :cond_0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 16
    :cond_0
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    sub-int v6, v5, v2

    add-int/2addr v6, v0

    .line 18
    array-length v7, v3

    if-lt v6, v7, :cond_3

    .line 19
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    if-ge v7, v6, :cond_2

    move v7, v6

    .line 20
    :cond_2
    new-array v7, v7, [C

    .line 21
    array-length v8, v3

    invoke-static {v3, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    .line 22
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v7, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v2, v5

    move v0, v6

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v5, :cond_9

    const/4 p2, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge p2, v0, :cond_6

    .line 23
    aget-char v8, v3, p2

    mul-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v8

    if-ne v8, v6, :cond_5

    const/4 v5, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 24
    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    const/16 p2, 0x14

    if-ge v0, p2, :cond_8

    .line 25
    invoke-virtual {p1, v3, v4, v0, v7}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    .line 26
    :cond_9
    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p1

    :goto_4
    add-int/2addr v2, v1

    .line 27
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 28
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, p2, :cond_a

    const/16 p2, 0x1a

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 29
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_5
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object p1

    .line 30
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unclosed str, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 4
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-result v1

    .line 6
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 7
    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    .line 8
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x12

    .line 9
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 10
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const-string v3, "null"

    .line 11
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto :goto_2

    .line 14
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal identifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected setTime(CCCCCC)V
    .locals 0

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    .line 1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p4, 0xb

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 0

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    mul-int/lit16 p2, p2, 0xe10

    mul-int/lit16 p2, p2, 0x3e8

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_0

    neg-int p2, p2

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 2
    invoke-static {p2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 4
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_1
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_5

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 7
    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 12
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method final skipWhitespace()V
    .locals 3

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final sub_chars(II)[C
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-object p1

    .line 4
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public final token()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v0
.end method
