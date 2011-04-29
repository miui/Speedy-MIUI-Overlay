.class public Lcom/android/internal/os/TrafficData$Uid;
.super Ljava/lang/Object;
.source "TrafficData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/TrafficData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Uid"
.end annotation


# instance fields
.field mLastMobileRxBytes:J

.field mLastMobileTxBytes:J

.field mLastRxBytes:J

.field mLastTxBytes:J

.field mMobileRxBytes:[J

.field mMobileTxBytes:[J

.field mRxBytes:[J

.field mTxBytes:[J

.field final mUid:I

.field final synthetic this$0:Lcom/android/internal/os/TrafficData;


# direct methods
.method constructor <init>(Lcom/android/internal/os/TrafficData;I)V
    .locals 2
    .parameter
    .parameter "uid"

    .prologue
    const/4 v1, 0x4

    .line 242
    iput-object p1, p0, Lcom/android/internal/os/TrafficData$Uid;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    .line 244
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    .line 245
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    .line 246
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    .line 247
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    .line 248
    return-void
.end method

.method private getCurrentMobileRxBytes()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 450
    const-wide/16 v0, 0x0

    .line 451
    .local v0, bytes:J
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 452
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 458
    :goto_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    move-wide v2, v0

    :goto_1
    return-wide v2

    .line 453
    :cond_0
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 454
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 456
    :cond_1
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidMobileRxBytes(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 458
    goto :goto_1
.end method

.method private getCurrentMobileTxBytes()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 438
    const-wide/16 v0, 0x0

    .line 439
    .local v0, bytes:J
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 440
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 446
    :goto_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    move-wide v2, v0

    :goto_1
    return-wide v2

    .line 441
    :cond_0
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 442
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 444
    :cond_1
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidMobileTxBytes(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 446
    goto :goto_1
.end method

.method private getCurrentRxBytes()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 426
    const-wide/16 v0, 0x0

    .line 427
    .local v0, bytes:J
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 428
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 434
    :goto_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    move-wide v2, v0

    :goto_1
    return-wide v2

    .line 429
    :cond_0
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 430
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    sub-long v0, v2, v4

    goto :goto_0

    .line 432
    :cond_1
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v2, v6

    .line 434
    goto :goto_1
.end method

.method private getCurrentTxBytes()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 414
    const-wide/16 v0, 0x0

    .line 415
    .local v0, bytes:J
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 416
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 422
    :goto_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    move-wide v2, v0

    :goto_1
    return-wide v2

    .line 417
    :cond_0
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 418
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v4

    sub-long v0, v2, v4

    goto :goto_0

    .line 420
    :cond_1
    iget v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mUid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v2, v6

    .line 422
    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 462
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    iget-object v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    aput-wide v3, v2, v0

    aput-wide v3, v1, v0

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    iput-wide v3, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    iput-wide v3, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    .line 467
    iput-wide v3, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    iput-wide v3, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    .line 468
    return-void
.end method

.method public getMobileRxBytes()[J
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    return-object v0
.end method

.method public getMobileTxBytes()[J
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    return-object v0
.end method

.method public getRxBytes()[J
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    return-object v0
.end method

.method public getTxBytes()[J
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    return-object v0
.end method

.method hasTraffic()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    const/4 v1, 0x1

    .line 410
    :goto_1
    return v1

    .line 406
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const-wide/16 v4, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    .line 275
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData$Uid;->getCurrentTxBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 276
    iput-wide v4, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData$Uid;->getCurrentRxBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 279
    iput-wide v4, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData$Uid;->getCurrentMobileTxBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 282
    iput-wide v4, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/os/TrafficData$Uid;->getCurrentMobileRxBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 285
    iput-wide v4, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    .line 287
    :cond_3
    return-void
.end method

.method refresh(Ljava/util/Calendar;)V
    .locals 27
    .parameter "now"

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->this$0:Lcom/android/internal/os/TrafficData;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/os/TrafficData;->access$500(Lcom/android/internal/os/TrafficData;)Ljava/util/Calendar;

    move-result-object v8

    .line 311
    .local v8, last:Ljava/util/Calendar;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/TrafficData$Uid;->getCurrentTxBytes()J

    move-result-wide v5

    .line 312
    .local v5, currentTxBytes:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/TrafficData$Uid;->getCurrentRxBytes()J

    move-result-wide v3

    .line 313
    .local v3, currentRxBytes:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/TrafficData$Uid;->getCurrentMobileTxBytes()J

    move-result-wide v13

    .line 314
    .local v13, mobileTxBytes:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/TrafficData$Uid;->getCurrentMobileRxBytes()J

    move-result-wide v9

    .line 317
    .local v9, mobileRxBytes:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    move-wide/from16 v21, v0

    sub-long v19, v5, v21

    .line 319
    .local v19, txBytesInc:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    move-wide/from16 v21, v0

    sub-long v17, v3, v21

    .line 320
    .local v17, rxBytesInc:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    move-wide/from16 v21, v0

    sub-long v15, v13, v21

    .line 321
    .local v15, mobileTxBytesInc:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    move-wide/from16 v21, v0

    sub-long v11, v9, v21

    .line 322
    .local v11, mobileRxBytesInc:J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-gez v21, :cond_0

    .line 323
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    .line 324
    move-wide/from16 v19, v5

    .line 326
    :cond_0
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-gez v21, :cond_1

    .line 327
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    .line 328
    move-wide/from16 v17, v3

    .line 330
    :cond_1
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-gez v21, :cond_2

    .line 331
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    .line 332
    move-wide v15, v13

    .line 334
    :cond_2
    const-wide/16 v21, 0x0

    cmp-long v21, v11, v21

    if-gez v21, :cond_3

    .line 335
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    .line 336
    move-wide v11, v9

    .line 339
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->this$0:Lcom/android/internal/os/TrafficData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/TrafficData;->access$600(Lcom/android/internal/os/TrafficData;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 341
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    const/16 v21, 0x3

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_6

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, v7

    add-long v22, v22, v19

    aput-wide v22, v21, v7

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, v7

    add-long v22, v22, v17

    aput-wide v22, v21, v7

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, v7

    add-long v22, v22, v15

    aput-wide v22, v21, v7

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, v7

    add-long v22, v22, v11

    aput-wide v22, v21, v7

    .line 341
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 347
    .end local v7           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->this$0:Lcom/android/internal/os/TrafficData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/TrafficData;->access$700(Lcom/android/internal/os/TrafficData;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 349
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_1
    const/16 v21, 0x2

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, v7

    add-long v22, v22, v19

    aput-wide v22, v21, v7

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, v7

    add-long v22, v22, v17

    aput-wide v22, v21, v7

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, v7

    add-long v22, v22, v15

    aput-wide v22, v21, v7

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, v7

    add-long v22, v22, v11

    aput-wide v22, v21, v7

    .line 349
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 356
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aput-wide v19, v21, v22

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aput-wide v17, v21, v22

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aput-wide v15, v21, v22

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aput-wide v11, v21, v22

    .line 399
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    move-wide/from16 v21, v0

    add-long v21, v21, v19

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    .line 400
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    move-wide/from16 v21, v0

    add-long v21, v21, v17

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    .line 401
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    move-wide/from16 v21, v0

    add-long v21, v21, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    .line 402
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    move-wide/from16 v21, v0

    add-long v21, v21, v11

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    .line 403
    return-void

    .line 360
    .end local v7           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->this$0:Lcom/android/internal/os/TrafficData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/TrafficData;->access$800(Lcom/android/internal/os/TrafficData;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-wide v23, v21, v22

    add-long v23, v23, v19

    aput-wide v23, v21, v22

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-wide v23, v21, v22

    add-long v23, v23, v17

    aput-wide v23, v21, v22

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-wide v23, v21, v22

    add-long v23, v23, v15

    aput-wide v23, v21, v22

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-wide v23, v21, v22

    add-long v23, v23, v11

    aput-wide v23, v21, v22

    .line 368
    const/4 v7, 0x2

    .restart local v7       #i:I
    :goto_2
    const/16 v21, 0x3

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    aput-wide v19, v21, v7

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v21, v0

    aput-wide v17, v21, v7

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v21, v0

    aput-wide v15, v21, v7

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v21, v0

    aput-wide v11, v21, v7

    .line 368
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 374
    .end local v7           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->this$0:Lcom/android/internal/os/TrafficData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/TrafficData;->access$900(Lcom/android/internal/os/TrafficData;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    aput-wide v23, v21, v22

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    aput-wide v23, v21, v22

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    aput-wide v23, v21, v22

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    aput-wide v23, v21, v22

    .line 382
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_3
    const/16 v21, 0x3

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_6

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    aput-wide v19, v21, v7

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v21, v0

    aput-wide v17, v21, v7

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v21, v0

    aput-wide v15, v21, v7

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v21, v0

    aput-wide v11, v21, v7

    .line 382
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 390
    .end local v7           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    aput-wide v25, v23, v24

    aput-wide v25, v21, v22

    .line 391
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_4
    const/16 v21, 0x3

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_6

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    move-object/from16 v21, v0

    aput-wide v19, v21, v7

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    move-object/from16 v21, v0

    aput-wide v17, v21, v7

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    move-object/from16 v21, v0

    aput-wide v15, v21, v7

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    move-object/from16 v21, v0

    aput-wide v11, v21, v7

    .line 391
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "out"

    .prologue
    const-wide/16 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mTxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mRxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mMobileTxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mMobileRxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$Uid;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-static {v0}, Lcom/android/internal/os/TrafficData;->access$400(Lcom/android/internal/os/TrafficData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iput-wide v1, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    iput-wide v1, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    .line 296
    iput-wide v1, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    iput-wide v1, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    .line 298
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget-wide v0, p0, Lcom/android/internal/os/TrafficData$Uid;->mLastMobileRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 302
    return-void
.end method
