.class public final Lokhttp3/b0$a$b;
.super Lokhttp3/b0;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/b0$a;->g([BLokhttp3/y;II)Lokhttp3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic b:Lokhttp3/y;

.field final synthetic c:I

.field final synthetic d:[B

.field final synthetic e:I


# direct methods
.method constructor <init>(Lokhttp3/y;I[BI)V
    .locals 0

    iput-object p1, p0, Lokhttp3/b0$a$b;->b:Lokhttp3/y;

    iput p2, p0, Lokhttp3/b0$a$b;->c:I

    iput-object p3, p0, Lokhttp3/b0$a$b;->d:[B

    iput p4, p0, Lokhttp3/b0$a$b;->e:I

    .line 1
    invoke-direct {p0}, Lokhttp3/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/b0$a$b;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lokhttp3/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/b0$a$b;->b:Lokhttp3/y;

    return-object v0
.end method

.method public h(Lokio/c;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/b0$a$b;->d:[B

    iget v1, p0, Lokhttp3/b0$a$b;->e:I

    iget v2, p0, Lokhttp3/b0$a$b;->c:I

    invoke-interface {p1, v0, v1, v2}, Lokio/c;->d([BII)Lokio/c;

    return-void
.end method
