.class public interface abstract Lokhttp3/c;
.super Ljava/lang/Object;
.source "Authenticator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/c$a;
    }
.end annotation

.annotation runtime Lkotlin/h;
.end annotation


# static fields
.field public static final a:Lokhttp3/c$a;

.field public static final b:Lokhttp3/c;

.field public static final c:Lokhttp3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lokhttp3/c$a;->a:Lokhttp3/c$a;

    sput-object v0, Lokhttp3/c;->a:Lokhttp3/c$a;

    .line 1
    new-instance v0, Lokhttp3/c$a$a;

    invoke-direct {v0}, Lokhttp3/c$a$a;-><init>()V

    sput-object v0, Lokhttp3/c;->b:Lokhttp3/c;

    .line 2
    new-instance v0, Lokhttp3/f0/e/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/f0/e/a;-><init>(Lokhttp3/s;ILkotlin/jvm/internal/f;)V

    sput-object v0, Lokhttp3/c;->c:Lokhttp3/c;

    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/e0;Lokhttp3/c0;)Lokhttp3/a0;
.end method
