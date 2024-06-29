.class public final synthetic Lcom/neverland/viscomp/dialogs/openfile/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;


# direct methods
.method public synthetic constructor <init>(Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/openfile/k;->e:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/openfile/k;->e:Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;

    invoke-virtual {v0}, Lcom/neverland/viscomp/dialogs/openfile/AdapterStorage$realLoadAllBooks;->a()V

    return-void
.end method
