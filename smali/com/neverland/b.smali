.class public final synthetic Lcom/neverland/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/neverland/mainApp$saveContent2FileReal;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/neverland/mainApp$saveContent2FileReal;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/neverland/b;->e:Lcom/neverland/mainApp$saveContent2FileReal;

    iput-boolean p2, p0, Lcom/neverland/b;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/neverland/b;->e:Lcom/neverland/mainApp$saveContent2FileReal;

    iget-boolean v1, p0, Lcom/neverland/b;->f:Z

    invoke-virtual {v0, v1}, Lcom/neverland/mainApp$saveContent2FileReal;->a(Z)V

    return-void
.end method
