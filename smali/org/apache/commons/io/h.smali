.class public final synthetic Lorg/apache/commons/io/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lorg/apache/commons/io/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/h;

    invoke-direct {v0}, Lorg/apache/commons/io/h;-><init>()V

    sput-object v0, Lorg/apache/commons/io/h;->a:Lorg/apache/commons/io/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/commons/io/m;->h()[C

    move-result-object v0

    return-object v0
.end method
