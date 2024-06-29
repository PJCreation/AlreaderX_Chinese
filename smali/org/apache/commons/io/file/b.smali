.class public final synthetic Lorg/apache/commons/io/file/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lorg/apache/commons/io/file/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/file/b;

    invoke-direct {v0}, Lorg/apache/commons/io/file/b;-><init>()V

    sput-object v0, Lorg/apache/commons/io/file/b;->a:Lorg/apache/commons/io/file/b;

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

    check-cast p1, Lorg/apache/commons/io/file/e;

    invoke-static {p1}, Lorg/apache/commons/io/file/StandardDeleteOption;->a(Lorg/apache/commons/io/file/e;)Z

    move-result p1

    return p1
.end method
