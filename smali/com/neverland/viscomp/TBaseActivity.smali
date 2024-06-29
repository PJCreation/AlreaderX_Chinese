.class public Lcom/neverland/viscomp/TBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TBaseActivity.java"


# instance fields
.field private final act:Landroid/app/Activity;

.field private adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

.field private callback:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/viscomp/TBaseActivity;->adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 3
    iput-object v0, p0, Lcom/neverland/viscomp/TBaseActivity;->callback:Landroidx/core/util/Consumer;

    .line 4
    iput-object p0, p0, Lcom/neverland/viscomp/TBaseActivity;->act:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/neverland/viscomp/TBaseActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/neverland/viscomp/TBaseActivity;->act:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public loadContent(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/neverland/utils/APIWrap;->setTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 3
    sget-object p1, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    invoke-virtual {p1, p0}, Lcom/neverland/mainApp;->v(Landroid/app/Activity;)V

    .line 4
    sget-object p1, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/neverland/mainApp;->j(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/neverland/utils/APIWrap;->setTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    invoke-virtual {v1, p0}, Lcom/neverland/mainApp;->v(Landroid/app/Activity;)V

    .line 3
    sget-object v1, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    invoke-virtual {v1, p0, v0}, Lcom/neverland/mainApp;->j(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 8
    new-instance p1, Lcom/neverland/viscomp/TBaseActivity$1;

    invoke-direct {p1, p0}, Lcom/neverland/viscomp/TBaseActivity$1;-><init>(Lcom/neverland/viscomp/TBaseActivity;)V

    iput-object p1, p0, Lcom/neverland/viscomp/TBaseActivity;->callback:Landroidx/core/util/Consumer;

    .line 9
    new-instance p1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    sget-object v0, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    iput-object p1, p0, Lcom/neverland/viscomp/TBaseActivity;->adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_0
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neverland/viscomp/TBaseActivity;->adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    const-string v0, "null"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TBaseActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v0, p0}, Lcom/neverland/utils/TCustomDevice;->setBacklightLevel(Landroid/app/Activity;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p0, v1}, Lcom/neverland/utils/TCustomDevice;->setRotate_2(Landroid/app/Activity;Z)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/neverland/viscomp/TBaseActivity;->adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/neverland/viscomp/TBaseActivity;->callback:Landroidx/core/util/Consumer;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/neverland/viscomp/TBaseActivity;->callback:Landroidx/core/util/Consumer;

    invoke-virtual {v0, p0, v1, v2}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/neverland/viscomp/TBaseActivity;->adapter:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/neverland/viscomp/TBaseActivity;->callback:Landroidx/core/util/Consumer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
