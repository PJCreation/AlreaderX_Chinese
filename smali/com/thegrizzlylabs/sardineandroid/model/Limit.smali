.class public Lcom/thegrizzlylabs/sardineandroid/model/Limit;
.super Ljava/lang/Object;
.source "Limit.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "D"
    reference = "DAV:"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field protected nresults:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNresults()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Limit;->nresults:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setNresults(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Limit;->nresults:Ljava/math/BigInteger;

    return-void
.end method
