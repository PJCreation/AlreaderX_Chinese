.class public final synthetic Lcom/neverland/ttsservice/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/neverland/ttsservice/TTSService$k;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/neverland/ttsservice/TTSService$k;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/neverland/ttsservice/a;->e:Lcom/neverland/ttsservice/TTSService$k;

    iput p2, p0, Lcom/neverland/ttsservice/a;->f:I

    iput p3, p0, Lcom/neverland/ttsservice/a;->g:I

    iput p4, p0, Lcom/neverland/ttsservice/a;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/neverland/ttsservice/a;->e:Lcom/neverland/ttsservice/TTSService$k;

    iget v1, p0, Lcom/neverland/ttsservice/a;->f:I

    iget v2, p0, Lcom/neverland/ttsservice/a;->g:I

    iget v3, p0, Lcom/neverland/ttsservice/a;->h:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/neverland/ttsservice/TTSService$k;->r(III)V

    return-void
.end method
