.class public final Lokhttp3/internal/http2/f;
.super Ljava/lang/Object;
.source "Http2Reader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/f$b;,
        Lokhttp3/internal/http2/f$c;,
        Lokhttp3/internal/http2/f$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final e:Lokhttp3/internal/http2/f$a;

.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final g:Lokio/d;

.field private final h:Z

.field private final i:Lokhttp3/internal/http2/f$b;

.field private final j:Lokhttp3/internal/http2/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http2/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/f$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/internal/http2/f;->e:Lokhttp3/internal/http2/f$a;

    .line 1
    const-class v0, Lokhttp3/internal/http2/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/http2/f;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/d;Z)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    .line 3
    iput-boolean p2, p0, Lokhttp3/internal/http2/f;->h:Z

    .line 4
    new-instance v2, Lokhttp3/internal/http2/f$b;

    invoke-direct {v2, p1}, Lokhttp3/internal/http2/f$b;-><init>(Lokio/d;)V

    iput-object v2, p0, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$b;

    .line 5
    new-instance p1, Lokhttp3/internal/http2/b$a;

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/b$a;-><init>(Lokio/v;IIILkotlin/jvm/internal/f;)V

    iput-object p1, p0, Lokhttp3/internal/http2/f;->j:Lokhttp3/internal/http2/b$a;

    return-void
.end method

