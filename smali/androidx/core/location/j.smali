.class public final synthetic Landroidx/core/location/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/j;->e:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput-object p2, p0, Landroidx/core/location/j;->f:Ljava/lang/String;

    iput p3, p0, Landroidx/core/location/j;->g:I

    iput-object p4, p0, Landroidx/core/location/j;->h:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/core/location/j;->e:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/j;->f:Ljava/lang/String;

    iget v2, p0, Landroidx/core/location/j;->g:I

    iget-object v3, p0, Landroidx/core/location/j;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->f(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
