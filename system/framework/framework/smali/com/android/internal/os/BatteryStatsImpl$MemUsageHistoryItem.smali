.class public final Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/os/IHistoryValueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemUsageHistoryItem"
.end annotation


# instance fields
.field mRss:J

.field mVss:J

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field time:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 2223
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2224
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;JJJ)V
    .locals 0
    .parameter
    .parameter "vss"
    .parameter "rss"
    .parameter "t"

    .prologue
    .line 2226
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2227
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->mVss:J

    .line 2228
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->mRss:J

    .line 2229
    iput-wide p6, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->time:J

    .line 2230
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;JLandroid/os/Parcel;)V
    .locals 2
    .parameter
    .parameter "t"
    .parameter "src"

    .prologue
    .line 2232
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2233
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->time:J

    .line 2234
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->mVss:J

    .line 2235
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->mRss:J

    .line 2236
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2240
    const/4 v0, 0x0

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 2258
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->time:J

    return-wide v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 2253
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->mRss:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 2245
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2246
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->mVss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2247
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->mRss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2248
    return-void
.end method
