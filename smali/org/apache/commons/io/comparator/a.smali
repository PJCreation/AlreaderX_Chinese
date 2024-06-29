.class public final synthetic Lorg/apache/commons/io/comparator/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lorg/apache/commons/io/comparator/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/comparator/a;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/a;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/a;->a:Lorg/apache/commons/io/comparator/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/apache/commons/io/comparator/CompositeFileComparator;->c(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
