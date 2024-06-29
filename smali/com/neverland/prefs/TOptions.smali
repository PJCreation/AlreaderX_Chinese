.class public Lcom/neverland/prefs/TOptions;
.super Ljava/lang/Object;
.source "TOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DOUBLE_TAP_COPY:I = 0x2

.field public static final DOUBLE_TAP_DICTIONARY:I = 0x1

.field public static final DOUBLE_TAP_NOUSE:I = 0x0

.field public static final DOUBLE_TAP_QUICKMENU:I = 0x3

.field public static final DOUBLE_TAP_SELECT:I = 0x4

.field public static final LIBRARY_BOOKLIST_AUTHOR_SERIES_TITLE:I = 0x1

.field public static final LIBRARY_BOOKLIST_AUTHOR_TITLE:I = 0x0

.field public static final LIBRARY_BOOKLIST_SERIES_TITLE:I = 0x2

.field public static final STR_STYLE:[Ljava/lang/String;

.field public static final TTS_COMMAND_NEXTPREV:I = 0x2

.field public static final TTS_COMMAND_NONE:I = 0x0

.field public static final TTS_COMMAND_PREVNEXT:I = 0x1

.field public static final TTS_COMMAND_SPEED:I = 0x5

.field public static final TTS_COMMAND_TONE:I = 0x3

.field public static final TTS_COMMAND_VOLUME:I = 0x4


# instance fields
.field public alwaysCopyExternalFile1:Z

.field public autoTwoColumns:I

.field public autoTwoColumnsScale:I

.field public autoTwoColumnsValue:Z

.field public autosaveProfiles:Z

.field public autoscrollMode:I

.field public backAction1:I

.field public chinezeSpecial:Z

.field public contentOnProgress:Z

.field public dialogSmallTitles:Z

.field public dialogTextScaleX:I

.field public dialogUseCover:Z

.field public dictionaryPhrase:I

.field public dictionaryWord:I

.field public disableTurnBitmap1:Z

.field public doubleTapTime:I

.field public favorCategories:[Ljava/lang/String;

.field public favorIsDefault:Z

.field public fontChangeStep1:F

.field public gammaMode1:I

.field public gammaValue:I

.field public hyph_lang:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;

.field public imageScale:I

.field public infoHeader:Lcom/neverland/utils/finit$ESTATUSINFO;

.field public infoStatus:Lcom/neverland/utils/finit$ESTATUSINFO;

.field public libraryBookListMode:I

.field public libraryBookListPageLimit:I

.field public libraryCustomPath:Ljava/lang/String;

.field public libraryCyrillicFirst:Z

.field public libraryPath:I

.field public libraryScanSimpleFileType:Z

.field public libraryUseAliases:Z

.field public libraryUseAuthorNick:Z

.field public libraryUseFirstLetter:I

.field public libraryUseNoMedia:Z

.field public longTapMode:I

.field public longTapTime:I

.field public menuConfigAccentColor:I

.field public menuConfigBackColor:I

.field public menuConfigTextColor:I

.field public notesItemsOnPageCount:I

.field public opdsDownload2Favor:I

.field public opdsDownloadPath1:Ljava/lang/String;

.field public openDialogsTap:I

.field public openLinkLongTap:Z

.field public pageSize:I

.field public pinchFontSize:Z

.field public progressFullLine:Z

.field public progressLineParam:I

.field public realCalcPages1:I

.field public reverseBookmark:Z

.field public rotate_current1:I

.field public rotate_onyx_usesystem:Z

.field public rotate_prev1:I

.field public saveAsSRC:Z

.field public scanFileBookShelf:I

.field public scanFileMetadata:I

.field public scanFileTile1:I

.field public shortTapMode:I

.field public showNotesOnPage:I

.field public sideBacklightLeft1:I

.field public sideBacklightRight1:I

.field public statusBarUseMenuColor:Z

.field public statusBold:Z

.field public statusFont1:Ljava/lang/String;

.field public statusLongClick:Z

.field public statusReverse:Z

.field public statusSize:I

.field public statusTextScaleX:I

.field public styleTune:[Lcom/neverland/prefs/TStyleTune;

.field public supportFolded:Z

.field public tapGuard:I

.field public tapScale:I

.field public tapTimeLimit1:I

.field public textMenu:Z

.field public ttsAddBMK:I

.field public ttsAlarm:I

.field public ttsDoubleSwipeX:I

.field public ttsDoubleSwipeY:I

.field public ttsImage:Z

.field public ttsKeepBacklight:Z

.field public ttsMaxLen:I

.field public ttsMotionValue:D

.field public ttsPause:I

.field public ttsPauseTime:I

.field public ttsReadAllParagraph:Z

.field public ttsReadNotes:I

.field public ttsSelectedAsStart1:I

.field public ttsSimpleMenu:Z

.field public ttsSpeed:I

.field public ttsStopAfterTimer:Z

.field public ttsSwipeX:I

.field public ttsSwipeY:I

.field public ttsTimeOut:I

.field public ttsTimerPinned:Z

.field public ttsUseMotion:Z

.field public ttsVolumeAsTrack:Z

.field public ttsVolumeControl:Z

.field public ttsZoom:I

.field public useAscentAsTopForText:Z

.field public useDoubleTap:I

.field public useFontsNoto:Z

.field public useFontsSystem:Z

.field public useFullscreenSkin:Z

.field public useHeader:I

.field public useListSeparator:Z

.field public useNightFiler:Z

.field public useNotch1:I

.field public useProgress:I

.field public useStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "subtitle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "annotation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "epigraph"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "author"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pre"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "poem"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dat"

    aput-object v2, v0, v1

    .line 1
    sput-object v0, Lcom/neverland/prefs/TOptions;->STR_STYLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/neverland/prefs/TOptions;->STR_STYLE:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/neverland/prefs/TStyleTune;

    iput-object v0, p0, Lcom/neverland/prefs/TOptions;->styleTune:[Lcom/neverland/prefs/TStyleTune;

    .line 3
    sget-object v0, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;->ENGRUS:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;

    iput-object v0, p0, Lcom/neverland/prefs/TOptions;->hyph_lang:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->chinezeSpecial:Z

    .line 5
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->useAscentAsTopForText:Z

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    const/16 v2, 0xc

    .line 7
    iput v2, p0, Lcom/neverland/prefs/TOptions;->statusSize:I

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->statusBold:Z

    const-string v3, "Sans-Serif"

    .line 9
    iput-object v3, p0, Lcom/neverland/prefs/TOptions;->statusFont1:Ljava/lang/String;

    .line 10
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    .line 11
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->statusLongClick:Z

    .line 12
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->progressFullLine:Z

    const/16 v3, 0xff

    .line 13
    iput v3, p0, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    .line 14
    iput v0, p0, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    .line 15
    iput v0, p0, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    .line 16
    iput v2, p0, Lcom/neverland/prefs/TOptions;->useHeader:I

    const/4 v3, 0x3

    .line 17
    iput v3, p0, Lcom/neverland/prefs/TOptions;->useStatus:I

    .line 18
    iput v3, p0, Lcom/neverland/prefs/TOptions;->useProgress:I

    const/4 v4, -0x1

    .line 19
    iput v4, p0, Lcom/neverland/prefs/TOptions;->pageSize:I

    .line 20
    iput v4, p0, Lcom/neverland/prefs/TOptions;->autoTwoColumns:I

    .line 21
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->autoTwoColumnsValue:Z

    const/16 v5, 0x33

    .line 22
    iput v5, p0, Lcom/neverland/prefs/TOptions;->autoTwoColumnsScale:I

    .line 23
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->contentOnProgress:Z

    .line 24
    iput v0, p0, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    .line 25
    iput v4, p0, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    .line 26
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->rotate_onyx_usesystem:Z

    .line 27
    sget-object v5, Lcom/neverland/utils/finit$ESTATUSINFO;->author:Lcom/neverland/utils/finit$ESTATUSINFO;

    iput-object v5, p0, Lcom/neverland/prefs/TOptions;->infoHeader:Lcom/neverland/utils/finit$ESTATUSINFO;

    .line 28
    sget-object v5, Lcom/neverland/utils/finit$ESTATUSINFO;->title:Lcom/neverland/utils/finit$ESTATUSINFO;

    iput-object v5, p0, Lcom/neverland/prefs/TOptions;->infoStatus:Lcom/neverland/utils/finit$ESTATUSINFO;

    const v5, 0xf17a0a

    .line 29
    iput v5, p0, Lcom/neverland/prefs/TOptions;->menuConfigAccentColor:I

    const v5, 0xe0e0e0

    .line 30
    iput v5, p0, Lcom/neverland/prefs/TOptions;->menuConfigTextColor:I

    const v5, 0x455a64

    .line 31
    iput v5, p0, Lcom/neverland/prefs/TOptions;->menuConfigBackColor:I

    .line 32
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->useNightFiler:Z

    .line 33
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->reverseBookmark:Z

    const/high16 v5, 0x3f000000    # 0.5f

    .line 34
    iput v5, p0, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    .line 35
    iput v0, p0, Lcom/neverland/prefs/TOptions;->imageScale:I

    .line 36
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->useListSeparator:Z

    .line 37
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->ttsTimerPinned:Z

    const/16 v5, 0x64

    .line 38
    iput v5, p0, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    const/16 v5, 0x19

    .line 39
    iput v5, p0, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    .line 40
    iput v2, p0, Lcom/neverland/prefs/TOptions;->ttsAlarm:I

    .line 41
    iput v2, p0, Lcom/neverland/prefs/TOptions;->ttsPause:I

    const/16 v5, 0x1f4

    .line 42
    iput v5, p0, Lcom/neverland/prefs/TOptions;->ttsPauseTime:I

    .line 43
    iput v0, p0, Lcom/neverland/prefs/TOptions;->ttsSelectedAsStart1:I

    .line 44
    iput v2, p0, Lcom/neverland/prefs/TOptions;->ttsReadNotes:I

    .line 45
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->ttsSimpleMenu:Z

    .line 46
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->ttsVolumeControl:Z

    const-wide/16 v5, 0x0

    .line 47
    iput-wide v5, p0, Lcom/neverland/prefs/TOptions;->ttsMotionValue:D

    .line 48
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->ttsUseMotion:Z

    .line 49
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->ttsReadAllParagraph:Z

    .line 50
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->ttsImage:Z

    .line 51
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->ttsStopAfterTimer:Z

    const/16 v5, 0x800

    .line 52
    iput v5, p0, Lcom/neverland/prefs/TOptions;->ttsMaxLen:I

    .line 53
    iput v2, p0, Lcom/neverland/prefs/TOptions;->ttsAddBMK:I

    .line 54
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->ttsKeepBacklight:Z

    .line 55
    iput v2, p0, Lcom/neverland/prefs/TOptions;->ttsSwipeX:I

    .line 56
    iput v1, p0, Lcom/neverland/prefs/TOptions;->ttsDoubleSwipeX:I

    const/4 v5, 0x5

    .line 57
    iput v5, p0, Lcom/neverland/prefs/TOptions;->ttsSwipeY:I

    const/4 v6, 0x4

    .line 58
    iput v6, p0, Lcom/neverland/prefs/TOptions;->ttsDoubleSwipeY:I

    .line 59
    iput v3, p0, Lcom/neverland/prefs/TOptions;->ttsZoom:I

    .line 60
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->ttsVolumeAsTrack:Z

    const/16 v7, 0x96

    .line 61
    iput v7, p0, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    const/16 v7, 0x2bc

    .line 62
    iput v7, p0, Lcom/neverland/prefs/TOptions;->longTapTime:I

    const/16 v7, 0xfa

    .line 63
    iput v7, p0, Lcom/neverland/prefs/TOptions;->doubleTapTime:I

    .line 64
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->statusBarUseMenuColor:Z

    .line 65
    iput v0, p0, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    .line 66
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->textMenu:Z

    .line 67
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->saveAsSRC:Z

    .line 68
    iput v1, p0, Lcom/neverland/prefs/TOptions;->longTapMode:I

    .line 69
    iput v0, p0, Lcom/neverland/prefs/TOptions;->shortTapMode:I

    .line 70
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->openLinkLongTap:Z

    .line 71
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->pinchFontSize:Z

    .line 72
    iput v2, p0, Lcom/neverland/prefs/TOptions;->sideBacklightLeft1:I

    .line 73
    iput v2, p0, Lcom/neverland/prefs/TOptions;->sideBacklightRight1:I

    .line 74
    iput v1, p0, Lcom/neverland/prefs/TOptions;->dictionaryWord:I

    .line 75
    iput v4, p0, Lcom/neverland/prefs/TOptions;->dictionaryPhrase:I

    .line 76
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->alwaysCopyExternalFile1:Z

    .line 77
    iput v0, p0, Lcom/neverland/prefs/TOptions;->backAction1:I

    .line 78
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->disableTurnBitmap1:Z

    .line 79
    iput v0, p0, Lcom/neverland/prefs/TOptions;->libraryPath:I

    const/4 v4, 0x0

    .line 80
    iput-object v4, p0, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/neverland/prefs/TOptions;->libraryUseFirstLetter:I

    .line 82
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->libraryUseNoMedia:Z

    .line 83
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->libraryUseAliases:Z

    const/16 v7, 0x32

    .line 84
    iput v7, p0, Lcom/neverland/prefs/TOptions;->libraryBookListPageLimit:I

    .line 85
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->libraryCyrillicFirst:Z

    .line 86
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->libraryUseAuthorNick:Z

    .line 87
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->libraryScanSimpleFileType:Z

    .line 88
    iput v2, p0, Lcom/neverland/prefs/TOptions;->libraryBookListMode:I

    .line 89
    iput v0, p0, Lcom/neverland/prefs/TOptions;->tapGuard:I

    .line 90
    iput v2, p0, Lcom/neverland/prefs/TOptions;->opdsDownload2Favor:I

    .line 91
    iput-object v4, p0, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    .line 92
    iput v0, p0, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    .line 93
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->supportFolded:Z

    .line 94
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->useFullscreenSkin:Z

    .line 95
    iput v0, p0, Lcom/neverland/prefs/TOptions;->useNotch1:I

    .line 96
    iput v2, p0, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    .line 97
    iput v0, p0, Lcom/neverland/prefs/TOptions;->autoscrollMode:I

    .line 98
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->autosaveProfiles:Z

    .line 99
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->dialogSmallTitles:Z

    const/16 v7, 0x5a

    .line 100
    iput v7, p0, Lcom/neverland/prefs/TOptions;->dialogTextScaleX:I

    .line 101
    iput v7, p0, Lcom/neverland/prefs/TOptions;->statusTextScaleX:I

    .line 102
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->dialogUseCover:Z

    const/16 v7, 0xa

    .line 103
    iput v7, p0, Lcom/neverland/prefs/TOptions;->gammaValue:I

    .line 104
    iput v1, p0, Lcom/neverland/prefs/TOptions;->gammaMode1:I

    .line 105
    iput v7, p0, Lcom/neverland/prefs/TOptions;->tapScale:I

    .line 106
    iput v2, p0, Lcom/neverland/prefs/TOptions;->openDialogsTap:I

    .line 107
    iput v0, p0, Lcom/neverland/prefs/TOptions;->realCalcPages1:I

    .line 108
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->useFontsNoto:Z

    .line 109
    iput-boolean v0, p0, Lcom/neverland/prefs/TOptions;->useFontsSystem:Z

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    aput-object v4, v7, v0

    aput-object v4, v7, v2

    aput-object v4, v7, v1

    aput-object v4, v7, v3

    aput-object v4, v7, v6

    aput-object v4, v7, v5

    .line 110
    iput-object v7, p0, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Lcom/neverland/prefs/TOptions;->favorIsDefault:Z

    const/4 v1, 0x0

    .line 112
    :goto_0
    sget-object v2, Lcom/neverland/prefs/TOptions;->STR_STYLE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/neverland/prefs/TOptions;->styleTune:[Lcom/neverland/prefs/TStyleTune;

    new-instance v3, Lcom/neverland/prefs/TStyleTune;

    invoke-direct {v3}, Lcom/neverland/prefs/TStyleTune;-><init>()V

    aput-object v3, v2, v1

    .line 114
    iget-object v2, p0, Lcom/neverland/prefs/TOptions;->styleTune:[Lcom/neverland/prefs/TStyleTune;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Lcom/neverland/prefs/TStyleTune;->enable:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getNotesOnPageOptions()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public setNotesOnPageOptions(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    .line 1
    iput p1, p0, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    :goto_0
    return-void
.end method
