.class public final synthetic Lokhttp3/f0/e/a$a;
.super Ljava/lang/Object;
.source "JavaNetAuthenticator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f0/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/net/Proxy$Type;->values()[Ljava/net/Proxy$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lokhttp3/f0/e/a$a;->a:[I

    return-void
.end method
