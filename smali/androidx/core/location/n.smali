.class public final synthetic Landroidx/core/location/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic f:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/n;->e:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput-object p2, p0, Landroidx/core/location/n;->f:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/core/location/n;->e:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/n;->f:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->b(Landroid/location/Location;)V

    return-void
.end method
