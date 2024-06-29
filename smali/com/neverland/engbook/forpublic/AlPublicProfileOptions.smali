.class public Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;
.super Ljava/lang/Object;
.source "AlPublicProfileOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FIRSTLETTER_CLASSIC:I = 0x4

.field public static final FIRSTLETTER_ENABLE:I = 0x1

.field public static final FIRSTLETTER_ONLYFIRSTPAR:I = 0x2


# instance fields
.field public appUseRollScroll:Z

.field public colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

.field public dithering:I

.field public emptyLineHeight1:I

.field public first_letter_extened:I

.field public first_letter_mode:I

.field public fonts:Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

.field public gammaMode1:I

.field public gammaValue:I

.field public handingPunctuation:Z

.field public highlightSearch:Z

.field public justify:Z

.field public keepOneItem:Z

.field public margins:Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

.field public notesOnPage:Z

.field public paragraphSpacing:I

.field public requestNightFilter:Z

.field public sectionNewScreen:Z

.field public specialModeRoll1:Z

.field public twoColumn:Z

.field public verticalAlign:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->fonts:Lcom/neverland/engbook/forpublic/AlPublicProfileFonts;

    .line 3
    iput-object v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->colors:Lcom/neverland/engbook/forpublic/AlPublicProfileColors;

    .line 4
    iput-object v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->margins:Lcom/neverland/engbook/forpublic/AlPublicProfileMargins;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->twoColumn:Z

    .line 6
    iput-boolean v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->specialModeRoll1:Z

    .line 7
    iput-boolean v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->sectionNewScreen:Z

    .line 8
    iput-boolean v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->keepOneItem:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->justify:Z

    .line 10
    iput-boolean v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->notesOnPage:Z

    const/16 v2, 0x14

    .line 11
    iput v2, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->paragraphSpacing:I

    .line 12
    iput-boolean v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->verticalAlign:Z

    .line 13
    iput-boolean v1, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->handingPunctuation:Z

    .line 14
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->first_letter_mode:I

    .line 15
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->first_letter_extened:I

    .line 16
    iput-boolean v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->highlightSearch:Z

    const/16 v2, 0x64

    .line 17
    iput v2, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->emptyLineHeight1:I

    const/16 v2, 0xa

    .line 18
    iput v2, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->gammaValue:I

    .line 19
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->gammaMode1:I

    .line 20
    iput v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->dithering:I

    .line 21
    iput-boolean v1, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->requestNightFilter:Z

    .line 22
    iput-boolean v0, p0, Lcom/neverland/engbook/forpublic/AlPublicProfileOptions;->appUseRollScroll:Z

    return-void
.end method
