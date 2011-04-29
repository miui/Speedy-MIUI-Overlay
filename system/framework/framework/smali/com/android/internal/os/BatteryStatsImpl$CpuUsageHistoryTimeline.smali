.class public final Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/IHistoryValueTimeline;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CpuUsageHistoryTimeline"
.end annotation


# static fields
.field private static final MAX_HISTORY_COUNT:I = 0x7d0


# instance fields
.field private lastTime:J

.field private mIteratorPos:I

.field private stCache:J

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field private timeline:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private utCache:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 2139
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    return-void
.end method

.method private addHistoryRecord(Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 2173
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;

    move-object v0, v1

    .line 2174
    .local v0, preItem:Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
    :goto_0
    if-eqz v0, :cond_2

    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->time:J

    iget-wide v3, p1, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->time:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2175
    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mForegroundTime:J

    iget-wide v3, p1, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mForegroundTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mForegroundTime:J

    .line 2176
    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mUserTime:J

    iget-wide v3, p1, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mUserTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mUserTime:J

    .line 2177
    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mSystemTime:J

    iget-wide v3, p1, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mSystemTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->mSystemTime:J

    .line 2184
    :cond_0
    :goto_1
    return-void

    .line 2173
    .end local v0           #preItem:Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 2179
    .restart local v0       #preItem:Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_0

    .line 2181
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public addHistoryRecord(JJJ)V
    .locals 8
    .parameter "ut"
    .parameter "st"
    .parameter "time"

    .prologue
    .line 2152
    add-long v0, p1, p3

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 2153
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->utCache:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->stCache:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2154
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->utCache:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->stCache:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->lastTime:J

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;-><init>(Lcom/android/internal/os/BatteryStatsImpl;JJJ)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->addHistoryRecord(Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;)V

    .line 2157
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;-><init>(Lcom/android/internal/os/BatteryStatsImpl;JJJ)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->addHistoryRecord(Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;)V

    .line 2169
    :cond_1
    :goto_0
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->lastTime:J

    .line 2170
    return-void

    .line 2159
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->utCache:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->utCache:J

    .line 2160
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->stCache:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->stCache:J

    .line 2162
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->utCache:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->stCache:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 2163
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->utCache:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->stCache:J

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;-><init>(Lcom/android/internal/os/BatteryStatsImpl;JJJ)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->addHistoryRecord(Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;)V

    .line 2164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->utCache:J

    .line 2165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->stCache:J

    goto :goto_0
.end method

.method public getHistoryCount()I
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNextHistory()Landroid/os/IHistoryValueItem;
    .locals 1

    .prologue
    .line 2139
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->getNextHistory()Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getNextHistory()Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
    .locals 3

    .prologue
    .line 2188
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->mIteratorPos:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->mIteratorPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->mIteratorPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public readHistory(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 2200
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .local v1, time:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 2201
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;-><init>(Lcom/android/internal/os/BatteryStatsImpl;JLandroid/os/Parcel;)V

    .line 2202
    .local v0, rec:Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->addHistoryRecord(Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;)V

    goto :goto_0

    .line 2205
    .end local v0           #rec:Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2215
    return-void
.end method

.method public startIterating()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2209
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->mIteratorPos:I

    .line 2210
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public writeHistory(Landroid/os/Parcel;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 2192
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;

    .line 2193
    .local v1, item:Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2195
    .end local v1           #item:Lcom/android/internal/os/BatteryStatsImpl$CpuUsageHistoryItem;
    :cond_0
    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2196
    return-void
.end method
