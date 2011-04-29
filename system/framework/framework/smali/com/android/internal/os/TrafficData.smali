.class public final Lcom/android/internal/os/TrafficData;
.super Ljava/lang/Object;
.source "TrafficData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TrafficData$Uid;,
        Lcom/android/internal/os/TrafficData$SMS;,
        Lcom/android/internal/os/TrafficData$Call;,
        Lcom/android/internal/os/TrafficData$TrafficHandler;,
        Lcom/android/internal/os/TrafficData$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_MONITOR_SETTINGS:Ljava/lang/String; = "com.android.monitor.SETTINGS"

.field private static final ACTION_UPDATE_TRAFFIC:Ljava/lang/String; = "android.intent.action.UPDATE_TRAFFIC"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/TrafficData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MOBILE_TRAFFIC_LIMIT:J = 0x3200000L

.field public static final DEFAULT_MOBILE_TRAFFIC_THRESHOLD:J = 0x2800000L

.field public static final DEFAULT_SMS_TRAFFIC_LIMIT:I = 0xfa

.field public static final DEFAULT_SMS_TRAFFIC_THRESHOLD:I = 0xc8

.field public static final LAST_MONTH_TRAFFIC:I = 0x0

.field private static final MAGIC:I = 0x54524146

.field private static final MAGIC_V2:I = 0x54524148

.field private static final MSG_UPDATE_TRAFFIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrafficData"

.field public static final THIS_MONTH_TRAFFIC:I = 0x1

.field public static final THIS_WEEK_TRAFFIC:I = 0x2

.field public static final TODAY_TRAFFIC:I = 0x3

.field public static final TRAFFIC_COUNTERS:I = 0x4

.field private static final TRAFFIC_DATA_UPDATE_INTERVAL:J = 0x2bf20L

.field public static final UID_MOBILE:I = -0x1

.field public static final UID_WIFI:I = -0x2


# instance fields
.field private mActiveNetwork:Landroid/net/NetworkInfo;

.field mCall:Lcom/android/internal/os/TrafficData$Call;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mDisplayNotification:Z

.field private mEnableMonitor:Z

.field private final mFile:Lcom/android/internal/util/JournaledFile;

.field private mFirstTrafficDay:I

.field private final mHandler:Lcom/android/internal/os/TrafficData$TrafficHandler;

.field private mLastUpdateCalendar:Ljava/util/Calendar;

.field private mMobileLimit:J

.field private mMobileThreshold:J

.field private mMobileTurnedOff:Z

.field private mMonitorMobile:Z

.field private mMonitorSMS:Z

.field private mNetworkConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mNotification:Landroid/app/Notification;

.field private mNotifyThresholdExceed:Z

.field private mObserver:Lcom/android/internal/os/TrafficData$SettingsObserver;

.field mResolver:Landroid/content/ContentResolver;

.field mSMS:Lcom/android/internal/os/TrafficData$SMS;

.field private mSMSThreshold:I

.field private mShutdown:Z

.field private mThresholdExceedNotified:Z

.field private mTurnOffMobile:Z

