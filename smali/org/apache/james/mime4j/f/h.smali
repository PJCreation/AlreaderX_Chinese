.class final Lorg/apache/james/mime4j/f/h;
.super Ljava/lang/Object;
.source "EmptyByteSequence.java"

# interfaces
.implements Lorg/apache/james/mime4j/f/e;


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lorg/apache/james/mime4j/f/h;->b:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
