.class Landroid/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "SyncManager"

    .line 245
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 247
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object v1, v2

    .line 249
    .local v1, state:Landroid/net/NetworkInfo$State;
    :goto_0
    const-string v2, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received connectivity action.  network info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    sget-object v2, Landroid/content/SyncManager$8;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 275
    :goto_1
    iget-object v2, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$100(Landroid/content/SyncManager;)V

    .line 278
    :cond_1
    return-void

    .line 247
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 263
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :pswitch_0
    iget-object v2, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v2, v5}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_1

    .line 266
    :pswitch_1
    const-string v2, "noConnectivity"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    iget-object v2, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v2, v4}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_1

    .line 269
    :cond_3
    iget-object v2, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-static {v2, v5}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
