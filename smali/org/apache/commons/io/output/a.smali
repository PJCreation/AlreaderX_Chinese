.class public final synthetic Lorg/apache/commons/io/output/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/commons/io/o/c;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/output/a;->a:[B

    iput p2, p0, Lorg/apache/commons/io/output/a;->b:I

    iput p3, p0, Lorg/apache/commons/io/output/a;->c:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/io/output/a;->a:[B

    iget v1, p0, Lorg/apache/commons/io/output/a;->b:I

    iget v2, p0, Lorg/apache/commons/io/output/a;->c:I

    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/output/e;->v([BII)Lorg/apache/commons/io/input/b;

    move-result-object v0

    return-object v0
.end method
