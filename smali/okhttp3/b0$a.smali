.class public final Lokhttp3/b0$a;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/b0$a;-><init>()V

    return-void
.end method

.method public static synthetic h(Lokhttp3/b0$a;Lokhttp3/y;[BIIILjava/lang/Object;)Lokhttp3/b0;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1
    array-length p4, p2

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/b0$a;->f(Lokhttp3/y;[BII)Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lokhttp3/b0$a;[BLokhttp3/y;IIILjava/lang/Object;)Lokhttp3/b0;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 1
    array-length p4, p1

    .line 2
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/b0$a;->g([BLokhttp3/y;II)Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/File;Lokhttp3/y;)Lokhttp3/b0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/b0$a$a;

    invoke-direct {v0, p2, p1}, Lokhttp3/b0$a$a;-><init>(Lokhttp3/y;Ljava/io/File;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lokhttp3/y;)Lokhttp3/b0;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p2, v2, v1, v2}, Lokhttp3/y;->d(Lokhttp3/y;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lokhttp3/y;->a:Lokhttp3/y$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; charset=utf-8"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lokhttp3/y$a;->b(Ljava/lang/String;)Lokhttp3/y;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lokhttp3/b0$a;->g([BLokhttp3/y;II)Lokhttp3/b0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lokhttp3/y;Ljava/io/File;)Lokhttp3/b0;
    .locals 1

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lokhttp3/b0$a;->a(Ljava/io/File;Lokhttp3/y;)Lokhttp3/b0;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lokhttp3/y;Ljava/lang/String;)Lokhttp3/b0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lokhttp3/b0$a;->b(Ljava/lang/String;Lokhttp3/y;)Lokhttp3/b0;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lokhttp3/y;[B)Lokhttp3/b0;
    .locals 8

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lokhttp3/b0$a;->h(Lokhttp3/b0$a;Lokhttp3/y;[BIIILjava/lang/Object;)Lokhttp3/b0;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lokhttp3/y;[BII)Lokhttp3/b0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1, p3, p4}, Lokhttp3/b0$a;->g([BLokhttp3/y;II)Lokhttp3/b0;

    move-result-object p1

    return-object p1
.end method

.method public final g([BLokhttp3/y;II)Lokhttp3/b0;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lokhttp3/f0/d;->i(JJJ)V

    .line 2
    new-instance v0, Lokhttp3/b0$a$b;

    invoke-direct {v0, p2, p4, p1, p3}, Lokhttp3/b0$a$b;-><init>(Lokhttp3/y;I[BI)V

    return-object v0
.end method
