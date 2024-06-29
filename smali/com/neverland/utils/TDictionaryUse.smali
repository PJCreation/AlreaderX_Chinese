.class public Lcom/neverland/utils/TDictionaryUse;
.super Ljava/lang/Object;
.source "TDictionaryUse.java"


# static fields
.field private static final COLORDICT_EXTRA_FULLSCREEN:Ljava/lang/String; = "EXTRA_FULLSCREEN"

.field private static final COLORDICT_EXTRA_MARGIN_BOTTOM:Ljava/lang/String; = "EXTRA_MARGIN_BOTTOM"

.field private static final COLORDICT_EXTRA_MARGIN_LEFT:Ljava/lang/String; = "EXTRA_MARGIN_LEFT"

.field private static final COLORDICT_EXTRA_MARGIN_TOP:Ljava/lang/String; = "EXTRA_MARGIN_TOP"

.field private static final COLORDICT_EXTRA_QUERY:Ljava/lang/String; = "EXTRA_QUERY"

.field private static final COLORDICT_SEARCH_ACTION:Ljava/lang/String; = "colordict.intent.action.SEARCH"

.field private static final DICTAN_ARTICLE_WORD:Ljava/lang/String; = "article.word"

.field private static final DICTAN_CATEGORY:Ljava/lang/String; = "info.softex.dictan.EXTERNAL_DISPATCHER"

.field public static final DICT_AARD:I = 0x8

.field public static final DICT_COLORDICT:I = 0x2

.field public static final DICT_DICT:I = 0xc

.field public static final DICT_DICTAN:I = 0x4

.field public static final DICT_FIND_GOOGLECOM:I = 0xd

.field public static final DICT_FORA:I = 0x3

.field public static final DICT_FREEDICT:I = 0x6

.field public static final DICT_GOOGLETRANSLATE_FLOW:I = 0x10

.field public static final DICT_GOOGLETRANSLATE_STD:I = 0xe

.field public static final DICT_HEDGEDICT:I = 0x7

.field public static final DICT_LINGVO:I = 0x5

.field public static final DICT_ONYXALL:I = 0x14

.field public static final DICT_ONYXDICT:I = 0xb

.field public static final DICT_ONYX_FLOW:I = 0x15

.field public static final DICT_QUICKDICT:I = 0x9

.field public static final DICT_YANDEXTRANSLATE_FLOW:I = 0x11

.field public static final DICT_YANDEXTRANSLATE_STD:I = 0xf

.field private static final FORAPRO_PICK_RESULT_ACTION:Ljava/lang/String; = "com.ngc.fora.android.action.LOOKUP"

.field private static final FORA_EXTRA_QUERY:Ljava/lang/String; = "HEADWORD"

.field private static final FORA_PICK_RESULT_ACTION:Ljava/lang/String; = "com.ngc.fora.action.LOOKUP"

.field private static final FREEDICT_ACTION:Ljava/lang/String; = "org.freedictionary.MainActivity"

.field private static final FREEDICT_WORD:Ljava/lang/String; = "com.abbyy.mobile.lingvo.intent.extra.TEXT"

.field private static final LINGVO_ACTION:Ljava/lang/String; = "com.abbyy.mobile.lingvo.intent.action.TRANSLATE"

.field private static final LINGVO_WORD:Ljava/lang/String; = "com.abbyy.mobile.lingvo.intent.extra.TEXT"

