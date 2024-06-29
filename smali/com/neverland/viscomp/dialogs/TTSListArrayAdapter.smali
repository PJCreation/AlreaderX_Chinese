.class public Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TTSListArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final config:[Ljava/lang/String;

.field private final context:Lcom/neverland/viscomp/dialogs/TBaseDialog;

.field private final imageid:[I

.field private final menuAccentColor:I

.field private final menuTextColor:I

.field private final voices:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/neverland/viscomp/dialogs/TBaseDialog;[Ljava/lang/String;[I[Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/neverland/viscomp/dialogs/TBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00c7

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->voices:[Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->context:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    .line 4
    iput-object p3, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->imageid:[I

    .line 5
    iput-object p4, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->config:[Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->menuTextColor:I

    .line 7
    iput p6, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->menuAccentColor:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->context:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    if-nez p2, :cond_0

    const p2, 0x7f0d00c7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p3, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0107

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/neverland/viscomp/dialogs/MenuButton;

    const v0, 0x7f0a0148

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/MyTextView;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v2, Lcom/neverland/prefs/TOptions;->dialogTextScaleX:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_1

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 8
    :cond_1
    iget v2, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->menuAccentColor:I

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 9
    iget-object v2, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->config:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TInternalOptions;->ttsVoice:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget v2, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->menuAccentColor:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->menuTextColor:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    if-eqz v1, :cond_3

    or-int/lit8 v1, v2, 0x8

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->imageid:[I

    aget v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setText(I)V

    .line 15
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->voices:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->context:Lcom/neverland/viscomp/dialogs/TBaseDialog;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    if-nez p2, :cond_0

    const p2, 0x7f0d00c7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p3, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0107

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/neverland/viscomp/dialogs/MenuButton;

    const v0, 0x7f0a0148

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/neverland/viscomp/dialogs/MyTextView;

    .line 5
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v1, Lcom/neverland/prefs/TOptions;->dialogTextScaleX:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 7
    :cond_1
    iget v1, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->menuAccentColor:I

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 8
    iget v1, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->menuTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v1, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->imageid:[I

    aget v2, v1, p1

    const v3, 0x7f110190

    if-eq v2, v3, :cond_2

    const-string v1, ""

    .line 10
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    .line 11
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_2
    aget v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    :goto_0
    iget-object p3, p0, Lcom/neverland/viscomp/dialogs/TTSListArrayAdapter;->voices:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
