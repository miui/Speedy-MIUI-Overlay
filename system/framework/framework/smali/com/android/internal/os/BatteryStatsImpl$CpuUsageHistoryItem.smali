.class public final Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
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
    name = "CpuUsageHistoryItem"
.end annotation


# instance fields
.field mForegroundTime:J

.field mSystemTime:J

.field mUserTime:J

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field time:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 2092
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2093
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;JJJ)V
    .locals 0
    .parameter
    .parameter "ut"
    .parameter "st"
    .parameter "t"

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mUserTime:J

    .line 2097
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mSystemTime:J

    .line 2098
    iput-wide p6, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->time:J

    .line 2099
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;JLandroid/os/Parcel;)V
    .locals 2
    .parameter
    .parameter "t"
    .parameter "src"

    .prologue
    .line 2101
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2102
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->time:J

    .line 2103
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mUserTime:J

    .line 2104
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mSystemTime:J

    .line 2105
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mForegroundTime:J

    .line 2106
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2110
    const/4 v0, 0x0

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 2130
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->time:J

    return-wide v0
.end method

.method public getValue()J
    .locals 4

    .prologue
    .line 2125
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mUserTime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mSystemTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 2115
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2116
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mUserTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2117
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mSystemTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2118
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mForegroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2119
    return-void
.end method
