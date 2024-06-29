.class public Lcom/neverland/prefs/TInternalOptions;
.super Ljava/lang/Object;
.source "TInternalOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;
    }
.end annotation


# instance fields
.field public activeEditTag:I

.field public activeMenuItem:I

.field public allReadTime1:J

.field public allReadingStatCount1:J

.field public allReadingStatTime1:J

.field public allTTSTime:J

.field public appLang:I

.field public blockTouch1:Z

.field public bookmarkConfirmDelete:Z

.field public bookmarkDefaultMarker:I

.field public bookmarkQuickDefaultMarker:I

.field public bookmarkSort1:I

.field public bookmarkUseBookText:Z

.field public bookmarkUseMarker:I

.field public bookmarkUseType:I

.field public bookmarkViewType:I

.field public buttonColorForSystemTheme:I

.field public citeDefaultMarker:I

.field public citeQuickDefaultMarker:I

.field public countStart:I

.field public debugonyx:I

.field public debugonyx2:I

.field public favorViewType:I

.field public fontScale:I

.field public isEink:Z

.field public lastImageReceiverClass:Ljava/lang/String;

.field public lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

.field public lastSearch:Ljava/lang/String;

.field public lastTextReceiverAction:Ljava/lang/String;

.field public lastTextReceiverClass1:Ljava/lang/String;

.field public lastTextReceiverFlags:I

.field public menuAccentColor:I

.field public menuBackColor:I

.field public menuDisableColor:I

.field public menuTextColor:I

.field public networkUseHttps:Z

.field public preview_percent:Z

.field public proMode:Z

.field public scanFileSearch1:Ljava/lang/String;

.field public sortFavorReverse:Z

.field public sortFile:I

.field public sortFileReverse:Z

.field public sortNetwork:I

.field public sortNetworkReverse:Z

.field public storageReadAllFiles:Z

.field public syncAutoMode:I

.field public syncBackup:I

.field public syncBookmark:I

.field public syncFTPAddr:Ljava/lang/String;

.field public syncFTPName:Ljava/lang/String;

.field public syncFTPPass:Ljava/lang/String;

.field public syncIdDevice:J

.field public syncManualMode:I

.field public syncName:Ljava/lang/String;

.field public syncPass:Ljava/lang/String;

.field public syncSFTPAddr:Ljava/lang/String;

.field public syncSFTPName:Ljava/lang/String;

.field public syncSFTPPass:Ljava/lang/String;

.field public syncSilentifNoNetwork:Z

.field public syncUploadBook:I

.field public syncWebDAVAddr1:Ljava/lang/String;

.field public syncWebDAVName:Ljava/lang/String;

.field public syncWebDAVPass:Ljava/lang/String;

.field public syncWebDAVUseHTTP1:Z

.field public top100Add:Z

.field public top100Authors:Z

.field public troubleCustomize:Z

.field public ttsLastPoint1:I

.field public ttsPinned:Z

.field public ttsPitch:I

.field public ttsVoice:Ljava/lang/String;

.field public ttsVolume0:I

