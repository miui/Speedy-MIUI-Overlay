.class public abstract Lcom/android/internal/app/ITraffic$Stub;
.super Landroid/os/Binder;
.source "ITraffic.java"

# interfaces
.implements Lcom/android/internal/app/ITraffic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ITraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ITraffic$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.ITraffic"

.field static final TRANSACTION_clearTraffic:I = 0x2

.field static final TRANSACTION_fixMobileTraffic:I = 0x5

.field static final TRANSACTION_fixSmsTraffic:I = 0x6

.field static final TRANSACTION_getTrafficData:I = 0x1

.field static final TRANSACTION_notePhoneCall:I = 0x7

.field static final TRANSACTION_noteRxBytes:I = 0xa

.field static final TRANSACTION_noteSMS:I = 0x8

.field static final TRANSACTION_noteTxBytes:I = 0x9

.field static final TRANSACTION_refresh:I = 0x3

.field static final TRANSACTION_saveFirewallScript:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.ITraffic"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/ITraffic$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ITraffic;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.android.internal.app.ITraffic"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/ITraffic;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/ITraffic;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/ITraffic$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ITraffic$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v5, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ITraffic$Stub;->getTrafficData()Lcom/android/internal/os/TrafficData;

    move-result-object v17

    .line 49
    .local v17, _result:Lcom/android/internal/os/TrafficData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v17, :cond_0

    .line 51
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/TrafficData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 61
    .end local v17           #_result:Lcom/android/internal/os/TrafficData;
    :sswitch_2
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ITraffic$Stub;->clearTraffic()V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v5, 0x1

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ITraffic$Stub;->refresh()V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v5, 0x1

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ITraffic$Stub;->saveFirewallScript(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v5, 0x1

    goto :goto_0

    .line 84
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 87
    .local v6, _arg0:J
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ITraffic$Stub;->fixMobileTraffic(J)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 93
    .end local v6           #_arg0:J
    :sswitch_6
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 96
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ITraffic$Stub;->fixSmsTraffic(I)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 102
    .end local v6           #_arg0:I
    :sswitch_7
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 106
    .local v6, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 108
    .local v8, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .local v9, _arg2:J
    move-object/from16 v5, p0

    .line 109
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/app/ITraffic$Stub;->notePhoneCall(JIJ)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 115
    .end local v6           #_arg0:J
    .end local v8           #_arg1:I
    .end local v9           #_arg2:J
    :sswitch_8
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 119
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 121
    .local v13, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 123
    .local v9, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, _arg3:I
    move-object/from16 v11, p0

    move v12, v6

    move v15, v9

    .line 124
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/app/ITraffic$Stub;->noteSMS(IJII)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 130
    .end local v6           #_arg0:I
    .end local v9           #_arg2:I
    .end local v13           #_arg1:J
    .end local v16           #_arg3:I
    :sswitch_9
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 134
    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 136
    .restart local v8       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 137
    .local v9, _arg2:J
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move-wide v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ITraffic$Stub;->noteTxBytes(IIJ)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 143
    .end local v6           #_arg0:I
    .end local v8           #_arg1:I
    .end local v9           #_arg2:J
    :sswitch_a
    const-string v5, "com.android.internal.app.ITraffic"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 147
    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 149
    .restart local v8       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 150
    .restart local v9       #_arg2:J
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move-wide v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ITraffic$Stub;->noteRxBytes(IIJ)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
