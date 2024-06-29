.class public final synthetic Lorg/apache/commons/io/filefilter/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic e:Lorg/apache/commons/io/filefilter/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/filefilter/m;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/m;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/m;->e:Lorg/apache/commons/io/filefilter/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lorg/apache/commons/io/filefilter/RegexFileFilter;->h(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
