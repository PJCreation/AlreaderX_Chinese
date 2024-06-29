.class public final synthetic Lcom/neverland/utils/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/neverland/utils/TCustomDevice;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/neverland/utils/TCustomDevice;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/neverland/utils/a;->e:Lcom/neverland/utils/TCustomDevice;

    iput-object p2, p0, Lcom/neverland/utils/a;->f:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/neverland/utils/a;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/neverland/utils/a;->e:Lcom/neverland/utils/TCustomDevice;

    iget-object v1, p0, Lcom/neverland/utils/a;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/neverland/utils/a;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/neverland/utils/TCustomDevice;->a(Ljava/lang/String;Z)V

    return-void
.end method
