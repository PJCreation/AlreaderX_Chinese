.class public final synthetic Landroidx/window/layout/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic e:Lkotlinx/coroutines/channels/e;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/c;->e:Lkotlinx/coroutines/channels/e;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/c;->e:Lkotlinx/coroutines/channels/e;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {v0, p1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->a(Lkotlinx/coroutines/channels/e;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
