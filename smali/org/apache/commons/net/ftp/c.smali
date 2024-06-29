.class public Lorg/apache/commons/net/ftp/c;
.super Lorg/apache/commons/net/ftp/b;
.source "FTPClient.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/ftp/c$d;,
        Lorg/apache/commons/net/ftp/c$c;,
        Lorg/apache/commons/net/ftp/c$b;,
        Lorg/apache/commons/net/ftp/c$a;
    }
.end annotation


# static fields
.field private static final y:Ljava/util/regex/Pattern;


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/String;

.field private final D:Ljava/util/Random;

.field private E:I

.field private F:I

.field private G:Ljava/net/InetAddress;

.field private H:Ljava/net/InetAddress;

.field private I:Ljava/net/InetAddress;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:J

.field private P:Lorg/apache/commons/net/ftp/parser/d;

.field private Q:I

.field private R:I

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:Lorg/apache/commons/net/ftp/e;

.field private X:Ljava/lang/String;

.field private Y:Lorg/apache/commons/net/ftp/d;

.field private Z:Lorg/apache/commons/net/io/c;

.field private a0:J

.field private b0:I

.field private c0:[I

.field private d0:Lorg/apache/commons/net/ftp/c$b;

.field private e0:Z

.field private f0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/c;->y:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/b;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->b0:I

    .line 3
    new-instance v0, Lorg/apache/commons/net/ftp/c$c;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ftp/c$c;-><init>(Lorg/apache/commons/net/ftp/c;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->d0:Lorg/apache/commons/net/ftp/c$b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->e0:Z

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->A0()V

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lorg/apache/commons/net/ftp/c;->A:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/c;->N:Z

    .line 8
    new-instance v1, Lorg/apache/commons/net/ftp/parser/c;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/c;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->P:Lorg/apache/commons/net/ftp/parser/d;

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->Y:Lorg/apache/commons/net/ftp/d;

    .line 10
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->T:Z

    .line 11
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->U:Z

    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->D:Ljava/util/Random;

    .line 13
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->I:Ljava/net/InetAddress;

    return-void
.end method

.method private A0()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->z:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;

    const/4 v2, -0x1

    .line 3
    iput v2, p0, Lorg/apache/commons/net/ftp/c;->B:I

    .line 4
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->G:Ljava/net/InetAddress;

    .line 5
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->H:Ljava/net/InetAddress;

    .line 6
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->E:I

    .line 7
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->F:I

    .line 8
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->J:I

    const/4 v0, 0x7

    .line 9
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->L:I

    const/4 v0, 0x4

    .line 10
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->K:I

    const/16 v0, 0xa

    .line 11
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->M:I

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, p0, Lorg/apache/commons/net/ftp/c;->O:J

    .line 13
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->V:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->W:Lorg/apache/commons/net/ftp/e;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->X:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->f0:Ljava/util/HashMap;

    return-void
.end method

.method private B0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->f0:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->D()I

    move-result v0

    const/16 v2, 0x212

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result v0

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/c;->f0:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return v3

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    .line 7
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lez v3, :cond_3

    .line 8
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    .line 11
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lorg/apache/commons/net/ftp/c;->f0:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_4

    .line 13
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 14
    iget-object v5, p0, Lorg/apache/commons/net/ftp/c;->f0:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1
.end method

.method private D0(Lorg/apache/commons/net/ftp/e;Ljava/lang/String;)Lorg/apache/commons/net/ftp/i;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->LIST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/c;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/c;->f0(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p2

    .line 2
    new-instance v0, Lorg/apache/commons/net/ftp/i;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->Y:Lorg/apache/commons/net/ftp/d;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/net/ftp/i;-><init>(Lorg/apache/commons/net/ftp/e;Lorg/apache/commons/net/ftp/d;)V

    if-nez p2, :cond_0

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/net/ftp/i;->d(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p2}, Lorg/apache/commons/net/io/g;->b(Ljava/net/Socket;)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->l0()Z

    return-object v0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p2}, Lorg/apache/commons/net/io/g;->b(Ljava/net/Socket;)V

    .line 7
    throw p1
.end method

.method private M0(Lorg/apache/commons/net/io/c;)Lorg/apache/commons/net/io/c;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->Z:Lorg/apache/commons/net/io/c;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->Z:Lorg/apache/commons/net/io/c;

    if-nez v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Lorg/apache/commons/net/io/b;

    invoke-direct {v0}, Lorg/apache/commons/net/io/b;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/b;->d(Lorg/apache/commons/net/io/c;)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->Z:Lorg/apache/commons/net/io/c;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/b;->d(Lorg/apache/commons/net/io/c;)V

    return-object v0
.end method

.method static N0(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_1

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private W0(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/ftp/c;->j0(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method private p0()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->E:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->F:I

    if-lt v1, v0, :cond_1

    if-ne v1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/net/ftp/c;->D:Ljava/util/Random;

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->E:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private r0(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->Q:I

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/BufferedInputStream;

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->Q:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private s0(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->Q:I

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->Q:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private t0()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->G:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/b;->m()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static w0()Ljava/util/Properties;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/c$d;->a:Ljava/util/Properties;

    return-object v0
.end method

.method private x0()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->H:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->t0()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public C0(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/c;->m0(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->W:Lorg/apache/commons/net/ftp/e;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->D0(Lorg/apache/commons/net/ftp/e;Ljava/lang/String;)Lorg/apache/commons/net/ftp/i;

    move-result-object p1

    return-object p1
.end method

.method public E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->U:Z

    return v0
.end method

.method public F0()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->G0(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public G0(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/c;->C0(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/i;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/i;->a()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public H0()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->I0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I0(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lorg/apache/commons/net/ftp/FTPCmd;->NLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/c;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/c;->f0(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_0
    return-object v1

    .line 4
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 5
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->E()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 9
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->l0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lorg/apache/commons/net/util/b;->a:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_3
    return-object v1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 13
    :try_start_5
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public J0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/b;->d0(Ljava/lang/String;)I

    .line 2
    iget p1, p0, Lorg/apache/commons/net/ftp/b;->o:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    iget p1, p0, Lorg/apache/commons/net/ftp/b;->o:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->b(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/b;->N(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result p1

    return p1
.end method

.method public K0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->R()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result v0

    return v0
.end method

.method public L0(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/b;->M(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result p1

    return p1
.end method

.method public O0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->Q()I

    move-result v0

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/c;->N0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P0(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/b;->T(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result p1

    return p1
.end method

.method protected Q0(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/apache/commons/net/ftp/c;->O:J

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/b;->S(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->b(I)Z

    move-result p1

    return p1
.end method

.method public R0(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/c;->i0(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public S0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/c;->e0:Z

    return-void
.end method

.method public T0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/ftp/c;->A:I

    return-void
.end method

.method public U0(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/b;->c0(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lorg/apache/commons/net/ftp/c;->J:I

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lorg/apache/commons/net/ftp/c;->K:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public V0(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/c;->W0(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->x(Ljava/io/Reader;)V

    return-void
.end method

.method public d(Lorg/apache/commons/net/ftp/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->Y:Lorg/apache/commons/net/ftp/d;

    return-void
.end method

.method protected e0(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 8

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->z:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/b;->n()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    .line 3
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->z:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_c

    .line 4
    iget-object v2, p0, Lorg/apache/commons/net/b;->j:Ljavax/net/ServerSocketFactory;

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->p0()I

    move-result v6

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->t0()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v2, v6, v5, v7}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->x0()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lorg/apache/commons/net/ftp/b;->B(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    return-object v1

    .line 7
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->x0()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lorg/apache/commons/net/ftp/b;->P(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    return-object v1

    .line 9
    :cond_2
    :try_start_2
    iget-wide v5, p0, Lorg/apache/commons/net/ftp/c;->O:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_4

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/net/ftp/c;->Q0(J)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    :cond_3
    return-object v1

    .line 11
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/b;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->c(I)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    :cond_5
    return-object v1

    .line 13
    :cond_6
    :try_start_4
    iget p1, p0, Lorg/apache/commons/net/ftp/c;->A:I

    if-ltz p1, :cond_7

    .line 14
    invoke-virtual {v2, p1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 15
    :cond_7
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    .line 16
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->A:I

    if-ltz p2, :cond_8

    .line 17
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 18
    :cond_8
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->S:I

    if-lez p2, :cond_9

    .line 19
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 20
    :cond_9
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->R:I

    if-lez p2, :cond_a

    .line 21
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :cond_a
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_b

    .line 23
    :try_start_5
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :cond_b
    throw p1

    .line 24
    :cond_c
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->E0()Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_e

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v5, 0x0

    :cond_e
    :goto_0
    if-eqz v5, :cond_f

    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->C()I

    move-result v2

    const/16 v5, 0xe5

    if-ne v2, v5, :cond_f

    .line 26
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->g0(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    if-eqz v0, :cond_10

    return-object v1

    .line 27
    :cond_10
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->O()I

    move-result v0

    const/16 v2, 0xe3

    if-eq v0, v2, :cond_11

    return-object v1

    .line 28
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->h0(Ljava/lang/String;)V

    .line 29
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/b;->i:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 30
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->S:I

    if-lez v2, :cond_12

    .line 31
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 32
    :cond_12
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->R:I

    if-lez v2, :cond_13

    .line 33
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 34
    :cond_13
    iget-object v2, p0, Lorg/apache/commons/net/ftp/c;->I:Ljava/net/InetAddress;

    if-eqz v2, :cond_14

    .line 35
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lorg/apache/commons/net/ftp/c;->I:Ljava/net/InetAddress;

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 36
    :cond_14
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->A:I

    if-ltz v2, :cond_15

    .line 37
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 38
    :cond_15
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;

    iget v6, p0, Lorg/apache/commons/net/ftp/c;->B:I

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v5, p0, Lorg/apache/commons/net/b;->k:I

    invoke-virtual {v0, v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 39
    iget-wide v5, p0, Lorg/apache/commons/net/ftp/c;->O:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_16

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/net/ftp/c;->Q0(J)Z

    move-result v2

    if-nez v2, :cond_16

    .line 40
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-object v1

    .line 41
    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/b;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->c(I)Z

    move-result p1

    if-nez p1, :cond_17

    .line 42
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-object v1

    :cond_17
    move-object p1, v0

    .line 43
    :goto_2
    iget-boolean p2, p0, Lorg/apache/commons/net/ftp/c;->N:Z

    if-eqz p2, :cond_19

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/b;->u(Ljava/net/Socket;)Z

    move-result p2

    if-eqz p2, :cond_18

    goto :goto_3

    .line 44
    :cond_18
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 45
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 46
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host attempting data connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not same as server "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/net/b;->n()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_3
    return-object p1
.end method

.method protected f0(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method protected g0(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x28

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "Could not parse extended passive host information.\nServer Reply: "

    if-ne v0, v2, :cond_0

    if-ne v2, v3, :cond_0

    if-ne v3, v4, :cond_0

    const/4 v0, 0x3

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/net/b;->n()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;

    .line 8
    iput p1, p0, Lorg/apache/commons/net/ftp/c;->B:I

    return-void

    .line 9
    :catch_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/apache/commons/net/ftp/b;->h()V

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->A0()V

    return-void
.end method

.method protected h0(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/c;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const-string v2, "Could not parse passive host information.\nServer Reply: "

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0,0,0,0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/apache/commons/net/b;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2c

    const/16 v4, 0x2e

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;

    const/4 v1, 0x2

    .line 5
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->B:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->d0:Lorg/apache/commons/net/ftp/c$b;

    if-eqz v0, :cond_1

    .line 9
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/c$b;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Replacing PASV mode reply address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/net/b;->j(ILjava/lang/String;)V

    .line 12
    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    return-void

    .line 14
    :catch_1
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse passive port information.\nServer Reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected i0(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->J:I

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Lorg/apache/commons/net/io/d;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/c;->r0(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/d;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 5
    :goto_0
    new-instance v0, Lorg/apache/commons/net/io/e;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/net/io/e;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected j0(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->J:I

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Lorg/apache/commons/net/io/f;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/c;->s0(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/f;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/c;->s0(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    .line 5
    iget-wide v1, p0, Lorg/apache/commons/net/ftp/c;->a0:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 6
    new-instance v0, Lorg/apache/commons/net/ftp/c$a;

    iget v3, p0, Lorg/apache/commons/net/ftp/c;->b0:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/commons/net/ftp/c$a;-><init>(Lorg/apache/commons/net/ftp/c;JI)V

    :cond_2
    move-object v7, v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->q0()I

    move-result v2

    const-wide/16 v3, -0x1

    .line 8
    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/c;->M0(Lorg/apache/commons/net/io/c;)Lorg/apache/commons/net/io/c;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/g;->c(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/c;Z)J

    .line 10
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 11
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->l0()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/c$a;->d()[I

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/net/ftp/c;->c0:[I

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p3

    .line 14
    :try_start_1
    invoke-static {p2}, Lorg/apache/commons/net/io/g;->a(Ljava/io/Closeable;)V

    .line 15
    invoke-static {p1}, Lorg/apache/commons/net/io/g;->b(Ljava/net/Socket;)V

    .line 16
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v7, :cond_4

    .line 17
    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/c$a;->d()[I

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/net/ftp/c;->c0:[I

    .line 18
    :cond_4
    throw p1
.end method

.method public k0(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/b;->z(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result p1

    return p1
.end method

.method public l0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->F()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result v0

    return v0
.end method

.method m0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->W:Lorg/apache/commons/net/ftp/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->X:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->P:Lorg/apache/commons/net/ftp/parser/d;

    .line 3
    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/d;->b(Ljava/lang/String;)Lorg/apache/commons/net/ftp/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->W:Lorg/apache/commons/net/ftp/e;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->X:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->Y:Lorg/apache/commons/net/ftp/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 6
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->P:Lorg/apache/commons/net/ftp/parser/d;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->Y:Lorg/apache/commons/net/ftp/d;

    .line 7
    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/parser/d;->a(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->W:Lorg/apache/commons/net/ftp/e;

    .line 8
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->Y:Lorg/apache/commons/net/ftp/d;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->X:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "org.apache.commons.net.ftp.systemType"

    .line 9
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->y0()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Lorg/apache/commons/net/ftp/c;->w0()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object p1, v0

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->Y:Lorg/apache/commons/net/ftp/d;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->P:Lorg/apache/commons/net/ftp/parser/d;

    new-instance v1, Lorg/apache/commons/net/ftp/d;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/c;->Y:Lorg/apache/commons/net/ftp/d;

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/d;)V

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/parser/d;->a(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->W:Lorg/apache/commons/net/ftp/e;

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->P:Lorg/apache/commons/net/ftp/parser/d;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/d;->b(Ljava/lang/String;)Lorg/apache/commons/net/ftp/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->W:Lorg/apache/commons/net/ftp/e;

    .line 16
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->X:Ljava/lang/String;

    :cond_5
    :goto_1
    return-void
.end method

.method public n0(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/b;->A(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result p1

    return p1
.end method

.method public o0()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->z:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->C:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->B:I

    return-void
.end method

.method public q0()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->Q:I

    return v0
.end method

.method protected u0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->v0()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "-a "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "-a"

    :cond_1
    return-object p1
.end method

.method public v0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->T:Z

    return v0
.end method

.method protected x(Ljava/io/Reader;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/net/ftp/b;->x(Ljava/io/Reader;)V

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->A0()V

    .line 3
    iget-boolean p1, p0, Lorg/apache/commons/net/ftp/c;->e0:Z

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->p:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iget v0, p0, Lorg/apache/commons/net/ftp/b;->o:I

    const-string v1, "UTF8"

    .line 6
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/c;->z0(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UTF-8"

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/c;->z0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/b;->Z(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lorg/apache/commons/net/io/a;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/commons/net/b;->g:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->E()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/a;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/b;->w:Ljava/io/BufferedReader;

    .line 9
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/commons/net/b;->h:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->E()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/b;->x:Ljava/io/BufferedWriter;

    .line 10
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v1, p0, Lorg/apache/commons/net/ftp/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iput v0, p0, Lorg/apache/commons/net/ftp/b;->o:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/b;->q:Z

    :cond_2
    return-void
.end method

.method public y0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->V:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->b0()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->V:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "org.apache.commons.net.ftp.systemType.default"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->V:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine system type - response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->V:Ljava/lang/String;

    return-object v0
.end method

.method public z0(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->B0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->f0:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
