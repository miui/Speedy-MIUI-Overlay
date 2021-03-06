.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1801
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1801
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1806
    .local v3, action:Ljava/lang/String;
    const-string v14, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1807
    const-string v14, "android.intent.extra.DOCK_STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1810
    .local v9, dockState:I
    packed-switch v9, :pswitch_data_0

    .line 1819
    const/4 v7, 0x0

    .line 1821
    .local v7, config:I
    :goto_0
    const/4 v14, 0x3

    invoke-static {v14, v7}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1954
    .end local v7           #config:I
    .end local v9           #dockState:I
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 1812
    .restart local v9       #dockState:I
    .restart local p1
    :pswitch_0
    const/4 v7, 0x7

    .line 1813
    .restart local v7       #config:I
    goto :goto_0

    .line 1815
    .end local v7           #config:I
    :pswitch_1
    const/4 v7, 0x6

    .line 1816
    .restart local v7       #config:I
    goto :goto_0

    .line 1822
    .end local v7           #config:I
    .end local v9           #dockState:I
    :cond_1
    const-string v14, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1823
    const-string v14, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1825
    .local v13, state:I
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1826
    .local v6, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1827
    .local v4, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x80

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x80

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move v10, v14

    .line 1830
    .local v10, isConnected:Z
    :goto_2
    if-eqz v10, :cond_4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 1832
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1833
    if-nez v13, :cond_0

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14, v4}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_1

    .line 1827
    .end local v10           #isConnected:Z
    :cond_2
    const/4 v14, 0x0

    move v10, v14

    goto :goto_2

    .line 1841
    .restart local v10       #isConnected:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14, v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_1

    .line 1843
    :cond_4
    if-nez v10, :cond_0

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    const/4 v14, 0x4

    if-ne v13, v14, :cond_0

    .line 1846
    :cond_5
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14, v4}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 1858
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14, v4}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1853
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_3

    .line 1860
    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    .restart local p1
    :cond_8
    const-string v14, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1861
    const-string v14, "android.bluetooth.headset.extra.STATE"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1863
    .restart local v13       #state:I
    const/16 v8, 0x10

    .line 1864
    .local v8, device:I
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1865
    .restart local v6       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v4, 0x0

    .line 1866
    .restart local v4       #address:Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 1867
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1868
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .line 1869
    .local v5, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v5, :cond_9

    .line 1870
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 1882
    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    move v10, v14

    .line 1885
    .restart local v10       #isConnected:Z
    :goto_5
    if-eqz v10, :cond_b

    const/4 v14, 0x2

    if-eq v13, v14, :cond_b

    .line 1886
    const/4 v14, 0x0

    invoke-static {v8, v14, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_1

    .line 1873
    .end local v10           #isConnected:Z
    .restart local v5       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_0
    const/16 v8, 0x20

    .line 1874
    goto :goto_4

    .line 1876
    :sswitch_1
    const/16 v8, 0x40

    goto :goto_4

    .line 1882
    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_a
    const/4 v14, 0x0

    move v10, v14

    goto :goto_5

    .line 1892
    .restart local v10       #isConnected:Z
    :cond_b
    if-nez v10, :cond_0

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 1893
    const/4 v14, 0x1

    invoke-static {v8, v14, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 1899
    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v8           #device:I
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    .restart local p1
    :cond_c
    const-string v14, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1900
    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1901
    .restart local v13       #state:I
    const-string v14, "microphone"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1903
    .local v11, microphone:I
    if-eqz v11, :cond_e

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 1905
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_d

    if-eqz v10, :cond_d

    .line 1906
    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1910
    :cond_d
    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    if-nez v10, :cond_0

    .line 1911
    const/4 v14, 0x4

    const/4 v15, 0x1

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x4

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1917
    .end local v10           #isConnected:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 1918
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_f

    if-eqz v10, :cond_f

    .line 1919
    const/16 v14, 0x8

    const/4 v15, 0x0

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1923
    :cond_f
    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    if-nez v10, :cond_0

    .line 1924
    const/16 v14, 0x8

    const/4 v15, 0x1

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x8

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1930
    .end local v10           #isConnected:Z
    .end local v11           #microphone:I
    .end local v13           #state:I
    :cond_10
    const-string v14, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1931
    const-string v14, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1933
    .restart local v13       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v14, v0

    invoke-static {v14}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v14

    monitor-enter v14

    .line 1934
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_11

    .line 1935
    packed-switch v13, :pswitch_data_1

    .line 1943
    const/4 v13, -0x1

    .line 1946
    :goto_6
    const/4 v15, -0x1

    if-eq v13, v15, :cond_11

    .line 1947
    new-instance v12, Landroid/content/Intent;

    const-string v15, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1948
    .local v12, newIntent:Landroid/content/Intent;
    const-string v15, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v12, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1952
    .end local v12           #newIntent:Landroid/content/Intent;
    :cond_11
    monitor-exit v14

    goto/16 :goto_1

    :catchall_0
    move-exception v15

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1937
    :pswitch_2
    const/4 v13, 0x1

    .line 1938
    goto :goto_6

    .line 1940
    :pswitch_3
    const/4 v13, 0x0

    .line 1941
    goto :goto_6

    .line 1810
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1870
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 1935
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
