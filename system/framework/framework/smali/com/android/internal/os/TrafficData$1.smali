.class Lcom/android/internal/os/TrafficData$1;
.super Landroid/content/BroadcastReceiver;
.source "TrafficData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/TrafficData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/TrafficData;


# direct methods
.method constructor <init>(Lcom/android/internal/os/TrafficData;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/os/TrafficData$1;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 156
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$1;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-static {v0}, Lcom/android/internal/os/TrafficData;->access$300(Lcom/android/internal/os/TrafficData;)Lcom/android/internal/os/TrafficData$TrafficHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/TrafficData$TrafficHandler;->removeMessages(I)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$1;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-virtual {v0}, Lcom/android/internal/os/TrafficData;->refresh()V

    goto :goto_0
.end method
