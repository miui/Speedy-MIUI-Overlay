.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final UNSUPPORTED:I = -0x1

.field private static sService:Lcom/android/internal/app/ITraffic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getMobileRxBytes()J
.end method

.method public static native getMobileRxPackets()J
.end method

.method public static native getMobileTxBytes()J
.end method

.method public static native getMobileTxPackets()J
.end method

.method public static getService()Lcom/android/internal/app/ITraffic;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Landroid/net/TrafficStats;->sService:Lcom/android/internal/app/ITraffic;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Landroid/net/TrafficStats;->sService:Lcom/android/internal/app/ITraffic;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "traffic"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ITraffic$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ITraffic;

    move-result-object v0

    goto :goto_0
.end method

.method public static native getTotalRxBytes()J
.end method

.method public static native getTotalRxPackets()J
.end method

.method public static native getTotalTxBytes()J
.end method

.method public static native getTotalTxPackets()J
.end method

.method public static native getUidMobileRxBytes(I)J
.end method

.method public static native getUidMobileTxBytes(I)J
.end method

.method public static native getUidRxBytes(I)J
.end method

.method public static native getUidTxBytes(I)J
.end method
