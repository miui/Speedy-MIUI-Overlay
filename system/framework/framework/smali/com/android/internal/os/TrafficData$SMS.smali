.class public Lcom/android/internal/os/TrafficData$SMS;
.super Ljava/lang/Object;
.source "TrafficData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/TrafficData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMS"
.end annotation


# instance fields
.field private mOutboxSMS:I

.field final synthetic this$0:Lcom/android/internal/os/TrafficData;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/TrafficData;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/internal/os/TrafficData$SMS;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/os/TrafficData$SMS;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    iput p1, p0, Lcom/android/internal/os/TrafficData$SMS;->mOutboxSMS:I

    return p1
.end method

.method static synthetic access$1012(Lcom/android/internal/os/TrafficData$SMS;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    iget v0, p0, Lcom/android/internal/os/TrafficData$SMS;->mOutboxSMS:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/TrafficData$SMS;->mOutboxSMS:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/TrafficData$SMS;->mOutboxSMS:I

    .line 220
    return-void
.end method

.method public getOutboxSMS()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/os/TrafficData$SMS;->mOutboxSMS:I

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/TrafficData$SMS;->mOutboxSMS:I

    .line 212
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 215
    iget v0, p0, Lcom/android/internal/os/TrafficData$SMS;->mOutboxSMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return-void
.end method
