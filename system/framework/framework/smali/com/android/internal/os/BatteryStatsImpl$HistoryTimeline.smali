.class public final Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/IHistoryTimeline;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HistoryTimeline"
.end annotation


# instance fields
.field private mHistory:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

.field private final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

.field private mNumHistoryItems:I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 2323
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2329
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;JB)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2323
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->addHistoryRecordLocked(JB)V

    return-void
.end method

.method private addHistoryRecordLocked(JB)V
    .locals 2
    .parameter "curTime"
    .parameter "cmd"

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2451
    .local v0, rec:Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_0

    .line 2452
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2456
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2458
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2459
    return-void

    .line 2454
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    .end local v0           #rec:Landroid/os/BatteryStats$HistoryItem;
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .restart local v0       #rec:Landroid/os/BatteryStats$HistoryItem;
    goto :goto_0
.end method

.method private addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .parameter "rec"

    .prologue
    .line 2462
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mNumHistoryItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mNumHistoryItems:I

    .line 2463
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2464
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2465
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_0

    .line 2466
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2467
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2471
    :goto_0
    return-void

    .line 2469
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_0
.end method


# virtual methods
.method public addHistoryRecordLocked(J)V
    .locals 6
    .parameter "curTime"

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0xbb8

    const/16 v2, 0x7d0

    const/4 v4, 0x0

    .line 2396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v0, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2404
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 2411
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2413
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2414
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2415
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2416
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2417
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_0

    .line 2419
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2420
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v1, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    goto :goto_0

    .line 2425
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2427
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mNumHistoryItems:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mNumHistoryItems:I

    if-ne v0, v3, :cond_5

    .line 2429
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->addHistoryRecordLocked(JB)V

    .line 2432
    :cond_5
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mNumHistoryItems:I

    if-lt v0, v2, :cond_6

    .line 2437
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mNumHistoryItems:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v0, v1

    const/high16 v1, 0x7800

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2446
    :cond_6
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->addHistoryRecordLocked(JB)V

    goto/16 :goto_0
.end method

.method public addHistoryRecordLocked(JIZ)V
    .locals 3
    .parameter "curTime"
    .parameter "states"
    .parameter "addState"

    .prologue
    .line 2387
    if-eqz p4, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p3

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2392
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->addHistoryRecordLocked(J)V

    .line 2393
    return-void

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/lit8 v2, p3, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_0
.end method

.method public clearHistoryLocked()V
    .locals 2

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_0

    .line 2475
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2476
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    .line 2479
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mNumHistoryItems:I

    .line 2480
    return-void
.end method

.method public getCurHistory()Landroid/os/BatteryStats$HistoryItem;
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    return-object v0
.end method

.method public getHistory()Landroid/os/BatteryStats$HistoryItem;
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    return-object v0
.end method

.method public getHistoryNum()I
    .locals 1

    .prologue
    .line 2353
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mNumHistoryItems:I

    return v0
.end method

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 2
    .parameter "out"

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 2344
    .local v0, cur:Landroid/os/BatteryStats$HistoryItem;
    if-nez v0, :cond_0

    .line 2345
    const/4 v1, 0x0

    .line 2349
    :goto_0
    return v1

    .line 2347
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2348
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 2349
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 2333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    .line 2334
    return-void
.end method

.method public readHistory(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 2375
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .local v1, time:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 2376
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0, v1, v2, p1}, Landroid/os/BatteryStats$HistoryItem;-><init>(JLandroid/os/Parcel;)V

    .line 2377
    .local v0, rec:Landroid/os/BatteryStats$HistoryItem;
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    goto :goto_0

    .line 2379
    .end local v0           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    return-void
.end method

.method public startIteratingHistoryLocked()Z
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeHistory(Landroid/os/Parcel;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$HistoryTimeline;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    .line 2366
    .local v0, rec:Landroid/os/BatteryStats$HistoryItem;
    :goto_0
    if-eqz v0, :cond_1

    .line 2367
    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2368
    :cond_0
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_0

    .line 2370
    :cond_1
    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2371
    return-void
.end method
