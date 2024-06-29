.class public Lorg/apache/james/mime4j/dom/field/u;
.super Ljava/lang/Object;
.source "FieldName.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->a:Ljava/lang/String;

    const-string v1, "Content-Transfer-Encoding"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->b:Ljava/lang/String;

    const-string v1, "Content-Disposition"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->c:Ljava/lang/String;

    const-string v1, "MIME-Version"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->d:Ljava/lang/String;

    const-string v1, "Date"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->e:Ljava/lang/String;

    const-string v1, "Message-ID"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->f:Ljava/lang/String;

    const-string v1, "Subject"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->g:Ljava/lang/String;

    const-string v1, "From"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->h:Ljava/lang/String;

    const-string v1, "Sender"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->i:Ljava/lang/String;

    const-string v1, "To"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->j:Ljava/lang/String;

    const-string v1, "Cc"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->k:Ljava/lang/String;

    const-string v1, "Bcc"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/dom/field/u;->l:Ljava/lang/String;

    const-string v1, "Reply-To"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/dom/field/u;->m:Ljava/lang/String;

    return-void
.end method
