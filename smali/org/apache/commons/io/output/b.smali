.class public final synthetic Lorg/apache/commons/io/output/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/commons/io/output/c$a;


# static fields
.field public static final synthetic a:Lorg/apache/commons/io/output/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/output/b;

    invoke-direct {v0}, Lorg/apache/commons/io/output/b;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/b;->a:Lorg/apache/commons/io/output/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII)Ljava/io/InputStream;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/e;->w([BII)Lorg/apache/commons/io/input/b;

    move-result-object p1

    return-object p1
.end method
