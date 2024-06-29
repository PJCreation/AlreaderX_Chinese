.class public final enum Lorg/apache/commons/io/file/StandardDeleteOption;
.super Ljava/lang/Enum;
.source "StandardDeleteOption.java"

# interfaces
.implements Lorg/apache/commons/io/file/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/file/StandardDeleteOption;",
        ">;",
        "Lorg/apache/commons/io/file/e;"
    }
.end annotation


# static fields
.field public static final enum OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

.field private static final synthetic e:[Lorg/apache/commons/io/file/StandardDeleteOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/StandardDeleteOption;

    const-string v1, "OVERRIDE_READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/file/StandardDeleteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/io/file/StandardDeleteOption;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lorg/apache/commons/io/file/StandardDeleteOption;->e:[Lorg/apache/commons/io/file/StandardDeleteOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/io/file/e;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static overrideReadOnly([Lorg/apache/commons/io/file/e;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/m;->i([Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lc/a/a/a;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/io/file/b;->a:Lorg/apache/commons/io/file/b;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/file/StandardDeleteOption;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/io/file/StandardDeleteOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/StandardDeleteOption;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/file/StandardDeleteOption;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->e:[Lorg/apache/commons/io/file/StandardDeleteOption;

    invoke-virtual {v0}, [Lorg/apache/commons/io/file/StandardDeleteOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/file/StandardDeleteOption;

    return-object v0
.end method
