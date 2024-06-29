.class public final synthetic Lcom/neverland/viscomp/dialogs/openfile/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/o;->e:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/openfile/o;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/o;->e:Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/openfile/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/neverland/viscomp/dialogs/openfile/UnitOpenStorage;->b(Ljava/lang/String;)V

    return-void
.end method
