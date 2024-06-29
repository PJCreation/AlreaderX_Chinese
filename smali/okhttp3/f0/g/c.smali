.class public final Lokhttp3/f0/g/c;
.super Lokhttp3/f0/g/a;
.source "TaskQueue.kt"


# annotations
.annotation runtime Lkotlin/h;
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/f0/g/c;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/f0/g/c;->f:Z

    iput-object p3, p0, Lokhttp3/f0/g/c;->g:Lkotlin/jvm/b/a;

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/f0/g/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/f0/g/c;->g:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0
.end method