.method private final A(Lokhttp3/internal/http2/f$c;III)V
    .locals 0

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/f;->x(Lokhttp3/internal/http2/f$c;I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_PRIORITY length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 5"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final B(Lokhttp3/internal/http2/f$c;III)V
    .locals 3

    if-eqz p4, :cond_1

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v0}, Lokio/d;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lokhttp3/f0/d;->b(BI)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v1}, Lokio/d;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 3
    sget-object v2, Lokhttp3/internal/http2/f;->e:Lokhttp3/internal/http2/f$a;

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v2, p2, p3, v0}, Lokhttp3/internal/http2/f$a;->b(III)I

    move-result p2

    .line 4
    invoke-direct {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/f;->s(IIII)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-interface {p1, p4, v1, p2}, Lokhttp3/internal/http2/f$c;->i(IILjava/util/List;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final E(Lokhttp3/internal/http2/f$c;III)V
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    if-eqz p4, :cond_1

    .line 1
    iget-object p2, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {p2}, Lokio/d;->readInt()I

    move-result p2

    .line 2
    sget-object p3, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$a;

    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/ErrorCode$a;->a(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p1, p4, p3}, Lokhttp3/internal/http2/f$c;->f(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_RST_STREAM length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 4"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final F(Lokhttp3/internal/http2/f$c;III)V
    .locals 8

    if-nez p4, :cond_f

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1}, Lokhttp3/internal/http2/f$c;->a()V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_e

    .line 4
    new-instance p3, Lokhttp3/internal/http2/k;

    invoke-direct {p3}, Lokhttp3/internal/http2/k;-><init>()V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p2}, Lkotlin/o/m;->i(II)Lkotlin/o/i;

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lkotlin/o/m;->h(Lkotlin/o/g;I)Lkotlin/o/g;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/o/g;->c()I

    move-result v1

    invoke-virtual {p2}, Lkotlin/o/g;->d()I

    move-result v2

    invoke-virtual {p2}, Lkotlin/o/g;->e()I

    move-result p2

    if-lez p2, :cond_2

    if-le v1, v2, :cond_3

    :cond_2
    if-gez p2, :cond_d

    if-gt v2, v1, :cond_d

    :cond_3
    :goto_0
    add-int v3, v1, p2

    .line 6
    iget-object v4, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v4}, Lokio/d;->readShort()S

    move-result v4

    const v5, 0xffff

    invoke-static {v4, v5}, Lokhttp3/f0/d;->c(SI)I

    move-result v4

    .line 7
    iget-object v5, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v5}, Lokio/d;->readInt()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eq v4, v6, :cond_9

    const/4 v6, 0x3

    if-eq v4, v6, :cond_8

    if-eq v4, v7, :cond_6

    const/4 v6, 0x5

    if-eq v4, v6, :cond_4

    goto :goto_1

    :cond_4
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_5

    const v6, 0xffffff

    if-gt v5, v6, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 v4, 0x7

    if-ltz v5, :cond_7

    goto :goto_1

    .line 9
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const/4 v4, 0x4

    goto :goto_1

    :cond_9
    if-eqz v5, :cond_b

    if-ne v5, p4, :cond_a

    goto :goto_1

    .line 10
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_b
    :goto_1
    invoke-virtual {p3, v4, v5}, Lokhttp3/internal/http2/k;->h(II)Lokhttp3/internal/http2/k;

    if-ne v1, v2, :cond_c

    goto :goto_2

    :cond_c
    move v1, v3

    goto :goto_0

    .line 12
    :cond_d
    :goto_2
    invoke-interface {p1, v0, p3}, Lokhttp3/internal/http2/f$c;->b(ZLokhttp3/internal/http2/k;)V

    return-void

    .line 13
    :cond_e
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private final I(Lokhttp3/internal/http2/f$c;III)V
    .locals 3

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 1
    iget-object p2, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {p2}, Lokio/d;->readInt()I

    move-result p2

    const-wide/32 v0, 0x7fffffff

    invoke-static {p2, v0, v1}, Lokhttp3/f0/d;->d(IJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {p1, p4, p2, p3}, Lokhttp3/internal/http2/f$c;->h(IJ)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "windowSizeIncrement was 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/f;->f:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private final l(Lokhttp3/internal/http2/f$c;III)V
    .locals 4

    if-eqz p4, :cond_4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    .line 1
    iget-object v1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v1}, Lokio/d;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/f0/d;->b(BI)I

    move-result v1

    .line 2
    :cond_2
    sget-object v2, Lokhttp3/internal/http2/f;->e:Lokhttp3/internal/http2/f$a;

    invoke-virtual {v2, p2, p3, v1}, Lokhttp3/internal/http2/f$a;->b(III)I

    move-result p2

    .line 3
    iget-object p3, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {p1, v0, p4, p3, p2}, Lokhttp3/internal/http2/f$c;->c(ZILokio/d;I)V

    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    int-to-long p2, v1

    invoke-interface {p1, p2, p3}, Lokio/d;->skip(J)V

    return-void

    .line 5
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final o(Lokhttp3/internal/http2/f$c;III)V
    .locals 3

    const/16 p3, 0x8

    if-lt p2, p3, :cond_3

    if-nez p4, :cond_2

    .line 1
    iget-object p4, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {p4}, Lokio/d;->readInt()I

    move-result p4

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v0}, Lokio/d;->readInt()I

    move-result v0

    sub-int/2addr p2, p3

    .line 3
    sget-object p3, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$a;

    invoke-virtual {p3, v0}, Lokhttp3/internal/http2/ErrorCode$a;->a(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 4
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_0

    .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lokio/d;->i(J)Lokio/ByteString;

    move-result-object v0

    .line 6
    :cond_0
    invoke-interface {p1, p4, p3, v0}, Lokhttp3/internal/http2/f$c;->j(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_GOAWAY unexpected error code: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_GOAWAY length < 8: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final s(IIII)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$b;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/f$b;->l(I)V

    .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$b;

    invoke-virtual {p1}, Lokhttp3/internal/http2/f$b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/f$b;->o(I)V

    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$b;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/f$b;->s(I)V

    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$b;

    invoke-virtual {p1, p3}, Lokhttp3/internal/http2/f$b;->j(I)V

    .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$b;

    invoke-virtual {p1, p4}, Lokhttp3/internal/http2/f$b;->v(I)V

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/f;->j:Lokhttp3/internal/http2/b$a;

    invoke-virtual {p1}, Lokhttp3/internal/http2/b$a;->k()V

    .line 7
    iget-object p1, p0, Lokhttp3/internal/http2/f;->j:Lokhttp3/internal/http2/b$a;

    invoke-virtual {p1}, Lokhttp3/internal/http2/b$a;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final v(Lokhttp3/internal/http2/f$c;III)V
    .locals 3

    if-eqz p4, :cond_3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    .line 1
    iget-object v1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v1}, Lokio/d;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/f0/d;->b(BI)I

    move-result v1

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    .line 2
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/f;->x(Lokhttp3/internal/http2/f$c;I)V

    add-int/lit8 p2, p2, -0x5

    .line 3
    :cond_2
    sget-object v2, Lokhttp3/internal/http2/f;->e:Lokhttp3/internal/http2/f$a;

    invoke-virtual {v2, p2, p3, v1}, Lokhttp3/internal/http2/f$a;->b(III)I

    move-result p2

    .line 4
    invoke-direct {p0, p2, v1, p3, p4}, Lokhttp3/internal/http2/f;->s(IIII)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    .line 5
    invoke-interface {p1, v0, p4, p3, p2}, Lokhttp3/internal/http2/f$c;->g(ZIILjava/util/List;)V

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final w(Lokhttp3/internal/http2/f$c;III)V
    .locals 1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    if-nez p4, :cond_1

    .line 1
    iget-object p2, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {p2}, Lokio/d;->readInt()I

    move-result p2

    .line 2
    iget-object p4, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {p4}, Lokio/d;->readInt()I

    move-result p4

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1, v0, p2, p4}, Lokhttp3/internal/http2/f$c;->d(ZII)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_PING length != 8: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final x(Lokhttp3/internal/http2/f$c;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v0}, Lokio/d;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 2
    iget-object v3, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v3}, Lokio/d;->readByte()B

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lokhttp3/f0/d;->b(BI)I

    move-result v3

    add-int/2addr v3, v2

    .line 3
    invoke-interface {p1, p2, v0, v3, v1}, Lokhttp3/internal/http2/f$c;->e(IIIZ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v0}, Lokio/v;->close()V

    return-void
