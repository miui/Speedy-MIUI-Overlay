.class public final Lcom/android/internal/os/CommonHistoryTimeline;
.super Ljava/lang/Object;
.source "CommonHistoryTimeline.java"

# interfaces
.implements Landroid/os/IHistoryValueTimeline;


# static fields
.field private static final MAX_HISTORY_COUNT:I = 0x7d0

.field public static final RANGE_DAY:J = 0x5265c00L


# instance fields
.field private lastTime:J

.field private mIteratorPos:I

.field private mMaxRange:J

.field private timeline:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/CommonHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    return-void
.end method

.method private addHistoryRecord(Lcom/android/internal/os/CommonHistoryItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 34
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->mMaxRange:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v1, p1, Lcom/android/internal/os/CommonHistoryItem;->time:J

    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/CommonHistoryItem;

    iget-wide v3, v0, Lcom/android/internal/os/CommonHistoryItem;->time:J

    sub-long v0, v1, v3

    iget-wide v2, p0, Lcom/android/internal/os/CommonHistoryTimeline;->mMaxRange:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public addHistoryRecord(JJ)V
    .locals 3
    .parameter "value"
    .parameter "time"

    .prologue
    .line 29
    new-instance v0, Lcom/android/internal/os/CommonHistoryItem;

    iget-wide v1, p0, Lcom/android/internal/os/CommonHistoryTimeline;->lastTime:J

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/internal/os/CommonHistoryItem;-><init>(JJ)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/CommonHistoryTimeline;->addHistoryRecord(Lcom/android/internal/os/CommonHistoryItem;)V

    .line 30
    iput-wide p3, p0, Lcom/android/internal/os/CommonHistoryTimeline;->lastTime:J

    .line 31
    return-void
.end method

.method public getHistoryCount()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLastItem()Lcom/android/internal/os/CommonHistoryItem;
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/os/CommonHistoryItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getNextHistory()Landroid/os/IHistoryValueItem;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/os/CommonHistoryTimeline;->getNextHistory()Lcom/android/internal/os/CommonHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getNextHistory()Lcom/android/internal/os/CommonHistoryItem;
    .locals 3

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->mIteratorPos:I

    iget-object v1, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/os/CommonHistoryTimeline;->mIteratorPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/CommonHistoryTimeline;->mIteratorPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/os/CommonHistoryItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public readHistory(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 63
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .local v1, time:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 64
    new-instance v0, Lcom/android/internal/os/CommonHistoryItem;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/os/CommonHistoryItem;-><init>(JLandroid/os/Parcel;)V

    .line 65
    .local v0, rec:Lcom/android/internal/os/CommonHistoryItem;
    invoke-direct {p0, v0}, Lcom/android/internal/os/CommonHistoryTimeline;->addHistoryRecord(Lcom/android/internal/os/CommonHistoryItem;)V

    goto :goto_0

    .line 67
    .end local v0           #rec:Lcom/android/internal/os/CommonHistoryItem;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    return-void
.end method

.method public setMaxRange(J)V
    .locals 0
    .parameter "range"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/internal/os/CommonHistoryTimeline;->mMaxRange:J

    .line 47
    return-void
.end method

.method public startIterating()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/android/internal/os/CommonHistoryTimeline;->mIteratorPos:I

    .line 72
    iget-object v0, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

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
    .line 55
    iget-object v2, p0, Lcom/android/internal/os/CommonHistoryTimeline;->timeline:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/CommonHistoryItem;

    .line 56
    .local v1, item:Lcom/android/internal/os/CommonHistoryItem;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/os/CommonHistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    .end local v1           #item:Lcom/android/internal/os/CommonHistoryItem;
    :cond_0
    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    return-void
.end method
