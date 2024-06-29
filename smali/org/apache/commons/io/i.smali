.class public final synthetic Lorg/apache/commons/io/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/commons/io/o/b;


# static fields
.field public static final synthetic a:Lorg/apache/commons/io/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/i;

    invoke-direct {v0}, Lorg/apache/commons/io/i;-><init>()V

    sput-object v0, Lorg/apache/commons/io/i;->a:Lorg/apache/commons/io/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lorg/apache/commons/io/k;->d(Ljava/io/File;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
