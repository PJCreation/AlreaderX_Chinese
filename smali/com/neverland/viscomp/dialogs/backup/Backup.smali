.class public Lcom/neverland/viscomp/dialogs/backup/Backup;
.super Lcom/neverland/viscomp/dialogs/backup/BackupBase;
.source "Backup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/viscomp/dialogs/backup/BackupBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/dialogs/backup/Backup;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/neverland/viscomp/dialogs/backup/Backup;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/neverland/viscomp/dialogs/backup/Backup;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/neverland/viscomp/dialogs/backup/Backup;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected fillList()V
    .locals 2

    .line 1
    new-instance v0, Lcom/neverland/viscomp/dialogs/backup/Backup$1;

    invoke-direct {v0, p0}, Lcom/neverland/viscomp/dialogs/backup/Backup$1;-><init>(Lcom/neverland/viscomp/dialogs/backup/Backup;)V

    .line 2
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->workThread1:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getTagDialog()Ljava/lang/String;
    .locals 1

    const-string v0, "backup"

    return-object v0
.end method

.method public getTypeDialog()Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;->backup:Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;

    return-object v0
.end method

.method protected onCreateDialogCustomize(Landroid/app/Dialog;Lcom/neverland/viscomp/dialogs/backup/StateBackup;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->onCreateDialogCustomize(Landroid/app/Dialog;Lcom/neverland/viscomp/dialogs/backup/StateBackup;)V

    .line 2
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->dstText:Lcom/neverland/viscomp/dialogs/MyTextView;

    const p2, 0x7f11029f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->spinner1:Lcom/neverland/viscomp/dialogs/BaseSpinner;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->srcText:Lcom/neverland/viscomp/dialogs/MyTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected runOk(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/neverland/viscomp/dialogs/backup/Backup$2;

    invoke-direct {p2, p0, p4}, Lcom/neverland/viscomp/dialogs/backup/Backup$2;-><init>(Lcom/neverland/viscomp/dialogs/backup/Backup;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected setTitle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->headerIcon:Lcom/neverland/viscomp/dialogs/MenuButton;

    const v1, 0x7f110196

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->headerText:Lcom/neverland/viscomp/dialogs/MyTextView;

    const v1, 0x7f11029e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected verifyOk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/backup/BackupBase;->btnOk:Lcom/neverland/viscomp/dialogs/MenuButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/neverland/viscomp/dialogs/TBaseDialog;->panelConfirm:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->setColorForViewGroup(Landroid/view/ViewGroup;)V

    return-void
.end method
