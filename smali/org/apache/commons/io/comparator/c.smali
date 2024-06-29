.class public final synthetic Lorg/apache/commons/io/comparator/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Lorg/apache/commons/io/comparator/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/comparator/c;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/c;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/c;->a:Lorg/apache/commons/io/comparator/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/io/comparator/CompositeFileComparator;->d(I)[Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method
