.class Lcom/neverland/ttsservice/TTSService$k;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TTSService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neverland/ttsservice/TTSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field public final a:Lcom/neverland/engbook/forpublic/z;

.field public final b:Lcom/neverland/engbook/forpublic/z;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neverland/ttsservice/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:J

.field private f:Z

.field private g:I

.field final synthetic h:Lcom/neverland/ttsservice/TTSService;


# direct methods
.method private constructor <init>(Lcom/neverland/ttsservice/TTSService;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    .line 2
    new-instance p1, Lcom/neverland/engbook/forpublic/z;

    invoke-direct {p1}, Lcom/neverland/engbook/forpublic/z;-><init>()V

    iput-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    .line 3
    new-instance p1, Lcom/neverland/engbook/forpublic/z;

    invoke-direct {p1}, Lcom/neverland/engbook/forpublic/z;-><init>()V

    iput-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/neverland/ttsservice/TTSService$k;->e:J

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/neverland/ttsservice/TTSService$k;->f:Z

    .line 8
    iput p1, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/neverland/ttsservice/TTSService;Lcom/neverland/ttsservice/TTSService$a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/neverland/ttsservice/TTSService$k;-><init>(Lcom/neverland/ttsservice/TTSService;)V

    return-void
.end method

.method static synthetic a(Lcom/neverland/ttsservice/TTSService$k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/ttsservice/TTSService$k;->l()V

    return-void
.end method

.method static synthetic b(Lcom/neverland/ttsservice/TTSService$k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/ttsservice/TTSService$k;->k()V

    return-void
.end method

.method static synthetic c(Lcom/neverland/ttsservice/TTSService$k;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/ttsservice/TTSService$k;->m(I)V

    return-void
.end method

.method static synthetic d(Lcom/neverland/ttsservice/TTSService$k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/neverland/ttsservice/TTSService$k;->f()V

    return-void
.end method

.method private f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "commandNext"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget-wide v3, p0, Lcom/neverland/ttsservice/TTSService$k;->e:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xc8

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 5
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v3}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v3

    sget-object v4, Lcom/neverland/ttsservice/TTSService$TTS_STATE;->paused:Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    .line 6
    iget v3, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_1

    .line 7
    iget v3, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    .line 8
    iget-object v4, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/ttsservice/c;

    .line 9
    iget-object v4, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v7, v3, Lcom/neverland/ttsservice/c;->a:I

    iput v7, v4, Lcom/neverland/engbook/forpublic/z;->a:I

    .line 10
    iget v7, v3, Lcom/neverland/ttsservice/c;->b:I

    iput v7, v4, Lcom/neverland/engbook/forpublic/z;->b:I

    .line 11
    iget v3, v3, Lcom/neverland/ttsservice/c;->c:I

    iput v3, v4, Lcom/neverland/engbook/forpublic/z;->j:I

    .line 12
    iput-boolean v6, v4, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 13
    iput v5, v4, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 14
    iput v5, v4, Lcom/neverland/engbook/forpublic/z;->d:I

    .line 15
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v3}, Lcom/neverland/ttsservice/TTSService;->y(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v4, v3, Lcom/neverland/engbook/forpublic/z;->a:I

    iget v5, v3, Lcom/neverland/engbook/forpublic/z;->b:I

    iget v3, v3, Lcom/neverland/engbook/forpublic/z;->j:I

    invoke-direct {p0, v4, v5, v3}, Lcom/neverland/ttsservice/TTSService$k;->v(III)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v3}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v3

    sget-object v4, Lcom/neverland/ttsservice/TTSService$TTS_STATE;->play:Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    if-ne v3, v4, :cond_1

    .line 18
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iput-boolean v6, v3, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 19
    iput v5, v3, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 20
    iput v5, v3, Lcom/neverland/engbook/forpublic/z;->d:I

    .line 21
    invoke-direct {p0}, Lcom/neverland/ttsservice/TTSService$k;->t()V

    .line 22
    :cond_1
    :goto_0
    iput-wide v1, p0, Lcom/neverland/ttsservice/TTSService$k;->e:J

    .line 23
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "commandSetPitch"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "commandSetSpeed"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    return-void
.end method

.method private m(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "commandSetVolume"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v1

    sget-object v2, Lcom/neverland/ttsservice/TTSService$TTS_STATE;->blocked:Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    if-eq v1, v2, :cond_3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-gez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 6
    iget v4, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    if-ne v4, v2, :cond_0

    .line 7
    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iput v4, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    :cond_0
    const/4 v4, 0x1

    if-le p1, v4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lcom/neverland/ttsservice/TTSService$k;->o(I)I

    move-result p1

    .line 9
    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 10
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    sget-object v1, Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;->volumechange:Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;

    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iget v4, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    invoke-static {p1, v1, v3, v4, v2}, Lcom/neverland/ttsservice/TTSService;->z(Lcom/neverland/ttsservice/TTSService;Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;III)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 12
    iget v4, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    if-ne v4, v2, :cond_2

    .line 13
    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iput v4, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    .line 14
    :cond_2
    iget v4, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    if-ge p1, v4, :cond_3

    .line 15
    invoke-direct {p0, p1}, Lcom/neverland/ttsservice/TTSService$k;->p(I)I

    move-result p1

    .line 16
    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 17
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    sget-object v1, Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;->volumechange:Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;

    invoke-static {}, Lcom/neverland/utils/APIWrap;->getAU()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iget v4, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    invoke-static {p1, v1, v3, v4, v2}, Lcom/neverland/ttsservice/TTSService;->z(Lcom/neverland/ttsservice/TTSService;Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;III)V

    .line 18
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private n(I)J
    .locals 9

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v0, Lcom/neverland/prefs/TOptions;->ttsPauseTime:I

    int-to-float v1, v1

    .line 2
    iget v2, v0, Lcom/neverland/prefs/TOptions;->ttsPause:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    :goto_0
    mul-float v1, v1, v2

    .line 3
    :goto_1
    iget v0, v0, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    int-to-float v0, v0

    float-to-double v2, v0

    const/high16 v4, 0x42c80000    # 100.0f

    sub-float/2addr v0, v4

    float-to-double v5, v0

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v5

    double-to-float v0, v2

    int-to-float v2, p1

    mul-float v2, v2, v1

    mul-float v2, v2, v4

    div-float/2addr v2, v0

    float-to-long v0, v2

    const-wide/16 v2, 0xa0

    if-lez p1, :cond_2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    move-wide v0, v2

    :cond_2
    const-wide/16 v2, 0x1388

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    move-wide v0, v2

    :cond_3
    return-wide v0
.end method

.method private o(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-le v0, v2, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sub-int/2addr p1, v0

    if-lt p1, v1, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method private p(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/neverland/ttsservice/TTSService$k;->g:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    add-int/2addr p1, v1

    if-gt p1, v0, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method private synthetic q(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    sget-object v1, Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;->newselected:Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/neverland/ttsservice/TTSService;->z(Lcom/neverland/ttsservice/TTSService;Lcom/neverland/ttsservice/TTSService$TTS_MESSAGE;III)V

    return-void
.end method

.method private s(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v0

    sget-object v1, Lcom/neverland/ttsservice/TTSService$TTS_STATE;->play:Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    if-ne v0, v1, :cond_d

    .line 3
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->B(Lcom/neverland/ttsservice/TTSService;)V

    .line 4
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    .line 5
    iput v4, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-boolean v1, v0, Lcom/neverland/engbook/forpublic/z;->k:Z

    if-eqz v1, :cond_6

    .line 7
    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/neverland/engbook/forpublic/z;->a:I

    .line 8
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    iget-boolean v5, v1, Lcom/neverland/engbook/forpublic/z;->k:Z

    if-eqz v5, :cond_1

    .line 9
    iput-object v2, v1, Lcom/neverland/engbook/forpublic/z;->m:Ljava/util/ArrayList;

    .line 10
    iget v5, v1, Lcom/neverland/engbook/forpublic/z;->a:I

    iput v5, v0, Lcom/neverland/engbook/forpublic/z;->a:I

    .line 11
    iget v5, v1, Lcom/neverland/engbook/forpublic/z;->b:I

    iput v5, v0, Lcom/neverland/engbook/forpublic/z;->b:I

    .line 12
    iget v5, v1, Lcom/neverland/engbook/forpublic/z;->d:I

    iput v5, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    .line 13
    iget-object v5, v1, Lcom/neverland/engbook/forpublic/z;->f:Ljava/lang/String;

    iput-object v5, v0, Lcom/neverland/engbook/forpublic/z;->f:Ljava/lang/String;

    .line 14
    iget v5, v1, Lcom/neverland/engbook/forpublic/z;->l:I

    iput v5, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 15
    iget v5, v1, Lcom/neverland/engbook/forpublic/z;->i:I

    iput v5, v0, Lcom/neverland/engbook/forpublic/z;->i:I

    .line 16
    iget v1, v1, Lcom/neverland/engbook/forpublic/z;->j:I

    iput v1, v0, Lcom/neverland/engbook/forpublic/z;->j:I

    .line 17
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x3e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/z;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->g(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$k;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    invoke-virtual {v0, v1}, Lcom/neverland/ttsservice/TTSService$k;->e(Lcom/neverland/engbook/forpublic/z;)V

    .line 19
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->y(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->a:I

    iget v5, v0, Lcom/neverland/engbook/forpublic/z;->b:I

    iget v0, v0, Lcom/neverland/engbook/forpublic/z;->j:I

    invoke-direct {p0, v1, v5, v0}, Lcom/neverland/ttsservice/TTSService$k;->v(III)V

    goto/16 :goto_0

    .line 21
    :cond_1
    sget-object v1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v1, v0}, Lcom/neverland/book/TBook;->getNextPointTTS(Lcom/neverland/engbook/forpublic/z;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/z;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, v0, Lcom/neverland/prefs/TOptions;->ttsPause:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    if-lez v1, :cond_2

    sub-int/2addr v1, v3

    .line 24
    iput v1, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iput v4, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 26
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->g(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$k;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    invoke-virtual {v0, v1}, Lcom/neverland/ttsservice/TTSService$k;->e(Lcom/neverland/engbook/forpublic/z;)V

    .line 27
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->y(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->a:I

    iget v5, v0, Lcom/neverland/engbook/forpublic/z;->b:I

    iget v0, v0, Lcom/neverland/engbook/forpublic/z;->j:I

    invoke-direct {p0, v1, v5, v0}, Lcom/neverland/ttsservice/TTSService$k;->v(III)V

    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget-boolean v0, v0, Lcom/neverland/engbook/forpublic/z;->e:Z

    if-eqz v0, :cond_5

    .line 30
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/ttsservice/c;

    .line 31
    iput v4, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    .line 32
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v5, v0, Lcom/neverland/ttsservice/c;->a:I

    iput v5, v1, Lcom/neverland/engbook/forpublic/z;->a:I

    .line 33
    iget v5, v0, Lcom/neverland/ttsservice/c;->b:I

    iput v5, v1, Lcom/neverland/engbook/forpublic/z;->b:I

    .line 34
    iget v5, v0, Lcom/neverland/ttsservice/c;->c:I

    iput v5, v1, Lcom/neverland/engbook/forpublic/z;->j:I

    .line 35
    iget-object v0, v0, Lcom/neverland/ttsservice/c;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/neverland/engbook/forpublic/z;->f:Ljava/lang/String;

    .line 36
    iput-boolean v3, v1, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 37
    iput v4, v1, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 38
    iput v4, v1, Lcom/neverland/engbook/forpublic/z;->d:I

    .line 39
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->y(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->a:I

    iget v5, v0, Lcom/neverland/engbook/forpublic/z;->b:I

    iget v0, v0, Lcom/neverland/engbook/forpublic/z;->j:I

    invoke-direct {p0, v1, v5, v0}, Lcom/neverland/ttsservice/TTSService$k;->v(III)V

    .line 41
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iput-boolean v4, v0, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/neverland/engbook/forpublic/z;->h:J

    goto :goto_1

    .line 43
    :cond_5
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    sget-object v1, Lcom/neverland/ttsservice/TTSService$j;->f:Lcom/neverland/ttsservice/TTSService$j;

    const-string v2, "*"

    invoke-static {v0, v1, v2}, Lcom/neverland/ttsservice/TTSService;->C(Lcom/neverland/ttsservice/TTSService;Lcom/neverland/ttsservice/TTSService$j;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0, v4}, Lcom/neverland/ttsservice/TTSService;->E(Lcom/neverland/ttsservice/TTSService;Z)V

    .line 45
    monitor-exit p1

    return-void

    .line 46
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    if-eqz v1, :cond_7

    .line 47
    iget v0, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    .line 48
    invoke-direct {p0, v1}, Lcom/neverland/ttsservice/TTSService$k;->n(I)J

    move-result-wide v0

    .line 49
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2, v0, v1}, Lcom/neverland/ttsservice/TTSService;->w(Lcom/neverland/ttsservice/TTSService;J)V

    .line 51
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    goto/16 :goto_3

    .line 52
    :cond_7
    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v6, v0, Lcom/neverland/engbook/forpublic/z;->a:I

    iput v6, v5, Lcom/neverland/prefs/TInternalOptions;->ttsLastPoint1:I

    .line 53
    iget v5, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    and-int/2addr v5, v3

    if-nez v5, :cond_8

    .line 54
    iget-object v5, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/z;->f:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/neverland/ttsservice/TTSService;->D(Lcom/neverland/ttsservice/TTSService;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v5, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    or-int/2addr v5, v3

    iput v5, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iput-boolean v3, v0, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 57
    iget-object v5, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    iput-boolean v4, v5, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 58
    iget v4, v0, Lcom/neverland/engbook/forpublic/z;->g:I

    iput v4, v5, Lcom/neverland/engbook/forpublic/z;->g:I

    .line 59
    iget-object v4, v0, Lcom/neverland/engbook/forpublic/z;->m:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 60
    iget v6, v0, Lcom/neverland/engbook/forpublic/z;->b:I

    iput v6, v5, Lcom/neverland/engbook/forpublic/z;->b:I

    iput v6, v5, Lcom/neverland/engbook/forpublic/z;->a:I

    goto :goto_2

    .line 61
    :cond_9
    iget v6, v0, Lcom/neverland/engbook/forpublic/z;->b:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/neverland/engbook/forpublic/z;->b:I

    iput v6, v5, Lcom/neverland/engbook/forpublic/z;->a:I

    .line 62
    :goto_2
    iget v0, v0, Lcom/neverland/engbook/forpublic/z;->c:I

    iput v0, v5, Lcom/neverland/engbook/forpublic/z;->c:I

    .line 63
    iput-object v4, v5, Lcom/neverland/engbook/forpublic/z;->m:Ljava/util/ArrayList;

    .line 64
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    invoke-virtual {v0, v5}, Lcom/neverland/book/TBook;->getNextPointTTS(Lcom/neverland/engbook/forpublic/z;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 65
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    iget-boolean v4, v0, Lcom/neverland/engbook/forpublic/z;->k:Z

    if-eqz v4, :cond_c

    .line 66
    iget-object v1, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v1, Lcom/neverland/prefs/TOptions;->ttsPause:I

    if-nez v1, :cond_a

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    if-lez v1, :cond_a

    sub-int/2addr v1, v3

    .line 67
    iput v1, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    .line 68
    :cond_a
    iget v0, v0, Lcom/neverland/engbook/forpublic/z;->d:I

    if-eqz v0, :cond_b

    .line 69
    invoke-direct {p0, v0}, Lcom/neverland/ttsservice/TTSService$k;->n(I)J

    move-result-wide v0

    .line 70
    iget-object v4, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pause "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    iget v6, v6, Lcom/neverland/engbook/forpublic/z;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v4, v0, v1}, Lcom/neverland/ttsservice/TTSService;->w(Lcom/neverland/ttsservice/TTSService;J)V

    .line 72
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 73
    :cond_b
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/z;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/neverland/ttsservice/TTSService;->D(Lcom/neverland/ttsservice/TTSService;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    iget v1, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 75
    :cond_c
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    iget-object v3, v1, Lcom/neverland/engbook/forpublic/z;->m:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/neverland/engbook/forpublic/z;->m:Ljava/util/ArrayList;

    .line 76
    iput-object v2, v1, Lcom/neverland/engbook/forpublic/z;->m:Ljava/util/ArrayList;

    .line 77
    :cond_d
    :goto_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private t()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "restart enter"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->b:Lcom/neverland/engbook/forpublic/z;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 4
    iput v2, v1, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 5
    iget-boolean v1, p0, Lcom/neverland/ttsservice/TTSService$k;->f:Z

    const/16 v3, 0x15

    if-eqz v1, :cond_0

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 7
    iput-boolean v2, p0, Lcom/neverland/ttsservice/TTSService$k;->f:Z

    .line 8
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->v(Lcom/neverland/ttsservice/TTSService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catch_0
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v1, v3, :cond_3

    .line 12
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    goto :goto_1

    :catch_1
    :cond_2
    const-wide/16 v1, 0xa

    .line 13
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v1

    .line 14
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 15
    :cond_3
    :goto_1
    iget v1, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v4, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_4

    .line 16
    :goto_2
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    if-le v1, v4, :cond_4

    .line 17
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_4
    iput v2, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    .line 19
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-wide/16 v4, 0x96

    invoke-static {v1, v4, v5}, Lcom/neverland/ttsservice/TTSService;->w(Lcom/neverland/ttsservice/TTSService;J)V

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_5

    .line 21
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    iget-object v2, v1, Lcom/neverland/libservice/BaseService;->e:Landroid/app/Service;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->u(Lcom/neverland/ttsservice/TTSService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v2, v1, v3}, Lcom/neverland/utils/APIWrap;->createTTSServiceNotification(Landroid/app/Service;Landroid/support/v4/media/session/MediaSessionCompat;I)V

    .line 22
    :cond_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 23
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "restart leave"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 24
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private v(III)V
    .locals 1

    .line 1
    new-instance v0, Lcom/neverland/ttsservice/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/neverland/ttsservice/a;-><init>(Lcom/neverland/ttsservice/TTSService$k;III)V

    .line 2
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {p1}, Lcom/neverland/ttsservice/TTSService;->A(Lcom/neverland/ttsservice/TTSService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public e(Lcom/neverland/engbook/forpublic/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neverland/ttsservice/c;

    iget v0, v0, Lcom/neverland/ttsservice/c;->a:I

    iget v1, p1, Lcom/neverland/engbook/forpublic/z;->a:I

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/neverland/ttsservice/c;

    invoke-direct {v0}, Lcom/neverland/ttsservice/c;-><init>()V

    .line 4
    iget v1, p1, Lcom/neverland/engbook/forpublic/z;->a:I

    iput v1, v0, Lcom/neverland/ttsservice/c;->a:I

    .line 5
    iget v1, p1, Lcom/neverland/engbook/forpublic/z;->b:I

    iput v1, v0, Lcom/neverland/ttsservice/c;->b:I

    .line 6
    iget v1, p1, Lcom/neverland/engbook/forpublic/z;->j:I

    iput v1, v0, Lcom/neverland/ttsservice/c;->c:I

    .line 7
    iget-object p1, p1, Lcom/neverland/engbook/forpublic/z;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/neverland/ttsservice/c;->d:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x200

    if-le p1, v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "commandPause"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/neverland/ttsservice/TTSService$i;->b:[I

    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1, v2}, Lcom/neverland/ttsservice/TTSService;->k(Lcom/neverland/ttsservice/TTSService;Z)V

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "commandPlay"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/neverland/ttsservice/TTSService$i;->b:[I

    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/neverland/ttsservice/TTSService;->k(Lcom/neverland/ttsservice/TTSService;Z)V

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "commandPlayPause"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/neverland/ttsservice/TTSService$i;->b:[I

    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/neverland/ttsservice/TTSService;->k(Lcom/neverland/ttsservice/TTSService;Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1, v2}, Lcom/neverland/ttsservice/TTSService;->k(Lcom/neverland/ttsservice/TTSService;Z)V

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "commandPrev"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget-wide v3, p0, Lcom/neverland/ttsservice/TTSService$k;->e:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xc8

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 5
    iget v3, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 6
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v3}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v3

    sget-object v6, Lcom/neverland/ttsservice/TTSService$TTS_STATE;->paused:Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    const/4 v7, 0x0

    if-ne v3, v6, :cond_2

    .line 8
    iget p1, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    :goto_0
    if-ltz p1, :cond_7

    .line 9
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/ttsservice/c;

    .line 10
    iget v4, v3, Lcom/neverland/ttsservice/c;->a:I

    iget-object v6, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v8, v6, Lcom/neverland/engbook/forpublic/z;->a:I

    if-ge v4, v8, :cond_1

    .line 11
    iput p1, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I

    .line 12
    iput v4, v6, Lcom/neverland/engbook/forpublic/z;->a:I

    .line 13
    iget p1, v3, Lcom/neverland/ttsservice/c;->b:I

    iput p1, v6, Lcom/neverland/engbook/forpublic/z;->b:I

    .line 14
    iget p1, v3, Lcom/neverland/ttsservice/c;->c:I

    iput p1, v6, Lcom/neverland/engbook/forpublic/z;->j:I

    .line 15
    iput-boolean v5, v6, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 16
    iput v7, v6, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 17
    iput v7, v6, Lcom/neverland/engbook/forpublic/z;->d:I

    .line 18
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {p1}, Lcom/neverland/ttsservice/TTSService;->y(Lcom/neverland/ttsservice/TTSService;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v3, p1, Lcom/neverland/engbook/forpublic/z;->a:I

    iget v4, p1, Lcom/neverland/engbook/forpublic/z;->b:I

    iget p1, p1, Lcom/neverland/engbook/forpublic/z;->j:I

    invoke-direct {p0, v3, v4, p1}, Lcom/neverland/ttsservice/TTSService$k;->v(III)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 20
    :cond_2
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v3}, Lcom/neverland/ttsservice/TTSService;->x(Lcom/neverland/ttsservice/TTSService;)Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    move-result-object v3

    sget-object v6, Lcom/neverland/ttsservice/TTSService$TTS_STATE;->play:Lcom/neverland/ttsservice/TTSService$TTS_STATE;

    if-ne v3, v6, :cond_7

    if-nez p1, :cond_4

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget-wide v10, p1, Lcom/neverland/engbook/forpublic/z;->h:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1388

    cmp-long p1, v8, v10

    if-gez p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    :goto_1
    if-ltz p1, :cond_4

    .line 23
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neverland/ttsservice/c;

    .line 24
    iget v3, v3, Lcom/neverland/ttsservice/c;->a:I

    iget-object v6, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v8, v6, Lcom/neverland/engbook/forpublic/z;->a:I

    if-ge v3, v8, :cond_3

    .line 25
    iput v3, v6, Lcom/neverland/engbook/forpublic/z;->a:I

    sub-int/2addr v3, v5

    .line 26
    iput v3, v6, Lcom/neverland/engbook/forpublic/z;->b:I

    .line 27
    iput-boolean v5, v6, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 28
    iput v7, v6, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 29
    iput v7, v6, Lcom/neverland/engbook/forpublic/z;->d:I

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    :goto_2
    if-ne p1, v4, :cond_5

    .line 30
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    iget v3, p1, Lcom/neverland/engbook/forpublic/z;->a:I

    sub-int/2addr v3, v5

    iput v3, p1, Lcom/neverland/engbook/forpublic/z;->b:I

    .line 31
    iput-boolean v5, p1, Lcom/neverland/engbook/forpublic/z;->k:Z

    .line 32
    iput v7, p1, Lcom/neverland/engbook/forpublic/z;->l:I

    .line 33
    iput v7, p1, Lcom/neverland/engbook/forpublic/z;->d:I

    goto :goto_4

    .line 34
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_6

    .line 35
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 36
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/neverland/ttsservice/TTSService$k;->t()V

    .line 37
    :cond_7
    :goto_5
    iput-wide v1, p0, Lcom/neverland/ttsservice/TTSService$k;->e:J

    .line 38
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "Listener onDone"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    sget-object v1, Lcom/neverland/book/TBook$BOOKTIME_EVENT;->pageTurn:Lcom/neverland/book/TBook$BOOKTIME_EVENT;

    invoke-virtual {v0, v1}, Lcom/neverland/book/TBook;->ttsTimeAdd(Lcom/neverland/book/TBook$BOOKTIME_EVENT;)J

    .line 3
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->F(Lcom/neverland/ttsservice/TTSService;)I

    move-result v0

    sget-object v1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v2, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    const/high16 v3, 0x42c80000    # 100.0f

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0, v2}, Lcom/neverland/ttsservice/TTSService;->G(Lcom/neverland/ttsservice/TTSService;I)I

    .line 5
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->F(Lcom/neverland/ttsservice/TTSService;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->H(Lcom/neverland/ttsservice/TTSService;)I

    move-result v0

    iget-object v1, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v1, v1, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0, v1}, Lcom/neverland/ttsservice/TTSService;->I(Lcom/neverland/ttsservice/TTSService;I)I

    .line 8
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->H(Lcom/neverland/ttsservice/TTSService;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 9
    :cond_1
    invoke-direct {p0, p1}, Lcom/neverland/ttsservice/TTSService$k;->s(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v0, "Listener onError"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/neverland/libservice/BaseService;->d(Ljava/lang/String;Z)V

    .line 6
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/neverland/ttsservice/TTSService;->w(Lcom/neverland/ttsservice/TTSService;J)V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener onError 2 ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/neverland/libservice/BaseService;->d(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-wide/16 v0, 0xa

    invoke-static {p2, v0, v1}, Lcom/neverland/ttsservice/TTSService;->w(Lcom/neverland/ttsservice/TTSService;J)V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/speech/tts/UtteranceProgressListener;->onRangeStart(Ljava/lang/String;III)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v0, "Listener onStart"

    invoke-virtual {p1, v0}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v0}, Lcom/neverland/ttsservice/TTSService;->y(Lcom/neverland/ttsservice/TTSService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v2}, Lcom/neverland/ttsservice/TTSService;->J(Lcom/neverland/ttsservice/TTSService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/neverland/ttsservice/TTSService;->L(Lcom/neverland/ttsservice/TTSService;Z)V

    .line 5
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/neverland/ttsservice/TTSService;->K(Lcom/neverland/ttsservice/TTSService;J)J

    .line 6
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string p2, "Listener onStop"

    invoke-virtual {p1, p2}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/ttsservice/TTSService$k;->s(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic r(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/neverland/ttsservice/TTSService$k;->q(III)V

    return-void
.end method

.method public u()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "stop enter"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/neverland/ttsservice/TTSService$k;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    .line 6
    :catch_0
    :goto_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 7
    iget-object v3, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    iget-object v4, v3, Lcom/neverland/libservice/BaseService;->e:Landroid/app/Service;

    invoke-static {v3}, Lcom/neverland/ttsservice/TTSService;->u(Lcom/neverland/ttsservice/TTSService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v4, v3, v5}, Lcom/neverland/utils/APIWrap;->createTTSServiceNotification(Landroid/app/Service;Landroid/support/v4/media/session/MediaSessionCompat;I)V

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->a:Lcom/neverland/engbook/forpublic/z;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/neverland/engbook/forpublic/z;->m:Ljava/util/ArrayList;

    if-lt v1, v2, :cond_4

    .line 10
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/neverland/ttsservice/TTSService;->O()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :try_start_3
    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    invoke-static {v1}, Lcom/neverland/ttsservice/TTSService;->r(Lcom/neverland/ttsservice/TTSService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    monitor-exit v0

    goto :goto_3

    .line 13
    :cond_3
    :goto_2
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_3
    const-wide/16 v0, 0xa

    .line 15
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 17
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/neverland/ttsservice/TTSService$k;->h:Lcom/neverland/ttsservice/TTSService;

    const-string v1, "stop leave"

    invoke-virtual {v0, v1}, Lcom/neverland/libservice/BaseService;->c(Ljava/lang/String;)V

    return-void

    .line 18
    :goto_5
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method
