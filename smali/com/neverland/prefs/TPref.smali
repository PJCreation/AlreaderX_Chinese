.class public Lcom/neverland/prefs/TPref;
.super Ljava/lang/Object;
.source "TPref.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neverland/prefs/TPref$TTemporaryProfile;,
        Lcom/neverland/prefs/TPref$THEME_TYPE;
    }
.end annotation


# static fields
.field private static final AMIMATION_PAR_ALWAYS:Ljava/lang/String; = "always"

.field private static final AMIMATION_PAR_TIME:Ljava/lang/String; = "time"

.field private static final AMIMATION_PAR_TYPE:Ljava/lang/String; = "type"

.field private static final AMIMATION_PAR_USEBACKPAGE:Ljava/lang/String; = "usebackpage"

.field private static final AMIMATION_SECTION:Ljava/lang/String; = "ANIMATION"

.field public static final AUTOSCROLLTIME_MAX:I = 0x1d4c0

.field public static final AUTOSCROLLTIME_MIN:I = 0xbb8

.field public static final AUTOSCROLLTIME_STEP:I = 0x3e8

.field public static final BACK_COMMAND_BACKWARD_NEXT_PAGE:I = 0x5

.field public static final BACK_COMMAND_BACKWARD_NOTHING:I = 0x7

.field public static final BACK_COMMAND_BACKWARD_PLUS_BACK:I = 0x3

.field public static final BACK_COMMAND_BACKWARD_PLUS_MENU:I = 0x4

.field public static final BACK_COMMAND_BACKWARD_SYSTEM:I = 0x6

.field public static final BACK_COMMAND_HOME:I = 0x2

.field public static final BACK_COMMAND_KEYBACK:I = 0x1

.field public static final BACK_COMMAND_MENU:I = 0x0

.field private static final BOOKMARKQUICK_PAR_DEFMARKER:Ljava/lang/String; = "bmkquickmarker"

.field private static final BOOKMARK_PAR_CONFIRMDELETE:Ljava/lang/String; = "deleteconfirm"

.field private static final BOOKMARK_PAR_DEFMARKER:Ljava/lang/String; = "bmkmarker"

.field private static final BOOKMARK_PAR_REVERSECOMMAND:Ljava/lang/String; = "reversebookmark"

.field private static final BOOKMARK_PAR_SORT:Ljava/lang/String; = "sort"

.field private static final BOOKMARK_PAR_USETEXT:Ljava/lang/String; = "usetext"

.field private static final BOOKMARK_SECTION:Ljava/lang/String; = "BOOKMARKS"

.field private static final BOOKS_PAR_CSS_DISABLECOLOR:Ljava/lang/String; = "cssdclr"

.field private static final BOOKS_PAR_CSS_FONTSIZE:Ljava/lang/String; = "cssfontsize"

.field private static final BOOKS_PAR_CSS_HMARGIN:Ljava/lang/String; = "csshm"

.field private static final BOOKS_PAR_CSS_INDENT:Ljava/lang/String; = "cssindent"

.field private static final BOOKS_PAR_CSS_JUSTIFY:Ljava/lang/String; = "cssjustify"

.field private static final BOOKS_PAR_CSS_VMARGIN:Ljava/lang/String; = "cssvm"

.field private static final BOOKS_PAR_FB2_ALLSERIES:Ljava/lang/String; = "fb2allseries"

.field private static final BOOKS_PAR_FB2_STYLES:Ljava/lang/String; = "fb2styles"

.field private static final BOOKS_PAR_FB2_SUBTITLES:Ljava/lang/String; = "fb2subtitles"

.field private static final BOOKS_PAR_INVERSESTYLES:Ljava/lang/String; = "inversestyles"

.field private static final BOOKS_PAR_NOTESUP:Ljava/lang/String; = "notesup"

.field private static final BOOKS_PAR_PRPAREDIALOG:Ljava/lang/String; = "preparedialog"

.field private static final BOOKS_PAR_STYLES:Ljava/lang/String; = "style"

.field private static final BOOKS_PAR_TABLES:Ljava/lang/String; = "tables"

.field private static final BOOKS_PAR_TOPMARGINSFIRST:Ljava/lang/String; = "usetopfirst"

.field private static final BOOKS_PAR_USESOFTHYPHEN:Ljava/lang/String; = "softhyph"

.field private static final BOOKS_SECTION:Ljava/lang/String; = "BOOKS"

.field private static final BOOKS_SECTION_CHM:Ljava/lang/String; = "BOOKSCHM"

.field private static final BOOKS_SECTION_EPUB:Ljava/lang/String; = "BOOKSEPUB"

.field private static final BOOKS_SECTION_FB2:Ljava/lang/String; = "BOOKSFB2"

.field private static final BOOKS_SECTION_HTML:Ljava/lang/String; = "BOOKSHTML"

.field private static final BOOKS_SECTION_OFFICE:Ljava/lang/String; = "BOOKSOFFICE"

.field private static final CITEQUICK_PAR_DEFMARKER:Ljava/lang/String; = "citequickmarker"

.field private static final CITE_PAR_DEFMARKER:Ljava/lang/String; = "citemarkertype"

.field private static final DEBUG_PAR_ONYX:Ljava/lang/String; = "onyxprocess"

.field private static final DEBUG_PAR_ONYX2:Ljava/lang/String; = "onyxprocess2"

.field private static final DEBUG_SECTION:Ljava/lang/String; = "DEBUG"

.field private static final FAVOR_PAR_CAT0:Ljava/lang/String; = "category1"

.field private static final FAVOR_PAR_CAT1:Ljava/lang/String; = "category2"

.field private static final FAVOR_PAR_CAT2:Ljava/lang/String; = "category3"

.field private static final FAVOR_PAR_CAT3:Ljava/lang/String; = "category4"

.field private static final FAVOR_PAR_CAT4:Ljava/lang/String; = "category5"

.field private static final FAVOR_PAR_CAT5:Ljava/lang/String; = "category6"

.field private static final FAVOR_SECTION:Ljava/lang/String; = "FAVORITES"

.field private static final FILEOPEN_PAR_BOOKSHELF:Ljava/lang/String; = "bookshelf"

.field private static final FILEOPEN_PAR_LASTSEARCH:Ljava/lang/String; = "search"

.field private static final FILEOPEN_PAR_METADATA:Ljava/lang/String; = "meta0"

.field private static final FILEOPEN_PAR_NETWORKSORT:Ljava/lang/String; = "nsort"

.field private static final FILEOPEN_PAR_SORT:Ljava/lang/String; = "sort"

.field private static final FILEOPEN_PAR_SORTFAVORINVERSE:Ljava/lang/String; = "invfavor"

.field private static final FILEOPEN_PAR_SORTINVERSE:Ljava/lang/String; = "inverse"

.field private static final FILEOPEN_PAR_SORTNETWORKINVERSE:Ljava/lang/String; = "ninverse"

.field private static final FILEOPEN_PAR_TILE:Ljava/lang/String; = "tile0"

.field private static final FILEOPEN_SECTION:Ljava/lang/String; = "FILEOPEN"

.field private static final KEY_PAR_HORIZONTALSWIPE:Ljava/lang/String; = "horizontalswipe"

.field private static final KEY_PAR_VERTICALSWIPE:Ljava/lang/String; = "verticalswipe"

.field private static final KEY_SECTION:Ljava/lang/String; = "KEYS"

.field private static final LIBRARY_PAR_CUSTOMPATH:Ljava/lang/String; = "ctpath"

.field private static final LIBRARY_PAR_CYRILLIC:Ljava/lang/String; = "cyrfirst"

.field private static final LIBRARY_PAR_DOWNLOADFAVOR:Ljava/lang/String; = "opdsfavor"

.field private static final LIBRARY_PAR_DOWNLOADPATH:Ljava/lang/String; = "dlpath"

.field private static final LIBRARY_PAR_FIRSTLETTER:Ljava/lang/String; = "firstletter"

.field private static final LIBRARY_PAR_NOMEDIA:Ljava/lang/String; = "nomedia"

.field private static final LIBRARY_PAR_PAGELIMIT:Ljava/lang/String; = "pagelimit"

.field private static final LIBRARY_PAR_PATHS:Ljava/lang/String; = "usepath"

.field private static final LIBRARY_PAR_USEALIASE:Ljava/lang/String; = "aliases"

.field private static final LIBRARY_PAR_USENICK:Ljava/lang/String; = "usenick"

.field private static final LIBRARY_SECTION:Ljava/lang/String; = "LIBRARY"

.field public static final MAX_TTS_PITCH:I = 0x96

.field public static final MAX_TTS_SPEED:I = 0x190

.field public static final MAX_TTS_TIME:I = 0xb4

.field public static final MIN_TTS_PITCH:I = 0x3c

.field public static final MIN_TTS_SPEED:I = 0x19

.field public static final MIN_TTS_TIME:I = 0x5

.field private static final OPEN_DIALOG_BASE:I = 0x40

.field private static final OPEN_DIALOG_BOOKMARK:I = 0x10

.field private static final OPEN_DIALOG_FAVOR:I = 0x8

.field private static final OPEN_DIALOG_FILE:I = 0x1

.field private static final OPEN_DIALOG_LIBRARY:I = 0x4

.field private static final OPEN_DIALOG_OPDS:I = 0x20

.field private static final OPEN_DIALOG_RECENT:I = 0x2

.field private static final OPEN_DIALOG_STORAGE:I = 0x80

.field private static final OPTIONS_PAR_ALLTIME1:Ljava/lang/String; = "alltime"

.field private static final OPTIONS_PAR_ALLTIME2:Ljava/lang/String; = "ttstime"

.field private static final OPTIONS_PAR_ASCENT_AS_TOP:Ljava/lang/String; = "ascentastop"

.field private static final OPTIONS_PAR_AUTOSAVEPROFILES:Ljava/lang/String; = "autosaveprofiles"

.field private static final OPTIONS_PAR_AUTOSCROLL_ROLL:Ljava/lang/String; = "autoscrollroll"

.field private static final OPTIONS_PAR_AUTOSCROLL_TIME:Ljava/lang/String; = "autoscrolltime"

.field private static final OPTIONS_PAR_BACKACTION:Ljava/lang/String; = "backaction"

.field private static final OPTIONS_PAR_BACKLIGHTUNION:Ljava/lang/String; = "unionbacklight"

.field private static final OPTIONS_PAR_CHINA:Ljava/lang/String; = "chinaformatting"

.field private static final OPTIONS_PAR_COLORMENUACCENT:Ljava/lang/String; = "menuaccentcolor"

.field private static final OPTIONS_PAR_COLORMENUBACK:Ljava/lang/String; = "menubackcolor"

.field private static final OPTIONS_PAR_COLORMENUTEXT:Ljava/lang/String; = "menutextcolor"

.field private static final OPTIONS_PAR_CONTENTPROGRESS:Ljava/lang/String; = "contentonprogress"

.field private static final OPTIONS_PAR_COPYEXTERNALFILES:Ljava/lang/String; = "copyexternalfilealways"

.field private static final OPTIONS_PAR_DIALOGSCALEX:Ljava/lang/String; = "dialogscalex"

.field private static final OPTIONS_PAR_DIALOGSMALLTITLE:Ljava/lang/String; = "dialogsmalltitles"

.field private static final OPTIONS_PAR_DIALOGUSECOVER:Ljava/lang/String; = "dialogusecover"

.field private static final OPTIONS_PAR_DICTIONARY:Ljava/lang/String; = "dictionarya"

.field private static final OPTIONS_PAR_DICTIONARY2:Ljava/lang/String; = "dictionaryb"

.field private static final OPTIONS_PAR_DISABLEPAGESEPARATOR:Ljava/lang/String; = "disableseparator"

.field private static final OPTIONS_PAR_DOUBLETAPTIME:Ljava/lang/String; = "doubletaptime"

.field private static final OPTIONS_PAR_EINKDITHER:Ljava/lang/String; = "dithering"

.field private static final OPTIONS_PAR_EINKFASTSCROLL:Ljava/lang/String; = "fastscroll"

.field private static final OPTIONS_PAR_EINKREFRESH:Ljava/lang/String; = "refreshrate"

.field private static final OPTIONS_PAR_EINKREFRESHACT:Ljava/lang/String; = "refreshact"

.field private static final OPTIONS_PAR_EINKREFRESHDLG:Ljava/lang/String; = "refreshdlg"

.field private static final OPTIONS_PAR_EINKREFRESHOBJ:Ljava/lang/String; = "refreshobj"

.field private static final OPTIONS_PAR_EINKREFRESHRES:Ljava/lang/String; = "refreshres"

.field private static final OPTIONS_PAR_EINKREGAL:Ljava/lang/String; = "snowfield"

.field private static final OPTIONS_PAR_FONTCHANGESTEP:Ljava/lang/String; = "fontchangestep"

.field private static final OPTIONS_PAR_FONTS_USE_NOTO:Ljava/lang/String; = "usenotofonts"

.field private static final OPTIONS_PAR_FONTS_USE_SYSTEM:Ljava/lang/String; = "usesystemfonts"

.field private static final OPTIONS_PAR_FULLSCREENSKIN:Ljava/lang/String; = "fullskin"

.field private static final OPTIONS_PAR_GAMMAMODE:Ljava/lang/String; = "gammam"

.field private static final OPTIONS_PAR_GAMMAVALUE:Ljava/lang/String; = "gammav"

.field private static final OPTIONS_PAR_HEADERVISIBLE:Ljava/lang/String; = "useheader"

.field private static final OPTIONS_PAR_HYNH:Ljava/lang/String; = "hyph"

.field private static final OPTIONS_PAR_IMAGESCALE:Ljava/lang/String; = "imagescale"

.field private static final OPTIONS_PAR_INFOHEADER:Ljava/lang/String; = "infoheader"

.field private static final OPTIONS_PAR_INFOSTATUS:Ljava/lang/String; = "infostatus"

.field private static final OPTIONS_PAR_ISDAY:Ljava/lang/String; = "day"

.field private static final OPTIONS_PAR_ISEINK:Ljava/lang/String; = "iseink"

.field private static final OPTIONS_PAR_KEEPBACKLIGHT:Ljava/lang/String; = "keepbacklight"

.field private static final OPTIONS_PAR_LASTLOADED_PROFILE:Ljava/lang/String; = "lastprofile"

.field private static final OPTIONS_PAR_LASTSEARCH:Ljava/lang/String; = "lastsearch"

.field private static final OPTIONS_PAR_LASTSHAREIMAGE_CLASS:Ljava/lang/String; = "lastshareimclass"

.field private static final OPTIONS_PAR_LASTSHARE_ACTION:Ljava/lang/String; = "lastshareaction"

.field private static final OPTIONS_PAR_LASTSHARE_CLASS:Ljava/lang/String; = "lastshareclass"

.field private static final OPTIONS_PAR_LISTSEPARATOR:Ljava/lang/String; = "listdevider"

.field private static final OPTIONS_PAR_LONGTAPLINK:Ljava/lang/String; = "longtaplink"

.field private static final OPTIONS_PAR_LONGTAPMODE:Ljava/lang/String; = "longtapmode"

.field private static final OPTIONS_PAR_LONGTAPTIME:Ljava/lang/String; = "longtaptime"

.field private static final OPTIONS_PAR_NIGHTFILTER:Ljava/lang/String; = "nightfilter"

.field private static final OPTIONS_PAR_NOTESITEMS:Ljava/lang/String; = "notesitems"

.field private static final OPTIONS_PAR_OPENDIALOG_TAP:Ljava/lang/String; = "opendialogtap"

.field private static final OPTIONS_PAR_PAGESIZE:Ljava/lang/String; = "pagesize"

.field private static final OPTIONS_PAR_PINCHFONTSIZE:Ljava/lang/String; = "pinchfontsize"

.field private static final OPTIONS_PAR_PREVIEW_PERCENT:Ljava/lang/String; = "previewpercent"

.field private static final OPTIONS_PAR_PROGRESSFULLLINE:Ljava/lang/String; = "progressfullline"

.field private static final OPTIONS_PAR_PROGRESSPARAM:Ljava/lang/String; = "statusparam"

.field private static final OPTIONS_PAR_PROGRESSVISIBLE:Ljava/lang/String; = "useprogress"

.field private static final OPTIONS_PAR_REALPAGES:Ljava/lang/String; = "realpages"

.field private static final OPTIONS_PAR_ROTATE_CURRENT:Ljava/lang/String; = "rotate"

.field private static final OPTIONS_PAR_ROTATE_ONYXSYSTEM:Ljava/lang/String; = "rotateos"

.field private static final OPTIONS_PAR_ROTATE_PREV:Ljava/lang/String; = "rotateprev"

.field private static final OPTIONS_PAR_SAVEASSRC:Ljava/lang/String; = "editsrc"

.field private static final OPTIONS_PAR_SHADOWBACKLIGHT:Ljava/lang/String; = "shadowbacklight"

.field private static final OPTIONS_PAR_SHORTTAPMODE:Ljava/lang/String; = "shorttapmode"

.field private static final OPTIONS_PAR_SHOWNOTES:Ljava/lang/String; = "shownotes"

.field private static final OPTIONS_PAR_SIDEBACKLIGHTLEFT:Ljava/lang/String; = "sidebacklightl"

.field private static final OPTIONS_PAR_SIDEBACKLIGHTRIGHT:Ljava/lang/String; = "sidebacklightr"

.field private static final OPTIONS_PAR_STATUSBOLD:Ljava/lang/String; = "statusbold"

.field private static final OPTIONS_PAR_STATUSFONT:Ljava/lang/String; = "interfacefont"

.field private static final OPTIONS_PAR_STATUSLONGCLICK:Ljava/lang/String; = "statuslongclick"

.field private static final OPTIONS_PAR_STATUSREVERSE:Ljava/lang/String; = "statusreverse"

.field private static final OPTIONS_PAR_STATUSSCALEX:Ljava/lang/String; = "statusscalex"

.field private static final OPTIONS_PAR_STATUSSIZE:Ljava/lang/String; = "statussize"

.field private static final OPTIONS_PAR_STATUSVISIBLE:Ljava/lang/String; = "usestatus"

.field private static final OPTIONS_PAR_SUPPORTFOLDED:Ljava/lang/String; = "foldsupport"

.field private static final OPTIONS_PAR_SYSTEMSTATUSMENU:Ljava/lang/String; = "sysstatusmenu"

.field private static final OPTIONS_PAR_TAPGUARD:Ljava/lang/String; = "tapguard"

.field private static final OPTIONS_PAR_TAPSCALE:Ljava/lang/String; = "swipescale"

.field private static final OPTIONS_PAR_TAPTIMELIMIT:Ljava/lang/String; = "taplimittime"

.field private static final OPTIONS_PAR_TEXTMENU:Ljava/lang/String; = "textmenu"

.field private static final OPTIONS_PAR_THEME:Ljava/lang/String; = "theme"

.field private static final OPTIONS_PAR_THEMEBUTTON:Ljava/lang/String; = "themebutton"

.field private static final OPTIONS_PAR_TROUBLEINTERFACE:Ljava/lang/String; = "interfacetrouble"

.field private static final OPTIONS_PAR_TWOCOLUMN:Ljava/lang/String; = "twocolumn"

.field private static final OPTIONS_PAR_TWOCOLUMNSCALE:Ljava/lang/String; = "twocolumncount"

.field private static final OPTIONS_PAR_USEDOUBLETAP:Ljava/lang/String; = "usedoubletap"

.field private static final OPTIONS_PAR_USENOTCH:Ljava/lang/String; = "usenotch"

.field private static final OPTIONS_SECTION:Ljava/lang/String; = "OPTIONS"

.field private static final PROFILEDAY_SECTION:Ljava/lang/String; = "DAY"

.field private static final PROFILENIGHT_SECTION:Ljava/lang/String; = "NIGHT"

.field private static final PROFILE_PAR_ADDFLET:Ljava/lang/String; = "fletter"

.field private static final PROFILE_PAR_ADDMONO1:Ljava/lang/String; = "mono"

.field private static final PROFILE_PAR_ADDTITLE:Ljava/lang/String; = "title"

.field private static final PROFILE_PAR_BGNAME1:Ljava/lang/String; = "bgname"

.field private static final PROFILE_PAR_BGNAME2:Ljava/lang/String; = "bgnametwopage"

.field private static final PROFILE_PAR_BGTYPE:Ljava/lang/String; = "bgtype"

.field private static final PROFILE_PAR_CLOCKUNDERTEXT:Ljava/lang/String; = "clockut"

.field private static final PROFILE_PAR_COLORBG:Ljava/lang/String; = "colorbg"

.field private static final PROFILE_PAR_COLORBOLD:Ljava/lang/String; = "colorcustom1"

.field private static final PROFILE_PAR_COLORBOLDITALIC:Ljava/lang/String; = "colorcustom3"

.field private static final PROFILE_PAR_COLORCODE:Ljava/lang/String; = "colorcustom4"

.field private static final PROFILE_PAR_COLORFIND:Ljava/lang/String; = "colorfind"

.field private static final PROFILE_PAR_COLORFLET:Ljava/lang/String; = "colorfletter"

.field private static final PROFILE_PAR_COLORITALIC:Ljava/lang/String; = "colorcustom2"

.field private static final PROFILE_PAR_COLORLINE:Ljava/lang/String; = "colorline"

.field private static final PROFILE_PAR_COLORLINK:Ljava/lang/String; = "colorlink"

.field private static final PROFILE_PAR_COLORSELECT:Ljava/lang/String; = "colorselect"

.field private static final PROFILE_PAR_COLORSTATUS:Ljava/lang/String; = "colorstatus"

.field private static final PROFILE_PAR_COLORSTATUSBACK:Ljava/lang/String; = "colorstatusback"

.field private static final PROFILE_PAR_COLORSUPPORT:Ljava/lang/String; = "colorsupport"

.field private static final PROFILE_PAR_COLORTEXT:Ljava/lang/String; = "colortext"

.field private static final PROFILE_PAR_COLORTITLE:Ljava/lang/String; = "colortitle"

.field private static final PROFILE_PAR_FIRSTLETTER:Ljava/lang/String; = "firstletter"

.field private static final PROFILE_PAR_FIRSTLETTERNUMBER:Ljava/lang/String; = "firstletternum"

.field private static final PROFILE_PAR_FONTBOLD:Ljava/lang/String; = "fontbold"

.field private static final PROFILE_PAR_FONTCLEARTYPE:Ljava/lang/String; = "fontcleartype"

.field private static final PROFILE_PAR_FONTITALIC:Ljava/lang/String; = "fontitalic"

.field private static final PROFILE_PAR_FONTLETTERSPACING:Ljava/lang/String; = "fontletspace"

.field private static final PROFILE_PAR_FONTNAME:Ljava/lang/String; = "fontname"

.field private static final PROFILE_PAR_FONTSHIFTFLET:Ljava/lang/String; = "fontshiftfleta"

.field private static final PROFILE_PAR_FONTSIZE:Ljava/lang/String; = "fontsize"

.field private static final PROFILE_PAR_FONTSIZENOTES:Ljava/lang/String; = "fontsizenotes"

.field private static final PROFILE_PAR_FONTSPACEWIDTH:Ljava/lang/String; = "fontspacewidth"

.field private static final PROFILE_PAR_FONTUNION:Ljava/lang/String; = "fontunion"

.field private static final PROFILE_PAR_FONTWEIGHT:Ljava/lang/String; = "fontweight"

.field private static final PROFILE_PAR_FONTWIDTH:Ljava/lang/String; = "fontwidth"

.field private static final PROFILE_PAR_HANGINGPUNCTUATION:Ljava/lang/String; = "handgingpunctuation"

.field private static final PROFILE_PAR_HEIGHTEMPTYLINE:Ljava/lang/String; = "heightemptyline"

.field private static final PROFILE_PAR_INTERLINE:Ljava/lang/String; = "interline"

.field private static final PROFILE_PAR_JUSTIFY:Ljava/lang/String; = "justify"

.field private static final PROFILE_PAR_KEEPONEITEM:Ljava/lang/String; = "keeponeitem"

.field private static final PROFILE_PAR_MARGINUNION:Ljava/lang/String; = "marginunion"

.field private static final PROFILE_PAR_MBOTTOM:Ljava/lang/String; = "mbottom"

.field private static final PROFILE_PAR_MLEFT:Ljava/lang/String; = "mleft"

.field private static final PROFILE_PAR_MRIGHT:Ljava/lang/String; = "mright"

.field private static final PROFILE_PAR_MTOP:Ljava/lang/String; = "mtop"

.field private static final PROFILE_PAR_OVERCOLORBOLD:Ljava/lang/String; = "ovrbold"

.field private static final PROFILE_PAR_OVERCOLORBOLDITALIC:Ljava/lang/String; = "ovrbolditalic"

.field private static final PROFILE_PAR_OVERCOLORCODE:Ljava/lang/String; = "ovrcode"

.field private static final PROFILE_PAR_OVERCOLORITALIC:Ljava/lang/String; = "ovritalic"

.field private static final PROFILE_PAR_OVERCOLORSTATUSBACK:Ljava/lang/String; = "ovrstatusback"

.field private static final PROFILE_PAR_PARAGRAPHSPACING:Ljava/lang/String; = "paragraphspacing"

.field private static final PROFILE_PAR_PERCENTMAGRIN:Ljava/lang/String; = "percentmargin"

.field private static final PROFILE_PAR_SECTIONNEWPAGE:Ljava/lang/String; = "sectiononnewpage"

.field private static final PROFILE_PAR_STATUSBOTTOM:Ljava/lang/String; = "statusbottom"

.field private static final PROFILE_PAR_STATUSTOP:Ljava/lang/String; = "statustop"

.field private static final PROFILE_PAR_UNDERLINE:Ljava/lang/String; = "citeline"

.field private static final PROFILE_PAR_VALIGN:Ljava/lang/String; = "verticalalign"

.field private static final PROFILE_SECTION:Ljava/lang/String; = "PROFILE"

.field public static final PROGRESS_LINE_HEADER_CENTER:I = 0x4000

.field public static final PROGRESS_LINE_HEADER_UNDERLINE:I = 0x2000

.field public static final PROGRESS_LINE_PARAM_BATTERY_DISABLE:I = 0x1

.field public static final PROGRESS_LINE_PARAM_FILLED_LINE:I = 0x8

.field public static final PROGRESS_LINE_PARAM_MINIMAL_MARGIN_ALWAYS:I = 0x10

.field public static final PROGRESS_LINE_PARAM_MINIMAL_MARGIN_DISABLE:I = 0x4