.field mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/TrafficData$Uid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 840
    new-instance v0, Lcom/android/internal/os/TrafficData$2;

    invoke-direct {v0}, Lcom/android/internal/os/TrafficData$2;-><init>()V

    sput-object v0, Lcom/android/internal/os/TrafficData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/android/internal/os/TrafficData$TrafficHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/TrafficData$TrafficHandler;-><init>(Lcom/android/internal/os/TrafficData;Lcom/android/internal/os/TrafficData$1;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mHandler:Lcom/android/internal/os/TrafficData$TrafficHandler;

    .line 89
    new-instance v0, Lcom/android/internal/os/TrafficData$Call;

    invoke-direct {v0, p0}, Lcom/android/internal/os/TrafficData$Call;-><init>(Lcom/android/internal/os/TrafficData;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mCall:Lcom/android/internal/os/TrafficData$Call;

    .line 91
    new-instance v0, Lcom/android/internal/os/TrafficData$SMS;

    invoke-direct {v0, p0}, Lcom/android/internal/os/TrafficData$SMS;-><init>(Lcom/android/internal/os/TrafficData;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    .line 153
    new-instance v0, Lcom/android/internal/os/TrafficData$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/TrafficData$1;-><init>(Lcom/android/internal/os/TrafficData;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mNetworkConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    iput-object v1, p0, Lcom/android/internal/os/TrafficData;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 529
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->readFromParcel(Landroid/os/Parcel;)V

    .line 530
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/android/internal/os/TrafficData$TrafficHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/TrafficData$TrafficHandler;-><init>(Lcom/android/internal/os/TrafficData;Lcom/android/internal/os/TrafficData$1;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mHandler:Lcom/android/internal/os/TrafficData$TrafficHandler;

    .line 89
    new-instance v0, Lcom/android/internal/os/TrafficData$Call;

    invoke-direct {v0, p0}, Lcom/android/internal/os/TrafficData$Call;-><init>(Lcom/android/internal/os/TrafficData;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mCall:Lcom/android/internal/os/TrafficData$Call;

    .line 91
    new-instance v0, Lcom/android/internal/os/TrafficData$SMS;

    invoke-direct {v0, p0}, Lcom/android/internal/os/TrafficData$SMS;-><init>(Lcom/android/internal/os/TrafficData;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    .line 153
    new-instance v0, Lcom/android/internal/os/TrafficData$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/TrafficData$1;-><init>(Lcom/android/internal/os/TrafficData;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mNetworkConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    iput-boolean v2, p0, Lcom/android/internal/os/TrafficData;->mThresholdExceedNotified:Z

    .line 473
    iput-boolean v2, p0, Lcom/android/internal/os/TrafficData;->mMobileTurnedOff:Z

    .line 474
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->removeOldFile(Ljava/lang/String;)V

    .line 475
    new-instance v0, Lcom/android/internal/util/JournaledFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 476
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData;->readFromFile()V

    .line 478
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    .line 479
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    .line 482
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 483
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    .line 486
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mNotification:Landroid/app/Notification;

    .line 487
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mNotification:Landroid/app/Notification;

    const v1, 0x10802d0

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 488
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mNotification:Landroid/app/Notification;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 489
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 490
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/TrafficData;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData;->updateFromSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/os/TrafficData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/os/TrafficData;->mEnableMonitor:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/TrafficData;)Lcom/android/internal/os/TrafficData$TrafficHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mHandler:Lcom/android/internal/os/TrafficData$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/TrafficData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/os/TrafficData;->mShutdown:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/TrafficData;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/TrafficData;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/TrafficData;->onSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/os/TrafficData;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/TrafficData;->onSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/os/TrafficData;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/TrafficData;->onSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/os/TrafficData;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/TrafficData;->onlyOneMonthPast(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method private checkThreshold(Ljava/util/Calendar;)V
    .locals 19
    .parameter "now"

    .prologue
    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/internal/os/TrafficData$SMS;->getOutboxSMS()I

    move-result v12

    int-to-long v8, v12

    .line 617
    .local v8, outboxSMS:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/TrafficData;->getMobileTxBytes()[J

    move-result-object v12

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/TrafficData;->getMobileRxBytes()[J

    move-result-object v14

    const/4 v15, 0x1

    aget-wide v14, v14, v15

    add-long v5, v12, v14

    .line 618
    .local v5, mobileBytes:J
    const-string v11, ""

    .line 620
    .local v11, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mDisplayNotification:Z

    move v12, v0

    if-eqz v12, :cond_5

    .line 622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mMonitorSMS:Z

    move v12, v0

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/TrafficData;->mSMSThreshold:I

    move v12, v0

    int-to-long v12, v12

    cmp-long v12, v8, v12

    if-ltz v12, :cond_0

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x10403b5

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/TrafficData;->mSMSThreshold:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 626
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mMonitorMobile:Z

    move v12, v0

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData;->mMobileThreshold:J

    move-wide v12, v0

    cmp-long v12, v5, v12

    if-ltz v12, :cond_1

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x10403b6

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData;->mMobileThreshold:J

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 630
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x10403b4

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 633
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mResolver:Landroid/content/ContentResolver;

    move-object v12, v0

    const-string/jumbo v13, "traffic"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 639
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mMonitorMobile:Z

    move v12, v0

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData;->mMobileLimit:J

    move-wide v12, v0

    cmp-long v12, v5, v12

    if-ltz v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mTurnOffMobile:Z

    move v12, v0

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mMobileTurnedOff:Z

    move v12, v0

    if-nez v12, :cond_3

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 641
    .local v3, cm:Landroid/net/ConnectivityManager;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 642
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/TrafficData;->mMobileTurnedOff:Z

    .line 645
    .end local v3           #cm:Landroid/net/ConnectivityManager;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mThresholdExceedNotified:Z

    move v12, v0

    if-eqz v12, :cond_6

    .line 690
    :cond_4
    :goto_1
    return-void

    .line 636
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mResolver:Landroid/content/ContentResolver;

    move-object v12, v0

    const-string/jumbo v13, "traffic"

    const-string v14, ""

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 648
    :cond_6
    const/4 v10, 0x0

    .line 650
    .local v10, pi:Landroid/app/PendingIntent;
    const-string v11, ""

    .line 652
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mNotifyThresholdExceed:Z

    move v12, v0

    if-nez v12, :cond_a

    .line 653
    const-wide/16 v12, 0xc8

    cmp-long v12, v8, v12

    if-ltz v12, :cond_7

    .line 654
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10403ab

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 656
    :cond_7
    const-wide/32 v12, 0x2800000

    cmp-long v12, v5, v12

    if-ltz v12, :cond_8

    .line 657
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10403ad

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 660
    :cond_8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 661
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10403af

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 662
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.android.monitor.SETTINGS"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v4, intent:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v4, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 683
    .end local v4           #intent:Landroid/content/Intent;
    :cond_9
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 686
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/TrafficData;->mThresholdExceedNotified:Z

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x10403b1

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v11, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 689
    .local v7, nm:Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v12, v12, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mNotification:Landroid/app/Notification;

    move-object v13, v0

    invoke-virtual {v7, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 668
    .end local v7           #nm:Landroid/app/NotificationManager;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mMonitorSMS:Z

    move v12, v0

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/TrafficData;->mSMSThreshold:I

    move v12, v0

    int-to-long v12, v12

    cmp-long v12, v8, v12

    if-ltz v12, :cond_b

    .line 669
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10403ac

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 672
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/TrafficData;->mMonitorMobile:Z

    move v12, v0

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData;->mMobileThreshold:J

    move-wide v12, v0

    cmp-long v12, v5, v12

    if-ltz v12, :cond_c

    .line 673
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x10403ae

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 676
    :cond_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 677
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.UPDATE_TRAFFIC"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    goto/16 :goto_2
.end method

.method private checkUidStatDir()V
    .locals 8

    .prologue
    .line 604
    new-instance v4, Ljava/io/File;

    const-string v7, "/proc/uid_stat"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 605
    .local v4, uidStatDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 606
    .local v6, uidStrs:[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 612
    :cond_0
    return-void

    .line 608
    :cond_1
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 609
    .local v5, uidStr:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 610
    .local v3, uid:I
    invoke-direct {p0, v3}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;
    .locals 2
    .parameter "uid"

    .prologue
    .line 693
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/TrafficData$Uid;

    .line 694
    .local v0, u:Lcom/android/internal/os/TrafficData$Uid;
    if-nez v0, :cond_0

    .line 695
    new-instance v0, Lcom/android/internal/os/TrafficData$Uid;

    .end local v0           #u:Lcom/android/internal/os/TrafficData$Uid;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/TrafficData$Uid;-><init>(Lcom/android/internal/os/TrafficData;I)V

    .line 696
    .restart local v0       #u:Lcom/android/internal/os/TrafficData$Uid;
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 698
    :cond_0
    return-object v0
.end method

.method private onSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .parameter "now"
    .parameter "last"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 965
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 968
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 9
    .parameter "now"
    .parameter "last"

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 976
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 977
    .local v5, year:I
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 978
    .local v4, month:I
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 980
    .local v0, day:I
    invoke-virtual {p2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 981
    .local v3, last_year:I
    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 982
    .local v2, last_month:I
    invoke-virtual {p2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 985
    .local v1, last_day:I
    if-ne v5, v3, :cond_2

    if-ne v4, v2, :cond_2

    .line 986
    iget v6, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    if-lt v1, v6, :cond_0

    iget v6, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    if-ge v0, v6, :cond_1

    :cond_0
    iget v6, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    if-ge v1, v6, :cond_4

    iget v6, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    if-ge v0, v6, :cond_4

    :cond_1
    move v6, v7

    .line 1000
    :goto_0
    return v6

    .line 990
    :cond_2
    if-ne v5, v3, :cond_3

    sub-int v6, v4, v2

    if-ne v6, v7, :cond_3

    .line 991
    iget v6, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    if-lt v1, v6, :cond_4

    iget v6, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    if-ge v0, v6, :cond_4

    move v6, v7

    .line 992
    goto :goto_0

    .line 994
    :cond_3
    sub-int v6, v5, v3

    if-ne v6, v7, :cond_4

    if-nez v4, :cond_4

    const/16 v6, 0xb

    if-ne v2, v6, :cond_4

    .line 995
    iget v6, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    if-lt v1, v6, :cond_4

    iget v6, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    if-ge v0, v6, :cond_4

    move v6, v7

    .line 996
    goto :goto_0

    .line 1000
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private onSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2
    .parameter "now"
    .parameter "last"

    .prologue
    const/4 v1, 0x4

    .line 972
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/TrafficData;->onSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onlyOneMonthPast(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 6
    .parameter "now"
    .parameter "last"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 1004
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1005
    .local v3, year:I
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1007
    .local v2, month:I
    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1008
    .local v1, last_year:I
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1010
    .local v0, last_month:I
    sub-int v4, v3, v1

    if-ne v4, v5, :cond_0

    if-nez v2, :cond_0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_0

    move v4, v5

    .line 1018
    :goto_0
    return v4

    .line 1014
    :cond_0
    if-ne v3, v1, :cond_1

    sub-int v4, v2, v0

    if-ne v4, v5, :cond_1

    move v4, v5

    .line 1015
    goto :goto_0

    .line 1018
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readFromFile()V
    .locals 12

    .prologue
    const-string v11, "TrafficData"

    .line 744
    iget-object v9, p0, Lcom/android/internal/os/TrafficData;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v9, :cond_1

    .line 745
    const-string v9, "TrafficData"

    const-string v9, "readFromFile: no file associated with this instance"

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v9, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 752
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/os/TrafficData;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 753
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 756
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 758
    .local v8, stream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 759
    .local v7, pos:I
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 760
    .local v1, avail:I
    new-array v2, v1, [B

    .line 762
    .local v2, data:[B
    :cond_2
    :goto_1
    array-length v9, v2

    sub-int/2addr v9, v7

    invoke-virtual {v8, v2, v7, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 763
    .local v0, amt:I
    if-gtz v0, :cond_3

    .line 774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 775
    .local v5, in:Landroid/os/Parcel;
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v5, v2, v9, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 776
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 777
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 779
    invoke-direct {p0, v5}, Lcom/android/internal/os/TrafficData;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    .end local v0           #amt:I
    .end local v1           #avail:I
    .end local v2           #data:[B
    .end local v4           #file:Ljava/io/File;
    .end local v5           #in:Landroid/os/Parcel;
    .end local v7           #pos:I
    .end local v8           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 781
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "TrafficData"

    const-string v9, "Error reading traffic statistics"

    invoke-static {v11, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 766
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #amt:I
    .restart local v1       #avail:I
    .restart local v2       #data:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #pos:I
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :cond_3
    add-int/2addr v7, v0

    .line 767
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 768
    array-length v9, v2

    sub-int/2addr v9, v7

    if-le v1, v9, :cond_2

    .line 769
    add-int v9, v7, v1

    new-array v6, v9, [B

    .line 770
    .local v6, newData:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v9, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 771
    move-object v2, v6

    goto :goto_1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .parameter "in"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 789
    .local v1, magic:I
    const v5, 0x54524148

    if-eq v1, v5, :cond_0

    .line 790
    const-string v5, "TrafficData"

    const-string v6, "Bad magic number"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    .line 795
    iget-object v5, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 797
    iget-object v5, p0, Lcom/android/internal/os/TrafficData;->mCall:Lcom/android/internal/os/TrafficData$Call;

    invoke-virtual {v5, p1}, Lcom/android/internal/os/TrafficData$Call;->readFromParcel(Landroid/os/Parcel;)V

    .line 798
    iget-object v5, p0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    invoke-virtual {v5, p1}, Lcom/android/internal/os/TrafficData$SMS;->readFromParcel(Landroid/os/Parcel;)V

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 801
    .local v2, numUids:I
    iget-object v5, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 802
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 804
    .local v4, uid:I
    new-instance v3, Lcom/android/internal/os/TrafficData$Uid;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/os/TrafficData$Uid;-><init>(Lcom/android/internal/os/TrafficData;I)V

    .line 805
    .local v3, u:Lcom/android/internal/os/TrafficData$Uid;
    invoke-virtual {v3, p1}, Lcom/android/internal/os/TrafficData$Uid;->readFromParcel(Landroid/os/Parcel;)V

    .line 806
    iget-object v5, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 809
    .end local v3           #u:Lcom/android/internal/os/TrafficData$Uid;
    .end local v4           #uid:I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v8, :cond_2

    move v5, v8

    :goto_2
    iput-boolean v5, p0, Lcom/android/internal/os/TrafficData;->mThresholdExceedNotified:Z

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v8, :cond_3

    move v5, v8

    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/os/TrafficData;->mMobileTurnedOff:Z

    goto :goto_0

    :cond_2
    move v5, v9

    .line 809
    goto :goto_2

    :cond_3
    move v5, v9

    .line 810
    goto :goto_3
.end method

.method private removeOldFile(Ljava/lang/String;)V
    .locals 8
    .parameter "filename"

    .prologue
    const/4 v7, 0x4

    .line 505
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 525
    :goto_0
    return-void

    .line 509
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 510
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 511
    .local v0, avail:I
    if-lt v0, v7, :cond_1

    .line 512
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 513
    .local v1, data:[B
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v5, v1, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 514
    const/4 v6, 0x3

    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    or-int v4, v6, v7

    .line 515
    .local v4, magic:I
    const v6, 0x54524146

    if-ne v4, v6, :cond_1

    .line 516
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 517
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    .end local v0           #avail:I
    .end local v1           #data:[B
    .end local v4           #magic:I
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 523
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "TrafficData"

    const-string v7, "Error removeOldFile"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 521
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #avail:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateFromSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 702
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 704
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "enable_monitor_traffic"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/os/TrafficData;->mEnableMonitor:Z

    .line 705
    const-string v1, "monitor_sms_traffic"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/os/TrafficData;->mMonitorSMS:Z

    .line 706
    const-string v1, "monitor_mobile_traffic"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/os/TrafficData;->mMonitorMobile:Z

    .line 707
    const-string v1, "notify_threshold_exceed"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/os/TrafficData;->mNotifyThresholdExceed:Z

    .line 709
    const-string v1, "sms_traffic_threshold"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/TrafficData;->mSMSThreshold:I

    .line 710
    const-string v1, "mobile_traffic_threshold"

    const-wide/32 v2, 0x2800000

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/TrafficData;->mMobileThreshold:J

    .line 711
    const-string v1, "mobile_traffic_limit"

    const-wide/32 v2, 0x3200000

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/TrafficData;->mMobileLimit:J

    .line 713
    const-string v1, "display_traffic_notification"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lcom/android/internal/os/TrafficData;->mDisplayNotification:Z

    .line 715
    const-string v1, "auto_turn_off_mobile"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    :goto_5
    iput-boolean v1, p0, Lcom/android/internal/os/TrafficData;->mTurnOffMobile:Z

    .line 717
    const-string v1, "first_traffic_day"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/TrafficData;->mFirstTrafficDay:I

    .line 718
    return-void

    :cond_0
    move v1, v5

    .line 704
    goto :goto_0

    :cond_1
    move v1, v5

    .line 705
    goto :goto_1

    :cond_2
    move v1, v5

    .line 706
    goto :goto_2

    :cond_3
    move v1, v5

    .line 707
    goto :goto_3

    :cond_4
    move v1, v5

    .line 713
    goto :goto_4

    :cond_5
    move v1, v5

    .line 715
    goto :goto_5
.end method

.method private writeToFile()V
    .locals 5

    .prologue
    const-string v4, "TrafficData"

    .line 721
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v3, :cond_0

    .line 722
    const-string v3, "TrafficData"

    const-string/jumbo v3, "writeToFile: no file associated with this instance"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_0
    return-void

    .line 727
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 728
    .local v2, stream:Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 729
    .local v1, out:Landroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/os/TrafficData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 730
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 734
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 735
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    .end local v1           #out:Landroid/os/Parcel;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 738
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TrafficData"

    const-string v3, "Error writing traffic statistics"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0
.end method


# virtual methods
.method public clearTraffic()V
    .locals 4

    .prologue
    .line 863
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 864
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 865
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/TrafficData$Uid;

    .line 866
    .local v2, uid:Lcom/android/internal/os/TrafficData$Uid;
    invoke-virtual {v2}, Lcom/android/internal/os/TrafficData$Uid;->clear()V

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    .end local v2           #uid:Lcom/android/internal/os/TrafficData$Uid;
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public fixMobileTraffic(J)V
    .locals 4
    .parameter "bytes"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 956
    invoke-direct {p0, v1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    aput-wide p1, v0, v3

    .line 957
    invoke-direct {p0, v1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v3

    .line 958
    return-void
.end method

.method public fixSmsTraffic(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    invoke-static {v0, p1}, Lcom/android/internal/os/TrafficData$SMS;->access$1002(Lcom/android/internal/os/TrafficData$SMS;I)I

    .line 962
    return-void
.end method

.method public getCall()Lcom/android/internal/os/TrafficData$Call;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mCall:Lcom/android/internal/os/TrafficData$Call;

    return-object v0
.end method

.method public getMobileRxBytes()[J
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/os/TrafficData$Uid;

    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    return-object v0
.end method

.method public getMobileTxBytes()[J
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/os/TrafficData$Uid;

    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    return-object v0
.end method

.method public getSMS()Lcom/android/internal/os/TrafficData$SMS;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    return-object v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/TrafficData$Uid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getWifiRxBytes()[J
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/os/TrafficData$Uid;

    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    return-object v0
.end method

.method public getWifiTxBytes()[J
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/os/TrafficData$Uid;

    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    return-object v0
.end method

.method public notePhoneCall(JIJ)V
    .locals 1
    .parameter "date"
    .parameter "type"
    .parameter "duration"

    .prologue
    .line 877
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mCall:Lcom/android/internal/os/TrafficData$Call;

    invoke-static {v0, p4, p5}, Lcom/android/internal/os/TrafficData$Call;->access$1114(Lcom/android/internal/os/TrafficData$Call;J)J

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mCall:Lcom/android/internal/os/TrafficData$Call;

    invoke-static {v0, p4, p5}, Lcom/android/internal/os/TrafficData$Call;->access$1214(Lcom/android/internal/os/TrafficData$Call;J)J

    goto :goto_0
.end method

.method public noteRxBytes(IIJ)V
    .locals 7
    .parameter "euid"
    .parameter "ruid"
    .parameter "bytes"

    .prologue
    const/4 v6, 0x3

    const-wide/16 v4, 0x0

    .line 885
    iget-boolean v1, p0, Lcom/android/internal/os/TrafficData;->mEnableMonitor:Z

    if-nez v1, :cond_1

    .line 918
    :cond_0
    return-void

    .line 889
    :cond_1
    if-eq p1, p2, :cond_0

    .line 893
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mActiveNetwork:Landroid/net/NetworkInfo;

    if-nez v1, :cond_2

    .line 894
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/TrafficData;->mActiveNetwork:Landroid/net/NetworkInfo;

    .line 897
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mActiveNetwork:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mActiveNetwork:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 902
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v6, :cond_0

    .line 903
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    aget-wide v2, v1, v0

    sub-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 904
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, v4

    if-gez v1, :cond_3

    .line 905
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    aput-wide v4, v1, v0

    .line 907
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    aget-wide v2, v1, v0

    add-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_1
    if-gt v0, v6, :cond_0

    .line 911
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    aget-wide v2, v1, v0

    sub-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 912
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, v4

    if-gez v1, :cond_5

    .line 913
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    aput-wide v4, v1, v0

    .line 915
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    aget-wide v2, v1, v0

    add-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 910
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public noteSMS(IJII)V
    .locals 1
    .parameter "uid"
    .parameter "date"
    .parameter "type"
    .parameter "amount"

    .prologue
    .line 871
    if-nez p4, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    invoke-static {v0, p5}, Lcom/android/internal/os/TrafficData$SMS;->access$1012(Lcom/android/internal/os/TrafficData$SMS;I)I

    .line 874
    :cond_0
    return-void
.end method

.method public noteTxBytes(IIJ)V
    .locals 7
    .parameter "euid"
    .parameter "ruid"
    .parameter "bytes"

    .prologue
    const/4 v6, 0x3

    const-wide/16 v4, 0x0

    .line 921
    iget-boolean v1, p0, Lcom/android/internal/os/TrafficData;->mEnableMonitor:Z

    if-nez v1, :cond_1

    .line 953
    :cond_0
    return-void

    .line 924
    :cond_1
    if-eq p1, p2, :cond_0

    .line 928
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mActiveNetwork:Landroid/net/NetworkInfo;

    if-nez v1, :cond_2

    .line 929
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/TrafficData;->mActiveNetwork:Landroid/net/NetworkInfo;

    .line 932
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mActiveNetwork:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mActiveNetwork:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 937
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v6, :cond_0

    .line 938
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    aget-wide v2, v1, v0

    sub-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 939
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, v4

    if-gez v1, :cond_3

    .line 940
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    aput-wide v4, v1, v0

    .line 942
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    aget-wide v2, v1, v0

    add-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_1
    if-gt v0, v6, :cond_0

    .line 946
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    aget-wide v2, v1, v0

    sub-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 947
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, v4

    if-gez v1, :cond_5

    .line 948
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    aput-wide v4, v1, v0

    .line 950
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    aget-wide v2, v1, v0

    add-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 945
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 546
    iget-boolean v3, p0, Lcom/android/internal/os/TrafficData;->mEnableMonitor:Z

    if-nez v3, :cond_0

    .line 573
    :goto_0
    return-void

    .line 550
    :cond_0
    monitor-enter p0

    .line 551
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 553
    .local v1, now:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/os/TrafficData;->onSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 554
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    invoke-virtual {v3}, Lcom/android/internal/os/TrafficData$SMS;->clear()V

    .line 555
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mCall:Lcom/android/internal/os/TrafficData$Call;

    invoke-virtual {v3}, Lcom/android/internal/os/TrafficData$Call;->clear()V

    .line 556
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/os/TrafficData;->mThresholdExceedNotified:Z

    .line 557
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/os/TrafficData;->mMobileTurnedOff:Z

    .line 560
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData;->checkUidStatDir()V

    .line 561
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 562
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 563
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/TrafficData$Uid;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/TrafficData$Uid;->refresh(Ljava/util/Calendar;)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 566
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/os/TrafficData;->checkThreshold(Ljava/util/Calendar;)V

    .line 567
    iput-object v1, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    .line 568
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData;->writeToFile()V

    .line 570
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mHandler:Lcom/android/internal/os/TrafficData$TrafficHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/os/TrafficData$TrafficHandler;->removeMessages(I)V

    .line 571
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mHandler:Lcom/android/internal/os/TrafficData$TrafficHandler;

    const/4 v4, 0x1

    const-wide/32 v5, 0x2bf20

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/os/TrafficData$TrafficHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 572
    monitor-exit p0

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #now:Ljava/util/Calendar;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 852
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/os/TrafficData;->mShutdown:Z

    .line 853
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 854
    .local v1, now:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 855
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 856
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/TrafficData$Uid;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/TrafficData$Uid;->refresh(Ljava/util/Calendar;)V

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_0
    iput-object v1, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    .line 859
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData;->writeToFile()V

    .line 860
    return-void
.end method

.method public supportUidNetworkStats()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 494
    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/uid_stat"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, uidStatDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, uidStrs:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lt v3, v8, :cond_1

    .line 497
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 498
    .local v0, uid:I
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidMobileTxBytes(I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v3, v8

    .line 501
    .end local v0           #uid:I
    :goto_0
    return v3

    .restart local v0       #uid:I
    :cond_0
    move v3, v7

    .line 498
    goto :goto_0

    .line 501
    .end local v0           #uid:I
    :cond_1
    sget-boolean v3, Landroid/os/Build;->IS_MILESTONE:Z

    if-nez v3, :cond_2

    move v3, v8

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    .line 534
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mResolver:Landroid/content/ContentResolver;

    .line 536
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData;->updateFromSettings()V

    .line 537
    new-instance v0, Lcom/android/internal/os/TrafficData$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/TrafficData$SettingsObserver;-><init>(Lcom/android/internal/os/TrafficData;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mObserver:Lcom/android/internal/os/TrafficData$SettingsObserver;

    .line 538
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/os/TrafficData;->mNetworkConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 539
    iget-object v0, p0, Lcom/android/internal/os/TrafficData;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/os/TrafficData;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 540
    iget-boolean v0, p0, Lcom/android/internal/os/TrafficData;->mEnableMonitor:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/os/TrafficData;->refresh()V

    .line 543
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 820
    monitor-enter p0

    .line 821
    const v3, 0x54524148

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mLastUpdateCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 824
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mCall:Lcom/android/internal/os/TrafficData$Call;

    invoke-virtual {v3, p1}, Lcom/android/internal/os/TrafficData$Call;->writeToParcel(Landroid/os/Parcel;)V

    .line 825
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mSMS:Lcom/android/internal/os/TrafficData$SMS;

    invoke-virtual {v3, p1}, Lcom/android/internal/os/TrafficData$SMS;->writeToParcel(Landroid/os/Parcel;)V

    .line 827
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 828
    .local v1, size:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 830
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-object v3, p0, Lcom/android/internal/os/TrafficData;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/TrafficData$Uid;

    .line 832
    .local v2, uid:Lcom/android/internal/os/TrafficData$Uid;
    invoke-virtual {v2, p1}, Lcom/android/internal/os/TrafficData$Uid;->writeToParcel(Landroid/os/Parcel;)V

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    .end local v2           #uid:Lcom/android/internal/os/TrafficData$Uid;
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/os/TrafficData;->mThresholdExceedNotified:Z

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-boolean v3, p0, Lcom/android/internal/os/TrafficData;->mMobileTurnedOff:Z

    if-eqz v3, :cond_2

    move v3, v6

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    monitor-exit p0

    .line 838
    return-void

    :cond_1
    move v3, v5

    .line 835
    goto :goto_1

    :cond_2
    move v3, v5

    .line 836
    goto :goto_2

    .line 837
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
