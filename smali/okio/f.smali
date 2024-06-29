.class public abstract Lokio/f;
.super Ljava/lang/Object;
.source "ForwardingSource.kt"

# interfaces
.implements Lokio/v;


# instance fields
.field private final e:Lokio/v;


# direct methods
.method public constructor <init>(Lokio/v;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/f;->e:Lokio/v;

    return-void
.end method


# virtual methods
.method public final a()Lokio/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/f;->e:Lokio/v;

    return-object v0
.end method

.method public c()Lokio/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/f;->e:Lokio/v;

    invoke-interface {v0}, Lokio/v;->c()Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/f;->e:Lokio/v;

    invoke-interface {v0}, Lokio/v;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/f;->e:Lokio/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