.field public static final PROGRESS_LINE_PARAM_PERCENT_DISABLE:I = 0x2

.field public static final PROGRESS_LINE_STATUS_DISABLE_BATTERY:I = 0x800

.field public static final PROGRESS_LINE_STATUS_DISABLE_INFO:I = 0x400

.field public static final PROGRESS_LINE_STATUS_DISABLE_PAGES:I = 0x200

.field public static final PROGRESS_LINE_STATUS_DISABLE_PERCENT:I = 0x100

.field public static final PROGRESS_LINE_STATUS_DISABLE_TIME:I = 0x1000

.field public static final PROGRESS_LINE_WIDTH_MASK:I = 0x30000

.field public static final PROGRESS_LINE_WIDTH_SHIFT:I = 0x10

.field private static final SCREEN_PAR_AUTOBACKLIGHT0:Ljava/lang/String; = "autobacklight0"

.field private static final SCREEN_PAR_AUTOBACKLIGHT1:Ljava/lang/String; = "autobacklight1"

.field private static final SCREEN_PAR_DESC:Ljava/lang/String; = "descript"

.field private static final SCREEN_PAR_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field private static final SCREEN_PAR_HARDWAREMIN:Ljava/lang/String; = "backlighthardwaremin"

.field private static final SCREEN_PAR_LEVELBACKLIGHT0:Ljava/lang/String; = "levelbacklight0"

.field private static final SCREEN_PAR_LEVELBACKLIGHT1:Ljava/lang/String; = "levelbacklight1"

.field private static final SCREEN_SECTION:Ljava/lang/String; = "SCREEN"

.field private static final STATE_PAR_APPLANG:Ljava/lang/String; = "lang"

.field private static final STATE_PAR_EDIT_ACTIVE_TAG:Ljava/lang/String; = "actedtag"

.field private static final STATE_PAR_FONTSCALE:Ljava/lang/String; = "fontscale"

.field private static final STATE_PAR_SET1:Ljava/lang/String; = "startcnt"

.field private static final STATE_SECTION:Ljava/lang/String; = "STATE"

.field private static final SYNC_BACKUP:Ljava/lang/String; = "backup"

.field private static final SYNC_BOOKMARK:Ljava/lang/String; = "syncbmk"

.field public static final SYNC_MODE_FILES:I = 0x2

.field public static final SYNC_MODE_FTP1:I = 0x4

.field public static final SYNC_MODE_NETWORK:I = 0x1

.field public static final SYNC_MODE_OFF:I = 0x0

.field public static final SYNC_MODE_SFTP:I = 0x5

.field public static final SYNC_MODE_WEBDAV:I = 0x3

.field private static final SYNC_PAR_DEVID:Ljava/lang/String; = "DEVID"

.field private static final SYNC_PAR_FTPADDR:Ljava/lang/String; = "ftpaddr"

.field private static final SYNC_PAR_FTPNAME:Ljava/lang/String; = "ftpname"

.field private static final SYNC_PAR_FTPPASS:Ljava/lang/String; = "ftppass"

.field private static final SYNC_PAR_HTTPS:Ljava/lang/String; = "usehttps"

.field private static final SYNC_PAR_IDHI:Ljava/lang/String; = "idhi"

.field private static final SYNC_PAR_IDLO:Ljava/lang/String; = "idlo"

.field private static final SYNC_PAR_MANUALMODE:Ljava/lang/String; = "manual"

.field private static final SYNC_PAR_MODE:Ljava/lang/String; = "mode"

.field private static final SYNC_PAR_NAME:Ljava/lang/String; = "name"

.field private static final SYNC_PAR_SFTPADDR:Ljava/lang/String; = "sftpaddr"

.field private static final SYNC_PAR_SFTPNAME:Ljava/lang/String; = "sftpname"

.field private static final SYNC_PAR_SFTPPASS:Ljava/lang/String; = "sftppass"

.field private static final SYNC_PAR_SILENTNONETWORK:Ljava/lang/String; = "syncsilennet"

.field private static final SYNC_PAR_WEBDAVADDR:Ljava/lang/String; = "wdaddr"

.field private static final SYNC_PAR_WEBDAVHTTP1:Ljava/lang/String; = "http1"

.field private static final SYNC_PAR_WEBDAVNAME:Ljava/lang/String; = "wdname"

.field private static final SYNC_PAR_WEBDAVPASS:Ljava/lang/String; = "wdpass"

.field private static final SYNC_SECTION:Ljava/lang/String; = "SYNC"

.field private static final SYNC_UPLOADBOOK:Ljava/lang/String; = "uplbook"

.field private static final TAG:Ljava/lang/String; = "PREFS"

.field private static final TAPS_PAR_DOUBLESWIPE:Ljava/lang/String; = "ds"

.field private static final TAPS_PAR_KEYS:Ljava/lang/String; = "key"

.field private static final TAPS_PAR_LONGDOUBLETAP:Ljava/lang/String; = "ldt"

.field private static final TAPS_PAR_LONGTAP:Ljava/lang/String; = "lt"

.field private static final TAPS_PAR_QUICKPANEL:Ljava/lang/String; = "qpan"

.field private static final TAPS_PAR_SHORTDOUBLETAP:Ljava/lang/String; = "sdt"

.field private static final TAPS_PAR_SHORTTAP:Ljava/lang/String; = "st"

.field private static final TAPS_PAR_SHORTTHIRDTAP:Ljava/lang/String; = "stt"

.field private static final TAPS_PAR_TAPHEADER:Ljava/lang/String; = "tapheader"

.field private static final TAPS_PAR_TAPSTATUS:Ljava/lang/String; = "tapstatus"

.field private static final TAPS_SECTION:Ljava/lang/String; = "TAPSANDSWIPES"

.field public static final TAP_MODE_DICTIONARY:I = 0x1

.field public static final TAP_MODE_SELECT:I = 0x2

.field public static final TAP_MODE_SELECTDICTIONARY:I = 0x3

.field public static final TAP_MODE_TAPS:I = 0x0

.field private static final TOP100_PAR_AGREE:Ljava/lang/String; = "iagree"

.field private static final TOP100_PAR_AUTHORS:Ljava/lang/String; = "authors"

.field private static final TOP100_SECTION:Ljava/lang/String; = "TOP100"

.field private static final TTS_PAR_ALARM:Ljava/lang/String; = "alarm"

.field private static final TTS_PAR_ALLPARAGRAPH:Ljava/lang/String; = "allpar"

.field private static final TTS_PAR_IMAGE:Ljava/lang/String; = "image"

.field private static final TTS_PAR_LASTPOINT:Ljava/lang/String; = "lp"

.field private static final TTS_PAR_MAXLEN:Ljava/lang/String; = "maxlen"

.field private static final TTS_PAR_NOTES:Ljava/lang/String; = "notes"

.field private static final TTS_PAR_PAUSE:Ljava/lang/String; = "pause"

.field private static final TTS_PAR_PAUSETIME:Ljava/lang/String; = "pausetime"

.field private static final TTS_PAR_PINNED:Ljava/lang/String; = "pin"

.field private static final TTS_PAR_PITCH:Ljava/lang/String; = "pitch"

.field private static final TTS_PAR_SEL:Ljava/lang/String; = "sel"

.field private static final TTS_PAR_SENSORVALUE:Ljava/lang/String; = "sensorvalue"

.field private static final TTS_PAR_SIMPLE:Ljava/lang/String; = "simple"

.field private static final TTS_PAR_SPEED:Ljava/lang/String; = "speed"

.field private static final TTS_PAR_TIME:Ljava/lang/String; = "time"

.field private static final TTS_PAR_TIMERPINNED:Ljava/lang/String; = "timerpin"

.field private static final TTS_PAR_TIMERSTOP:Ljava/lang/String; = "timerstop"

.field private static final TTS_PAR_TTSADDBMK:Ljava/lang/String; = "addbmk"

.field private static final TTS_PAR_TTSDSWIPESX:Ljava/lang/String; = "dswx"

.field private static final TTS_PAR_TTSDSWIPESY:Ljava/lang/String; = "dswx"

.field private static final TTS_PAR_TTSKEEPBACKLIGHT:Ljava/lang/String; = "bclght"

.field private static final TTS_PAR_TTSSWIPESX:Ljava/lang/String; = "swx"

.field private static final TTS_PAR_TTSSWIPESY:Ljava/lang/String; = "swy"

.field private static final TTS_PAR_TTSVOLUMEOVERRIDE:Ljava/lang/String; = "volovr"

.field private static final TTS_PAR_TTSZOOM:Ljava/lang/String; = "zm"

.field private static final TTS_PAR_USEMOTION:Ljava/lang/String; = "sensor"

.field private static final TTS_PAR_VOICE:Ljava/lang/String; = "voice"

.field private static final TTS_PAR_VOLUMECONTROL:Ljava/lang/String; = "volctrl"

.field private static final TTS_PAR_VOLUME_PHONE:Ljava/lang/String; = "volumephone"

.field public static final TTS_PITCH_STEP:I = 0x5

.field private static final TTS_SECTION:Ljava/lang/String; = "TTS"

.field public static final TTS_SPEED_STEP:I = 0x5

.field private static final USE_REAL_LOCK:Z = false


# instance fields
.field public animation:Lcom/neverland/prefs/TAnimation;

.field public bookCSS:Lcom/neverland/prefs/TBookCSS;

.field private externalTIF:Lcom/neverland/utils/TMemIniFile2;

.field private fileNameInternal:Ljava/lang/String;

.field private fileNamePortable:Ljava/lang/String;

.field public findStr:Lcom/neverland/prefs/TFindStr;