.field public useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->countStart:I

    .line 3
    sget-object v1, Lcom/neverland/prefs/TPref$THEME_TYPE;->system_daynight:Lcom/neverland/prefs/TPref$THEME_TYPE;

    iput-object v1, p0, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    .line 4
    iput-boolean v0, p0, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    .line 5
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->fontScale:I

    .line 6
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->appLang:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->syncSilentifNoNetwork:Z

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    const/4 v4, 0x0

    .line 9
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncName:Ljava/lang/String;

    .line 10
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncPass:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    .line 12
    iput v1, p0, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    .line 13
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->networkUseHttps:Z

    .line 14
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->syncBackup:I

    .line 15
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->syncUploadBook:I

    .line 16
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->syncBookmark:I

    .line 17
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVAddr1:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVUseHTTP1:Z

    .line 19
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVName:Ljava/lang/String;

    .line 20
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    .line 21
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncFTPAddr:Ljava/lang/String;

    .line 22
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncFTPName:Ljava/lang/String;

    .line 23
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncFTPPass:Ljava/lang/String;

    .line 24
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPAddr:Ljava/lang/String;

    .line 25
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPName:Ljava/lang/String;

    .line 26
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPPass:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->preview_percent:Z

    .line 28
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->lastTextReceiverClass1:Ljava/lang/String;

    .line 29
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->lastTextReceiverAction:Ljava/lang/String;

    .line 30
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->lastImageReceiverClass:Ljava/lang/String;

    .line 31
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->lastTextReceiverFlags:I

    const/4 v5, 0x2

    .line 32
    iput v5, p0, Lcom/neverland/prefs/TInternalOptions;->buttonColorForSystemTheme:I

    .line 33
    iput-boolean v0, p0, Lcom/neverland/prefs/TInternalOptions;->troubleCustomize:Z

    .line 34
    iput-wide v2, p0, Lcom/neverland/prefs/TInternalOptions;->allReadTime1:J

    .line 35
    iput-wide v2, p0, Lcom/neverland/prefs/TInternalOptions;->allTTSTime:J

    const-wide/16 v2, 0x14d

    .line 36
    iput-wide v2, p0, Lcom/neverland/prefs/TInternalOptions;->allReadingStatCount1:J

    .line 37
    iput-wide v2, p0, Lcom/neverland/prefs/TInternalOptions;->allReadingStatTime1:J

    .line 38
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->top100Authors:Z

    .line 39
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->top100Add:Z

    .line 40
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->sortFile:I

    .line 41
    iput-boolean v0, p0, Lcom/neverland/prefs/TInternalOptions;->sortFileReverse:Z

    .line 42
    iput-boolean v0, p0, Lcom/neverland/prefs/TInternalOptions;->sortFavorReverse:Z

    .line 43
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    .line 44
    iput-boolean v0, p0, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    .line 45
    iput-boolean v0, p0, Lcom/neverland/prefs/TInternalOptions;->storageReadAllFiles:Z

    .line 46
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->bookmarkConfirmDelete:Z

    .line 48
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->bookmarkQuickDefaultMarker:I

    .line 49
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->bookmarkDefaultMarker:I

    .line 50
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseBookText:Z

    .line 51
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->citeQuickDefaultMarker:I

    .line 52
    iput v5, p0, Lcom/neverland/prefs/TInternalOptions;->citeDefaultMarker:I

    .line 53
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->bookmarkSort1:I

    .line 54
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->activeMenuItem:I

    .line 55
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->proMode:Z

    .line 56
    iput-object v4, p0, Lcom/neverland/prefs/TInternalOptions;->ttsVoice:Ljava/lang/String;

    const/16 v2, 0x64

    .line 57
    iput v2, p0, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    .line 58
    iput-boolean v1, p0, Lcom/neverland/prefs/TInternalOptions;->ttsPinned:Z

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/neverland/prefs/TInternalOptions;->ttsVolume0:I

    .line 60
    iput v1, p0, Lcom/neverland/prefs/TInternalOptions;->ttsLastPoint1:I

    .line 61
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->activeEditTag:I

    .line 62
    sget-object v1, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->p1:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    iput-object v1, p0, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    const v1, 0xeceff1

    .line 63
    iput v1, p0, Lcom/neverland/prefs/TInternalOptions;->menuAccentColor:I

    const v1, 0xc8d8ec

    .line 64
    iput v1, p0, Lcom/neverland/prefs/TInternalOptions;->menuTextColor:I

    const v1, 0x808080

    .line 65
    iput v1, p0, Lcom/neverland/prefs/TInternalOptions;->menuDisableColor:I

    const v1, 0x455a64

    .line 66
    iput v1, p0, Lcom/neverland/prefs/TInternalOptions;->menuBackColor:I

    .line 67
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->debugonyx:I

    .line 68
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->debugonyx2:I

    .line 69
    iput v5, p0, Lcom/neverland/prefs/TInternalOptions;->bookmarkViewType:I

    .line 70
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseType:I

    .line 71
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseMarker:I

    .line 72
    iput v0, p0, Lcom/neverland/prefs/TInternalOptions;->favorViewType:I

    .line 73
    iput-boolean v0, p0, Lcom/neverland/prefs/TInternalOptions;->blockTouch1:Z

    return-void
.end method
