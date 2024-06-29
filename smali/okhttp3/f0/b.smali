.class public final synthetic Lokhttp3/f0/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/t$c;


# instance fields
.field public final synthetic a:Lokhttp3/t;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/f0/b;->a:Lokhttp3/t;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/f;)Lokhttp3/t;
    .locals 1

    iget-object v0, p0, Lokhttp3/f0/b;->a:Lokhttp3/t;

    invoke-static {v0, p1}, Lokhttp3/f0/d;->F(Lokhttp3/t;Lokhttp3/f;)Lokhttp3/t;

    move-result-object p1

    return-object p1
.end method