.field private static final MAX_WORD_LEN:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDict(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lcom/neverland/mainApp;->l:Lcom/neverland/prefs/TPref;

    iget-object v3, v3, Lcom/neverland/prefs/TPref;->options:Lcom/neverland/prefs/TOptions;

    iget v4, v3, Lcom/neverland/prefs/TOptions;->dictionaryWord:I

    if-eqz p4, :cond_0

    .line 2
    iget v3, v3, Lcom/neverland/prefs/TOptions;->dictionaryPhrase:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    :cond_0
    const/16 v5, 0xb

    const/16 v6, 0x9

    const/16 v7, 0xc

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_1

    if-eq v4, v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x14

    :goto_0
    const/4 v8, 0x0

    if-eqz p3, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v9, p3

    .line 3
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_30

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x1000

    if-lt v11, v13, :cond_3

    if-nez p4, :cond_3

    goto/16 :goto_14

    .line 5
    :cond_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v11, 0x0

    .line 6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x301

    if-ge v11, v13, :cond_7

    .line 7
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v14, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lcom/neverland/d/b/a;->O(C)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lcom/neverland/d/b/a;->O(C)Z

    move-result v13

    if-nez v13, :cond_6

    .line 9
    :cond_5
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 10
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 11
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v13, v13, Lcom/neverland/utils/TCustomDevice;->cardSavePath:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_8

    const-string v13, "/dictionary_phrase.txt"

    goto :goto_5

    :cond_8
    const-string v13, "/dictionary_word.txt"

    :goto_5
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v15, v0, 0x1

    const/16 v16, 0x0

    .line 15
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v0, v13, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object/from16 v3, v16

    :goto_6
    if-eqz v3, :cond_c

    const-string v0, ""

    if-eqz v15, :cond_9

    .line 17
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xfeff

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    if-eqz p4, :cond_a

    .line 18
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->\n\r"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\r"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    const-string v13, "UTF-8"

    .line 20
    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object/from16 v0, v16

    :goto_7
    if-eqz v0, :cond_b

    .line 22
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 23
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 25
    :cond_b
    :goto_8
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 26
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_9
    if-eqz v9, :cond_14

    .line 27
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    .line 28
    :goto_a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_13

    .line 29
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v14, :cond_d

    goto :goto_c

    :cond_d
    if-nez p4, :cond_11

    .line 30
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/neverland/d/b/a;->I(C)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_b

    .line 31
    :cond_e
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x27

    if-eq v3, v5, :cond_10

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_10

    const/16 v5, 0x60

    if-eq v3, v5, :cond_10

    const/16 v5, 0x2bc

    if-eq v3, v5, :cond_10

    const/16 v5, 0x2019

    if-eq v3, v5, :cond_10

    packed-switch v3, :pswitch_data_1

    .line 32
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lt v3, v12, :cond_f

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x20

    if-eq v3, v5, :cond_12

    :cond_f
    const/16 v3, 0x20

    .line 33
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 34
    :cond_10
    :pswitch_1
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 35
    :cond_11
    :goto_b
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 36
    :cond_13
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 37
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_14
    const/4 v0, 0x2

    const/4 v3, 0x6

    if-ne v4, v0, :cond_16

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v5, "colordict.intent.action.SEARCH"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "EXTRA_QUERY"

    .line 39
    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    sget-object v5, Lcom/neverland/mainApp;->t:Landroid/util/DisplayMetrics;

    iget v6, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/2addr v5, v3

    const-string v3, "EXTRA_FULLSCREEN"

    .line 41
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_MARGIN_LEFT"

    .line 42
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    shr-int/lit8 v3, v5, 0x1

    const-string v5, "EXTRA_MARGIN_TOP"

    .line 43
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "EXTRA_MARGIN_BOTTOM"

    .line 44
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_15
    :goto_d
    move v5, v4

    goto/16 :goto_11

    :cond_16
    const/4 v0, 0x3

    if-ne v4, v0, :cond_17

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.ngc.fora.android.action.LOOKUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "HEADWORD"

    .line 46
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-static {v1, v0}, Lcom/neverland/utils/TCustomDevice;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.ngc.fora.action.LOOKUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "HEADWORD"

    .line 49
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d

    :cond_17
    const/4 v0, 0x4

    const/high16 v5, 0x40000000    # 2.0f

    const-string v6, "android.intent.action.VIEW"

    if-ne v4, v0, :cond_18

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "info.softex.dictan.EXTERNAL_DISPATCHER"

    .line 51
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "article.word"

    .line 53
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d

    :cond_18
    const/4 v0, 0x5

    if-ne v4, v0, :cond_19

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.abbyy.mobile.lingvo.intent.action.TRANSLATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.abbyy.mobile.lingvo.intent.extra.TEXT"

    .line 55
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    sget-object v3, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    iget-object v3, v3, Lcom/neverland/utils/TCustomDevice;->deviceType:Lcom/neverland/utils/finit$DEVICE_TYPE;

    sget-object v5, Lcom/neverland/utils/finit$DEVICE_TYPE;->devAll0:Lcom/neverland/utils/finit$DEVICE_TYPE;

    if-eq v3, v5, :cond_15

    const-string v3, "com.abbyy.mobile.lingvo.intent.extra.LIGHT_THEME"

    .line 57
    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_d

    :cond_19
    if-ne v4, v3, :cond_1a

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v3, "org.freedictionary.MainActivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.abbyy.mobile.lingvo.intent.extra.TEXT"

    .line 59
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d

    :cond_1a
    const/4 v0, 0x7

    const-string v3, "android.intent.extra.TEXT"

    const-string v9, "android.intent.action.SEND"

    const-string v10, "text/plain"

    if-ne v4, v0, :cond_1b

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "lubart.apps.dictionary/.DictionaryActivity"

    .line 61
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_1b
    const/16 v0, 0x10

    const-string v14, "android.intent.extra.PROCESS_TEXT"

    const-string v13, "android.intent.extra.PROCESS_TEXT_READONLY"

    const-string v15, "android.intent.action.PROCESS_TEXT"

    if-ne v4, v0, :cond_1e

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 67
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.google.android.apps.translate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 68
    new-instance v6, Landroid/content/ComponentName;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_e

    .line 69
    :cond_1d
    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_1e
    const/16 v0, 0xe

    if-ne v4, v0, :cond_1f

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.google.android.apps.translate/.TranslateActivity"

    .line 72
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_1f
    const/16 v0, 0xf

    if-ne v4, v0, :cond_20

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "ru.yandex.translate/ru.yandex.translate.ui.activities.MainActivity"

    .line 76
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_20
    const/16 v0, 0x11

    if-ne v4, v0, :cond_21

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ru.yandex.translate/ru.yandex.translate.ui.activities.QuickTrActivity"

    .line 80
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_21
    const/16 v0, 0x8

    const-string v3, "query"

    const-string v8, "android.intent.action.SEARCH"

    if-ne v4, v0, :cond_22

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v5, "aard2.lookup"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {v1, v0}, Lcom/neverland/utils/TCustomDevice;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "aarddict.android"

    const-string v7, "aarddict.android.Lookup"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_22
    const-string v0, "com.onyx.android.dict.ui.DictActivity"

    const-string v9, "com.onyx.android.dict"

    const/16 v12, 0x9

    if-ne v4, v12, :cond_24

    .line 90
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.hughes.android.dictionary"

    const-string v10, "com.hughes.android.dictionary.DictionaryManagerActivity"

    invoke-direct {v6, v7, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-static {v1, v5}, Lcom/neverland/utils/TCustomDevice;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 93
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_23
    move-object v0, v5

    goto/16 :goto_d

    :cond_24
    const/16 v12, 0xb

    if-ne v4, v12, :cond_25

    .line 95
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_25
    const-string v12, "com.onyx.dict"

    if-ne v4, v7, :cond_26

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v3, Landroid/content/ComponentName;

    const-string v7, "com.onyx.dict.activity.DictMainActivity"

    invoke-direct {v3, v12, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-static {v1, v0}, Lcom/neverland/utils/TCustomDevice;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.onyx.dict.main.ui.DictMainActivity"

    invoke-direct {v3, v12, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_26
    const/16 v7, 0x15

    if-ne v4, v7, :cond_27

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.onyx.dict/com.onyx.dict.translation.ui.ProcessTextActivity"

    .line 107
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 108
    invoke-virtual {v0, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    invoke-virtual {v0, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_27
    const/16 v7, 0xd

    if-ne v4, v7, :cond_28

    .line 111
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_4
    const-string v0, "UTF-8"

    .line 112
    invoke-static {v11, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 114
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.google.com/#newwindow=1&q="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v0, v3

    goto/16 :goto_d

    :cond_28
    const/16 v7, 0x14

    if-ne v4, v7, :cond_2c

    .line 116
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v7, Landroid/content/ComponentName;

    const-string v10, "com.onyx.dict.main.ui.DictMainActivity"

    invoke-direct {v7, v12, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {v1, v4}, Lcom/neverland/utils/TCustomDevice;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_29

    :goto_10
    move-object v0, v4

    const/16 v5, 0xc

    goto :goto_11

    .line 121
    :cond_29
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.onyx.dict.activity.DictMainActivity"

    invoke-direct {v6, v12, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {v1, v4}, Lcom/neverland/utils/TCustomDevice;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_10

    .line 126
    :cond_2a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {v1, v0}, Lcom/neverland/utils/TCustomDevice;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/16 v5, 0xb

    goto :goto_11

    .line 129
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.hughes.android.dictionary"

    const-string v6, "com.hughes.android.dictionary.DictionaryManagerActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x9

    goto :goto_11

    .line 131
    :cond_2c
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    const v3, 0x7f110133

    invoke-virtual {v0, v2, v3}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    move v5, v4

    move-object/from16 v0, v16

    :goto_11
    if-eqz v0, :cond_2d

    .line 132
    invoke-static {v1, v0}, Lcom/neverland/utils/TCustomDevice;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2d

    packed-switch v5, :pswitch_data_2

    :pswitch_2
    goto :goto_13

    .line 133
    :pswitch_3
    :try_start_5
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    :pswitch_4
    const/16 v1, 0x64

    .line 134
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    :pswitch_5
    const/high16 v1, 0x10000000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    :pswitch_6
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_13

    :catch_5
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    const v1, 0x7f110133

    invoke-virtual {v0, v2, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    goto :goto_13

    .line 139
    :cond_2d
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    .line 140
    sget-object v1, Lcom/neverland/utils/TCustomDevice$IS_DEVICE;->onyx:Lcom/neverland/utils/TCustomDevice$IS_DEVICE;

    invoke-virtual {v0, v1}, Lcom/neverland/utils/TCustomDevice;->isDevice(Lcom/neverland/utils/TCustomDevice$IS_DEVICE;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const v1, 0x7f110138

    goto :goto_12

    :cond_2e
    const v1, 0x7f110137

    .line 141
    :goto_12
    invoke-virtual {v0, v2, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    :goto_13
    return-void

    .line 142
    :cond_2f
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    const v1, 0x7f110135

    invoke-virtual {v0, v2, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    return-void

    .line 143
    :cond_30
    :goto_14
    sget-object v0, Lcom/neverland/mainApp;->n:Lcom/neverland/utils/TCustomDevice;

    const v1, 0x7f110134

    invoke-virtual {v0, v2, v1}, Lcom/neverland/utils/TCustomDevice;->showToast(Landroid/content/Context;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2010
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