.field private final gradientArray:[I

.field private internalTIF:Lcom/neverland/utils/TMemIniFile2;

.field public intopt:Lcom/neverland/prefs/TInternalOptions;

.field private isDay:Z

.field private lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private lastLoadBackGroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

.field private lastLoadBackgroundName:Ljava/lang/String;

.field private lastLoadBackgroundTextureName:Ljava/lang/String;

.field private marker4back:I

.field public options:Lcom/neverland/prefs/TOptions;

.field public profile:Lcom/neverland/prefs/TOneProfile;

.field public screen:Lcom/neverland/prefs/TScreenState;

.field public taps:Lcom/neverland/prefs/TTaps;

.field public tempProfile:Lcom/neverland/prefs/TPref$TTemporaryProfile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 4
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundTextureName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 6
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->fileNamePortable:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->fileNameInternal:Ljava/lang/String;

    .line 8
    new-instance v1, Lcom/neverland/prefs/TOneProfile;

    invoke-direct {v1}, Lcom/neverland/prefs/TOneProfile;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    .line 9
    new-instance v1, Lcom/neverland/prefs/TScreenState;

    invoke-direct {v1}, Lcom/neverland/prefs/TScreenState;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    .line 10
    new-instance v1, Lcom/neverland/prefs/TAnimation;

    invoke-direct {v1}, Lcom/neverland/prefs/TAnimation;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    .line 11
    new-instance v1, Lcom/neverland/prefs/TOptions;

    invoke-direct {v1}, Lcom/neverland/prefs/TOptions;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    .line 12
    new-instance v1, Lcom/neverland/prefs/TInternalOptions;

    invoke-direct {v1}, Lcom/neverland/prefs/TInternalOptions;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    .line 13
    new-instance v1, Lcom/neverland/prefs/TPref$TTemporaryProfile;

    invoke-direct {v1}, Lcom/neverland/prefs/TPref$TTemporaryProfile;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->tempProfile:Lcom/neverland/prefs/TPref$TTemporaryProfile;

    .line 14
    new-instance v1, Lcom/neverland/prefs/TFindStr;

    invoke-direct {v1}, Lcom/neverland/prefs/TFindStr;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->findStr:Lcom/neverland/prefs/TFindStr;

    .line 15
    new-instance v1, Lcom/neverland/prefs/TTaps;

    invoke-direct {v1}, Lcom/neverland/prefs/TTaps;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    .line 16
    new-instance v1, Lcom/neverland/prefs/TBookCSS;

    invoke-direct {v1}, Lcom/neverland/prefs/TBookCSS;-><init>()V

    iput-object v1, p0, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    .line 17
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    .line 18
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/neverland/prefs/TPref;->gradientArray:[I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/neverland/prefs/TPref;->marker4back:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getOpenDialogNumber(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/prefs/TPref$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/16 p1, 0x80

    return p1

    :pswitch_1
    const/16 p1, 0x20

    return p1

    :pswitch_2
    const/16 p1, 0x8

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/16 p1, 0x10

    return p1

    :pswitch_5
    const/4 p1, 0x2

    return p1

    :pswitch_6
    const/4 p1, 0x1

    return p1

    :pswitch_7
    const/16 p1, 0x40

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hex2str(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x4

    .line 5
    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v2, v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method private loadAll()V
    .locals 24

    move-object/from16 v1, p0

    const-string v2, "BOOKSOFFICE"

    const-string v3, "SCREEN"

    const-string v4, "BOOKSCHM"

    const-string v5, "BOOKSHTML"

    const-string v6, "BOOKSEPUB"

    const-string v7, "BOOKMARKS"

    const-string v8, "BOOKSFB2"

    const-string v9, "LIBRARY"

    const-string v10, "SYNC"

    .line 1
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->lock()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 2
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/neverland/utils/TMemIniFile2;

    iget-object v11, v1, Lcom/neverland/prefs/TPref;->fileNameInternal:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/neverland/utils/TMemIniFile2;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    .line 4
    :cond_0
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string v12, "FILEOPEN"

    const-string v14, ""

    const-string v15, "TTS"

    const-string v13, "OPTIONS"

    if-eqz v0, :cond_34

    .line 5
    :try_start_1
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v11, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v11}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 6
    iget-object v11, v0, Lcom/neverland/utils/TCustomDevice;->DEVICE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v9

    :try_start_2
    const-string v9, "ntx_6sl"

    invoke-virtual {v11, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 7
    iget-object v9, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v9, v0, Lcom/neverland/utils/TCustomDevice;->MANUFACTURER:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "barnesandnoble"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 9
    iget-object v9, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v9, v0, Lcom/neverland/utils/TCustomDevice;->BRAND:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "boyue"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11
    iget-object v9, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    goto :goto_0

    .line 12
    :cond_3
    iget-object v9, v0, Lcom/neverland/utils/TCustomDevice;->BRAND:Ljava/lang/String;

    .line 13
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "tolino"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 14
    iget-object v9, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    .line 15
    :cond_4
    :goto_0
    iget-object v9, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v11, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v20, v2

    :try_start_3
    const-string v2, "iseink"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v21, v4

    :try_start_4
    iget-boolean v4, v9, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    invoke-virtual {v11, v13, v2, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v9, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    .line 16
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v2, v2, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    if-eqz v2, :cond_6

    .line 17
    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devEink:Lcom/neverland/utils/finit$DEVICE_TYPE;

    iput-object v2, v0, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const-string v2, "1 - openGL is disabled on this device"

    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v2, v4}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v0, Lcom/neverland/utils/TCustomDevice;->supportOPENGL:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_0
    move-object/from16 v20, v2

    :catch_1
    move-object/from16 v21, v4

    goto :goto_1

    :catch_2
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v19, v9

    .line 20
    :catch_3
    :cond_6
    :goto_1
    :try_start_5
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    sget-object v2, Lcom/neverland/prefs/TPref$THEME_TYPE;->system_daynight:Lcom/neverland/prefs/TPref$THEME_TYPE;

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v2, v4, :cond_7

    .line 22
    sget-object v4, Lcom/neverland/prefs/TPref$THEME_TYPE;->system_day:Lcom/neverland/prefs/TPref$THEME_TYPE;

    iput-object v4, v0, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    .line 23
    :cond_7
    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    if-eqz v4, :cond_8

    .line 24
    sget-object v4, Lcom/neverland/prefs/TPref$THEME_TYPE;->def:Lcom/neverland/prefs/TPref$THEME_TYPE;

    iput-object v4, v0, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    .line 25
    :cond_8
    sget-object v4, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v4, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v9, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v4, v9, :cond_9

    .line 26
    sget-object v2, Lcom/neverland/prefs/TPref$THEME_TYPE;->eink:Lcom/neverland/prefs/TPref$THEME_TYPE;

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    .line 27
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    .line 28
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v2, 0x3

    iput v2, v0, Lcom/neverland/prefs/TOptions;->useStatus:I

    goto :goto_2

    .line 29
    :cond_9
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v9, "theme"

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v4, v13, v9, v0}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_a

    if-ltz v0, :cond_c

    const/4 v2, 0x4

    if-gt v0, v2, :cond_c

    .line 30
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    invoke-static {v0}, Lcom/neverland/prefs/TPref$THEME_TYPE;->fromInt(I)Lcom/neverland/prefs/TPref$THEME_TYPE;

    move-result-object v0

    iput-object v0, v2, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    goto :goto_2

    :cond_a
    const/16 v4, 0x15

    if-lt v2, v4, :cond_b

    if-ltz v0, :cond_c

    const/4 v2, 0x4

    if-gt v0, v2, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    .line 31
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    invoke-static {v0}, Lcom/neverland/prefs/TPref$THEME_TYPE;->fromInt(I)Lcom/neverland/prefs/TPref$THEME_TYPE;

    move-result-object v0

    iput-object v0, v2, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    goto :goto_2

    :cond_b
    if-ltz v0, :cond_c

    const/4 v2, 0x3

    if-gt v0, v2, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    .line 32
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    invoke-static {v0}, Lcom/neverland/prefs/TPref$THEME_TYPE;->fromInt(I)Lcom/neverland/prefs/TPref$THEME_TYPE;

    move-result-object v0

    iput-object v0, v2, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    .line 33
    :cond_c
    :goto_2
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "themebutton"

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->buttonColorForSystemTheme:I

    invoke-virtual {v0, v13, v2, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v2, 0x4

    if-ge v0, v2, :cond_d

    .line 34
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput v0, v2, Lcom/neverland/prefs/TInternalOptions;->buttonColorForSystemTheme:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 35
    :cond_d
    :try_start_6
    sget-object v0, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    invoke-static {v0}, Lcom/neverland/utils/APIWrap;->setTheme(Landroid/app/Application;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 36
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :goto_3
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "previewpercent"

    iget-boolean v9, v0, Lcom/neverland/prefs/TInternalOptions;->preview_percent:Z

    invoke-virtual {v2, v13, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->preview_percent:Z

    .line 38
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "interfacetrouble"

    iget-boolean v9, v0, Lcom/neverland/prefs/TInternalOptions;->troubleCustomize:Z

    invoke-virtual {v2, v13, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->troubleCustomize:Z

    .line 39
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "gammam"

    iget v9, v0, Lcom/neverland/prefs/TOptions;->gammaMode1:I

    invoke-virtual {v2, v13, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TOptions;->gammaMode1:I

    .line 40
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v0, Lcom/neverland/prefs/TOptions;->gammaMode1:I

    const/4 v4, 0x2

    if-ltz v2, :cond_e

    if-le v2, v4, :cond_f

    .line 41
    :cond_e
    iput v4, v0, Lcom/neverland/prefs/TOptions;->gammaMode1:I

    .line 42
    :cond_f
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "gammav"

    iget v9, v0, Lcom/neverland/prefs/TOptions;->gammaValue:I

    invoke-virtual {v2, v13, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TOptions;->gammaValue:I

    .line 43
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v0, Lcom/neverland/prefs/TOptions;->gammaValue:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_10

    const/16 v4, 0x17

    if-le v2, v4, :cond_11

    :cond_10
    const/16 v2, 0xa

    .line 44
    iput v2, v0, Lcom/neverland/prefs/TOptions;->gammaValue:I

    .line 45
    :cond_11
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "lastshareclass"

    invoke-virtual {v2, v13, v4, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastTextReceiverClass1:Ljava/lang/String;

    .line 46
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "lastshareaction"

    invoke-virtual {v2, v13, v4, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastTextReceiverAction:Ljava/lang/String;

    .line 47
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "lastshareimclass"

    invoke-virtual {v2, v13, v4, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastImageReceiverClass:Ljava/lang/String;

    .line 48
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "lastprofile"

    iget-object v9, v0, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    invoke-virtual {v9}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result v9

    invoke-virtual {v2, v13, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->fromInt(I)Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    .line 49
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    if-nez v2, :cond_12

    .line 50
    sget-object v2, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->p1:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    .line 51
    :cond_12
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "lastsearch"

    invoke-virtual {v2, v13, v4, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastSearch:Ljava/lang/String;

    .line 52
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastSearch:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/neverland/prefs/TPref;->hex2str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->lastSearch:Ljava/lang/String;

    .line 53
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "fullscreen"

    iget v9, v0, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    .line 54
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "autobacklight0"

    iget-boolean v9, v0, Lcom/neverland/prefs/TScreenState;->autoBacklightDay:Z

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TScreenState;->autoBacklightDay:Z

    .line 55
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "autobacklight1"

    iget-boolean v9, v0, Lcom/neverland/prefs/TScreenState;->autoBacklightNight:Z

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TScreenState;->autoBacklightNight:Z

    .line 56
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "levelbacklight0"

    iget v9, v0, Lcom/neverland/prefs/TScreenState;->levelBacklightDay:I

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TScreenState;->levelBacklightDay:I

    .line 57
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "levelbacklight1"

    iget v9, v0, Lcom/neverland/prefs/TScreenState;->levelBacklightNight:I

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TScreenState;->levelBacklightNight:I

    .line 58
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "backlighthardwaremin"

    iget v9, v0, Lcom/neverland/prefs/TScreenState;->backlightHardwareMin:I

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TScreenState;->backlightHardwareMin:I

    .line 59
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "STATE"

    const-string v4, "startcnt"

    iget v9, v0, Lcom/neverland/prefs/TInternalOptions;->countStart:I

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->countStart:I

    .line 60
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "STATE"

    const-string v4, "fontscale"

    iget v9, v0, Lcom/neverland/prefs/TInternalOptions;->fontScale:I

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->fontScale:I

    .line 61
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v0, Lcom/neverland/prefs/TInternalOptions;->fontScale:I

    if-ltz v2, :cond_13

    const/4 v3, 0x6

    if-le v2, v3, :cond_14

    :cond_13
    const/4 v2, 0x0

    .line 62
    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->fontScale:I

    .line 63
    :cond_14
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "STATE"

    const-string v4, "lang"

    iget v9, v0, Lcom/neverland/prefs/TInternalOptions;->appLang:I

    invoke-virtual {v2, v3, v4, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->appLang:I

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->getAppLang()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    .line 65
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->appLang:I

    .line 66
    :cond_15
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "syncsilennet"

    iget-boolean v4, v0, Lcom/neverland/prefs/TInternalOptions;->syncSilentifNoNetwork:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncSilentifNoNetwork:Z

    .line 67
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "syncbmk"

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncBookmark:I

    .line 68
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncBookmark:I

    if-ltz v2, :cond_17

    const/4 v3, 0x5

    if-le v2, v3, :cond_16

    goto :goto_4

    :cond_16
    const/4 v2, 0x0

    goto :goto_5

    :cond_17
    :goto_4
    const/4 v2, 0x0

    .line 69
    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncBookmark:I

    .line 70
    :goto_5
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "uplbook"

    invoke-virtual {v3, v10, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/neverland/prefs/TInternalOptions;->syncUploadBook:I

    .line 71
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncUploadBook:I

    if-ltz v2, :cond_19

    const/4 v3, 0x5

    if-le v2, v3, :cond_18

    goto :goto_6

    :cond_18
    const/4 v2, 0x0

    goto :goto_7

    :cond_19
    :goto_6
    const/4 v2, 0x0

    .line 72
    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncUploadBook:I

    .line 73
    :goto_7
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "backup"

    invoke-virtual {v3, v10, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/neverland/prefs/TInternalOptions;->syncBackup:I

    .line 74
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncBackup:I

    if-ltz v2, :cond_1b

    const/4 v3, 0x5

    if-le v2, v3, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v2, 0x0

    goto :goto_9

    :cond_1b
    :goto_8
    const/4 v2, 0x0

    .line 75
    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncBackup:I

    .line 76
    :goto_9
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "idlo"

    invoke-virtual {v3, v10, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    int-to-long v2, v3

    iput-wide v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    .line 77
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-wide v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v9, "idhi"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    move-object v9, v5

    int-to-long v4, v4

    const/16 v11, 0x20

    shl-long/2addr v4, v11

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    .line 78
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "DEVID"

    sget-object v3, Lcom/neverland/utils/TCustomDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v10, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 79
    sget-object v2, Lcom/neverland/utils/TCustomDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 80
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    .line 81
    sget-object v0, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    invoke-virtual {v0}, Lcom/neverland/mainApp;->o()V

    .line 82
    :cond_1c
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-wide v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    const-wide/16 v4, 0x0

    cmp-long v11, v2, v4

    if-nez v11, :cond_1d

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    .line 84
    :cond_1d
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "wdname"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVName:Ljava/lang/String;

    .line 85
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "wdpass"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    .line 86
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xf000

    and-int/2addr v0, v2

    const v2, 0xe000

    if-ne v0, v2, :cond_1e

    .line 87
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    invoke-static {v2}, Lcom/neverland/utils/finit;->WritePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    .line 88
    :cond_1e
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "http1"

    iget-boolean v4, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVUseHTTP1:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVUseHTTP1:Z

    .line 89
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "wdaddr"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVAddr1:Ljava/lang/String;

    .line 90
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "ftpname"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPName:Ljava/lang/String;

    .line 91
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "ftppass"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPPass:Ljava/lang/String;

    .line 92
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPPass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPPass:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xf000

    and-int/2addr v0, v2

    const v2, 0xe000

    if-ne v0, v2, :cond_1f

    .line 93
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPPass:Ljava/lang/String;

    invoke-static {v2}, Lcom/neverland/utils/finit;->WritePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPPass:Ljava/lang/String;

    .line 94
    :cond_1f
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "ftpaddr"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPAddr:Ljava/lang/String;

    .line 95
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "sftpname"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPName:Ljava/lang/String;

    .line 96
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "sftppass"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPPass:Ljava/lang/String;

    .line 97
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPPass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPPass:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xf000

    and-int/2addr v0, v2

    const v2, 0xe000

    if-ne v0, v2, :cond_20

    .line 98
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPPass:Ljava/lang/String;

    invoke-static {v2}, Lcom/neverland/utils/finit;->WritePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPPass:Ljava/lang/String;

    .line 99
    :cond_20
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "sftpaddr"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPAddr:Ljava/lang/String;

    .line 100
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "name"

    invoke-virtual {v2, v10, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neverland/prefs/TPref;->getCorrectSyncName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncName:Ljava/lang/String;

    .line 101
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "mode"

    iget v4, v0, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    .line 102
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 103
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncName:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    .line 104
    :cond_21
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    goto :goto_a

    :cond_22
    const/4 v3, 0x3

    if-ne v2, v3, :cond_24

    .line 105
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVName:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVAddr1:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    .line 106
    :cond_23
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    goto :goto_a

    :cond_24
    const/4 v3, 0x4

    if-ne v2, v3, :cond_26

    .line 107
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPName:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPAddr:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    .line 108
    :cond_25
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    goto :goto_a

    :cond_26
    const/4 v3, 0x5

    if-ne v2, v3, :cond_28

    .line 109
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPName:Ljava/lang/String;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPAddr:Ljava/lang/String;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    .line 110
    :cond_27
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    .line 111
    :cond_28
    :goto_a
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "manual"

    iget v4, v0, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    .line 112
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 113
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncName:Ljava/lang/String;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 114
    :cond_29
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    goto :goto_b

    :cond_2a
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    .line 115
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVName:Ljava/lang/String;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVAddr1:Ljava/lang/String;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 116
    :cond_2b
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    goto :goto_b

    :cond_2c
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2e

    .line 117
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPName:Ljava/lang/String;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncFTPAddr:Ljava/lang/String;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 118
    :cond_2d
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    goto :goto_b

    :cond_2e
    const/4 v3, 0x5

    if-ne v2, v3, :cond_30

    .line 119
    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPName:Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncSFTPAddr:Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 120
    :cond_2f
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    .line 121
    :cond_30
    :goto_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_31

    .line 122
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "usehttps"

    iget-boolean v4, v0, Lcom/neverland/prefs/TInternalOptions;->networkUseHttps:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->networkUseHttps:Z

    goto :goto_c

    .line 123
    :cond_31
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->networkUseHttps:Z

    .line 124
    :goto_c
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "TOP100"

    const-string v4, "authors"

    iget-boolean v5, v0, Lcom/neverland/prefs/TInternalOptions;->top100Authors:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->top100Authors:Z

    .line 125
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "TOP100"

    const-string v4, "iagree"

    iget-boolean v5, v0, Lcom/neverland/prefs/TInternalOptions;->top100Add:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->top100Add:Z

    .line 126
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "search"

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/neverland/prefs/TPref;->str2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    invoke-direct {v1, v0}, Lcom/neverland/prefs/TPref;->hex2str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    .line 128
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "lp"

    iget v4, v0, Lcom/neverland/prefs/TInternalOptions;->ttsLastPoint1:I

    invoke-virtual {v2, v15, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->ttsLastPoint1:I

    .line 129
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "pitch"

    iget v4, v0, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    invoke-virtual {v2, v15, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    .line 130
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v2, v0, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_32

    const/16 v3, 0x96

    if-le v2, v3, :cond_33

    :cond_32
    const/16 v2, 0x64

    .line 131
    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    .line 132
    :cond_33
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "volumephone"

    iget v4, v0, Lcom/neverland/prefs/TInternalOptions;->ttsVolume0:I

    invoke-virtual {v2, v15, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->ttsVolume0:I

    .line 133
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "pin"

    iget-boolean v4, v0, Lcom/neverland/prefs/TInternalOptions;->ttsPinned:Z

    invoke-virtual {v2, v15, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TInternalOptions;->ttsPinned:Z

    .line 134
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "voice"

    invoke-virtual {v2, v15, v3, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/neverland/prefs/TInternalOptions;->ttsVoice:Ljava/lang/String;

    .line 135
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "STATE"

    const-string v4, "actedtag"

    iget v5, v0, Lcom/neverland/prefs/TInternalOptions;->activeEditTag:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/neverland/prefs/TInternalOptions;->activeEditTag:I

    goto :goto_d

    :cond_34
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v19, v9

    move-object v9, v5

    .line 136
    :goto_d
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    if-nez v0, :cond_35

    .line 137
    new-instance v0, Lcom/neverland/utils/TMemIniFile2;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->fileNamePortable:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/neverland/utils/TMemIniFile2;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    .line 138
    :cond_35
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    if-eqz v0, :cond_9d

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->appUseLocale()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "unionbacklight"

    iget-boolean v5, v2, Lcom/neverland/prefs/TScreenState;->unionBacklight:Z

    invoke-virtual {v3, v13, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TScreenState;->unionBacklight:Z

    .line 141
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "keepbacklight"

    iget v5, v2, Lcom/neverland/prefs/TScreenState;->keepBacklight:I

    invoke-virtual {v3, v13, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TScreenState;->keepBacklight:I

    .line 142
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "shadowbacklight"

    iget-boolean v5, v2, Lcom/neverland/prefs/TScreenState;->shadowBacklight:Z

    invoke-virtual {v3, v13, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TScreenState;->shadowBacklight:Z

    .line 143
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v3, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->usereink:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v2, v3}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 144
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    const/16 v4, 0x2710

    iput v4, v3, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    .line 145
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "refreshrate"

    invoke-virtual {v5, v13, v10, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    .line 146
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v4, v3, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_36

    .line 147
    iput v5, v3, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    .line 148
    :cond_36
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "dithering"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->einkUseDitering:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->einkUseDitering:Z

    goto/16 :goto_e

    .line 149
    :cond_37
    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxOld:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v3, v4, :cond_38

    .line 150
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "snowfield"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->regal:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->regal:Z

    .line 151
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshrate"

    iget v10, v3, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    .line 152
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshobj"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->updateIfObject1:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->updateIfObject1:Z

    .line 153
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshdlg"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->updateIfDialog:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->updateIfDialog:Z

    .line 154
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshres"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->updateIfResume:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->updateIfResume:Z

    .line 155
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshact"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->updateDisable:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->updateDisable:Z

    .line 156
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "fastscroll"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->useFastScroll1:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->useFastScroll1:Z

    .line 157
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->einkUseDitering:Z

    goto/16 :goto_e

    .line 158
    :cond_38
    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxMono:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v3, v4, :cond_39

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxColor:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v3, v4, :cond_3a

    .line 159
    :cond_39
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "snowfield"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->regal:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->regal:Z

    .line 160
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshrate"

    iget v10, v3, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    .line 161
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshobj"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->updateIfObject1:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->updateIfObject1:Z

    .line 162
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshdlg"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->updateIfDialog:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->updateIfDialog:Z

    .line 163
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshres"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->updateIfResume:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->updateIfResume:Z

    .line 164
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "refreshact"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->updateDisable:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->updateDisable:Z

    .line 165
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "fastscroll"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->useFastScroll1:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->useFastScroll1:Z

    .line 166
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_mono:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v2, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->einkUseDitering:Z

    .line 167
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "dithering"

    iget-boolean v10, v3, Lcom/neverland/prefs/TScreenState;->einkUseDitering:Z

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TScreenState;->einkUseDitering:Z

    .line 168
    :cond_3a
    :goto_e
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "realpages"

    iget v10, v3, Lcom/neverland/prefs/TOptions;->realCalcPages1:I

    invoke-virtual {v4, v13, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->realCalcPages1:I

    .line 169
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->realCalcPages1:I

    if-gez v4, :cond_3b

    const/4 v5, 0x2

    if-le v4, v5, :cond_3b

    const/4 v4, 0x0

    .line 170
    iput v4, v3, Lcom/neverland/prefs/TOptions;->realCalcPages1:I

    .line 171
    :cond_3b
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "sort"

    iget v10, v3, Lcom/neverland/prefs/TInternalOptions;->sortFile:I

    invoke-virtual {v4, v12, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TInternalOptions;->sortFile:I

    .line 172
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "inverse"

    iget-boolean v10, v3, Lcom/neverland/prefs/TInternalOptions;->sortFileReverse:Z

    invoke-virtual {v4, v12, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TInternalOptions;->sortFileReverse:Z

    .line 173
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "invfavor"

    iget-boolean v10, v3, Lcom/neverland/prefs/TInternalOptions;->sortFavorReverse:Z

    invoke-virtual {v4, v12, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TInternalOptions;->sortFavorReverse:Z

    .line 174
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "nsort"

    iget v10, v3, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    invoke-virtual {v4, v12, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    .line 175
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "ninverse"

    iget-boolean v10, v3, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    invoke-virtual {v4, v12, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    .line 176
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "deleteconfirm"

    iget-boolean v10, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkConfirmDelete:Z

    invoke-virtual {v4, v7, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkConfirmDelete:Z

    .line 177
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "bmkmarker"

    iget v10, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkDefaultMarker:I

    invoke-virtual {v4, v7, v5, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x7

    and-int/2addr v4, v5

    iput v4, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkDefaultMarker:I

    .line 178
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "bmkquickmarker"

    iget v11, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkQuickDefaultMarker:I

    invoke-virtual {v4, v7, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    and-int/2addr v4, v5

    iput v4, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkQuickDefaultMarker:I

    .line 179
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "citemarkertype"

    iget v11, v3, Lcom/neverland/prefs/TInternalOptions;->citeDefaultMarker:I

    invoke-virtual {v4, v7, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    and-int/2addr v4, v5

    iput v4, v3, Lcom/neverland/prefs/TInternalOptions;->citeDefaultMarker:I

    .line 180
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "sort"

    iget v11, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkSort1:I

    invoke-virtual {v4, v7, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkSort1:I

    .line 181
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "citequickmarker"

    iget v11, v3, Lcom/neverland/prefs/TInternalOptions;->citeQuickDefaultMarker:I

    invoke-virtual {v4, v7, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    and-int/2addr v4, v5

    iput v4, v3, Lcom/neverland/prefs/TInternalOptions;->citeQuickDefaultMarker:I

    .line 182
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "usetext"

    iget-boolean v11, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseBookText:Z

    invoke-virtual {v4, v7, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseBookText:Z

    .line 183
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v7, "editsrc"

    iget-boolean v10, v3, Lcom/neverland/prefs/TOptions;->saveAsSRC:Z

    invoke-virtual {v4, v13, v7, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TOptions;->saveAsSRC:Z

    .line 184
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v7, "foldsupport"

    iget-boolean v10, v3, Lcom/neverland/prefs/TOptions;->supportFolded:Z

    invoke-virtual {v4, v13, v7, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TOptions;->supportFolded:Z

    .line 185
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "hyph"

    iget-object v7, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v7, v7, Lcom/neverland/prefs/TOptions;->hyph_lang:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v3, v13, v4, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x19

    if-ltz v3, :cond_3c

    if-gt v3, v4, :cond_3c

    .line 186
    iget-object v7, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    invoke-static {v3}, Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;->fromInt(I)Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;

    move-result-object v3

    iput-object v3, v7, Lcom/neverland/prefs/TOptions;->hyph_lang:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;

    .line 187
    :cond_3c
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v7, "infostatus"

    iget-object v10, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v10, v10, Lcom/neverland/prefs/TOptions;->infoStatus:Lcom/neverland/utils/finit$ESTATUSINFO;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v3, v13, v7, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_3d

    if-ge v3, v5, :cond_3d

    .line 188
    iget-object v7, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    invoke-static {v3}, Lcom/neverland/utils/finit$ESTATUSINFO;->fromInt(I)Lcom/neverland/utils/finit$ESTATUSINFO;

    move-result-object v3

    iput-object v3, v7, Lcom/neverland/prefs/TOptions;->infoStatus:Lcom/neverland/utils/finit$ESTATUSINFO;

    .line 189
    :cond_3d
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v7, "infoheader"

    iget-object v10, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v10, v10, Lcom/neverland/prefs/TOptions;->infoHeader:Lcom/neverland/utils/finit$ESTATUSINFO;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v3, v13, v7, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_3e

    if-ge v3, v5, :cond_3e

    .line 190
    iget-object v7, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    invoke-static {v3}, Lcom/neverland/utils/finit$ESTATUSINFO;->fromInt(I)Lcom/neverland/utils/finit$ESTATUSINFO;

    move-result-object v3

    iput-object v3, v7, Lcom/neverland/prefs/TOptions;->infoHeader:Lcom/neverland/utils/finit$ESTATUSINFO;

    .line 191
    :cond_3e
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v7, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "contentonprogress"

    iget-boolean v11, v3, Lcom/neverland/prefs/TOptions;->contentOnProgress:Z

    invoke-virtual {v7, v13, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v3, Lcom/neverland/prefs/TOptions;->contentOnProgress:Z

    .line 192
    sget-object v3, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_old:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v2, v3}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 193
    iget-object v7, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v10, v7, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    or-int/lit16 v10, v10, 0xa00

    iput v10, v7, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    .line 194
    :cond_3f
    sget-boolean v7, Lcom/neverland/mainApp;->f:Z

    if-nez v7, :cond_40

    .line 195
    iget-object v7, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v10, v7, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    or-int/lit16 v10, v10, 0x1a00

    iput v10, v7, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    and-int/lit16 v10, v10, -0x201

    .line 196
    iput v10, v7, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    .line 197
    :cond_40
    iget-object v7, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v10, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v11, "statusparam"

    iget v4, v7, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    invoke-virtual {v10, v13, v11, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v7, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    .line 198
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v7, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "textmenu"

    iget-boolean v11, v4, Lcom/neverland/prefs/TOptions;->textMenu:Z

    invoke-virtual {v7, v13, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Lcom/neverland/prefs/TOptions;->textMenu:Z

    .line 199
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v7, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "disableseparator"

    iget-boolean v11, v4, Lcom/neverland/prefs/TOptions;->disableTurnBitmap1:Z

    invoke-virtual {v7, v13, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Lcom/neverland/prefs/TOptions;->disableTurnBitmap1:Z

    .line 200
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v7, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v10, "alltime"

    move-object v11, v6

    iget-wide v5, v4, Lcom/neverland/prefs/TInternalOptions;->allReadTime1:J

    long-to-int v6, v5

    invoke-virtual {v7, v13, v10, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v22, 0x3e8

    mul-long v5, v5, v22

    iput-wide v5, v4, Lcom/neverland/prefs/TInternalOptions;->allReadTime1:J

    .line 201
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "ttstime"

    move-object v7, v14

    move-object v10, v15

    iget-wide v14, v4, Lcom/neverland/prefs/TInternalOptions;->allTTSTime:J

    long-to-int v15, v14

    invoke-virtual {v5, v13, v6, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v14, 0x3e8

    mul-long v5, v5, v14

    iput-wide v5, v4, Lcom/neverland/prefs/TInternalOptions;->allTTSTime:J

    .line 202
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "chinaformatting"

    iget-boolean v14, v4, Lcom/neverland/prefs/TOptions;->chinezeSpecial:Z

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/prefs/TOptions;->chinezeSpecial:Z

    .line 203
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "ascentastop"

    iget-boolean v14, v4, Lcom/neverland/prefs/TOptions;->useAscentAsTopForText:Z

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/prefs/TOptions;->useAscentAsTopForText:Z

    .line 204
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "notesitems"

    iget v14, v4, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    .line 205
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v4, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    if-gez v5, :cond_41

    const/4 v5, 0x2

    iput v5, v4, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    .line 206
    :cond_41
    iget v5, v4, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    const/16 v6, 0x3e7

    if-le v5, v6, :cond_42

    const/16 v5, 0x3e7

    iput v5, v4, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    .line 207
    :cond_42
    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    if-nez v5, :cond_43

    const/4 v5, 0x2

    .line 208
    iput v5, v4, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    .line 209
    :cond_43
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "PROFILE"

    const-string v14, "shownotes"

    iget v15, v4, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    invoke-virtual {v5, v6, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    .line 210
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v4, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    if-ltz v5, :cond_44

    const/4 v6, 0x2

    if-le v5, v6, :cond_45

    :cond_44
    const/4 v5, 0x1

    .line 211
    iput v5, v4, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    .line 212
    :cond_45
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "autosaveprofiles"

    iget-boolean v14, v4, Lcom/neverland/prefs/TOptions;->autosaveProfiles:Z

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/prefs/TOptions;->autosaveProfiles:Z

    .line 213
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "citeline"

    iget v14, v4, Lcom/neverland/prefs/TOneProfile;->underlineStyle:I

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/neverland/prefs/TOneProfile;->underlineStyle:I

    .line 214
    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v2, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 215
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "colorselect"

    const/4 v14, 0x0

    aget v15, v4, v14

    const v17, 0xffffff

    and-int v15, v15, v17

    invoke-virtual {v5, v13, v6, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v14

    .line 216
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "colorfind"

    const/4 v14, 0x1

    aget v15, v4, v14

    const v18, 0xffffff

    and-int v15, v15, v18

    invoke-virtual {v5, v13, v6, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v14

    .line 217
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "colorsupport"

    const/4 v14, 0x5

    aget v15, v4, v14

    const v16, 0xffff

    and-int v15, v15, v16

    .line 218
    invoke-virtual {v5, v13, v6, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v14

    .line 219
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    aget v5, v4, v14

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x20

    if-ge v5, v6, :cond_46

    .line 220
    aget v5, v4, v14

    or-int/lit16 v5, v5, 0x80

    aput v5, v4, v14

    :cond_46
    const/4 v5, 0x0

    .line 221
    aget v6, v4, v5

    const v14, 0xffffff

    and-int/2addr v6, v14

    aput v6, v4, v5

    const/4 v5, 0x1

    .line 222
    aget v6, v4, v5

    const v14, 0xffffff

    and-int/2addr v6, v14

    aput v6, v4, v5

    .line 223
    :cond_47
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "statusbold"

    iget-boolean v14, v4, Lcom/neverland/prefs/TOptions;->statusBold:Z

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/prefs/TOptions;->statusBold:Z

    .line 224
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "statussize"

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v6, Lcom/neverland/prefs/TOptions;->statusSize:I

    invoke-virtual {v4, v13, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_48

    const/16 v5, 0x19

    if-gt v4, v5, :cond_48

    .line 225
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput v4, v5, Lcom/neverland/prefs/TOptions;->statusSize:I

    .line 226
    :cond_48
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "progressfullline"

    iget-boolean v14, v4, Lcom/neverland/prefs/TOptions;->progressFullLine:Z

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/prefs/TOptions;->progressFullLine:Z

    .line 227
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "interfacefont"

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v6, Lcom/neverland/prefs/TOptions;->statusFont1:Ljava/lang/String;

    if-nez v6, :cond_49

    move-object v6, v7

    :cond_49
    invoke-virtual {v4, v13, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 228
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4a

    .line 229
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput-object v4, v5, Lcom/neverland/prefs/TOptions;->statusFont1:Ljava/lang/String;

    .line 230
    :cond_4a
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "statusreverse"

    iget-boolean v14, v4, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    .line 231
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "statuslongclick"

    iget-boolean v14, v4, Lcom/neverland/prefs/TOptions;->statusLongClick:Z

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/prefs/TOptions;->statusLongClick:Z

    .line 232
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "useheader"

    iget v14, v4, Lcom/neverland/prefs/TOptions;->useHeader:I

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/neverland/prefs/TOptions;->useHeader:I

    .line 233
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "usestatus"

    iget v14, v4, Lcom/neverland/prefs/TOptions;->useStatus:I

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/neverland/prefs/TOptions;->useStatus:I

    .line 234
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "useprogress"

    iget v14, v4, Lcom/neverland/prefs/TOptions;->useProgress:I

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/neverland/prefs/TOptions;->useProgress:I

    .line 235
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "rotateos"

    iget-boolean v14, v4, Lcom/neverland/prefs/TOptions;->rotate_onyx_usesystem:Z

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/neverland/prefs/TOptions;->rotate_onyx_usesystem:Z

    .line 236
    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v2, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 237
    invoke-virtual {v2, v3}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_4b

    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TOptions;->rotate_onyx_usesystem:Z

    if-nez v3, :cond_4c

    .line 238
    :cond_4b
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "rotate"

    iget v14, v3, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    .line 239
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "rotateprev"

    iget v14, v3, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    invoke-virtual {v5, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    .line 240
    :cond_4c
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "pagesize"

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v6, Lcom/neverland/prefs/TOptions;->pageSize:I

    invoke-virtual {v3, v13, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 241
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    goto :goto_f

    .line 242
    :sswitch_0
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput v3, v5, Lcom/neverland/prefs/TOptions;->pageSize:I

    goto :goto_10

    :goto_f
    const/4 v5, -0x1

    .line 243
    iput v5, v3, Lcom/neverland/prefs/TOptions;->pageSize:I

    .line 244
    :goto_10
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "tapguard"

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v6, Lcom/neverland/prefs/TOptions;->tapGuard:I

    invoke-virtual {v3, v13, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_4d

    const/16 v5, 0x3c

    if-gt v3, v5, :cond_4d

    .line 245
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput v3, v5, Lcom/neverland/prefs/TOptions;->tapGuard:I

    .line 246
    :cond_4d
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "autoscrollroll"

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v6, Lcom/neverland/prefs/TOptions;->autoscrollMode:I

    invoke-virtual {v3, v13, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_4e

    const/4 v5, 0x3

    if-gt v3, v5, :cond_4e

    .line 247
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput v3, v5, Lcom/neverland/prefs/TOptions;->autoscrollMode:I

    .line 248
    :cond_4e
    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v5, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v3, v5, :cond_4f

    .line 249
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->useFullscreenSkin:Z

    .line 250
    :cond_4f
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "fullskin"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->useFullscreenSkin:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->useFullscreenSkin:Z

    .line 251
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "usenotch"

    iget-object v14, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v14, v14, Lcom/neverland/prefs/TOptions;->useNotch1:I

    invoke-virtual {v3, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_50

    const/4 v6, 0x1

    if-gt v3, v6, :cond_50

    .line 252
    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput v3, v6, Lcom/neverland/prefs/TOptions;->useNotch1:I

    .line 253
    :cond_50
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "reversebookmark"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->reverseBookmark:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->reverseBookmark:Z

    .line 254
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "swipescale"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->tapScale:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->tapScale:I

    .line 255
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v3, Lcom/neverland/prefs/TOptions;->tapScale:I

    const/4 v14, 0x5

    if-lt v6, v14, :cond_51

    const/16 v14, 0x1e

    if-le v6, v14, :cond_52

    :cond_51
    const/16 v6, 0xa

    .line 256
    iput v6, v3, Lcom/neverland/prefs/TOptions;->tapScale:I

    .line 257
    :cond_52
    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "opendialogtap"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->openDialogsTap:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->openDialogsTap:I

    .line 258
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v3, Lcom/neverland/prefs/TOptions;->openDialogsTap:I

    const/4 v14, 0x1

    if-ltz v6, :cond_53

    if-le v6, v14, :cond_54

    .line 259
    :cond_53
    iput v14, v3, Lcom/neverland/prefs/TOptions;->openDialogsTap:I

    .line 260
    :cond_54
    sget-boolean v6, Lcom/neverland/mainApp;->f:Z

    if-nez v6, :cond_55

    .line 261
    iput-boolean v14, v3, Lcom/neverland/prefs/TOptions;->useFontsSystem:Z

    .line 262
    iput-boolean v14, v3, Lcom/neverland/prefs/TOptions;->useFontsNoto:Z

    .line 263
    :cond_55
    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "usesystemfonts"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->useFontsSystem:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->useFontsSystem:Z

    .line 264
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "usenotofonts"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->useFontsNoto:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->useFontsNoto:Z

    .line 265
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "dialogusecover"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->dialogUseCover:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->dialogUseCover:Z

    .line 266
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "dialogsmalltitles"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->dialogSmallTitles:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->dialogSmallTitles:Z

    .line 267
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "dialogscalex"

    iget-object v14, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v14, v14, Lcom/neverland/prefs/TOptions;->dialogTextScaleX:I

    invoke-virtual {v3, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/16 v6, 0x32

    if-lt v3, v6, :cond_56

    const/16 v6, 0x64

    if-gt v3, v6, :cond_56

    .line 268
    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput v3, v6, Lcom/neverland/prefs/TOptions;->dialogTextScaleX:I

    .line 269
    :cond_56
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "statusscalex"

    iget-object v14, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v14, v14, Lcom/neverland/prefs/TOptions;->statusTextScaleX:I

    invoke-virtual {v3, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/16 v6, 0x32

    if-lt v3, v6, :cond_57

    const/16 v6, 0xc8

    if-gt v3, v6, :cond_57

    .line 270
    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput v3, v6, Lcom/neverland/prefs/TOptions;->statusTextScaleX:I

    .line 271
    :cond_57
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "sysstatusmenu"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->statusBarUseMenuColor:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->statusBarUseMenuColor:Z

    .line 272
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "menuaccentcolor"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->menuConfigAccentColor:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->menuConfigAccentColor:I

    .line 273
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "menutextcolor"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->menuConfigTextColor:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->menuConfigTextColor:I

    .line 274
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "menubackcolor"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->menuConfigBackColor:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->menuConfigBackColor:I

    .line 275
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "copyexternalfilealways"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->alwaysCopyExternalFile1:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->alwaysCopyExternalFile1:Z

    .line 276
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "longtapmode"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->longTapMode:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->longTapMode:I

    .line 277
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "longtaplink"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->openLinkLongTap:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->openLinkLongTap:Z

    .line 278
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "shorttapmode"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->shortTapMode:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->shortTapMode:I

    .line 279
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "pinchfontsize"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->pinchFontSize:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->pinchFontSize:Z

    .line 280
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "usedoubletap"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    .line 281
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v3, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    if-ltz v6, :cond_58

    const/4 v14, 0x4

    if-le v6, v14, :cond_59

    :cond_58
    const/4 v6, 0x0

    .line 282
    iput v6, v3, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    .line 283
    :cond_59
    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "sidebacklightl"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->sideBacklightLeft1:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->sideBacklightLeft1:I

    .line 284
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "sidebacklightr"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->sideBacklightRight1:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->sideBacklightRight1:I

    .line 285
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "listdevider"

    iget-boolean v15, v3, Lcom/neverland/prefs/TOptions;->useListSeparator:Z

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lcom/neverland/prefs/TOptions;->useListSeparator:Z

    .line 286
    invoke-virtual {v2, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 287
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/16 v6, 0x14

    iput v6, v3, Lcom/neverland/prefs/TOptions;->dictionaryWord:I

    .line 288
    :cond_5a
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "dictionarya"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->dictionaryWord:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->dictionaryWord:I

    .line 289
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v3, Lcom/neverland/prefs/TOptions;->dictionaryWord:I

    const/16 v14, 0x9

    if-eq v6, v14, :cond_5b

    const/16 v14, 0xb

    if-eq v6, v14, :cond_5b

    const/16 v14, 0xc

    if-eq v6, v14, :cond_5b

    goto :goto_11

    :cond_5b
    const/16 v6, 0x14

    .line 290
    iput v6, v3, Lcom/neverland/prefs/TOptions;->dictionaryWord:I

    .line 291
    :goto_11
    iget-object v6, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v14, "dictionaryb"

    iget v15, v3, Lcom/neverland/prefs/TOptions;->dictionaryPhrase:I

    invoke-virtual {v6, v13, v14, v15}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/neverland/prefs/TOptions;->dictionaryPhrase:I

    .line 292
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v3, Lcom/neverland/prefs/TOptions;->dictionaryPhrase:I

    const/16 v14, 0x9

    if-eq v6, v14, :cond_5c

    const/16 v14, 0xb

    if-eq v6, v14, :cond_5c

    const/16 v14, 0xc

    if-eq v6, v14, :cond_5c

    goto :goto_12

    :cond_5c
    const/16 v6, 0x14

    .line 293
    iput v6, v3, Lcom/neverland/prefs/TOptions;->dictionaryPhrase:I

    .line 294
    :goto_12
    invoke-virtual {v2, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 295
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v4, 0x6

    iput v4, v3, Lcom/neverland/prefs/TOptions;->backAction1:I

    .line 296
    :cond_5d
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "backaction"

    iget v14, v3, Lcom/neverland/prefs/TOptions;->backAction1:I

    invoke-virtual {v4, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->backAction1:I

    .line 297
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "taplimittime"

    iget v14, v3, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    invoke-virtual {v4, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    .line 298
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    if-ltz v4, :cond_5e

    const/16 v6, 0x3e8

    if-le v4, v6, :cond_5f

    :cond_5e
    const/16 v4, 0x96

    .line 299
    iput v4, v3, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    .line 300
    :cond_5f
    iget-object v4, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v4, v5, :cond_60

    iget v4, v3, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_60

    const/16 v4, 0x12c

    .line 301
    iput v4, v3, Lcom/neverland/prefs/TOptions;->tapTimeLimit1:I

    .line 302
    :cond_60
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "longtaptime"

    iget v14, v3, Lcom/neverland/prefs/TOptions;->longTapTime:I

    invoke-virtual {v4, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->longTapTime:I

    .line 303
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->longTapTime:I

    const/16 v6, 0x190

    if-lt v4, v6, :cond_61

    const/16 v6, 0x7d0

    if-le v4, v6, :cond_62

    :cond_61
    const/16 v4, 0x2bc

    .line 304
    iput v4, v3, Lcom/neverland/prefs/TOptions;->longTapTime:I

    .line 305
    :cond_62
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "doubletaptime"

    iget v14, v3, Lcom/neverland/prefs/TOptions;->doubleTapTime:I

    invoke-virtual {v4, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->doubleTapTime:I

    .line 306
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->doubleTapTime:I

    const/16 v6, 0x64

    if-lt v4, v6, :cond_63

    const/16 v6, 0x1f4

    if-le v4, v6, :cond_64

    :cond_63
    const/16 v4, 0xfa

    .line 307
    iput v4, v3, Lcom/neverland/prefs/TOptions;->doubleTapTime:I

    .line 308
    :cond_64
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "day"

    iget-boolean v6, v1, Lcom/neverland/prefs/TPref;->isDay:Z

    invoke-virtual {v3, v13, v4, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/neverland/prefs/TPref;->isDay:Z

    .line 309
    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxColor:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v3, v4, :cond_65

    .line 310
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v4, 0x2

    iput v4, v3, Lcom/neverland/prefs/TOptions;->imageScale:I

    .line 311
    :cond_65
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "imagescale"

    iget v14, v3, Lcom/neverland/prefs/TOptions;->imageScale:I

    invoke-virtual {v4, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->imageScale:I

    .line 312
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->imageScale:I

    if-ltz v4, :cond_66

    const/4 v6, 0x7

    if-le v4, v6, :cond_67

    :cond_66
    const/4 v4, 0x0

    .line 313
    iput v4, v3, Lcom/neverland/prefs/TOptions;->imageScale:I

    .line 314
    :cond_67
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "nightfilter"

    iget-boolean v14, v3, Lcom/neverland/prefs/TOptions;->useNightFiler:Z

    invoke-virtual {v4, v13, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TOptions;->useNightFiler:Z

    .line 315
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "fontchangestep"

    iget-object v6, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v6, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v13, v4, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v6, v4, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    invoke-static {v3, v6}, Lcom/neverland/utils/finit;->customStringToFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, v4, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    .line 317
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    const/high16 v6, 0x3e800000    # 0.25f

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_68

    const/high16 v4, 0x3e800000    # 0.25f

    .line 318
    iput v4, v3, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    goto :goto_13

    :cond_68
    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_69

    const/high16 v4, 0x3f000000    # 0.5f

    .line 319
    iput v4, v3, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    goto :goto_13

    :cond_69
    const/high16 v4, 0x3f800000    # 1.0f

    .line 320
    iput v4, v3, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    .line 321
    :goto_13
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "KEYS"

    const-string v13, "horizontalswipe"

    iget-boolean v14, v3, Lcom/neverland/prefs/TTaps;->horizontalSwipeDisable:Z

    invoke-virtual {v4, v6, v13, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TTaps;->horizontalSwipeDisable:Z

    .line 322
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-nez v3, :cond_6a

    .line 323
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    const/4 v4, 0x2

    iput v4, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    .line 324
    :cond_6a
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v6, "KEYS"

    const-string v13, "verticalswipe"

    iget v14, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    invoke-virtual {v4, v6, v13, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    .line 325
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v4, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    const/4 v6, -0x1

    if-lt v4, v6, :cond_6b

    const/4 v6, 0x2

    if-le v4, v6, :cond_6c

    :cond_6b
    const/4 v4, 0x0

    .line 326
    iput v4, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    .line 327
    :cond_6c
    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v2, v5, :cond_6d

    .line 328
    iget v2, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6d

    const/4 v2, 0x0

    .line 329
    iput v2, v3, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    .line 330
    :cond_6d
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "ANIMATION"

    const-string v5, "type"

    iget v6, v2, Lcom/neverland/prefs/TAnimation;->type:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TAnimation;->type:I

    .line 331
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v3, v2, Lcom/neverland/prefs/TAnimation;->type:I

    and-int/lit8 v3, v3, 0x1f

    iput v3, v2, Lcom/neverland/prefs/TAnimation;->type:I

    .line 332
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "ANIMATION"

    const-string v5, "time"

    iget v6, v2, Lcom/neverland/prefs/TAnimation;->time:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TAnimation;->time:I

    .line 333
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v3, v2, Lcom/neverland/prefs/TAnimation;->time:I

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_6e

    const/16 v3, 0x12c

    iput v3, v2, Lcom/neverland/prefs/TAnimation;->time:I

    .line 334
    :cond_6e
    iget v3, v2, Lcom/neverland/prefs/TAnimation;->time:I

    const/16 v4, 0x5dc

    if-le v3, v4, :cond_6f

    const/16 v3, 0x5dc

    iput v3, v2, Lcom/neverland/prefs/TAnimation;->time:I

    .line 335
    :cond_6f
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "ANIMATION"

    const-string v5, "always"

    iget v6, v2, Lcom/neverland/prefs/TAnimation;->always:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TAnimation;->always:I

    .line 336
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v3, v2, Lcom/neverland/prefs/TAnimation;->always:I

    if-ltz v3, :cond_70

    const/4 v4, 0x2

    if-le v3, v4, :cond_71

    :cond_70
    const/4 v3, 0x1

    .line 337
    iput v3, v2, Lcom/neverland/prefs/TAnimation;->always:I

    .line 338
    :cond_71
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "ANIMATION"

    const-string v5, "usebackpage"

    iget-boolean v6, v2, Lcom/neverland/prefs/TAnimation;->useBackPage1:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TAnimation;->useBackPage1:Z

    const/4 v2, 0x0

    .line 339
    :goto_14
    sget v3, Lcom/neverland/prefs/TTaps;->KEYCODE_SUPPORTED_MAX:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const-string v4, "TAPSANDSWIPES"

    if-ge v2, v3, :cond_73

    .line 340
    :try_start_8
    invoke-static {v2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_72

    .line 341
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->keys:[I

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v13, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v13, v13, Lcom/neverland/prefs/TTaps;->keys:[I

    aget v13, v13, v2

    invoke-virtual {v5, v4, v6, v13}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_73
    const/4 v2, 0x0

    :goto_15
    const/16 v3, 0x9

    if-ge v2, v3, :cond_74

    .line 342
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->shortTaps:[I

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "st"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v2, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v14, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v14, v14, Lcom/neverland/prefs/TTaps;->shortTaps:[I

    aget v14, v14, v2

    invoke-virtual {v5, v4, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    move v2, v13

    goto :goto_15

    :cond_74
    const/4 v2, 0x0

    :goto_16
    const/16 v3, 0x9

    if-ge v2, v3, :cond_75

    .line 343
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->longTaps:[I

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lt"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v2, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v14, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v14, v14, Lcom/neverland/prefs/TTaps;->longTaps:[I

    aget v14, v14, v2

    invoke-virtual {v5, v4, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    move v2, v13

    goto :goto_16

    :cond_75
    const/4 v2, 0x0

    :goto_17
    const/4 v3, 0x4

    if-ge v2, v3, :cond_76

    .line 344
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->doubleSwipe:[I

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ds"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v2, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v14, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v14, v14, Lcom/neverland/prefs/TTaps;->doubleSwipe:[I

    aget v14, v14, v2

    invoke-virtual {v5, v4, v6, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    move v2, v13

    goto :goto_17

    .line 345
    :cond_76
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "sdt"

    iget v6, v2, Lcom/neverland/prefs/TTaps;->shortDoubleTap:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TTaps;->shortDoubleTap:I

    .line 346
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "ldt"

    iget v6, v2, Lcom/neverland/prefs/TTaps;->longDoubleTap:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TTaps;->longDoubleTap:I

    .line 347
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "stt"

    iget v6, v2, Lcom/neverland/prefs/TTaps;->thirdTap:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TTaps;->thirdTap:I

    .line 348
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "tapstatus"

    iget v6, v2, Lcom/neverland/prefs/TTaps;->status:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TTaps;->status:I

    .line 349
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "tapheader"

    iget v6, v2, Lcom/neverland/prefs/TTaps;->header:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TTaps;->header:I

    const/4 v2, 0x0

    :goto_18
    const/16 v3, 0xa

    if-ge v2, v3, :cond_78

    .line 350
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->quickPanel1:[I

    iget-object v5, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "qpan"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v13, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v13, v13, Lcom/neverland/prefs/TTaps;->quickPanel1:[I

    aget v13, v13, v2

    invoke-virtual {v5, v4, v6, v13}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    .line 351
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->quickPanel1:[I

    aget v3, v3, v2

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/neverland/viscomp/TTapCommand;->getCommandByInt(IZ)Lcom/neverland/utils/finit$ECOMMANDS;

    move-result-object v3

    sget-object v5, Lcom/neverland/utils/finit$ECOMMANDS;->command_nothins:Lcom/neverland/utils/finit$ECOMMANDS;

    if-ne v3, v5, :cond_77

    .line 352
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v3, v3, Lcom/neverland/prefs/TTaps;->quickPanel1:[I

    const/4 v5, 0x0

    aput v5, v3, v2

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 353
    :cond_78
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "meta0"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    invoke-virtual {v3, v12, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    .line 354
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "tile0"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    invoke-virtual {v3, v12, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    .line 355
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "bookshelf"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    invoke-virtual {v3, v12, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    .line 356
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "fb2styles"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->enableFB2CSS:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->enableFB2CSS:Z

    .line 357
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "fb2subtitles"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->enableFB2Subtitles:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->enableFB2Subtitles:Z

    .line 358
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "fb2allseries"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->enableFB2AllSeries:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->enableFB2AllSeries:Z

    .line 359
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "tables"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2Tables:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2Tables:Z

    .line 360
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssvm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2VMargin:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2VMargin:Z

    .line 361
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "csshm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2HMargin:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2HMargin:Z

    .line 362
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssindent"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2Indent:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2Indent:Z

    .line 363
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssjustify"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2Justify:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2Justify:Z

    .line 364
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssfontsize"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2FontSize:Z

    invoke-virtual {v3, v8, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssFB2FontSize:Z

    .line 365
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "tables"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBTables:Z

    invoke-virtual {v3, v11, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBTables:Z

    .line 366
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssdclr"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBDisColor:Z

    invoke-virtual {v3, v11, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBDisColor:Z

    .line 367
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssvm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBVMargin:Z

    invoke-virtual {v3, v11, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBVMargin:Z

    .line 368
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "csshm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBHMargin:Z

    invoke-virtual {v3, v11, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBHMargin:Z

    .line 369
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssindent"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBIndent:Z

    invoke-virtual {v3, v11, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBIndent:Z

    .line 370
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssjustify"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBJustify:Z

    invoke-virtual {v3, v11, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBJustify:Z

    .line 371
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssfontsize"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBFontSize:Z

    invoke-virtual {v3, v11, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssEPUBFontSize:Z

    .line 372
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "tables"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLTables:Z

    invoke-virtual {v3, v9, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLTables:Z

    .line 373
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssdclr"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLDisColor:Z

    invoke-virtual {v3, v9, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLDisColor:Z

    .line 374
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssvm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLVMargin:Z

    invoke-virtual {v3, v9, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLVMargin:Z

    .line 375
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "csshm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLHMargin:Z

    invoke-virtual {v3, v9, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLHMargin:Z

    .line 376
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssindent"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLIndent:Z

    invoke-virtual {v3, v9, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLIndent:Z

    .line 377
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssjustify"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLJustify:Z

    invoke-virtual {v3, v9, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLJustify:Z

    .line 378
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssfontsize"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLFontSize:Z

    invoke-virtual {v3, v9, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssHTMLFontSize:Z

    .line 379
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "tables"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMTables:Z

    move-object/from16 v6, v21

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMTables:Z

    .line 380
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssdclr"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMDisColor:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMDisColor:Z

    .line 381
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssvm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMVMargin:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMVMargin:Z

    .line 382
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "csshm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMHMargin:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMHMargin:Z

    .line 383
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssindent"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMIndent:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMIndent:Z

    .line 384
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssjustify"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMJustify:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMJustify:Z

    .line 385
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssfontsize"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMFontSize:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssCHMFontSize:Z

    .line 386
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "tables"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeTables:Z

    move-object/from16 v6, v20

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeTables:Z

    .line 387
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssvm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeVMargin:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeVMargin:Z

    .line 388
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "csshm"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeHMargin:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeHMargin:Z

    .line 389
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssindent"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeIndent:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeIndent:Z

    .line 390
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssjustify"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeJustify:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeJustify:Z

    .line 391
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "cssfontsize"

    iget-boolean v5, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeFontSize:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->cssOfficeFontSize:Z

    .line 392
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "BOOKS"

    const-string v5, "usetopfirst"

    iget-boolean v6, v2, Lcom/neverland/prefs/TBookCSS;->useTopMarginForFirstItem:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->useTopMarginForFirstItem:Z

    .line 393
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "BOOKS"

    const-string v5, "inversestyles"

    iget-boolean v6, v2, Lcom/neverland/prefs/TBookCSS;->enableInverseStyles:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->enableInverseStyles:Z

    .line 394
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "BOOKS"

    const-string v5, "preparedialog"

    iget v6, v2, Lcom/neverland/prefs/TBookCSS;->prepareDialog:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TBookCSS;->prepareDialog:I

    .line 395
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget v3, v2, Lcom/neverland/prefs/TBookCSS;->prepareDialog:I

    if-ltz v3, :cond_79

    const/4 v4, 0x2

    if-le v3, v4, :cond_7a

    :cond_79
    const/4 v3, 0x1

    .line 396
    iput v3, v2, Lcom/neverland/prefs/TBookCSS;->prepareDialog:I

    .line 397
    :cond_7a
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "BOOKS"

    const-string v5, "softhyph"

    iget-boolean v6, v2, Lcom/neverland/prefs/TBookCSS;->useSoftHyphen:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->useSoftHyphen:Z

    .line 398
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "BOOKS"

    const-string v5, "notesup"

    iget-boolean v6, v2, Lcom/neverland/prefs/TBookCSS;->notesUp:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TBookCSS;->notesUp:Z

    const/4 v2, 0x0

    :goto_19
    const/16 v3, 0xc

    if-ge v2, v3, :cond_7b

    .line 399
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "BOOKS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "style"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v4, v4, Lcom/neverland/prefs/TBookCSS;->arrStyles:[Lcom/neverland/prefs/TBookCSS$TOneStyles;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/neverland/prefs/TBookCSS;->setOneStylesFromString(Ljava/lang/String;Lcom/neverland/prefs/TBookCSS$TOneStyles;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 401
    :cond_7b
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "timerpin"

    iget-boolean v5, v2, Lcom/neverland/prefs/TOptions;->ttsTimerPinned:Z

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TOptions;->ttsTimerPinned:Z

    .line 402
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "speed"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    .line 403
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v2, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_7c

    const/16 v4, 0x190

    if-le v3, v4, :cond_7d

    :cond_7c
    const/16 v3, 0x64

    .line 404
    iput v3, v2, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    .line 405
    :cond_7d
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v3, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v2, v3}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 406
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v4, 0x0

    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    .line 407
    :cond_7e
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "time"

    iget v6, v3, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    .line 408
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    if-nez v4, :cond_7f

    goto :goto_1a

    :cond_7f
    const/4 v5, 0x5

    if-lt v4, v5, :cond_80

    const/16 v5, 0xb4

    if-le v4, v5, :cond_81

    :cond_80
    const/16 v4, 0x19

    .line 409
    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    .line 410
    :cond_81
    :goto_1a
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "pause"

    iget v6, v3, Lcom/neverland/prefs/TOptions;->ttsPause:I

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsPause:I

    .line 411
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->ttsPause:I

    if-ltz v4, :cond_82

    const/4 v5, 0x3

    if-le v4, v5, :cond_83

    :cond_82
    const/4 v4, 0x2

    .line 412
    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsPause:I

    .line 413
    :cond_83
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "pausetime"

    iget v6, v3, Lcom/neverland/prefs/TOptions;->ttsPauseTime:I

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsPauseTime:I

    .line 414
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->ttsPauseTime:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_84

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_85

    :cond_84
    const/16 v4, 0x1f4

    .line 415
    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsPause:I

    .line 416
    :cond_85
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "sel"

    iget v6, v3, Lcom/neverland/prefs/TOptions;->ttsSelectedAsStart1:I

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsSelectedAsStart1:I

    .line 417
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "simple"

    iget-boolean v6, v3, Lcom/neverland/prefs/TOptions;->ttsSimpleMenu:Z

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TOptions;->ttsSimpleMenu:Z

    .line 418
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "volctrl"

    iget-boolean v6, v3, Lcom/neverland/prefs/TOptions;->ttsVolumeControl:Z

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TOptions;->ttsVolumeControl:Z

    .line 419
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "notes"

    iget v6, v3, Lcom/neverland/prefs/TOptions;->ttsReadNotes:I

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsReadNotes:I

    .line 420
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "allpar"

    iget-boolean v6, v3, Lcom/neverland/prefs/TOptions;->ttsReadAllParagraph:Z

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TOptions;->ttsReadAllParagraph:Z

    .line 421
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "image"

    iget-boolean v6, v3, Lcom/neverland/prefs/TOptions;->ttsImage:Z

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TOptions;->ttsImage:Z

    .line 422
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "timerstop"

    iget-boolean v6, v3, Lcom/neverland/prefs/TOptions;->ttsStopAfterTimer:Z

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/neverland/prefs/TOptions;->ttsStopAfterTimer:Z

    .line 423
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "alarm"

    iget v6, v3, Lcom/neverland/prefs/TOptions;->ttsAlarm:I

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsAlarm:I

    .line 424
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "maxlen"

    iget v6, v3, Lcom/neverland/prefs/TOptions;->ttsMaxLen:I

    invoke-virtual {v4, v10, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/neverland/prefs/TOptions;->ttsMaxLen:I

    .line 425
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v2, v2, Lcom/neverland/utils/TCustomDevice;->supportAccelerometer:Z

    iput-boolean v2, v3, Lcom/neverland/prefs/TOptions;->ttsUseMotion:Z

    .line 426
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v5, "sensor"

    invoke-virtual {v4, v10, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/neverland/prefs/TOptions;->ttsUseMotion:Z

    .line 427
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "sensorvalue"

    const/4 v5, -0x1

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    iput-wide v3, v2, Lcom/neverland/prefs/TOptions;->ttsMotionValue:D

    .line 428
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-wide v3, v2, Lcom/neverland/prefs/TOptions;->ttsMotionValue:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/neverland/prefs/TOptions;->ttsMotionValue:D

    .line 429
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "swx"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->ttsSwipeX:I

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->ttsSwipeX:I

    .line 430
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "dswx"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->ttsDoubleSwipeX:I

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->ttsDoubleSwipeX:I

    .line 431
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "swy"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->ttsSwipeY:I

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->ttsSwipeY:I

    .line 432
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "dswx"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->ttsDoubleSwipeY:I

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->ttsDoubleSwipeY:I

    .line 433
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "bclght"

    iget-boolean v5, v2, Lcom/neverland/prefs/TOptions;->ttsKeepBacklight:Z

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TOptions;->ttsKeepBacklight:Z

    .line 434
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "volovr"

    iget-boolean v5, v2, Lcom/neverland/prefs/TOptions;->ttsVolumeAsTrack:Z

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TOptions;->ttsVolumeAsTrack:Z

    .line 435
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "zm"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->ttsZoom:I

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->ttsZoom:I

    .line 436
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "addbmk"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->ttsAddBMK:I

    invoke-virtual {v3, v10, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->ttsAddBMK:I

    .line 437
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "firstletter"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->libraryUseFirstLetter:I

    move-object/from16 v6, v19

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->libraryUseFirstLetter:I

    .line 438
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v2, Lcom/neverland/prefs/TOptions;->libraryUseFirstLetter:I

    if-ltz v3, :cond_86

    const/4 v4, 0x3

    if-le v3, v4, :cond_87

    :cond_86
    const/4 v3, 0x1

    .line 439
    iput v3, v2, Lcom/neverland/prefs/TOptions;->libraryUseFirstLetter:I

    .line 440
    :cond_87
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "usepath"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->libraryPath:I

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->libraryPath:I

    .line 441
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v2, Lcom/neverland/prefs/TOptions;->libraryPath:I

    const/4 v4, 0x7

    and-int/2addr v3, v4

    iput v3, v2, Lcom/neverland/prefs/TOptions;->libraryPath:I

    .line 442
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-nez v3, :cond_88

    const/4 v3, 0x1

    .line 443
    iput-boolean v3, v2, Lcom/neverland/prefs/TOptions;->libraryUseNoMedia:Z

    .line 444
    :cond_88
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "nomedia"

    iget-boolean v5, v2, Lcom/neverland/prefs/TOptions;->libraryUseNoMedia:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TOptions;->libraryUseNoMedia:Z

    .line 445
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "aliases"

    iget-boolean v5, v2, Lcom/neverland/prefs/TOptions;->libraryUseAliases:Z

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TOptions;->libraryUseAliases:Z

    .line 446
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "opdsfavor"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->opdsDownload2Favor:I

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->opdsDownload2Favor:I

    .line 447
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v2, Lcom/neverland/prefs/TOptions;->opdsDownload2Favor:I

    if-ltz v3, :cond_89

    const/4 v4, 0x6

    if-le v3, v4, :cond_8a

    :cond_89
    const/4 v3, 0x1

    .line 448
    iput v3, v2, Lcom/neverland/prefs/TOptions;->opdsDownload2Favor:I

    .line 449
    :cond_8a
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "pagelimit"

    iget v5, v2, Lcom/neverland/prefs/TOptions;->libraryBookListPageLimit:I

    invoke-virtual {v3, v6, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->libraryBookListPageLimit:I

    .line 450
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v2, Lcom/neverland/prefs/TOptions;->libraryBookListPageLimit:I

    const/16 v4, 0x19

    if-ge v3, v4, :cond_8b

    .line 451
    iput v4, v2, Lcom/neverland/prefs/TOptions;->libraryBookListPageLimit:I

    .line 452
    :cond_8b
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "ctpath"

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/neverland/prefs/TPref;->str2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    invoke-direct {v1, v2}, Lcom/neverland/prefs/TPref;->hex2str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    .line 454
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8d

    .line 455
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 457
    :cond_8c
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    goto :goto_1b

    .line 458
    :cond_8d
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    .line 459
    :cond_8e
    :goto_1b
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v2, Lcom/neverland/prefs/TOptions;->libraryPath:I

    const/4 v4, 0x7

    and-int/2addr v3, v4

    iput v3, v2, Lcom/neverland/prefs/TOptions;->libraryPath:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_8f

    iget-object v3, v2, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    if-nez v3, :cond_8f

    const/4 v3, 0x0

    .line 460
    iput v3, v2, Lcom/neverland/prefs/TOptions;->libraryPath:I

    .line 461
    :cond_8f
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v4, "dlpath"

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/neverland/prefs/TPref;->str2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    invoke-direct {v1, v2}, Lcom/neverland/prefs/TPref;->hex2str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    .line 463
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    if-eqz v2, :cond_91

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_91

    .line 464
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_92

    .line 466
    :cond_90
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    goto :goto_1c

    .line 467
    :cond_91
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    :cond_92
    :goto_1c
    if-eqz v0, :cond_94

    const-string v2, "ru"

    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string v2, "be"

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string v2, "uk"

    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string v2, "bg"

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string v2, "sr"

    .line 472
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 473
    :cond_93
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/neverland/prefs/TOptions;->libraryCyrillicFirst:Z

    .line 474
    :cond_94
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "cyrfirst"

    iget-boolean v4, v0, Lcom/neverland/prefs/TOptions;->libraryCyrillicFirst:Z

    invoke-virtual {v2, v6, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TOptions;->libraryCyrillicFirst:Z

    .line 475
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v3, "usenick"

    iget-boolean v4, v0, Lcom/neverland/prefs/TOptions;->libraryUseAuthorNick:Z

    invoke-virtual {v2, v6, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/neverland/prefs/TOptions;->libraryUseAuthorNick:Z

    .line 476
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "FAVORITES"

    const-string v3, "category1"

    invoke-virtual {v0, v2, v3, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_95

    .line 478
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 479
    :cond_95
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "FAVORITES"

    const-string v3, "category2"

    invoke-virtual {v0, v2, v3, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_96

    .line 481
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 482
    :cond_96
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "FAVORITES"

    const-string v3, "category3"

    invoke-virtual {v0, v2, v3, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 483
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_97

    .line 484
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 485
    :cond_97
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "FAVORITES"

    const-string v3, "category4"

    invoke-virtual {v0, v2, v3, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_98

    .line 487
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 488
    :cond_98
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "FAVORITES"

    const-string v3, "category5"

    invoke-virtual {v0, v2, v3, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 489
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_99

    .line 490
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 491
    :cond_99
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    const-string v2, "FAVORITES"

    const-string v3, "category6"

    invoke-virtual {v0, v2, v3, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9a

    .line 493
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v0, v2, v3

    :cond_9a
    const/4 v2, 0x0

    :goto_1d
    const/4 v0, 0x6

    if-ge v2, v0, :cond_9c

    .line 494
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v3, v0, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_9b

    const/4 v3, 0x0

    .line 495
    iput-boolean v3, v0, Lcom/neverland/prefs/TOptions;->favorIsDefault:Z

    goto :goto_1e

    :cond_9b
    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 496
    :cond_9c
    :goto_1e
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    invoke-direct {v1, v0}, Lcom/neverland/prefs/TPref;->loadProfile(Lcom/neverland/utils/TMemIniFile2;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1f

    .line 497
    :catch_5
    invoke-direct/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->unlock()Z

    :cond_9d
    :goto_1f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x300 -> :sswitch_0
        0x400 -> :sswitch_0
        0x500 -> :sswitch_0
        0x600 -> :sswitch_0
        0x686 -> :sswitch_0
        0x744 -> :sswitch_0
        0x800 -> :sswitch_0
        0x924 -> :sswitch_0
        0xc00 -> :sswitch_0
        0xd5c -> :sswitch_0
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadDefaultColors()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v3, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const v6, 0x606060

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v2, v3, :cond_0

    .line 2
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v10, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v12, v11, v9

    iget-object v12, v12, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v13, v11, v9

    iget-object v13, v13, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v14, v11, v9

    iget-object v14, v14, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v15, v11, v9

    iget-object v15, v15, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v4, v11, v9

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v7, v11, v9

    iget-object v7, v7, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const v5, 0x202020

    iput v5, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    iput v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    iput v5, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    iput v5, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    iput v5, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    iput v5, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 3
    aget-object v4, v11, v9

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const v5, 0xefefdf

    iput v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 4
    aget-object v4, v11, v9

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/16 v5, 0x24f4

    iput v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 5
    aget-object v4, v11, v9

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const v5, 0xff5722

    iput v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 6
    aget-object v4, v11, v9

    iput v6, v4, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    .line 7
    aget-object v4, v11, v9

    const v6, 0xefefef

    iput v6, v4, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    .line 8
    aget-object v4, v11, v9

    const v7, 0x4992b6

    iput v7, v4, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    .line 9
    aget-object v4, v11, v8

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v7, v11, v8

    iget-object v7, v7, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v12, v11, v8

    iget-object v12, v12, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v13, v11, v8

    iget-object v13, v13, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v14, v11, v8

    iget-object v14, v14, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v15, v11, v8

    iget-object v15, v15, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v6, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    iput v6, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    iput v6, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    iput v6, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    iput v6, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    iput v6, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 10
    aget-object v4, v11, v8

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v9, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 11
    aget-object v4, v11, v8

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const v6, 0x80cbf3

    iput v6, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 12
    aget-object v4, v11, v8

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 13
    aget-object v4, v11, v8

    const v5, 0xb0b0b0

    iput v5, v4, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    .line 14
    aget-object v4, v11, v8

    iput v9, v4, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    .line 15
    aget-object v4, v11, v8

    const v5, 0xe0c7

    iput v5, v4, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    .line 16
    iget-object v4, v10, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    const v5, 0x90a4ae

    aput v5, v4, v9

    const v5, 0x39be5

    .line 17
    aput v5, v4, v8

    const v5, 0xe53935

    const/4 v6, 0x2

    .line 18
    aput v5, v4, v6

    const v5, 0xfdd835

    const/4 v6, 0x3

    .line 19
    aput v5, v4, v6

    const v5, 0x43a047

    const/4 v6, 0x4

    .line 20
    aput v5, v4, v6

    goto/16 :goto_0

    .line 21
    :cond_0
    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devOnyxColor:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const v7, 0xffffff

    if-ne v2, v4, :cond_1

    .line 22
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v6, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v10, v6, v9

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v11, v6, v9

    iget-object v11, v11, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v12, v6, v9

    iget-object v12, v12, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v13, v6, v9

    iget-object v13, v13, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v14, v6, v9

    iget-object v14, v14, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v15, v6, v9

    iget-object v15, v15, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v9, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    iput v9, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    iput v9, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    iput v9, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    iput v9, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    iput v9, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 23
    aget-object v10, v6, v9

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v7, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 24
    aget-object v10, v6, v9

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/16 v11, 0xff

    iput v11, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 25
    aget-object v10, v6, v9

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v9, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 26
    aget-object v10, v6, v9

    iput v9, v10, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    .line 27
    aget-object v10, v6, v9

    iput v7, v10, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    .line 28
    aget-object v10, v6, v9

    iput v9, v10, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    .line 29
    aget-object v10, v6, v8

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v12, v6, v8

    iget-object v12, v12, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v13, v6, v8

    iget-object v13, v13, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v14, v6, v8

    iget-object v14, v14, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v15, v6, v8

    iget-object v15, v15, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v5, v6, v8

    iget-object v5, v5, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v7, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    iput v7, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    iput v7, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    iput v7, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    iput v7, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    iput v7, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 30
    aget-object v5, v6, v8

    iget-object v5, v5, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v9, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 31
    aget-object v5, v6, v8

    iget-object v5, v5, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v11, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 32
    aget-object v5, v6, v8

    iget-object v5, v5, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v7, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 33
    aget-object v5, v6, v8

    iput v7, v5, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    .line 34
    aget-object v5, v6, v8

    iput v9, v5, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    .line 35
    aget-object v5, v6, v8

    iput v7, v5, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    .line 36
    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    const v5, 0xc0c0c0

    aput v5, v4, v9

    .line 37
    aput v5, v4, v8

    const v5, 0xff8080

    const/4 v6, 0x2

    .line 38
    aput v5, v4, v6

    const v5, 0xffff80

    const/4 v6, 0x3

    .line 39
    aput v5, v4, v6

    const v5, 0xff00

    const/4 v6, 0x4

    .line 40
    aput v5, v4, v6

    goto/16 :goto_0

    .line 41
    :cond_1
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v5, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v10, v5, v9

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v11, v5, v9

    iget-object v11, v11, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v12, v5, v9

    iget-object v12, v12, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v13, v5, v9

    iget-object v13, v13, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v14, v5, v9

    iget-object v14, v14, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v15, v5, v9

    iget-object v15, v15, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v9, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    iput v9, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    iput v9, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    iput v9, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    iput v9, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    iput v9, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 42
    aget-object v10, v5, v9

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v7, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 43
    aget-object v10, v5, v9

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const v11, 0x404040

    iput v11, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 44
    aget-object v10, v5, v9

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v9, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 45
    aget-object v10, v5, v9

    iput v9, v10, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    .line 46
    aget-object v10, v5, v9

    iput v7, v10, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    .line 47
    aget-object v10, v5, v9

    iput v9, v10, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    .line 48
    aget-object v10, v5, v8

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v11, v5, v8

    iget-object v11, v11, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v12, v5, v8

    iget-object v12, v12, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v13, v5, v8

    iget-object v13, v13, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v14, v5, v8

    iget-object v14, v14, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v15, v5, v8

    iget-object v15, v15, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v7, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    iput v7, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    iput v7, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    iput v7, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    iput v7, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    iput v7, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 49
    aget-object v10, v5, v8

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v9, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 50
    aget-object v10, v5, v8

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const v11, 0xc0c0c0

    iput v11, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 51
    aget-object v10, v5, v8

    iget-object v10, v10, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v7, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 52
    aget-object v10, v5, v8

    iput v7, v10, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    .line 53
    aget-object v10, v5, v8

    iput v9, v10, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    .line 54
    aget-object v5, v5, v8

    iput v7, v5, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    .line 55
    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    const v5, 0x808080

    aput v5, v4, v9

    .line 56
    aput v6, v4, v8

    const/4 v5, 0x2

    .line 57
    aput v6, v4, v5

    const v5, 0xa0a0a0

    const/4 v6, 0x3

    .line 58
    aput v5, v4, v6

    const/4 v5, 0x4

    const v6, 0xc0c0c0

    .line 59
    aput v6, v4, v5

    .line 60
    :goto_0
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v5, v4, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    const/4 v6, 0x5

    const/16 v7, 0x80

    aput v7, v5, v6

    .line 61
    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 62
    iget-object v1, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v1, v9

    iput-object v6, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    .line 63
    aget-object v1, v1, v9

    iput-object v6, v1, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/16 v4, 0x17

    if-ne v2, v3, :cond_3

    .line 64
    sget-object v2, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v5, 0x7f050003

    .line 65
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    .line 66
    iget-object v1, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v1, v9

    const-string v3, "DefaultDay_OnePage.png"

    iput-object v3, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    .line 67
    aget-object v1, v1, v9

    const-string v2, "DefaultDay_TwoPages.png"

    iput-object v2, v1, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    goto :goto_1

    .line 68
    :cond_3
    iget-object v1, v1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v1, v3, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_4

    .line 69
    iget-object v1, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v1, v9

    const-string v3, "SimpleDay_texture.png"

    iput-object v3, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    .line 70
    aget-object v1, v1, v9

    iput-object v3, v1, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    goto :goto_1

    .line 71
    :cond_4
    iget-object v1, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v1, v9

    iput-object v6, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    .line 72
    aget-object v1, v1, v9

    iput-object v6, v1, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    .line 73
    :goto_1
    iget-object v1, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v1, v9

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/4 v3, 0x3

    iput v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    .line 74
    aget-object v2, v1, v8

    iput-object v6, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    .line 75
    aget-object v2, v1, v8

    iput-object v6, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    .line 76
    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput v3, v1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    return-void
.end method

.method private loadDefaultProfile()V
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->appUseLocale()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v4, Ljava/util/Locale;

    const-string v5, "ru"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Locale;

    const-string v5, "uk"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Locale;

    const-string v5, "bg"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Locale;

    const-string v5, "be"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Locale;

    const-string v5, "en"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    sget-boolean v4, Lcom/neverland/mainApp;->f:Z

    const-string v5, "Monospace"

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const-string v10, "Philosopher"

    const-string v11, "Inglobal"

    const/4 v12, 0x3

    const/4 v13, 0x2

    const-string v14, "PT Serif"

    if-eqz v4, :cond_3

    .line 9
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v15, v4, v3

    iget-object v15, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v5, v15, v2

    if-eqz v0, :cond_2

    .line 10
    aget-object v15, v4, v3

    iget-object v15, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v11, v15, v3

    .line 11
    aget-object v15, v4, v3

    iget-object v15, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v10, v15, v13

    .line 12
    aget-object v15, v4, v3

    iget-object v15, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v10, v15, v12

    goto :goto_1

    .line 13
    :cond_2
    aget-object v15, v4, v3

    iget-object v15, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v15, v3

    .line 14
    aget-object v15, v4, v3

    iget-object v15, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v2, v4, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v15, v13

    .line 15
    aget-object v2, v4, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v15, v4, v3

    iget-object v15, v15, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v15, v15, v3

    aput-object v15, v2, v12

    .line 16
    :goto_1
    aget-object v2, v4, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v2, v9

    .line 17
    aget-object v2, v4, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v2, v8

    .line 18
    aget-object v2, v4, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v2, v7

    .line 19
    aget-object v2, v4, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v2, v6

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    .line 20
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v11, v2, v3

    goto :goto_2

    .line 21
    :cond_4
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v2, v3

    .line 22
    :goto_2
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput-object v15, v4, v16

    .line 23
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v15, v4, v13

    .line 24
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v15, v4, v12

    .line 25
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v15, v4, v9

    .line 26
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v15, v4, v8

    .line 27
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v15, v4, v7

    .line 28
    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v15, v2, v6

    :goto_3
    const/4 v2, 0x0

    :goto_4
    const/16 v4, 0x8

    const/16 v15, 0x64

    if-ge v2, v4, :cond_5

    .line 29
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v6, v4, v3

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_bolds:[Z

    aput-boolean v3, v6, v2

    .line 30
    aget-object v6, v4, v3

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_italics:[Z

    aput-boolean v3, v6, v2

    .line 31
    aget-object v6, v4, v3

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    const/16 v18, 0xa

    aput v18, v6, v2

    .line 32
    aget-object v6, v4, v3

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_widths:[I

    aput v15, v6, v2

    .line 33
    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_weight:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x7

    goto :goto_4

    .line 34
    :cond_5
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    sget-object v6, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v15, 0x7f0b0009

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v19, 0x41900000    # 18.0f

    mul-float v6, v6, v19

    const/high16 v20, 0x41200000    # 10.0f

    div-float v6, v6, v20

    float-to-int v6, v6

    int-to-float v6, v6

    aput v6, v2, v3

    .line 35
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    sget-object v15, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v2, v2, v3

    invoke-virtual {v15, v2}, Lcom/neverland/utils/TCustomDevice;->correctFontSize(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v6, v3

    .line 36
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v17, 0x1

    aput v15, v6, v17

    .line 37
    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    const/high16 v21, 0x42c80000    # 100.0f

    aput v21, v6, v13

    .line 38
    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    const/high16 v22, 0x42ac0000    # 86.0f

    aput v22, v6, v12

    .line 39
    aget-object v6, v2, v3

    const/16 v15, 0x41

    iput v15, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->notes_size:I

    .line 40
    aget-object v6, v2, v3

    iput v3, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    .line 41
    aget-object v6, v2, v3

    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->cleartype:Z

    .line 42
    sget-boolean v6, Lcom/neverland/mainApp;->f:Z

    if-eqz v6, :cond_7

    .line 43
    aget-object v6, v2, v15

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v5, v6, v15

    if-eqz v0, :cond_6

    .line 44
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v11, v0, v3

    .line 45
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v10, v0, v13

    .line 46
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v10, v0, v12

    goto :goto_5

    .line 47
    :cond_6
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    const-string v5, "Serif"

    aput-object v5, v0, v3

    .line 48
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v5, v2, v15

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v5, v5, v3

    aput-object v5, v0, v13

    .line 49
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v5, v2, v15

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v5, v5, v3

    aput-object v5, v0, v12

    .line 50
    :goto_5
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v0, v9

    .line 51
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v0, v8

    .line 52
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v0, v7

    .line 53
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v14, v0, v2

    goto :goto_7

    :cond_7
    if-eqz v0, :cond_8

    .line 54
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v11, v0, v3

    goto :goto_6

    .line 55
    :cond_8
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v14, v0, v3

    .line 56
    :goto_6
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v0, v15

    .line 57
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v5, v0, v13

    .line 58
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v5, v0, v12

    .line 59
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v5, v0, v9

    .line 60
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v5, v0, v8

    .line 61
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v5, v0, v7

    .line 62
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v5, v0, v2

    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v4, :cond_9

    .line 63
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v5, v2, v15

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_bolds:[Z

    aput-boolean v3, v5, v0

    .line 64
    aget-object v5, v2, v15

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_italics:[Z

    aput-boolean v3, v5, v0

    .line 65
    aget-object v5, v2, v15

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    const/16 v6, 0xa

    aput v6, v5, v0

    .line 66
    aget-object v5, v2, v15

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_widths:[I

    const/16 v6, 0x64

    aput v6, v5, v0

    .line 67
    aget-object v2, v2, v15

    iget-object v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_weight:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 68
    :cond_9
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v0, v0, v15

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    sget-object v2, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v4, 0x7f0b0009

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v19

    div-float v2, v2, v20

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v3

    .line 69
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v2, 0x1

    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    sget-object v5, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v0, v0, v3

    invoke-virtual {v5, v0}, Lcom/neverland/utils/TCustomDevice;->correctFontSize(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    aput v0, v4, v3

    .line 70
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v0, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    const/high16 v6, 0x42b40000    # 90.0f

    aput v6, v5, v2

    .line 71
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aput v21, v5, v13

    .line 72
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aput v22, v5, v12

    .line 73
    aget-object v5, v4, v2

    const/16 v6, 0x41

    iput v6, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->notes_size:I

    .line 74
    aget-object v5, v4, v2

    iput v3, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    .line 75
    aget-object v4, v4, v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->cleartype:Z

    .line 76
    iget-object v2, v0, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    const/16 v4, 0x64

    iput v4, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->emptyLineHeight1:I

    .line 77
    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v0, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v5, v0, v3

    iget-object v5, v5, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v6, v0, v3

    iget-object v6, v6, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-boolean v3, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    iput-boolean v3, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    iput-boolean v3, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    iput-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    const/4 v2, 0x1

    .line 78
    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v5, v0, v2

    iget-object v5, v5, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v6, v0, v2

    iget-object v6, v6, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-boolean v3, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    iput-boolean v3, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    iput-boolean v3, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    iput-boolean v3, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->loadDefaultColors()V

    .line 80
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v0, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    sget-boolean v5, Lcom/neverland/mainApp;->f:Z

    iput-boolean v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->sectionNewScreen:Z

    .line 81
    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->twoColumn:Z

    const/16 v6, 0x14

    .line 82
    iput v6, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->paragraphSpacing:I

    .line 83
    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->justify:Z

    .line 84
    iput-boolean v5, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->verticalAlign:Z

    .line 85
    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v0, v0, v3

    sget-object v2, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v4, 0x7f0700da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    .line 86
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v0, v3

    aget-object v4, v0, v3

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    iput v4, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    .line 87
    aget-object v0, v0, v3

    sget-object v2, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v4, 0x7f0702bc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    .line 88
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v0, v3

    aget-object v3, v0, v3

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    iput v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    const/4 v2, 0x1

    .line 89
    aget-object v0, v0, v2

    sget-object v3, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v4, 0x7f0700da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    .line 90
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v3, v0, v2

    aget-object v4, v0, v2

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    iput v4, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    .line 91
    aget-object v0, v0, v2

    sget-object v3, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v4, 0x7f0702bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    .line 92
    iget-object v0, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v3, v0, v2

    aget-object v0, v0, v2

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    iput v0, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    return-void
.end method

.method private loadProfile(Lcom/neverland/utils/TMemIniFile2;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const-string v5, "clockut"

    const-string v7, "DAY"

    const-string v8, "NIGHT"

    const/4 v10, 0x0

    if-ne v3, v4, :cond_8

    .line 2
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v3, v10

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    const-string v11, "colortext"

    invoke-virtual {v1, v7, v11, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 3
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v3, v10

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    const-string v12, "colorbg"

    invoke-virtual {v1, v7, v12, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 4
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v3, v10

    aget-object v3, v3, v10

    iget v3, v3, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    const-string v13, "colorstatus"

    invoke-virtual {v1, v7, v13, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    .line 5
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v3, v10

    aget-object v3, v3, v10

    iget v3, v3, Lcom/neverland/prefs/TProfileColors;->overrideColorStatusBack:I

    const-string v14, "ovrstatusback"

    invoke-virtual {v1, v7, v14, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/neverland/prefs/TProfileColors;->overrideColorStatusBack:I

    .line 6
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v3, v10

    aget-object v3, v3, v10

    iget v3, v3, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    const-string v15, "colorstatusback"

    invoke-virtual {v1, v7, v15, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    .line 7
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v3, v10

    aget-object v3, v3, v10

    iget v3, v3, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    const-string v6, "colorline"

    invoke-virtual {v1, v7, v6, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    .line 8
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v3, v10

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    const-string v9, "colorcustom1"

    invoke-virtual {v1, v7, v9, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    .line 9
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v3, v10

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    const-string v10, "colorcustom2"

    invoke-virtual {v1, v7, v10, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    .line 10
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    move-object/from16 v17, v2

    const/4 v4, 0x0

    aget-object v2, v3, v4

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    const-string v4, "colorcustom3"

    invoke-virtual {v1, v7, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    .line 11
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    move-object/from16 v18, v4

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    const-string v3, "colorcustom4"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    .line 12
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    move-object/from16 v19, v3

    const/4 v4, 0x0

    aget-object v3, v2, v4

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    const-string v4, "ovrbold"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    .line 13
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    move-object/from16 v20, v4

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    const-string v3, "ovritalic"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    .line 14
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    move-object/from16 v21, v3

    const/4 v4, 0x0

    aget-object v3, v2, v4

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    const-string v4, "ovrbolditalic"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    .line 15
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    const-string v3, "ovrcode"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    .line 16
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    const-string v4, "bgname"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v4, v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    iput-object v2, v4, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    .line 18
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    const-string v4, "bgnametwopage"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v4, v3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    iput-object v2, v4, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    .line 20
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    const-string v3, "bgtype"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    .line 21
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    invoke-virtual {v1, v7, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    .line 22
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    invoke-virtual {v1, v8, v11, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 23
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    invoke-virtual {v1, v8, v12, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 24
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    invoke-virtual {v1, v8, v13, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    .line 25
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->overrideColorStatusBack:I

    invoke-virtual {v1, v8, v14, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/prefs/TProfileColors;->overrideColorStatusBack:I

    .line 26
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    invoke-virtual {v1, v8, v15, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    .line 27
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    .line 28
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    invoke-virtual {v1, v8, v9, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    .line 29
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    invoke-virtual {v1, v8, v10, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    .line 30
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    move-object/from16 v6, v18

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    .line 31
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    move-object/from16 v6, v19

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    .line 32
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    move-object/from16 v6, v20

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    .line 33
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    move-object/from16 v6, v21

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    .line 34
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    const-string v6, "ovrbolditalic"

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    .line 35
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    const-string v6, "ovrcode"

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    .line 36
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    const-string v4, "bgname"

    invoke-virtual {v1, v8, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v4, v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const/4 v2, 0x0

    :cond_5
    iput-object v2, v4, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    .line 38
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    const-string v4, "bgnametwopage"

    invoke-virtual {v1, v8, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v4, v3

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    const/4 v2, 0x0

    :cond_7
    iput-object v2, v4, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    .line 40
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    const-string v6, "bgtype"

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    .line 41
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    goto :goto_0

    :cond_8
    move-object/from16 v17, v2

    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->loadDefaultColors()V

    .line 43
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    invoke-virtual {v1, v7, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    .line 44
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    .line 45
    :goto_0
    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_mono:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_old:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 46
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    const-string v5, "colorfletter"

    invoke-virtual {v1, v7, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 47
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    const-string v5, "colortitle"

    invoke-virtual {v1, v7, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    .line 48
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    const-string v3, "colorlink"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 49
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    const-string v5, "colorfletter"

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 50
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    const-string v5, "colortitle"

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    .line 51
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    const-string v3, "colorlink"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 52
    :cond_9
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v4, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v5, 0x7f0b0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v2, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    .line 53
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    const-string v4, "autoscrolltime"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xbb8

    if-lt v2, v4, :cond_a

    const v4, 0x1d4c0

    if-gt v2, v4, :cond_a

    .line 54
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v4, v3

    iput v2, v4, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    .line 55
    :cond_a
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v4, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v5, 0x7f0b0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v2, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    .line 56
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    const-string v4, "autoscrolltime"

    invoke-virtual {v1, v8, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xbb8

    if-lt v2, v4, :cond_b

    const v4, 0x1d4c0

    if-gt v2, v4, :cond_b

    .line 57
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v4, v3

    iput v2, v4, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    .line 58
    :cond_b
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->emptyLineHeight1:I

    const-string v4, "PROFILE"

    const-string v5, "heightemptyline"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->emptyLineHeight1:I

    .line 59
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    goto :goto_1

    :cond_c
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    const-string v6, "fontsize"

    const/4 v7, 0x3

    const/4 v9, 0x2

    if-ge v3, v2, :cond_15

    if-nez v3, :cond_d

    const-string v5, ""

    goto :goto_3

    :cond_d
    const/4 v10, 0x1

    if-ne v3, v10, :cond_e

    const-string v5, "mono"

    goto :goto_3

    :cond_e
    if-ne v3, v9, :cond_f

    const-string v5, "title"

    goto :goto_3

    :cond_f
    if-ne v3, v7, :cond_10

    const-string v5, "fletter"

    goto :goto_3

    :cond_10
    if-le v3, v7, :cond_11

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    :cond_11
    :goto_3
    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_bolds:[Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fontbold"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v12, v12, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v12, v12, v10

    iget-object v12, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_bolds:[Z

    aget-boolean v12, v12, v3

    invoke-virtual {v1, v4, v11, v12}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    aput-boolean v11, v9, v3

    .line 62
    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_italics:[Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fontitalic"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v12, v12, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v12, v12, v10

    iget-object v12, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_italics:[Z

    aget-boolean v12, v12, v3

    invoke-virtual {v1, v4, v11, v12}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    aput-boolean v11, v9, v3

    .line 63
    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_widths:[I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fontwidth"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v12, v12, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v12, v12, v10

    iget-object v12, v12, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_widths:[I

    aget v12, v12, v3

    invoke-virtual {v1, v4, v11, v12}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    aput v11, v9, v3

    if-eq v3, v7, :cond_12

    .line 64
    iget-object v7, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v7, v7, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interline"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v11, v11, v10

    iget-object v10, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    aget v10, v10, v3

    invoke-virtual {v1, v4, v9, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    aput v9, v7, v3

    .line 65
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fontname"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v1, v4, v7, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v9, v3

    .line 67
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_13

    .line 68
    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v7, v9, v3

    :cond_13
    if-nez v3, :cond_14

    .line 69
    iget-object v7, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v7, v7, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v6, v7}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    iget-object v7, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v7, v7, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v7, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v7, v7, v3

    invoke-static {v6, v7}, Lcom/neverland/utils/finit;->customStringToFloat(Ljava/lang/String;F)F

    move-result v6

    aput v6, v9, v3

    goto :goto_4

    .line 71
    :cond_14
    iget-object v7, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v7, v7, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v9, v9, v3

    float-to-int v9, v9

    .line 72
    invoke-virtual {v1, v4, v6, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v7, v3

    .line 73
    :goto_4
    iget-object v6, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v6, v6, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_weight:[I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fontweight"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_weight:[I

    aget v9, v9, v3

    invoke-virtual {v1, v4, v7, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v3

    .line 74
    iget-object v6, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v6, v6, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_letterspacing:[I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fontletspace"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_letterspacing:[I

    aget v9, v9, v3

    invoke-virtual {v1, v4, v7, v9}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_15
    const/4 v10, 0x0

    .line 75
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v11, v3, v10

    iget-object v11, v11, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusTopMargin:I

    const-string v12, "statustop"

    invoke-virtual {v1, v4, v12, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusTopMargin:I

    .line 76
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v11, v3, v10

    iget-object v11, v11, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusBottomMargin:I

    const-string v12, "statusbottom"

    invoke-virtual {v1, v4, v12, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusBottomMargin:I

    .line 77
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v11, v3, v10

    aget-object v3, v3, v10

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    const-string v12, "fontspacewidth"

    invoke-virtual {v1, v4, v12, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    .line 78
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v11, v3, v10

    iget v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    const/4 v12, 0x5

    if-lt v11, v12, :cond_16

    aget-object v11, v3, v10

    iget v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    const/16 v12, 0xc

    if-le v11, v12, :cond_17

    .line 79
    :cond_16
    aget-object v11, v3, v10

    const/16 v12, 0xa

    iput v12, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    .line 80
    :cond_17
    aget-object v11, v3, v10

    aget-object v3, v3, v10

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    const-string v12, "fontshiftfleta"

    invoke-virtual {v1, v4, v12, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    .line 81
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v11, v3, v10

    aget-object v3, v3, v10

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->notes_size:I

    const-string v12, "fontsizenotes"

    invoke-virtual {v1, v4, v12, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->notes_size:I

    .line 82
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v11, v3, v10

    aget-object v3, v3, v10

    iget-boolean v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->cleartype:Z

    const-string v10, "fontcleartype"

    invoke-virtual {v1, v4, v10, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->cleartype:Z

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_20

    if-nez v3, :cond_18

    const-string v5, ""

    goto :goto_6

    :cond_18
    const/4 v10, 0x1

    if-ne v3, v10, :cond_19

    const-string v5, "mono"

    goto :goto_6

    :cond_19
    if-ne v3, v9, :cond_1a

    const-string v5, "title"

    goto :goto_6

    :cond_1a
    if-ne v3, v7, :cond_1b

    const-string v5, "fletter"

    goto :goto_6

    :cond_1b
    if-le v3, v7, :cond_1c

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    :cond_1c
    :goto_6
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_bolds:[Z

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fontbold"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v13, v13, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v13, v13, v11

    iget-object v13, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_bolds:[Z

    aget-boolean v13, v13, v3

    invoke-virtual {v1, v8, v12, v13}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    aput-boolean v12, v10, v3

    .line 85
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_italics:[Z

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fontitalic"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v13, v13, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v13, v13, v11

    iget-object v13, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_italics:[Z

    aget-boolean v13, v13, v3

    invoke-virtual {v1, v8, v12, v13}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    aput-boolean v12, v10, v3

    .line 86
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_widths:[I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fontwidth"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v13, v13, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v13, v13, v11

    iget-object v13, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_widths:[I

    aget v13, v13, v3

    invoke-virtual {v1, v8, v12, v13}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    aput v12, v10, v3

    if-eq v3, v7, :cond_1d

    .line 87
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "interline"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v13, v13, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v13, v13, v11

    iget-object v11, v13, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    aget v11, v11, v3

    invoke-virtual {v1, v8, v12, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    aput v11, v10, v3

    .line 88
    :cond_1d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fontname"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v1, v8, v10, v11}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v13, v11, v3

    .line 90
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1e

    .line 91
    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aput-object v10, v11, v3

    :cond_1e
    if-nez v3, :cond_1f

    .line 92
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v10, v10, v12

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v10, v10, v3

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v6, v10}, Lcom/neverland/utils/TMemIniFile2;->ReadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 93
    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v14, v11, v12

    iget-object v14, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v11, v11, v3

    invoke-static {v10, v11}, Lcom/neverland/utils/finit;->customStringToFloat(Ljava/lang/String;F)F

    move-result v10

    aput v10, v14, v3

    goto :goto_7

    .line 94
    :cond_1f
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v10, v10, v12

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v14, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v14, v14, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v14, v14, v3

    float-to-int v14, v14

    .line 95
    invoke-virtual {v1, v8, v11, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v10, v3

    .line 96
    :goto_7
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v10, v10, v12

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_weight:[I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fontweight"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v14, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v14, v14, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_weight:[I

    aget v14, v14, v3

    invoke-virtual {v1, v8, v11, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    aput v11, v10, v3

    .line 97
    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v10, v10, v12

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_letterspacing:[I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fontletspace"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v14, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v14, v14, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_letterspacing:[I

    aget v14, v14, v3

    invoke-virtual {v1, v8, v11, v14}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    aput v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_20
    const/4 v12, 0x1

    .line 98
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v2, v12

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusTopMargin:I

    const-string v5, "statustop"

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusTopMargin:I

    .line 99
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v2, v12

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusBottomMargin:I

    const-string v5, "statusbottom"

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusBottomMargin:I

    .line 100
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v3, v2, v12

    aget-object v2, v2, v12

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    const-string v5, "fontspacewidth"

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    .line 101
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v3, v2, v12

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    const/4 v5, 0x5

    if-lt v3, v5, :cond_21

    aget-object v3, v2, v12

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    const/16 v5, 0xc

    if-le v3, v5, :cond_22

    .line 102
    :cond_21
    aget-object v3, v2, v12

    const/16 v5, 0xa

    iput v5, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    .line 103
    :cond_22
    aget-object v3, v2, v12

    aget-object v2, v2, v12

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    const-string v5, "fontshiftfleta"

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    .line 104
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v3, v2, v12

    aget-object v2, v2, v12

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->notes_size:I

    const-string v5, "fontsizenotes"

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->notes_size:I

    .line 105
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v3, v2, v12

    aget-object v2, v2, v12

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->cleartype:Z

    const-string v5, "fontcleartype"

    invoke-virtual {v1, v8, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->cleartype:Z

    .line 106
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-boolean v3, v2, Lcom/neverland/prefs/TOneProfile;->fontUnion:Z

    const-string v5, "fontunion"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TOneProfile;->fontUnion:Z

    .line 107
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-boolean v3, v2, Lcom/neverland/prefs/TOneProfile;->marginUnion:Z

    const-string v5, "marginunion"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/prefs/TOneProfile;->marginUnion:Z

    .line 108
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v2, Lcom/neverland/prefs/TOptions;->autoTwoColumns:I

    const-string v5, "twocolumn"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/prefs/TOptions;->autoTwoColumns:I

    .line 109
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v2, Lcom/neverland/prefs/TOptions;->autoTwoColumnsScale:I

    const-string v3, "twocolumncount"

    invoke-virtual {v1, v4, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x19

    if-lt v2, v3, :cond_23

    const/16 v3, 0x50

    if-gt v2, v3, :cond_23

    .line 110
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput v2, v3, Lcom/neverland/prefs/TOptions;->autoTwoColumnsScale:I

    .line 111
    :cond_23
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    const/4 v3, 0x0

    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    const-string v6, "mtop"

    invoke-virtual {v1, v4, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    .line 112
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v5, v2, v3

    iget v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    if-gez v5, :cond_24

    .line 113
    aget-object v5, v2, v3

    iput v3, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    .line 114
    :cond_24
    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    const-string v6, "mleft"

    invoke-virtual {v1, v4, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    .line 115
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v5, v2, v3

    iget v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    if-gez v5, :cond_25

    .line 116
    aget-object v5, v2, v3

    iput v3, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    .line 117
    :cond_25
    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    const-string v6, "mright"

    invoke-virtual {v1, v4, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    .line 118
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v5, v2, v3

    iget v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    if-ge v5, v9, :cond_26

    .line 119
    aget-object v5, v2, v3

    iput v9, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    .line 120
    :cond_26
    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    const-string v6, "mbottom"

    invoke-virtual {v1, v4, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    .line 121
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v5, v2, v3

    iget v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    if-gez v5, :cond_27

    .line 122
    aget-object v5, v2, v3

    iput v3, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    .line 123
    :cond_27
    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginInPercent1:Z

    const-string v3, "percentmargin"

    invoke-virtual {v1, v4, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginInPercent1:Z

    .line 124
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    const/4 v3, 0x1

    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    const-string v6, "mtop"

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    .line 125
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v5, v2, v3

    iget v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    if-gez v5, :cond_28

    .line 126
    aget-object v5, v2, v3

    const/4 v6, 0x0

    iput v6, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    .line 127
    :cond_28
    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    const-string v6, "mleft"

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    .line 128
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v5, v2, v3

    iget v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    if-gez v5, :cond_29

    .line 129
    aget-object v5, v2, v3

    const/4 v6, 0x0

    iput v6, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    .line 130
    :cond_29
    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    const-string v6, "mright"

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    .line 131
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v5, v2, v3

    iget v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    if-ge v5, v9, :cond_2a

    .line 132
    aget-object v5, v2, v3

    iput v9, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    .line 133
    :cond_2a
    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    const-string v6, "mbottom"

    invoke-virtual {v1, v8, v6, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    .line 134
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v5, v2, v3

    iget v5, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    if-gez v5, :cond_2b

    .line 135
    aget-object v5, v2, v3

    const/4 v6, 0x0

    iput v6, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    .line 136
    :cond_2b
    aget-object v5, v2, v3

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginInPercent1:Z

    const-string v3, "percentmargin"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v5, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginInPercent1:Z

    .line 137
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->justify:Z

    const-string v5, "justify"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->justify:Z

    .line 138
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->first_letter_mode:I

    const-string v5, "firstletter"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->first_letter_mode:I

    .line 139
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->first_letter_extened:I

    const-string v5, "firstletternum"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->first_letter_extened:I

    .line 140
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->handingPunctuation:Z

    const-string v5, "handgingpunctuation"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->handingPunctuation:Z

    .line 141
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->paragraphSpacing:I

    const-string v5, "paragraphspacing"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->paragraphSpacing:I

    .line 142
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->verticalAlign:Z

    const-string v5, "verticalalign"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->verticalAlign:Z

    .line 143
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->sectionNewScreen:Z

    const-string v5, "sectiononnewpage"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->sectionNewScreen:Z

    .line 144
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v3, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->keepOneItem:Z

    const-string v5, "keeponeitem"

    invoke-virtual {v1, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->ReadBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->keepOneItem:Z

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method private lock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "PREFS"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/neverland/utils/MainLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private replaceFileBeforeStart()V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/neverland/prefs/TPref;->fileNamePortable:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v4, v3, Lcom/neverland/utils/TCustomDevice;->restorePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "alrxsettings.ini"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v2, v7, v4

    if-lez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/neverland/utils/TCustomDevice;->copyFileToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore ini error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete after restore ini error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 8
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v7, v3, Lcom/neverland/utils/TCustomDevice;->restorePath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "alrx"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".profile"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-lez v2, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/neverland/utils/TCustomDevice;->configPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/neverland/utils/TCustomDevice;->exeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v3, v2, v7}, Lcom/neverland/utils/TCustomDevice;->copyFileToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, " error "

    if-nez v2, :cond_2

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;Z)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete after restore profile "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private saveProfile(Lcom/neverland/utils/TMemIniFile2;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v4, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const v5, 0xffffff

    const-string v6, "DAY"

    const-string v7, "NIGHT"

    const/4 v8, 0x0

    if-ne v3, v4, :cond_1

    .line 2
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    and-int/2addr v3, v5

    const-string v4, "colortext"

    invoke-virtual {v1, v6, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    and-int/2addr v3, v5

    const-string v10, "colorbg"

    invoke-virtual {v1, v6, v10, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    and-int/2addr v3, v5

    const-string v11, "colorstatus"

    invoke-virtual {v1, v6, v11, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/neverland/prefs/TProfileColors;->overrideColorStatusBack:I

    const-string v12, "ovrstatusback"

    invoke-virtual {v1, v6, v12, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    and-int/2addr v3, v5

    const-string v13, "colorstatusback"

    invoke-virtual {v1, v6, v13, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    and-int/2addr v3, v5

    const-string v14, "colorline"

    invoke-virtual {v1, v6, v14, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    const-string v15, "colorcustom1"

    invoke-virtual {v1, v6, v15, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    const-string v5, "colorcustom2"

    invoke-virtual {v1, v6, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    const-string v9, "colorcustom3"

    invoke-virtual {v1, v6, v9, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    const-string v8, "colorcustom4"

    invoke-virtual {v1, v6, v8, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/16 v17, 0x0

    aget-object v3, v3, v17

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    move-object/from16 v18, v2

    const-string v2, "ovrbold"

    invoke-virtual {v1, v6, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v17

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    move-object/from16 v19, v2

    const-string v2, "ovritalic"

    invoke-virtual {v1, v6, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    iget-object v3, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v3, v3, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v3, v3, v17

    iget-object v3, v3, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v3, v3, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    move-object/from16 v20, v2

    const-string v2, "ovrbolditalic"

    invoke-virtual {v1, v6, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v17

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    const-string v3, "ovrcode"

    invoke-virtual {v1, v6, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_0

    .line 17
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v17

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    const-string v3, "bgname"

    invoke-virtual {v1, v6, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v17

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    const-string v3, "bgnametwopage"

    invoke-virtual {v1, v6, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v17

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    const-string v3, "bgtype"

    invoke-virtual {v1, v6, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    :cond_0
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    const v16, 0xffffff

    and-int v2, v2, v16

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    and-int v2, v2, v16

    invoke-virtual {v1, v7, v10, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    and-int v2, v2, v16

    invoke-virtual {v1, v7, v11, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->overrideColorStatusBack:I

    invoke-virtual {v1, v7, v12, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    and-int v2, v2, v16

    invoke-virtual {v1, v7, v13, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    and-int v2, v2, v16

    invoke-virtual {v1, v7, v14, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    invoke-virtual {v1, v7, v15, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    invoke-virtual {v1, v7, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    invoke-virtual {v1, v7, v9, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    invoke-virtual {v1, v7, v8, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    move-object/from16 v4, v19

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    move-object/from16 v4, v20

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    const-string v4, "ovrbolditalic"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    const-string v4, "ovrcode"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_2

    .line 35
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    const-string v4, "bgname"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    const-string v4, "bgnametwopage"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    const-string v3, "bgtype"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object/from16 v18, v2

    .line 38
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    const-string v3, "autoscrolltime"

    invoke-virtual {v1, v6, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget v2, v2, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_3

    .line 41
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    const-string v3, "clockut"

    invoke-virtual {v1, v6, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    const-string v3, "clockut"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    :cond_3
    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_mono:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    move-object/from16 v3, v18

    invoke-virtual {v3, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_old:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 44
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    const v4, 0xffffff

    and-int/2addr v2, v4

    const-string v5, "colorlink"

    invoke-virtual {v1, v6, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    and-int/2addr v2, v4

    const-string v5, "colorfletter"

    invoke-virtual {v1, v6, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    and-int/2addr v2, v4

    const-string v3, "colortitle"

    invoke-virtual {v1, v6, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    and-int/2addr v2, v4

    const-string v5, "colorlink"

    invoke-virtual {v1, v7, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    and-int/2addr v2, v4

    const-string v5, "colorfletter"

    invoke-virtual {v1, v7, v5, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    and-int/2addr v2, v4

    const-string v3, "colortitle"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    :cond_4
    sget-boolean v2, Lcom/neverland/mainApp;->f:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    const-string v5, "fontsize"

    const/4 v6, 0x3

    const-string v8, "PROFILE"

    if-ge v4, v2, :cond_d

    if-nez v4, :cond_6

    const-string v3, ""

    goto :goto_3

    :cond_6
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    const-string v3, "mono"

    goto :goto_3

    :cond_7
    const/4 v9, 0x2

    if-ne v4, v9, :cond_8

    const-string v3, "title"

    goto :goto_3

    :cond_8
    if-ne v4, v6, :cond_9

    const-string v3, "fletter"

    goto :goto_3

    :cond_9
    if-le v4, v6, :cond_a

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    :cond_a
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fontbold"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_bolds:[Z

    aget-boolean v10, v10, v4

    invoke-virtual {v1, v8, v9, v10}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fontitalic"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_italics:[Z

    aget-boolean v10, v10, v4

    invoke-virtual {v1, v8, v9, v10}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fontwidth"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_widths:[I

    aget v10, v10, v4

    invoke-virtual {v1, v8, v9, v10}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fontname"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v1, v8, v9, v10}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fontweight"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_weight:[I

    aget v10, v10, v4

    invoke-virtual {v1, v8, v9, v10}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fontletspace"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v10, v10, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_letterspacing:[I

    aget v10, v10, v4

    invoke-virtual {v1, v8, v9, v10}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    if-eq v4, v6, :cond_b

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interline"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    aget v9, v9, v4

    invoke-virtual {v1, v8, v6, v9}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    :goto_4
    if-nez v4, :cond_c

    .line 59
    iget-object v6, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v6, v6, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v6, v6, v4

    invoke-virtual {v1, v8, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->WriteFloat(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_5

    .line 60
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v6, v6, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    iget-object v6, v6, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v6, v6, v4

    float-to-int v6, v6

    invoke-virtual {v1, v8, v5, v6}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 61
    :cond_d
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->emptyLineHeight1:I

    const-string v9, "heightemptyline"

    invoke-virtual {v1, v8, v9, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    const/4 v9, 0x0

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusTopMargin:I

    const-string v10, "statustop"

    invoke-virtual {v1, v8, v10, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusBottomMargin:I

    const-string v10, "statusbottom"

    invoke-virtual {v1, v8, v10, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    const-string v10, "fontspacewidth"

    invoke-virtual {v1, v8, v10, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    const-string v10, "fontshiftfleta"

    invoke-virtual {v1, v8, v10, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->notes_size:I

    const-string v11, "fontsizenotes"

    invoke-virtual {v1, v8, v11, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    iget-object v4, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v4, v4, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v4, v4, v9

    iget-boolean v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->cleartype:Z

    const-string v9, "fontcleartype"

    invoke-virtual {v1, v8, v9, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_15

    if-nez v4, :cond_e

    const-string v3, ""

    goto :goto_7

    :cond_e
    const/4 v9, 0x1

    if-ne v4, v9, :cond_f

    const-string v3, "mono"

    goto :goto_7

    :cond_f
    const/4 v9, 0x2

    if-ne v4, v9, :cond_10

    const-string v3, "title"

    goto :goto_7

    :cond_10
    if-ne v4, v6, :cond_11

    const-string v3, "fletter"

    goto :goto_7

    :cond_11
    if-le v4, v6, :cond_12

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    :cond_12
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fontbold"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_bolds:[Z

    aget-boolean v11, v11, v4

    invoke-virtual {v1, v7, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fontitalic"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_italics:[Z

    aget-boolean v11, v11, v4

    invoke-virtual {v1, v7, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fontwidth"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_widths:[I

    aget v11, v11, v4

    invoke-virtual {v1, v7, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fontname"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_names:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v1, v7, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fontweight"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_weight:[I

    aget v11, v11, v4

    invoke-virtual {v1, v7, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fontletspace"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_letterspacing:[I

    aget v11, v11, v4

    invoke-virtual {v1, v7, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    if-eq v4, v6, :cond_13

    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interline"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    aget v11, v11, v4

    invoke-virtual {v1, v7, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8

    :cond_13
    const/4 v12, 0x1

    :goto_8
    if-nez v4, :cond_14

    .line 76
    iget-object v9, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v9, v9, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v9, v9, v12

    iget-object v9, v9, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v9, v9, v4

    invoke-virtual {v1, v7, v5, v9}, Lcom/neverland/utils/TMemIniFile2;->WriteFloat(Ljava/lang/String;Ljava/lang/String;F)V

    const/4 v12, 0x1

    goto :goto_9

    .line 77
    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v11, v11, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v11, v11, v4

    float-to-int v11, v11

    invoke-virtual {v1, v7, v9, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_15
    const/4 v12, 0x1

    .line 78
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusTopMargin:I

    const-string v3, "statustop"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->statusBottomMargin:I

    const-string v3, "statusbottom"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v2, v2, v12

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_space_width:I

    const-string v3, "fontspacewidth"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v2, v2, v12

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    invoke-virtual {v1, v7, v10, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v2, v2, v12

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->notes_size:I

    const-string v3, "fontsizenotes"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v2, v2, v12

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->cleartype:Z

    const-string v3, "fontcleartype"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-boolean v2, v2, Lcom/neverland/prefs/TOneProfile;->fontUnion:Z

    const-string v3, "fontunion"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-boolean v2, v2, Lcom/neverland/prefs/TOneProfile;->marginUnion:Z

    const-string v3, "marginunion"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->first_letter_shift:I

    invoke-virtual {v1, v7, v10, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v2, v2, Lcom/neverland/prefs/TOptions;->autoTwoColumns:I

    const-string v3, "twocolumn"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    const-string v4, "mtop"

    invoke-virtual {v1, v8, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    const-string v4, "mleft"

    invoke-virtual {v1, v8, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    const-string v4, "mright"

    invoke-virtual {v1, v8, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    const-string v4, "mbottom"

    invoke-virtual {v1, v8, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginInPercent1:Z

    const-string v3, "percentmargin"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginTop:I

    const-string v4, "mtop"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    const-string v4, "mleft"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    const-string v4, "mright"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginBottom:I

    const-string v4, "mbottom"

    invoke-virtual {v1, v7, v4, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginInPercent1:Z

    const-string v3, "percentmargin"

    invoke-virtual {v1, v7, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->justify:Z

    const-string v3, "justify"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->first_letter_mode:I

    const-string v3, "firstletter"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->handingPunctuation:Z

    const-string v3, "handgingpunctuation"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->paragraphSpacing:I

    const-string v3, "paragraphspacing"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->verticalAlign:Z

    const-string v3, "verticalalign"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->sectionNewScreen:Z

    const-string v3, "sectiononnewpage"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    iget-object v2, v0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v2, v2, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    iget-boolean v2, v2, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->keepOneItem:Z

    const-string v3, "keeponeitem"

    invoke-virtual {v1, v8, v3, v2}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private str2hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    const/16 v4, 0x30

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private unlock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public appUseLocale()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->i:Lcom/neverland/mainApp;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public calculateAutoColumn(II)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v0, Lcom/neverland/prefs/TOptions;->autoTwoColumns:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return v2

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/neverland/prefs/TOptions;->autoTwoColumnsValue:Z

    .line 3
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v1, v1, v2

    sget v3, Lcom/neverland/mainApp;->g:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 4
    sget v3, Lcom/neverland/utils/finit;->MARGINS_VALUE:I

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    shr-int/lit8 v3, p1, 0x1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileMargins()Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    move-result-object p2

    iget p2, p2, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginLeft:I

    .line 6
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileMargins()Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    move-result-object v4

    iget v4, v4, Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;->marginRight:I

    int-to-float p2, p2

    int-to-float v3, v3

    const/high16 v5, 0x42480000    # 50.0f

    div-float/2addr v3, v5

    mul-float p2, p2, v3

    float-to-int p2, p2

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    .line 7
    iget-object v4, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v5, v4, Lcom/neverland/prefs/TOptions;->autoTwoColumnsScale:I

    mul-int v1, v1, v5

    sub-int p2, p1, p2

    sub-int/2addr p2, v3

    const/4 v3, 0x1

    if-ge v1, p2, :cond_2

    int-to-double v5, p2

    int-to-float p1, p1

    float-to-double p1, p1

    const-wide v7, 0x3fe3333333333333L    # 0.6

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v7

    cmpl-double v1, v5, p1

    if-lez v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, v4, Lcom/neverland/prefs/TOptions;->autoTwoColumnsValue:Z

    if-eq p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public changeFullScreen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v1, v0, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    .line 4
    :goto_0
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v0}, Lcom/neverland/utils/TCustomDevice;->setFullScreen()V

    return-void
.end method

.method public clearProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->lock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/neverland/prefs/TPref;->profileExists1(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->unlock()Z

    :cond_3
    return v0
.end method

.method public correctProgressLine(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, v0, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :goto_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method public dayToNight()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    .line 2
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public decFontSize()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v3, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v0, v0, v1

    return v0
.end method

.method public decInterline()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x5

    aput v2, v0, v1

    return-void
.end method

.method public dirForDownloads()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeAll()V
    .locals 1

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    invoke-virtual {v0}, Lcom/neverland/utils/TCustomDevice;->saveScreen()V

    const-string v0, "free> 1"

    .line 2
    invoke-direct {p0, v0}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveProfileColor()Lcom/neverland/prefs/TProfileColors;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-boolean v2, v1, Lcom/neverland/prefs/TOneProfile;->fontUnion:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->fonts1:[Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getActiveProfileMargins()Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-boolean v2, v1, Lcom/neverland/prefs/TOneProfile;->marginUnion:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->margins:[Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getAppLang()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f03002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v1, v1, Lcom/neverland/prefs/TInternalOptions;->appLang:I

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    array-length v3, v0

    if-lt v1, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v1, v1, Lcom/neverland/prefs/TInternalOptions;->appLang:I

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getAutoBacklight()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v1, v0, Lcom/neverland/prefs/TScreenState;->unionBacklight:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/neverland/prefs/TScreenState;->autoBacklightNight:Z

    return v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v0, v0, Lcom/neverland/prefs/TScreenState;->autoBacklightDay:Z

    return v0
.end method

.method public getAutoscrollTime()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    return v0
.end method

.method public getBackColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getBackgroundMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    return v0
.end method

.method public getBacklight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v1, v0, Lcom/neverland/prefs/TScreenState;->unionBacklight:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Lcom/neverland/prefs/TScreenState;->levelBacklightNight:I

    return v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v0, v0, Lcom/neverland/prefs/TScreenState;->levelBacklightDay:I

    return v0
.end method

.method public getBoldColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getBoldItalicColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getClockUnderText()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    return v0
.end method

.method public getCodeColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorAdaptForEink(I)I
    .locals 1

    const v0, 0xf0f0f0

    and-int/2addr p1, v0

    return p1
.end method

.method public getCorrectSyncName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/neverland/prefs/TPref;->isCorrectSyncChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFLetColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getFavorArray(Z)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1
    sget-object v3, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v4, 0x7f11008e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v4, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    aget-object v5, v4, v1

    if-eqz v5, :cond_1

    aget-object v1, v4, v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v4, 0x7f11008d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v0, v3

    add-int/2addr v3, v2

    .line 3
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    aget-object v4, v1, v2

    if-eqz v4, :cond_2

    aget-object v1, v1, v2

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v4, 0x7f11008c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v0, v3

    add-int/2addr v3, v2

    .line 4
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v5, v1, v4

    if-eqz v5, :cond_3

    aget-object v1, v1, v4

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v4, 0x7f11008a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v0, v3

    add-int/2addr v3, v2

    .line 5
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v5, v1, v4

    if-eqz v5, :cond_4

    aget-object v1, v1, v4

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v4, 0x7f110090

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    aput-object v1, v0, v3

    add-int/2addr v3, v2

    .line 6
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, v1, v4

    if-eqz v5, :cond_5

    aget-object v1, v1, v4

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v4, 0x7f11008b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    aput-object v1, v0, v3

    add-int/2addr v3, v2

    .line 7
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TOptions;->favorCategories:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v5, v1, v4

    if-eqz v5, :cond_6

    aget-object v1, v1, v4

    goto :goto_6

    :cond_6
    sget-object v1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v4, 0x7f11008f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    aput-object v1, v0, v3

    add-int/2addr v3, v2

    if-eqz p1, :cond_7

    .line 8
    sget-object p1, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    const v1, 0x7f110089

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    :cond_7
    return-object v0
.end method

.method public getFileNamePortable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->fileNamePortable:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlightStyle(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean p1, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean p1, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    return p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean p1, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    return p1

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-boolean p1, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    return p1
.end method

.method public getIsDay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    return v0
.end method

.method public getItalicColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getLineColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    return v0
.end method

.method public getLinkColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getMenuAccentColor()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v0, v0, Lcom/neverland/prefs/TInternalOptions;->menuAccentColor:I

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v1, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v0, v0, Lcom/neverland/prefs/TInternalOptions;->menuBackColor:I

    :cond_0
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getMenuBackColor()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v0, v0, Lcom/neverland/prefs/TInternalOptions;->menuBackColor:I

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v1, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v0, v0, Lcom/neverland/prefs/TInternalOptions;->menuAccentColor:I

    :cond_0
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getMenuDisableColor()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v0, v0, Lcom/neverland/prefs/TInternalOptions;->menuDisableColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v1, v1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getMenuTextColor()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v0, v0, Lcom/neverland/prefs/TInternalOptions;->menuTextColor:I

    .line 2
    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v2, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v1, v2}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v0, v0, Lcom/neverland/prefs/TInternalOptions;->menuBackColor:I

    :cond_0
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getOpenDialogBookShelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/prefs/TPref;->getOpenDialogNumber(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, v0, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/prefs/TPref;->getOpenDialogNumber(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, v0, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/prefs/TPref;->getOpenDialogNumber(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v1, v0, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getProfile()Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    return-object v0
.end method

.method public getRadiusDrawable(Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/neverland/prefs/TPref;->getRadiusDrawable(ZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getRadiusDrawable(ZZ)Landroid/graphics/drawable/GradientDrawable;
    .locals 10

    .line 2
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 3
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->gradientArray:[I

    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getMenuBackColor()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 4
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    sget-object v2, Lcom/neverland/prefs/TPref$THEME_TYPE;->def:Lcom/neverland/prefs/TPref$THEME_TYPE;

    const/16 v5, 0x8

    const v6, 0xffffff

    if-ne v1, v2, :cond_5

    .line 5
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->gradientArray:[I

    aget v2, v1, v4

    and-int/2addr v2, v6

    const v7, 0x546e7a

    if-ne v2, v7, :cond_0

    const v2, -0xc8b8b1

    .line 6
    aput v2, v1, v3

    goto :goto_0

    :cond_0
    const v7, 0x455a64

    if-ne v2, v7, :cond_1

    const v2, -0xd9cdc8

    .line 7
    aput v2, v1, v3

    goto :goto_0

    :cond_1
    const/high16 v7, 0xff0000

    and-int/2addr v7, v2

    shr-int/lit8 v7, v7, 0x10

    const v8, 0xff00

    and-int/2addr v8, v2

    shr-int/2addr v8, v5

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v7, v7, -0x30

    add-int/lit8 v8, v8, -0x30

    add-int/lit8 v2, v2, -0x30

    if-gez v7, :cond_2

    const/4 v7, 0x0

    :cond_2
    if-gez v8, :cond_3

    const/4 v8, 0x0

    :cond_3
    if-gez v2, :cond_4

    const/4 v2, 0x0

    :cond_4
    const/high16 v9, -0x1000000

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v9

    shl-int/2addr v8, v5

    or-int/2addr v7, v8

    or-int/2addr v2, v7

    .line 8
    aput v2, v1, v3

    goto :goto_0

    .line 9
    :cond_5
    sget-object v2, Lcom/neverland/prefs/TPref$THEME_TYPE;->eink:Lcom/neverland/prefs/TPref$THEME_TYPE;

    if-eq v1, v2, :cond_6

    .line 10
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->gradientArray:[I

    aget v2, v1, v3

    const v7, 0x2a2a2a

    xor-int/2addr v2, v7

    aput v2, v1, v3

    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    .line 11
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->gradientArray:[I

    aget v1, p1, v4

    and-int/2addr v1, v6

    aput v1, p1, v4

    .line 12
    aget v1, p1, v3

    and-int/2addr v1, v6

    aput v1, p1, v3

    .line 13
    aget v1, p1, v4

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    aput v1, p1, v4

    .line 14
    aget v1, p1, v3

    or-int/2addr v1, v2

    aput v1, p1, v3

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->gradientArray:[I

    invoke-static {v0, p1}, Lcom/neverland/utils/APIWrap;->setColorsForDrawable(Landroid/graphics/drawable/GradientDrawable;[I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    sget v1, Lcom/neverland/mainApp;->g:F

    mul-float v1, v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getMenuTextColor()I

    move-result v1

    and-int/2addr v1, v6

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-array p1, v5, [F

    const/high16 v1, 0x40e00000    # 7.0f

    .line 17
    sget v2, Lcom/neverland/mainApp;->g:F

    mul-float v2, v2, v1

    const/4 v1, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz p2, :cond_8

    aput v2, p1, v3

    aput v2, p1, v4

    aput v2, p1, v8

    aput v2, p1, v9

    const/high16 p2, 0x40400000    # 3.0f

    mul-float v2, v2, p2

    aput v2, p1, v6

    aput v2, p1, v7

    aput v2, p1, v1

    aput v2, p1, v5

    goto :goto_1

    :cond_8
    aput v2, p1, v3

    aput v2, p1, v4

    aput v2, p1, v8

    aput v2, p1, v9

    aput v2, p1, v6

    aput v2, p1, v7

    aput v2, p1, v1

    aput v2, p1, v5

    .line 18
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method

.method public getRadiusDrawableForColorsDialog(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 3
    sget p1, Lcom/neverland/mainApp;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getMenuTextColor()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 4
    sget p1, Lcom/neverland/mainApp;->g:F

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public getRadiusTransparentDrawable(Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/neverland/prefs/TPref;->getRadiusDrawable(ZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getSkinOnePage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    return-object v0
.end method

.method public getSkinTwoPage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBackColor1(Z)I
    .locals 2

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object p1, p1, v1

    iget p1, p1, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    :goto_0
    or-int/2addr p1, v0

    return p1

    .line 2
    :cond_0
    sget-object p1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {p1, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean p1, p1, Lcom/neverland/prefs/TOptions;->useFullscreenSkin:Z

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getUseStatusBackColor0()I

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object p1, p1, v1

    iget p1, p1, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget p1, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    goto :goto_0
.end method

.method public getStatusColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    return v0
.end method

.method public getSyncId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-wide v0, v0, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    return-wide v0
.end method

.method public getTextColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getTitleColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public getUseStatusBackColor0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/neverland/prefs/TProfileColors;->overrideColorStatusBack:I

    return v0
.end method

.method public incFontSize()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v3, Lcom/neverland/prefs/TOptions;->fontChangeStep1:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_sizes:[F

    aget v0, v0, v1

    return v0
.end method

.method public incInterline()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v0

    iget-object v0, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;->font_interlines:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x5

    aput v2, v0, v1

    return-void
.end method

.method public initAll()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    invoke-virtual {v0}, Lcom/neverland/prefs/TTaps;->setDefault()V

    .line 2
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    invoke-virtual {v0}, Lcom/neverland/prefs/TBookCSS;->setDefault()V

    .line 3
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v3, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/neverland/utils/TCustomDevice;->configPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/neverland/utils/TCustomDevice;->exeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/prefs/TPref;->fileNamePortable:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/neverland/utils/TCustomDevice;->configPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/neverland/utils/TCustomDevice;->exeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".int"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/prefs/TPref;->fileNameInternal:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/neverland/mainApp;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/neverland/utils/finit;->getRealFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/neverland/utils/TCustomDevice;->exeName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/neverland/prefs/TPref;->fileNameInternal:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/neverland/utils/TCustomDevice;->copyFileToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 12
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iget-object v3, p0, Lcom/neverland/prefs/TPref;->fileNameInternal:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->fileNameInternal:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 16
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bak"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v1, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "alrxsettings.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/neverland/prefs/TPref;->fileNamePortable:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/neverland/utils/TCustomDevice;->copyFileToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create backup ini to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error create backup ini to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;Z)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    .line 22
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v6, v3, Lcom/neverland/utils/TCustomDevice;->configPath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/neverland/utils/TCustomDevice;->exeName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".profile"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_4

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/neverland/utils/TCustomDevice;->backupPath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "alrx"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v3, v1, v2}, Lcom/neverland/utils/TCustomDevice;->copyFileToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;Z)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 29
    :cond_5
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->replaceFileBeforeStart()V

    .line 30
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iput v4, v0, Lcom/neverland/prefs/TAnimation;->type:I

    const/16 v1, 0x190

    .line 31
    iput v1, v0, Lcom/neverland/prefs/TAnimation;->time:I

    .line 32
    iput v5, v0, Lcom/neverland/prefs/TAnimation;->always:I

    .line 33
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    const/high16 v1, 0x41400000    # 12.0f

    sget-object v2, Lcom/neverland/mainApp;->p:Landroid/content/res/Resources;

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Lcom/neverland/prefs/TOptions;->statusSize:I

    .line 34
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget v2, v0, Lcom/neverland/prefs/TOptions;->statusSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/neverland/utils/TCustomDevice;->correctFontSize(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/neverland/prefs/TOptions;->statusSize:I

    .line 35
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iput-boolean v4, v0, Lcom/neverland/prefs/TOptions;->statusBold:Z

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v0, Lcom/neverland/prefs/TOptions;->statusBarUseMenuColor:Z

    .line 37
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->loadDefaultProfile()V

    .line 38
    iput-boolean v5, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    .line 39
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iput-boolean v4, v0, Lcom/neverland/prefs/TScreenState;->saved:Z

    .line 40
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->findStr:Lcom/neverland/prefs/TFindStr;

    iget-object v0, v0, Lcom/neverland/prefs/TFindStr;->str:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->loadAll()V

    const-string v0, "initOwner> 1"

    .line 42
    invoke-direct {p0, v0}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;)V

    return-void
.end method

.method public initializeProfile()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileColor()Lcom/neverland/prefs/TProfileColors;

    move-result-object v1

    iget-object v1, v1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-object v1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    .line 2
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->fonts:Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    .line 3
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileMargins()Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->margins:Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    .line 4
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v0, v0, Lcom/neverland/prefs/TOptions;->statusBarUseMenuColor:Z

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/neverland/mainApp;->j:Lcom/neverland/viscomp/TMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neverland/utils/APIWrap;->changeInterfaceColor2(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public isCorrectSyncChar(C)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/neverland/d/b/a;->G(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public loadNextProfile()I
    .locals 4

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    invoke-virtual {v0}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    :goto_0
    const/4 v0, 0x1

    .line 2
    :cond_0
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    invoke-virtual {v3}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 3
    invoke-static {v0}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->fromInt(I)Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/neverland/prefs/TPref;->loadProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public loadPrevProfile()I
    .locals 3

    .line 1
    sget-object v0, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v0, v0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v0, v0, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    invoke-virtual {v0}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x9

    if-gtz v0, :cond_0

    :goto_0
    const/16 v0, 0x9

    .line 2
    :cond_0
    sget-object v2, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v2, v2, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    invoke-virtual {v2}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 3
    invoke-static {v0}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->fromInt(I)Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neverland/prefs/TPref;->loadProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public loadProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z
    .locals 3

    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->lock()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v1, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->loadDefaultProfile()V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lcom/neverland/prefs/TPref;->profileExists1(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 150
    iget-object v2, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v2, v2, Lcom/neverland/prefs/TOptions;->autosaveProfiles:Z

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    invoke-virtual {p0, v2}, Lcom/neverland/prefs/TPref;->saveProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z

    .line 152
    :cond_2
    new-instance v2, Lcom/neverland/utils/TMemIniFile2;

    invoke-direct {v2, v1}, Lcom/neverland/utils/TMemIniFile2;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iput-object p1, v1, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    .line 154
    invoke-direct {p0, v2}, Lcom/neverland/prefs/TPref;->loadProfile(Lcom/neverland/utils/TMemIniFile2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->unlock()Z

    :cond_4
    return v0
.end method

.method public profileExists1(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->tempProfile:Lcom/neverland/prefs/TPref$TTemporaryProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neverland/prefs/TPref$TTemporaryProfile;->updateState(Z)V

    .line 2
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->tempProfile:Lcom/neverland/prefs/TPref$TTemporaryProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TPref$TTemporaryProfile;->existProfile:[Z

    invoke-virtual {p1}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v2, v1, Lcom/neverland/utils/TCustomDevice;->configPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/neverland/utils/TCustomDevice;->exeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".profile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resetBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundTextureName:Ljava/lang/String;

    return-void
.end method

.method public saveAll()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "cssfontsize"

    const-string v3, "cssjustify"

    const-string v4, "cssindent"

    const-string v5, "csshm"

    const-string v6, "cssvm"

    const-string v7, "tables"

    const-string v8, "BOOKSOFFICE"

    const-string v9, "BOOKSCHM"

    const-string v10, "BOOKSHTML"

    const-string v11, "BOOKSEPUB"

    const-string v12, "BOOKMARKS"

    const-string v13, "SCREEN"

    const-string v14, "BOOKSFB2"

    const-string v15, "LIBRARY"

    move-object/from16 v16, v15

    const-string v15, "SYNC"

    move-object/from16 v17, v8

    const-string v8, "saveAll"

    .line 1
    invoke-direct {v1, v8}, Lcom/neverland/prefs/TPref;->log(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->lock()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 3
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->internalTIF:Lcom/neverland/utils/TMemIniFile2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v9

    const-string v9, "FILEOPEN"

    move-object/from16 v19, v10

    const-string v10, "TTS"

    move-object/from16 v20, v11

    const-string v11, "OPTIONS"

    move-object/from16 v21, v2

    if-eqz v8, :cond_10

    :try_start_1
    const-string v2, "descript"

    move-object/from16 v22, v3

    const-string v3, "android"

    .line 4
    invoke-virtual {v8, v13, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fullscreen"

    .line 5
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v3, v3, Lcom/neverland/prefs/TScreenState;->isFullScreen:I

    invoke-virtual {v8, v13, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "autobacklight0"

    .line 6
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v3, v3, Lcom/neverland/prefs/TScreenState;->autoBacklightDay:Z

    invoke-virtual {v8, v13, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "autobacklight1"

    .line 7
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v3, v3, Lcom/neverland/prefs/TScreenState;->autoBacklightNight:Z

    invoke-virtual {v8, v13, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "levelbacklight0"

    .line 8
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v3, v3, Lcom/neverland/prefs/TScreenState;->levelBacklightDay:I

    invoke-virtual {v8, v13, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "levelbacklight1"

    .line 9
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v3, v3, Lcom/neverland/prefs/TScreenState;->levelBacklightNight:I

    invoke-virtual {v8, v13, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "backlighthardwaremin"

    .line 10
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v3, v3, Lcom/neverland/prefs/TScreenState;->backlightHardwareMin:I

    invoke-virtual {v8, v13, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "STATE"

    const-string v3, "startcnt"

    .line 11
    iget-object v13, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v13, v13, Lcom/neverland/prefs/TInternalOptions;->countStart:I

    invoke-virtual {v8, v2, v3, v13}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "STATE"

    const-string v3, "fontscale"

    .line 12
    iget-object v13, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v13, v13, Lcom/neverland/prefs/TInternalOptions;->fontScale:I

    invoke-virtual {v8, v2, v3, v13}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "STATE"

    const-string v3, "lang"

    .line 13
    iget-object v13, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v13, v13, Lcom/neverland/prefs/TInternalOptions;->appLang:I

    invoke-virtual {v8, v2, v3, v13}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "gammam"

    .line 14
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v3, Lcom/neverland/prefs/TOptions;->gammaMode1:I

    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "gammav"

    .line 15
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v3, v3, Lcom/neverland/prefs/TOptions;->gammaValue:I

    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v13, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-ne v3, v13, :cond_0

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v13, v3, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    if-nez v13, :cond_0

    const-string v13, "theme"

    .line 17
    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v8, v11, v13, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-eqz v3, :cond_0

    const-string v3, "themebutton"

    .line 19
    iget-object v13, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v13, v13, Lcom/neverland/prefs/TInternalOptions;->buttonColorForSystemTheme:I

    invoke-virtual {v8, v11, v3, v13}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const-string v3, "interfacetrouble"

    .line 20
    iget-object v13, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v13, v13, Lcom/neverland/prefs/TInternalOptions;->troubleCustomize:Z

    invoke-virtual {v8, v11, v3, v13}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    sget-object v3, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v2, v3}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "iseink"

    .line 22
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->isEink:Z

    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    const-string v2, "previewpercent"

    .line 23
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->preview_percent:Z

    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "lastsearch"

    .line 24
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->lastSearch:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/neverland/prefs/TPref;->str2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DEVID"

    .line 25
    sget-object v3, Lcom/neverland/utils/TCustomDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "syncsilennet"

    .line 26
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncSilentifNoNetwork:Z

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "syncbmk"

    .line 27
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncBookmark:I

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "uplbook"

    .line 28
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncUploadBook:I

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "backup"

    .line 29
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncBackup:I

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "idlo"

    .line 30
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    move-object v13, v4

    iget-wide v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    const-wide v23, 0xffffffffL

    and-long v3, v3, v23

    long-to-int v4, v3

    invoke-virtual {v8, v15, v2, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "idhi"

    .line 31
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-wide v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncIdDevice:J

    const-wide v23, -0x100000000L

    and-long v3, v3, v23

    const/16 v23, 0x20

    shr-long v3, v3, v23

    long-to-int v4, v3

    invoke-virtual {v8, v15, v2, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "name"

    .line 32
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    :try_start_2
    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mode"

    .line 33
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "manual"

    .line 34
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncManualMode:I

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "usehttps"

    .line 35
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->networkUseHttps:Z

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "wdname"

    .line 36
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVName:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wdpass"

    .line 37
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVPass:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    invoke-static {v3}, Lcom/neverland/utils/finit;->WritePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wdaddr"

    .line 38
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVAddr1:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "http1"

    .line 39
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncWebDAVUseHTTP1:Z

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ftpname"

    .line 40
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncFTPName:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v4

    :goto_4
    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ftppass"

    .line 41
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncFTPPass:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, v4

    :goto_5
    invoke-static {v3}, Lcom/neverland/utils/finit;->WritePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ftpaddr"

    .line 42
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncFTPAddr:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    move-object v3, v4

    :goto_6
    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sftpname"

    .line 43
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncSFTPName:Ljava/lang/String;

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    move-object v3, v4

    :goto_7
    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sftppass"

    .line 44
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncSFTPPass:Ljava/lang/String;

    if-eqz v3, :cond_a

    goto :goto_8

    :cond_a
    move-object v3, v4

    :goto_8
    invoke-static {v3}, Lcom/neverland/utils/finit;->WritePass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sftpaddr"

    .line 45
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->syncSFTPAddr:Ljava/lang/String;

    if-eqz v3, :cond_b

    goto :goto_9

    :cond_b
    move-object v3, v4

    :goto_9
    invoke-virtual {v8, v15, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastshareclass"

    .line 46
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->lastTextReceiverClass1:Ljava/lang/String;

    if-eqz v3, :cond_c

    goto :goto_a

    :cond_c
    move-object v3, v4

    :goto_a
    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastshareaction"

    .line 47
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->lastTextReceiverAction:Ljava/lang/String;

    if-eqz v3, :cond_d

    goto :goto_b

    :cond_d
    move-object v3, v4

    :goto_b
    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastshareimclass"

    .line 48
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->lastImageReceiverClass:Ljava/lang/String;

    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move-object v3, v4

    :goto_c
    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastprofile"

    .line 49
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    invoke-virtual {v3}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result v3

    invoke-virtual {v8, v11, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "search"

    .line 50
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->scanFileSearch1:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/neverland/prefs/TPref;->str2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TOP100"

    const-string v3, "authors"

    .line 51
    iget-object v15, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v15, v15, Lcom/neverland/prefs/TInternalOptions;->top100Authors:Z

    invoke-virtual {v8, v2, v3, v15}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "TOP100"

    const-string v3, "iagree"

    .line 52
    iget-object v15, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v15, v15, Lcom/neverland/prefs/TInternalOptions;->top100Add:Z

    invoke-virtual {v8, v2, v3, v15}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "pin"

    .line 53
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TInternalOptions;->ttsPinned:Z

    invoke-virtual {v8, v10, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "pitch"

    .line 54
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v3, v3, Lcom/neverland/prefs/TInternalOptions;->ttsPitch:I

    invoke-virtual {v8, v10, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "lp"

    .line 55
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v3, v3, Lcom/neverland/prefs/TInternalOptions;->ttsLastPoint1:I

    invoke-virtual {v8, v10, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "volumephone"

    .line 56
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v3, v3, Lcom/neverland/prefs/TInternalOptions;->ttsVolume0:I

    invoke-virtual {v8, v10, v2, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "voice"

    .line 57
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v3, v3, Lcom/neverland/prefs/TInternalOptions;->ttsVoice:Ljava/lang/String;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    iget-object v3, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v4, v3, Lcom/neverland/prefs/TInternalOptions;->ttsVoice:Ljava/lang/String;

    :cond_f
    invoke-virtual {v8, v10, v2, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "STATE"

    const-string v3, "actedtag"

    .line 58
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->activeEditTag:I

    invoke-virtual {v8, v2, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v8}, Lcom/neverland/utils/TMemIniFile2;->UpdateFile()Z

    goto :goto_d

    :cond_10
    move-object/from16 v22, v3

    move-object v13, v4

    .line 60
    :goto_d
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->externalTIF:Lcom/neverland/utils/TMemIniFile2;

    if-eqz v2, :cond_23

    const-string v3, "realpages"

    .line 61
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->realCalcPages1:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "sort"

    .line 62
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->sortFile:I

    invoke-virtual {v2, v9, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "invfavor"

    .line 63
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TInternalOptions;->sortFavorReverse:Z

    invoke-virtual {v2, v9, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "inverse"

    .line 64
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TInternalOptions;->sortFileReverse:Z

    invoke-virtual {v2, v9, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "nsort"

    .line 65
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->sortNetwork:I

    invoke-virtual {v2, v9, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "ninverse"

    .line 66
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TInternalOptions;->sortNetworkReverse:Z

    invoke-virtual {v2, v9, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "deleteconfirm"

    .line 67
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TInternalOptions;->bookmarkConfirmDelete:Z

    invoke-virtual {v2, v12, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "bmkmarker"

    .line 68
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->bookmarkDefaultMarker:I

    invoke-virtual {v2, v12, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "bmkquickmarker"

    .line 69
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->bookmarkQuickDefaultMarker:I

    invoke-virtual {v2, v12, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "citemarkertype"

    .line 70
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->citeDefaultMarker:I

    invoke-virtual {v2, v12, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "citequickmarker"

    .line 71
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->citeQuickDefaultMarker:I

    invoke-virtual {v2, v12, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "sort"

    .line 72
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v4, v4, Lcom/neverland/prefs/TInternalOptions;->bookmarkSort1:I

    invoke-virtual {v2, v12, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "usetext"

    .line 73
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TInternalOptions;->bookmarkUseBookText:Z

    invoke-virtual {v2, v12, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "DEBUG"

    const-string v4, "onyxprocess"

    .line 74
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v8, v8, Lcom/neverland/prefs/TInternalOptions;->debugonyx:I

    invoke-virtual {v2, v3, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "DEBUG"

    const-string v4, "onyxprocess2"

    .line 75
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget v8, v8, Lcom/neverland/prefs/TInternalOptions;->debugonyx2:I

    invoke-virtual {v2, v3, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "unionbacklight"

    .line 76
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v4, v4, Lcom/neverland/prefs/TScreenState;->unionBacklight:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "keepbacklight"

    .line 77
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v4, v4, Lcom/neverland/prefs/TScreenState;->keepBacklight:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "shadowbacklight"

    .line 78
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v4, v4, Lcom/neverland/prefs/TScreenState;->shadowBacklight:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->usereink:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "refreshrate"

    .line 80
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v8, v8, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "dithering"

    .line 81
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v8, v8, Lcom/neverland/prefs/TScreenState;->einkUseDitering:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    .line 82
    :cond_11
    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "snowfield"

    .line 83
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v8, v8, Lcom/neverland/prefs/TScreenState;->regal:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "refreshrate"

    .line 84
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget v8, v8, Lcom/neverland/prefs/TScreenState;->refreshRate:I

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "refreshobj"

    .line 85
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v8, v8, Lcom/neverland/prefs/TScreenState;->updateIfObject1:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "refreshdlg"

    .line 86
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v8, v8, Lcom/neverland/prefs/TScreenState;->updateIfDialog:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "refreshres"

    .line 87
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v8, v8, Lcom/neverland/prefs/TScreenState;->updateIfResume:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "refreshact"

    .line 88
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v8, v8, Lcom/neverland/prefs/TScreenState;->updateDisable:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "fastscroll"

    .line 89
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v8, v8, Lcom/neverland/prefs/TScreenState;->useFastScroll1:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "dithering"

    .line 90
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v8, v8, Lcom/neverland/prefs/TScreenState;->einkUseDitering:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_12
    :goto_e
    const-string v4, "editsrc"

    .line 91
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v8, v8, Lcom/neverland/prefs/TOptions;->saveAsSRC:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "foldsupport"

    .line 92
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v8, v8, Lcom/neverland/prefs/TOptions;->supportFolded:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "hyph"

    .line 93
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v8, v8, Lcom/neverland/prefs/TOptions;->hyph_lang:Lcom/neverland/engbook/forpublic/EngBookMyType$TAL_HYPH_LANG;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "infostatus"

    .line 94
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v8, v8, Lcom/neverland/prefs/TOptions;->infoStatus:Lcom/neverland/utils/finit$ESTATUSINFO;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "infoheader"

    .line 95
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v8, v8, Lcom/neverland/prefs/TOptions;->infoHeader:Lcom/neverland/utils/finit$ESTATUSINFO;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "contentonprogress"

    .line 96
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v8, v8, Lcom/neverland/prefs/TOptions;->contentOnProgress:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "statusparam"

    .line 97
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v8, v8, Lcom/neverland/prefs/TOptions;->progressLineParam:I

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "sysstatusmenu"

    .line 98
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v8, v8, Lcom/neverland/prefs/TOptions;->statusBarUseMenuColor:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "PROFILE"

    const-string v8, "shownotes"

    .line 99
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v12, v12, Lcom/neverland/prefs/TOptions;->showNotesOnPage:I

    invoke-virtual {v2, v4, v8, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "disableseparator"

    .line 100
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v8, v8, Lcom/neverland/prefs/TOptions;->disableTurnBitmap1:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "autosaveprofiles"

    .line 101
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v8, v8, Lcom/neverland/prefs/TOptions;->autosaveProfiles:Z

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "citeline"

    .line 102
    iget-object v8, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget v8, v8, Lcom/neverland/prefs/TOneProfile;->underlineStyle:I

    invoke-virtual {v2, v11, v4, v8}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->standart:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_13

    const-string v4, "colorselect"

    .line 104
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v12, v12, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    aget v12, v12, v8

    const v15, 0xffffff

    and-int/2addr v12, v15

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "colorfind"

    .line 105
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v12, v12, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    const/4 v15, 0x1

    aget v12, v12, v15

    const v15, 0xffffff

    and-int/2addr v12, v15

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "colorsupport"

    .line 106
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v12, v12, Lcom/neverland/prefs/TOneProfile;->selectionColor:[I

    const/4 v15, 0x5

    aget v12, v12, v15

    const v15, 0xffff

    and-int/2addr v12, v15

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_13
    const-string v4, "progressfullline"

    .line 107
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v12, v12, Lcom/neverland/prefs/TOptions;->progressFullLine:Z

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v4, Lcom/neverland/prefs/TOptions;->statusFont1:Ljava/lang/String;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14

    const-string v4, "interfacefont"

    .line 109
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v12, v12, Lcom/neverland/prefs/TOptions;->statusFont1:Ljava/lang/String;

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string v4, "notesitems"

    .line 110
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v12, v12, Lcom/neverland/prefs/TOptions;->notesItemsOnPageCount:I

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "statussize"

    .line 111
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v12, v12, Lcom/neverland/prefs/TOptions;->statusSize:I

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "statusbold"

    .line 112
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v12, v12, Lcom/neverland/prefs/TOptions;->statusBold:Z

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "statusreverse"

    .line 113
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v12, v12, Lcom/neverland/prefs/TOptions;->statusReverse:Z

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "statuslongclick"

    .line 114
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v12, v12, Lcom/neverland/prefs/TOptions;->statusLongClick:Z

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "useheader"

    .line 115
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v12, v12, Lcom/neverland/prefs/TOptions;->useHeader:I

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "usestatus"

    .line 116
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v12, v12, Lcom/neverland/prefs/TOptions;->useStatus:I

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "useprogress"

    .line 117
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v12, v12, Lcom/neverland/prefs/TOptions;->useProgress:I

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "rotateos"

    .line 118
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v12, v12, Lcom/neverland/prefs/TOptions;->rotate_onyx_usesystem:Z

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx_old:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    .line 120
    invoke-virtual {v3, v4}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v3

    if-nez v3, :cond_15

    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v3, v3, Lcom/neverland/prefs/TOptions;->rotate_onyx_usesystem:Z

    if-nez v3, :cond_16

    :cond_15
    const-string v3, "rotate"

    .line 121
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->rotate_current1:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "rotateprev"

    .line 122
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->rotate_prev1:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_16
    const-string v3, "pagesize"

    .line 123
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->pageSize:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "day"

    .line 124
    iget-boolean v4, v1, Lcom/neverland/prefs/TPref;->isDay:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "backaction"

    .line 125
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->backAction1:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "imagescale"

    .line 126
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->imageScale:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "nightfilter"

    .line 127
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->useNightFiler:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "longtapmode"

    .line 128
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->longTapMode:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "longtaplink"

    .line 129
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->openLinkLongTap:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "pinchfontsize"

    .line 130
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->pinchFontSize:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "usedoubletap"

    .line 131
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->useDoubleTap:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "sidebacklightl"

    .line 132
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->sideBacklightLeft1:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "sidebacklightr"

    .line 133
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->sideBacklightRight1:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "listdevider"

    .line 134
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->useListSeparator:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "dictionarya"

    .line 135
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->dictionaryWord:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "dictionaryb"

    .line 136
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->dictionaryPhrase:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "opendialogtap"

    .line 137
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->openDialogsTap:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-boolean v3, Lcom/neverland/mainApp;->f:Z

    if-eqz v3, :cond_17

    const-string v3, "usenotofonts"

    .line 139
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->useFontsNoto:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "usesystemfonts"

    .line 140
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->useFontsSystem:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_17
    const-string v3, "fullskin"

    .line 141
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->useFullscreenSkin:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "usenotch"

    .line 142
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->useNotch1:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "autoscrollroll"

    .line 143
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->autoscrollMode:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "dialogusecover"

    .line 144
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->dialogUseCover:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "dialogsmalltitles"

    .line 145
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->dialogSmallTitles:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "dialogscalex"

    .line 146
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->dialogTextScaleX:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "statusscalex"

    .line 147
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->statusTextScaleX:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "KEYS"

    const-string v4, "verticalswipe"

    .line 148
    iget-object v11, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v11, v11, Lcom/neverland/prefs/TTaps;->verticalSwipe:I

    invoke-virtual {v2, v3, v4, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "KEYS"

    const-string v4, "horizontalswipe"

    .line 149
    iget-object v11, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-boolean v11, v11, Lcom/neverland/prefs/TTaps;->horizontalSwipeDisable:Z

    invoke-virtual {v2, v3, v4, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "ANIMATION"

    const-string v4, "type"

    .line 150
    iget-object v11, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v11, v11, Lcom/neverland/prefs/TAnimation;->type:I

    invoke-virtual {v2, v3, v4, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "ANIMATION"

    const-string v4, "time"

    .line 151
    iget-object v11, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v11, v11, Lcom/neverland/prefs/TAnimation;->time:I

    invoke-virtual {v2, v3, v4, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "ANIMATION"

    const-string v4, "always"

    .line 152
    iget-object v11, v1, Lcom/neverland/prefs/TPref;->animation:Lcom/neverland/prefs/TAnimation;

    iget v11, v11, Lcom/neverland/prefs/TAnimation;->always:I

    invoke-virtual {v2, v3, v4, v11}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x0

    .line 153
    :goto_f
    sget v4, Lcom/neverland/prefs/TTaps;->KEYCODE_SUPPORTED_MAX:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "TAPSANDSWIPES"

    if-ge v3, v4, :cond_1b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1a

    .line 154
    :try_start_3
    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_10

    .line 155
    :cond_18
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v4, v4, Lcom/neverland/prefs/TTaps;->keys:[I

    aget v4, v4, v3

    if-nez v4, :cond_19

    const/16 v4, 0x19

    if-eq v3, v4, :cond_19

    const/16 v4, 0x18

    if-ne v3, v4, :cond_1a

    .line 156
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "key"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v12, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v12, v12, Lcom/neverland/prefs/TTaps;->keys:[I

    aget v12, v12, v3

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1a
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    const/4 v3, 0x0

    :goto_11
    const/16 v4, 0x9

    if-ge v3, v4, :cond_1c

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "st"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v15, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v15, v15, Lcom/neverland/prefs/TTaps;->shortTaps:[I

    aget v3, v15, v3

    invoke-virtual {v2, v11, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    move v3, v12

    goto :goto_11

    :cond_1c
    const/4 v3, 0x0

    :goto_12
    const/16 v4, 0x9

    if-ge v3, v4, :cond_1d

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lt"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v15, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v15, v15, Lcom/neverland/prefs/TTaps;->longTaps:[I

    aget v3, v15, v3

    invoke-virtual {v2, v11, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    move v3, v12

    goto :goto_12

    :cond_1d
    const/4 v3, 0x0

    :goto_13
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1e

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ds"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v15, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v15, v15, Lcom/neverland/prefs/TTaps;->doubleSwipe:[I

    aget v3, v15, v3

    invoke-virtual {v2, v11, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    move v3, v12

    goto :goto_13

    :cond_1e
    const-string v3, "sdt"

    .line 160
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v4, v4, Lcom/neverland/prefs/TTaps;->shortDoubleTap:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "ldt"

    .line 161
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v4, v4, Lcom/neverland/prefs/TTaps;->longDoubleTap:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "stt"

    .line 162
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v4, v4, Lcom/neverland/prefs/TTaps;->thirdTap:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "tapstatus"

    .line 163
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v4, v4, Lcom/neverland/prefs/TTaps;->status:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "tapheader"

    .line 164
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget v4, v4, Lcom/neverland/prefs/TTaps;->header:I

    invoke-virtual {v2, v11, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x0

    :goto_14
    const/16 v4, 0xa

    if-ge v3, v4, :cond_1f

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "qpan"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v12, v1, Lcom/neverland/prefs/TPref;->taps:Lcom/neverland/prefs/TTaps;

    iget-object v12, v12, Lcom/neverland/prefs/TTaps;->quickPanel1:[I

    aget v12, v12, v3

    invoke-virtual {v2, v11, v4, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1f
    const-string v3, "meta0"

    .line 166
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    invoke-virtual {v2, v9, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "tile0"

    .line 167
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    invoke-virtual {v2, v9, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "bookshelf"

    .line 168
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    invoke-virtual {v2, v9, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "fb2styles"

    .line 169
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v4, v4, Lcom/neverland/prefs/TBookCSS;->enableFB2CSS:Z

    invoke-virtual {v2, v14, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "fb2subtitles"

    .line 170
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v4, v4, Lcom/neverland/prefs/TBookCSS;->enableFB2Subtitles:Z

    invoke-virtual {v2, v14, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "fb2allseries"

    .line 171
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v4, v4, Lcom/neverland/prefs/TBookCSS;->enableFB2AllSeries:Z

    invoke-virtual {v2, v14, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssFB2Tables:Z

    invoke-virtual {v2, v14, v7, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssFB2VMargin:Z

    invoke-virtual {v2, v14, v6, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssFB2HMargin:Z

    invoke-virtual {v2, v14, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssFB2Indent:Z

    invoke-virtual {v2, v14, v13, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssFB2Justify:Z

    move-object/from16 v4, v22

    invoke-virtual {v2, v14, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssFB2FontSize:Z

    move-object/from16 v9, v21

    invoke-virtual {v2, v14, v9, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssEPUBTables:Z

    move-object/from16 v11, v20

    invoke-virtual {v2, v11, v7, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "cssdclr"

    .line 179
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v12, v12, Lcom/neverland/prefs/TBookCSS;->cssEPUBDisColor:Z

    invoke-virtual {v2, v11, v3, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssEPUBVMargin:Z

    invoke-virtual {v2, v11, v6, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssEPUBHMargin:Z

    invoke-virtual {v2, v11, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssEPUBIndent:Z

    invoke-virtual {v2, v11, v13, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssEPUBJustify:Z

    invoke-virtual {v2, v11, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssEPUBFontSize:Z

    invoke-virtual {v2, v11, v9, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssHTMLTables:Z

    move-object/from16 v11, v19

    invoke-virtual {v2, v11, v7, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "cssdclr"

    .line 186
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v12, v12, Lcom/neverland/prefs/TBookCSS;->cssHTMLDisColor:Z

    invoke-virtual {v2, v11, v3, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssHTMLVMargin:Z

    invoke-virtual {v2, v11, v6, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssHTMLHMargin:Z

    invoke-virtual {v2, v11, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssHTMLIndent:Z

    invoke-virtual {v2, v11, v13, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssHTMLJustify:Z

    invoke-virtual {v2, v11, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssHTMLFontSize:Z

    invoke-virtual {v2, v11, v9, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssCHMTables:Z

    move-object/from16 v11, v18

    invoke-virtual {v2, v11, v7, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "cssdclr"

    .line 193
    iget-object v12, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v12, v12, Lcom/neverland/prefs/TBookCSS;->cssCHMDisColor:Z

    invoke-virtual {v2, v11, v3, v12}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssCHMVMargin:Z

    invoke-virtual {v2, v11, v6, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssCHMHMargin:Z

    invoke-virtual {v2, v11, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssCHMIndent:Z

    invoke-virtual {v2, v11, v13, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssCHMJustify:Z

    invoke-virtual {v2, v11, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssCHMFontSize:Z

    invoke-virtual {v2, v11, v9, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssOfficeTables:Z

    move-object/from16 v11, v17

    invoke-virtual {v2, v11, v7, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssOfficeVMargin:Z

    invoke-virtual {v2, v11, v6, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssOfficeHMargin:Z

    invoke-virtual {v2, v11, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssOfficeIndent:Z

    invoke-virtual {v2, v11, v13, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssOfficeJustify:Z

    invoke-virtual {v2, v11, v4, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v3, v3, Lcom/neverland/prefs/TBookCSS;->cssOfficeFontSize:Z

    invoke-virtual {v2, v11, v9, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "BOOKS"

    const-string v4, "usetopfirst"

    .line 205
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v5, v5, Lcom/neverland/prefs/TBookCSS;->useTopMarginForFirstItem:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "BOOKS"

    const-string v4, "inversestyles"

    .line 206
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-boolean v5, v5, Lcom/neverland/prefs/TBookCSS;->enableInverseStyles:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "BOOKS"

    const-string v4, "preparedialog"

    .line 207
    iget-object v5, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget v5, v5, Lcom/neverland/prefs/TBookCSS;->prepareDialog:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_15
    const/16 v3, 0xc

    if-ge v8, v3, :cond_21

    .line 208
    iget-object v3, v1, Lcom/neverland/prefs/TPref;->bookCSS:Lcom/neverland/prefs/TBookCSS;

    iget-object v3, v3, Lcom/neverland/prefs/TBookCSS;->arrStyles:[Lcom/neverland/prefs/TBookCSS$TOneStyles;

    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/neverland/prefs/TBookCSS;->getString4SaveOneStyles(Lcom/neverland/prefs/TBookCSS$TOneStyles;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    const-string v4, "BOOKS"

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "style"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_21
    const-string v3, "firstletter"

    .line 210
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->libraryUseFirstLetter:I

    move-object/from16 v5, v16

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "usepath"

    .line 211
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->libraryPath:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "nomedia"

    .line 212
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->libraryUseNoMedia:Z

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "aliases"

    .line 213
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->libraryUseAliases:Z

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "opdsfavor"

    .line 214
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->opdsDownload2Favor:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "pagelimit"

    .line 215
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->libraryBookListPageLimit:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "cyrfirst"

    .line 216
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->libraryCyrillicFirst:Z

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "usenick"

    .line 217
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->libraryUseAuthorNick:Z

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "ctpath"

    .line 218
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v4, Lcom/neverland/prefs/TOptions;->libraryCustomPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/neverland/prefs/TPref;->str2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dlpath"

    .line 219
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-object v4, v4, Lcom/neverland/prefs/TOptions;->opdsDownloadPath1:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/neverland/prefs/TPref;->str2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timerpin"

    .line 220
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsTimerPinned:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "speed"

    .line 221
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsSpeed:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "time"

    .line 222
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsTimeOut:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "pause"

    .line 223
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsPause:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "sel"

    .line 224
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsSelectedAsStart1:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "simple"

    .line 225
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsSimpleMenu:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "volctrl"

    .line 226
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsVolumeControl:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "notes"

    .line 227
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsReadNotes:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-boolean v3, v3, Lcom/neverland/utils/TCustomDevice;->supportAccelerometer:Z

    if-eqz v3, :cond_22

    const-string v3, "sensor"

    .line 229
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsUseMotion:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "sensorvalue"

    .line 230
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-wide v4, v4, Lcom/neverland/prefs/TOptions;->ttsMotionValue:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_22
    const-string v3, "allpar"

    .line 231
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsReadAllParagraph:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "image"

    .line 232
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsImage:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "timerstop"

    .line 233
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsStopAfterTimer:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "alarm"

    .line 234
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsAlarm:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "swx"

    .line 235
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsSwipeX:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "dswx"

    .line 236
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsDoubleSwipeX:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "swy"

    .line 237
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsSwipeY:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "dswx"

    .line 238
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsDoubleSwipeY:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "zm"

    .line 239
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsZoom:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "bclght"

    .line 240
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsKeepBacklight:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "volovr"

    .line 241
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v4, v4, Lcom/neverland/prefs/TOptions;->ttsVolumeAsTrack:Z

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteBool(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "addbmk"

    .line 242
    iget-object v4, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v4, Lcom/neverland/prefs/TOptions;->ttsAddBMK:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/neverland/utils/TMemIniFile2;->WriteInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    invoke-direct {v1, v2}, Lcom/neverland/prefs/TPref;->saveProfile(Lcom/neverland/utils/TMemIniFile2;)V

    .line 244
    invoke-virtual {v2}, Lcom/neverland/utils/TMemIniFile2;->UpdateFile()Z

    .line 245
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget-boolean v2, v2, Lcom/neverland/prefs/TOptions;->autosaveProfiles:Z

    if-eqz v2, :cond_23

    .line 246
    iget-object v2, v1, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v2, v2, Lcom/neverland/prefs/TInternalOptions;->lastLoadedProfile:Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;

    invoke-virtual {v1, v2}, Lcom/neverland/prefs/TPref;->saveProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/neverland/prefs/TPref;->unlock()Z

    .line 248
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_16
    return-void
.end method

.method public saveProfile(Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 105
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->lock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, v2, Lcom/neverland/utils/TCustomDevice;->configPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/neverland/utils/TCustomDevice;->exeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Lcom/neverland/prefs/TInternalOptions$PROFILE_NUMS;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".profile"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance v1, Lcom/neverland/utils/TMemIniFile2;

    invoke-direct {v1, p1}, Lcom/neverland/utils/TMemIniFile2;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v1}, Lcom/neverland/prefs/TPref;->saveProfile(Lcom/neverland/utils/TMemIniFile2;)V

    .line 110
    invoke-virtual {v1}, Lcom/neverland/utils/TMemIniFile2;->UpdateFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    invoke-direct {p0}, Lcom/neverland/prefs/TPref;->unlock()Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setActiveProfileFont()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileFont1()Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->fonts:Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    return-void
.end method

.method public setActiveProfileMargins()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->prf:Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;

    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileMargins()Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    move-result-object v1

    iput-object v1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->margins:Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    return-void
.end method

.method public setAutoBacklight(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v1, v0, Lcom/neverland/prefs/TScreenState;->unionBacklight:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean p1, v0, Lcom/neverland/prefs/TScreenState;->autoBacklightNight:Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iput-boolean p1, v0, Lcom/neverland/prefs/TScreenState;->autoBacklightDay:Z

    :goto_1
    return-void
.end method

.method public setAutoscrollTime(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput p1, v0, Lcom/neverland/prefs/TProfileColors;->autoscrollTime1:I

    return-void
.end method

.method public setBackColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBack:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setBackgroundMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundMode:I

    .line 2
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setBacklight(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iget-boolean v1, v0, Lcom/neverland/prefs/TScreenState;->unionBacklight:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p1, v0, Lcom/neverland/prefs/TScreenState;->levelBacklightNight:I

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->screen:Lcom/neverland/prefs/TScreenState;

    iput p1, v0, Lcom/neverland/prefs/TScreenState;->levelBacklightDay:I

    :goto_1
    return-void
.end method

.method public setBoldColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBold:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setBoldItalicColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorBoldItalic:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setClockUnderText(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-boolean p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->clockUnderText:Z

    return-void
.end method

.method public setCodeColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorCode:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setFLetColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorFlet:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setHighlightStyle(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-boolean p2, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorCode:Z

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-boolean p2, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBoldItalic:Z

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-boolean p2, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorItalic:Z

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-boolean p2, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->overrideColorBold:Z

    .line 5
    :goto_0
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setItalicColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorItalic:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setLineColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/prefs/TProfileColors;->colorLine:I

    return-void
.end method

.method public setLinkColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorLink:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setNeededBackground(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-lt v1, v2, :cond_4

    sget-object v1, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v1, v1, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v2, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    iget-object v1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    if-eq p1, v1, :cond_6

    .line 4
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_1
    iput-object v3, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 7
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    iput-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 9
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/neverland/book/TBook;->loadSkinBitmap(Ljava/lang/String;)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz p1, :cond_6

    .line 10
    iget v0, p0, Lcom/neverland/prefs/TPref;->marker4back:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/neverland/prefs/TPref;->marker4back:I

    iput v0, p1, Lcom/neverland/engbook/forpublic/AlBitmap;->marker:I

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    iget-object v1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v1, v1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    if-eq p1, v1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    :cond_3
    iput-object v3, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 15
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object p1, p1, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    iput-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 17
    sget-object p1, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/neverland/book/TBook;->loadSkinBitmap(Ljava/lang/String;)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz p1, :cond_6

    .line 18
    iget v0, p0, Lcom/neverland/prefs/TPref;->marker4back:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/neverland/prefs/TPref;->marker4back:I

    iput v0, p1, Lcom/neverland/engbook/forpublic/AlBitmap;->marker:I

    goto :goto_1

    .line 19
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    :cond_5
    iput-object v3, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 22
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getActiveProfileColor()Lcom/neverland/prefs/TProfileColors;

    move-result-object p1

    .line 23
    iget-object v0, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGround:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->background:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 24
    iput-object v3, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v1, :cond_b

    .line 25
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "texture.png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iput-object v3, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    goto :goto_3

    .line 29
    :cond_7
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundTextureName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    .line 31
    :cond_8
    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    iget-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    goto :goto_3

    .line 32
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    if-eqz v1, :cond_a

    .line 33
    iget-object v1, v1, Lcom/neverland/engbook/forpublic/AlBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_a
    iput-object v3, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    .line 35
    iput-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundTextureName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 37
    iget-object p1, p1, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    sget-object v0, Lcom/neverland/mainApp;->m:Lcom/neverland/book/TBook;

    iget-object v1, p0, Lcom/neverland/prefs/TPref;->lastLoadBackgroundTextureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/neverland/book/TBook;->loadSkinBitmap(Ljava/lang/String;)Lcom/neverland/engbook/forpublic/AlBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/neverland/prefs/TPref;->lastLoadBackGroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    iput-object v0, p1, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->backgroundTexture:Lcom/neverland/engbook/forpublic/AlBitmap;

    :cond_b
    :goto_3
    return-void
.end method

.method public setOpenDialogBookshelf(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/prefs/TPref;->getOpenDialogNumber(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, p2, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    or-int/2addr p1, v0

    iput p1, p2, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, p2, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p2, Lcom/neverland/prefs/TOptions;->scanFileBookShelf:I

    :goto_0
    return-void
.end method

.method public setOpenDialogMetadata(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/prefs/TPref;->getOpenDialogNumber(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, p2, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    or-int/2addr p1, v0

    iput p1, p2, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, p2, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p2, Lcom/neverland/prefs/TOptions;->scanFileMetadata:I

    :goto_0
    return-void
.end method

.method public setOpenDialogTile(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/neverland/prefs/TPref;->getOpenDialogNumber(Lcom/neverland/viscomp/dialogs/TBaseDialog$TYPE_DIALOG;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, p2, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    or-int/2addr p1, v0

    iput p1, p2, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v0, p2, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p2, Lcom/neverland/prefs/TOptions;->scanFileTile1:I

    :goto_0
    return-void
.end method

.method public setSkinOnePage(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object p1, v0, Lcom/neverland/prefs/TProfileColors;->backgrndName1:Ljava/lang/String;

    return-void
.end method

.method public setSkinTwoPage(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object p1, v0, Lcom/neverland/prefs/TProfileColors;->backgrndName2:Ljava/lang/String;

    return-void
.end method

.method public setStatusBackColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/prefs/TProfileColors;->colorStatusBack:I

    return-void
.end method

.method public setStatusColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/prefs/TProfileColors;->colorStatus:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorText:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setThemeButtonByProgressColor1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget-object v1, v0, Lcom/neverland/prefs/TInternalOptions;->useTheme2:Lcom/neverland/prefs/TPref$THEME_TYPE;

    sget-object v2, Lcom/neverland/prefs/TPref$THEME_TYPE;->def:Lcom/neverland/prefs/TPref$THEME_TYPE;

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Lcom/neverland/prefs/TPref$THEME_TYPE;->eink:Lcom/neverland/prefs/TPref$THEME_TYPE;

    if-ne v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, v0, Lcom/neverland/prefs/TInternalOptions;->buttonColorForSystemTheme:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/neverland/prefs/TPref;->getLineColor()I

    move-result v1

    iput v1, v0, Lcom/neverland/prefs/TInternalOptions;->menuAccentColor:I

    return-void
.end method

.method public setTitleColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/neverland/prefs/TProfileColors;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lcom/neverland/engbook/forpublic/AlPublicProfileColors;->colorTitle:I

    .line 2
    sget-object p1, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    invoke-virtual {p1}, Lcom/neverland/prefs/TPref;->initializeProfile()V

    return-void
.end method

.method public setUseStatusBackColor1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/neverland/prefs/TPref;->profile:Lcom/neverland/prefs/TOneProfile;

    iget-object v0, v0, Lcom/neverland/prefs/TOneProfile;->colors:[Lcom/neverland/prefs/TProfileColors;

    iget-boolean v1, p0, Lcom/neverland/prefs/TPref;->isDay:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput p1, v0, Lcom/neverland/prefs/TProfileColors;->overrideColorStatusBack:I

    return-void
.end method

.method public syncNeed(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/neverland/prefs/TPref;->intopt:Lcom/neverland/prefs/TInternalOptions;

    iget p1, p1, Lcom/neverland/prefs/TInternalOptions;->syncAutoMode:I

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method
