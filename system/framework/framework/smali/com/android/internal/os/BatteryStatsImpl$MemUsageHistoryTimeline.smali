.class public final Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;
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
    name = "MemUsageHistoryTimeline"
.end annotation


# static fields
.field private static final MAX_HISTORY_COUNT:I = 0x7d0


# instance fields
.field private mIteratorPos:I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field private timeline:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 2267
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    return-void
.end method

.method private addHistoryRecord(Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2282
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2285
    :cond_0
    return-void
.end method


# virtual methods
.method public addHistoryRecord(JJJ)V
    .locals 8
    .parameter "vss"
    .parameter "rss"
    .parameter "time"

    .prologue
    .line 2277
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;-><init>(Lcom/android/internal/os/BatteryStatsImpl;JJJ)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->addHistoryRecord(Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;)V

    .line 2278
    return-void
.end method

.method public getHistoryCount()I
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNextHistory()Landroid/os/IHistoryValueItem;
    .locals 1

    .prologue
    .line 2267
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->getNextHistory()Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getNextHistory()Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;
    .locals 3

    .prologue
    .line 2289
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->mIteratorPos:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->mIteratorPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->mIteratorPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public readHistory(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 2301
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .local v1, time:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 2302
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;-><init>(Lcom/android/internal/os/BatteryStatsImpl;JLandroid/os/Parcel;)V

    .line 2303
    .local v0, rec:Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->addHistoryRecord(Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;)V

    goto :goto_0

    .line 2305
    .end local v0           #rec:Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2315
    return-void
.end method

.method public startIterating()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2309
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->mIteratorPos:I

    .line 2310
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

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
    .line 2293
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;

    .line 2294
    .local v1, item:Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2296
    .end local v1           #item:Lcom/android/internal/os/BatteryStatsImpl$MemUsageHistoryItem;
    :cond_0
    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2297
    return-void
.end method
