.class public final Lkotlinx/coroutines/scheduling/f;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lkotlinx/coroutines/scheduling/i;


# static fields
.field public static final e:Lkotlinx/coroutines/scheduling/f;

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/f;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/f;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/f;->e:Lkotlinx/coroutines/scheduling/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/scheduling/f;->f:I

    return v0
.end method

.method public s()V
    .locals 0

    return-void
.end method