.end method

.method public final e(ZLokhttp3/internal/http2/f$c;)Z
    .locals 11

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lokio/d;->C(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-static {v0}, Lokhttp3/f0/d;->H(Lokio/d;)I

    move-result v0

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v1}, Lokio/d;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/f0/d;->b(BI)I

    move-result v7

    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v1}, Lokio/d;->readByte()B

    move-result v1

    invoke-static {v1, v2}, Lokhttp3/f0/d;->b(BI)I

    move-result v8

    .line 5
    iget-object v1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    invoke-interface {v1}, Lokio/d;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v9, v1, v2

    .line 6
    sget-object v10, Lokhttp3/internal/http2/f;->f:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lokhttp3/internal/http2/c;->a:Lokhttp3/internal/http2/c;

    const/4 v2, 0x1

    move v3, v9

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/http2/c;->c(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-ne v7, p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    sget-object p2, Lokhttp3/internal/http2/c;->a:Lokhttp3/internal/http2/c;

    invoke-virtual {p2, v7}, Lokhttp3/internal/http2/c;->b(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Expected a SETTINGS frame but was "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 8
    iget-object p1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/d;->skip(J)V

    goto :goto_1

    .line 9
    :pswitch_0
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->I(Lokhttp3/internal/http2/f$c;III)V

    goto :goto_1

    .line 10
    :pswitch_1
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->o(Lokhttp3/internal/http2/f$c;III)V

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->w(Lokhttp3/internal/http2/f$c;III)V

    goto :goto_1

    .line 12
    :pswitch_3
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->B(Lokhttp3/internal/http2/f$c;III)V

    goto :goto_1

    .line 13
    :pswitch_4
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->F(Lokhttp3/internal/http2/f$c;III)V

    goto :goto_1

    .line 14
    :pswitch_5
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->E(Lokhttp3/internal/http2/f$c;III)V

    goto :goto_1

    .line 15
    :pswitch_6
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->A(Lokhttp3/internal/http2/f$c;III)V

    goto :goto_1

    .line 16
    :pswitch_7
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->v(Lokhttp3/internal/http2/f$c;III)V

    goto :goto_1

    .line 17
    :pswitch_8
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/f;->l(Lokhttp3/internal/http2/f$c;III)V

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 18
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "FRAME_SIZE_ERROR: "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lokhttp3/internal/http2/f$c;)V
    .locals 4

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/f;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/http2/f;->e(ZLokhttp3/internal/http2/f$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Required SETTINGS preface not received"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Lokhttp3/internal/http2/f;->g:Lokio/d;

    sget-object v0, Lokhttp3/internal/http2/c;->b:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2}, Lokio/d;->i(J)Lokio/ByteString;

    move-result-object p1

    .line 5
    sget-object v1, Lokhttp3/internal/http2/f;->f:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<< CONNECTION "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lokhttp3/f0/d;->q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 7
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Expected a connection header but was "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
