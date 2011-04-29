.class public Lcom/android/internal/os/CommonHistoryItem;
.super Ljava/lang/Object;
.source "CommonHistoryItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/os/IHistoryValueItem;


# instance fields
.field mValue:J

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .parameter "value"
    .parameter "t"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/android/internal/os/CommonHistoryItem;->mValue:J

    .line 21
    iput-wide p3, p0, Lcom/android/internal/os/CommonHistoryItem;->time:J

    .line 22
    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 2
    .parameter "t"
    .parameter "src"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/android/internal/os/CommonHistoryItem;->time:J

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/CommonHistoryItem;->mValue:J

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/internal/os/CommonHistoryItem;->time:J

    return-wide v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/internal/os/CommonHistoryItem;->mValue:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/internal/os/CommonHistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-wide v0, p0, Lcom/android/internal/os/CommonHistoryItem;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    return-void
.end method
