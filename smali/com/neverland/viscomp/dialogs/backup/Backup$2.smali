.class Lcom/neverland/viscomp/dialogs/backup/Backup$2;
.super Ljava/lang/Object;
.source "Backup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neverland/viscomp/dialogs/backup/Backup;->runOk(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

.field final synthetic val$i2:I


# direct methods
.method constructor <init>(Lcom/neverland/viscomp/dialogs/backup/Backup;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$2;->this$0:Lcom/neverland/viscomp/dialogs/backup/Backup;

    iput p2, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$2;->val$i2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Lcom/neverland/utils/WorkBackupZip;

    invoke-direct {v0}, Lcom/neverland/utils/WorkBackupZip;-><init>()V

    .line 2
    iget v1, p0, Lcom/neverland/viscomp/dialogs/backup/Backup$2;->val$i2:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x2

    if-lt v1, v5, :cond_2

    const/4 v2, 0x1

    .line 3
    :cond_2
    invoke-virtual {v0, v4, v2}, Lcom/neverland/utils/WorkBackupZip;->backup(ZZ)Ljava/lang/String;

    return-void
.end method
