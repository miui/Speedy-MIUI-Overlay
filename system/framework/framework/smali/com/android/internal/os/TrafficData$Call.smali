.class public Lcom/android/internal/os/TrafficData$Call;
.super Ljava/lang/Object;
.source "TrafficData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/TrafficData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Call"
.end annotation


# instance fields
.field private mInCallTime:J

.field private mOutCallTime:J

.field final synthetic this$0:Lcom/android/internal/os/TrafficData;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/TrafficData;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/internal/os/TrafficData$Call;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1114(Lcom/android/internal/os/TrafficData$Call;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mInCallTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mInCallTime:J

    return-wide v0
.end method

.method static synthetic access$1214(Lcom/android/internal/os/TrafficData$Call;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mOutCallTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mOutCallTime:J

    return-wide v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 198
    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mInCallTime:J

    .line 199
    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mOutCallTime:J

    .line 200
    return-void
.end method

.method public getInCallTime()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mInCallTime:J

    return-wide v0
.end method

.method public getOutCallTime()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mOutCallTime:J

    return-wide v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mInCallTime:J

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mOutCallTime:J

    .line 190
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mInCallTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Call;->mOutCallTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    return-void
.end method
