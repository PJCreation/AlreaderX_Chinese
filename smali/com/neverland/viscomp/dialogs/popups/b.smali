.class public final synthetic Lcom/neverland/viscomp/dialogs/popups/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/neverland/viscomp/dialogs/popups/IPopupFavorChange;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/neverland/viscomp/dialogs/popups/IPopupFavorChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/popups/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/popups/b;->f:Lcom/neverland/viscomp/dialogs/popups/IPopupFavorChange;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/popups/b;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/popups/b;->f:Lcom/neverland/viscomp/dialogs/popups/IPopupFavorChange;

    invoke-static {v0, v1}, Lcom/neverland/viscomp/dialogs/popups/PopupDialogCollection$42;->lambda$onClick$1(Ljava/lang/String;Lcom/neverland/viscomp/dialogs/popups/IPopupFavorChange;)V

    return-void
.end method
